; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpiolib-of.c_pt.bc'
source_filename = "../drivers/gpio/gpiolib-of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_get_named_gpio_flags\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_named_gpio_flags\09\09\09\09"
module asm "\09.long\09__crc_of_get_named_gpio_flags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_named_gpio_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_named_gpio_flags\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_named_gpio_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpiod_get_from_of_node\22, \22a\22\09"
module asm "\09.weak\09__crc_gpiod_get_from_of_node\09\09\09\09"
module asm "\09.long\09__crc_gpiod_get_from_of_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_from_of_node:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_from_of_node\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_from_of_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_mm_gpiochip_add_data\22, \22a\22\09"
module asm "\09.weak\09__crc_of_mm_gpiochip_add_data\09\09\09\09"
module asm "\09.long\09__crc_of_mm_gpiochip_add_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_mm_gpiochip_add_data:\09\09\09\09\09"
module asm "\09.asciz \09\22of_mm_gpiochip_add_data\22\09\09\09\09\09"
module asm "__kstrtabns_of_mm_gpiochip_add_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_mm_gpiochip_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_of_mm_gpiochip_remove\09\09\09\09"
module asm "\09.long\09__crc_of_mm_gpiochip_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_mm_gpiochip_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22of_mm_gpiochip_remove\22\09\09\09\09\09"
module asm "__kstrtabns_of_mm_gpiochip_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gpio_desc = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.of_mm_gpio_chip = type { %struct.gpio_chip, ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpio-reserved-ranges\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_of_get_named_gpio_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_named_gpio_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_named_gpio_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_named_gpio_flags to i32), ptr @__kstrtab_of_get_named_gpio_flags, ptr @__kstrtabns_of_get_named_gpio_flags }, section "___ksymtab_gpl+of_get_named_gpio_flags", align 4
@__kstrtab_gpiod_get_from_of_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_from_of_node = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_from_of_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_from_of_node to i32), ptr @__kstrtab_gpiod_get_from_of_node, ptr @__kstrtabns_gpiod_get_from_of_node }, section "___ksymtab_gpl+gpiod_get_from_of_node", align 4
@gpio_of_notifier = dso_local global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @of_gpio_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pOF\00", [27 x i8] zeroinitializer }, align 32
@of_mm_gpiochip_add_data.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@of_mm_gpiochip_add_data.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@of_mm_gpiochip_add_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%pOF: GPIO chip registration failed with status %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_mm_gpiochip_add_data\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpio/gpiolib-of.c\00", [38 x i8] zeroinitializer }, align 32
@of_mm_gpiochip_add_data._entry_ptr = internal global ptr @of_mm_gpiochip_add_data._entry, section ".printk_index", align 4
@__kstrtab_of_mm_gpiochip_add_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_mm_gpiochip_add_data = external dso_local constant [0 x i8], align 1
@__ksymtab_of_mm_gpiochip_add_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_mm_gpiochip_add_data to i32), ptr @__kstrtab_of_mm_gpiochip_add_data, ptr @__kstrtabns_of_mm_gpiochip_add_data }, section "___ksymtab_gpl+of_mm_gpiochip_add_data", align 4
@__kstrtab_of_mm_gpiochip_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_mm_gpiochip_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_of_mm_gpiochip_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_mm_gpiochip_remove to i32), ptr @__kstrtab_of_mm_gpiochip_remove, ptr @__kstrtabns_of_mm_gpiochip_remove }, section "___ksymtab_gpl+of_mm_gpiochip_remove", align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cs\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsl,spi\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aeroflexgaisler,spictrl\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ibm,ppc4xx-spi\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpios\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#gpio-cells\00", [20 x i8] zeroinitializer }, align 32
@of_get_named_gpiod_flags.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.6, ptr @.str.16, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpiolib_of\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"of_get_named_gpiod_flags\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: can't parse '%s' property of node '%pOF[%d]'\0A\00", [46 x i8] zeroinitializer }, align 32
@of_get_named_gpiod_flags.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.6, ptr @.str.17, i8 0, i8 67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: parsed '%s' property of node '%pOF[%d]' - status (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"regulator-fixed\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg-fixed-voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable-gpio\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enable-gpios\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regulator-gpio\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable-active-high\00", [45 x i8] zeroinitializer }, align 32
@of_gpio_flags_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s GPIO handle specifies active low - ignored\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"of_gpio_flags_quirks\00", [43 x i8] zeroinitializer }, align 32
@of_gpio_flags_quirks._entry_ptr = internal global ptr @of_gpio_flags_quirks._entry, section ".printk_index", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-open-drain\00", [16 x i8] zeroinitializer }, align 32
@of_gpio_flags_quirks._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.6, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s uses legacy open drain flag - update the DTS if you can\0A\00", [34 x i8] zeroinitializer }, align 32
@of_gpio_flags_quirks._entry_ptr.29 = internal global ptr @of_gpio_flags_quirks._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cs-gpios\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi-cs-high\00", [20 x i8] zeroinitializer }, align 32
@of_gpio_flags_quirks._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@of_gpio_flags_quirks._entry_ptr.34 = internal global ptr @of_gpio_flags_quirks._entry.33, section ".printk_index", align 4
@of_gpio_flags_quirks._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.6, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s enforce active low on chipselect handle\0A\00", [50 x i8] zeroinitializer }, align 32
@of_gpio_flags_quirks._entry_ptr.37 = internal global ptr @of_gpio_flags_quirks._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,reset-gpio\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snps,reset-active-low\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi-gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wlf,ldoena\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wlf,ldo1ena\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wlf,ldo2ena\00", [20 x i8] zeroinitializer }, align 32
@__const.of_find_regulator_gpio.whitelist = private unnamed_addr constant [3 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44], align 4
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wlf,reset\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fcs,int_n\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-hog\00", [23 x i8] zeroinitializer }, align 32
@of_gpio_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.6, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to add hogs for %pOF\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"of_gpio_notify\00", [17 x i8] zeroinitializer }, align 32
@of_gpio_notify._entry_ptr = internal global ptr @of_gpio_notify._entry, section ".printk_index", align 4
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"output-low\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"output-high\00", [20 x i8] zeroinitializer }, align 32
@of_parse_own_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014GPIO line %d (%pOFn): no hogging state specified, bailing out\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"of_parse_own_gpio\00", [46 x i8] zeroinitializer }, align 32
@of_parse_own_gpio._entry_ptr = internal global ptr @of_parse_own_gpio._entry, section ".printk_index", align 4
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"line-name\00", [22 x i8] zeroinitializer }, align 32
@of_gpiochip_add_pin_range.group_names_propname = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gpio-ranges-group-names\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@of_gpiochip_add_pin_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.6, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013%pOF: Group name of numeric GPIO ranges must be the empty string.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"of_gpiochip_add_pin_range\00", [38 x i8] zeroinitializer }, align 32
@of_gpiochip_add_pin_range._entry_ptr = internal global ptr @of_gpiochip_add_pin_range._entry, section ".printk_index", align 4
@of_gpiochip_add_pin_range._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.6, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%pOF: Illegal gpio-range format.\0A\00", [60 x i8] zeroinitializer }, align 32
@of_gpiochip_add_pin_range._entry_ptr.61 = internal global ptr @of_gpiochip_add_pin_range._entry.59, section ".printk_index", align 4
@of_gpiochip_add_pin_range._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.6, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%pOF: GPIO group range requested but no %s property.\0A\00", [40 x i8] zeroinitializer }, align 32
@of_gpiochip_add_pin_range._entry_ptr.64 = internal global ptr @of_gpiochip_add_pin_range._entry.62, section ".printk_index", align 4
@of_gpiochip_add_pin_range._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.6, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%pOF: Group name of GPIO group range cannot be the empty string.\0A\00", [60 x i8] zeroinitializer }, align 32
@of_gpiochip_add_pin_range._entry_ptr.67 = internal global ptr @of_gpiochip_add_pin_range._entry.65, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 71, i32 41 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 127, i32 42 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"gpio_of_notifier\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 784, i32 23 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 853, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 868, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 878, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 44, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 46, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 47, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 48, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 50, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant [26 x i8] c"../drivers/gpio/gpiolib.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 73, i32 71 }
@___asan_gen_.117 = private unnamed_addr constant [27 x i8] c"../include/linux/of_gpio.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 104, i32 50 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 250, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 268, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 143, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 144, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 145, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 146, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 147, i32 36 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 149, i32 9 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 157, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 169, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 171, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 180, i32 57 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 187, i32 38 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 203, i32 38 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 205, i32 7 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 211, i32 7 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 223, i32 24 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 224, i32 32 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 261, i32 30 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 387, i32 35 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 439, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 440, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 441, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 468, i32 32 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 486, i32 32 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 749, i32 38 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 761, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 625, i32 32 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 627, i32 37 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 629, i32 37 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 632, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 637, i32 42 }
@___asan_gen_.245 = private unnamed_addr constant [21 x i8] c"group_names_propname\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 930, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 939, i32 46 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 955, i32 6 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 971, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 977, i32 5 }
@___asan_gen_.272 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [29 x i8] c"../drivers/gpio/gpiolib-of.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 989, i32 5 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__ksymtab_gpiod_get_from_of_node, ptr @__ksymtab_of_get_named_gpio_flags, ptr @__ksymtab_of_mm_gpiochip_add_data, ptr @__ksymtab_of_mm_gpiochip_remove, ptr @of_gpio_flags_quirks._entry, ptr @of_gpio_flags_quirks._entry.27, ptr @of_gpio_flags_quirks._entry.33, ptr @of_gpio_flags_quirks._entry.35, ptr @of_gpio_flags_quirks._entry_ptr, ptr @of_gpio_flags_quirks._entry_ptr.29, ptr @of_gpio_flags_quirks._entry_ptr.34, ptr @of_gpio_flags_quirks._entry_ptr.37, ptr @of_gpio_notify._entry, ptr @of_gpio_notify._entry_ptr, ptr @of_gpiochip_add_pin_range._entry, ptr @of_gpiochip_add_pin_range._entry.59, ptr @of_gpiochip_add_pin_range._entry.62, ptr @of_gpiochip_add_pin_range._entry.65, ptr @of_gpiochip_add_pin_range._entry_ptr, ptr @of_gpiochip_add_pin_range._entry_ptr.61, ptr @of_gpiochip_add_pin_range._entry_ptr.64, ptr @of_gpiochip_add_pin_range._entry_ptr.67, ptr @of_mm_gpiochip_add_data._entry, ptr @of_mm_gpiochip_add_data._entry_ptr, ptr @of_parse_own_gpio._entry, ptr @of_parse_own_gpio._entry_ptr, ptr @.str, ptr @.str.2, ptr @gpio_of_notifier, ptr @.str.3, ptr @of_mm_gpiochip_add_data.lock_key, ptr @of_mm_gpiochip_add_data.request_key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @of_gpiochip_add_pin_range.group_names_propname, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_of_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mm_gpiochip_add_data.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mm_gpiochip_add_data.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mm_gpiochip_add_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpio_flags_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpio_flags_quirks._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpio_flags_quirks._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpio_flags_quirks._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpio_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_parse_own_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpiochip_add_pin_range.group_names_propname to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpiochip_add_pin_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpiochip_add_pin_range._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpiochip_add_pin_range._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpiochip_add_pin_range._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_gpio_get_count(ptr nocapture noundef readonly %dev, ptr noundef %con_id) local_unnamed_addr #0 align 64 {
entry:
  %propname = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %propname) #8
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = call ptr @memset(ptr %propname, i32 255, i32 32)
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %con_id, null
  br i1 %tobool.not.i, label %if.end7, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %con_id, ptr noundef nonnull dereferenceable(3) @.str.7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end7.thread_crit_edge

lor.lhs.false.i.if.end7.thread_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @of_device_is_compatible(ptr noundef %2, ptr noundef nonnull @.str.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.end.i.of_gpio_spi_cs_get_count.exit_crit_edge

if.end.i.of_gpio_spi_cs_get_count.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_gpio_spi_cs_get_count.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call i32 @of_device_is_compatible(ptr noundef %2, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.of_gpio_spi_cs_get_count.exit_crit_edge

land.lhs.true.i.of_gpio_spi_cs_get_count.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_gpio_spi_cs_get_count.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @of_device_is_compatible(ptr noundef %2, ptr noundef nonnull @.str.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.if.end7.thread_crit_edge, label %land.lhs.true6.i.of_gpio_spi_cs_get_count.exit_crit_edge

land.lhs.true6.i.of_gpio_spi_cs_get_count.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_gpio_spi_cs_get_count.exit

land.lhs.true6.i.if.end7.thread_crit_edge:        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.thread

of_gpio_spi_cs_get_count.exit:                    ; preds = %land.lhs.true6.i.of_gpio_spi_cs_get_count.exit_crit_edge, %land.lhs.true.i.of_gpio_spi_cs_get_count.exit_crit_edge, %if.end.i.of_gpio_spi_cs_get_count.exit_crit_edge
  %call.i.i = tail call i32 @of_count_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp sgt i32 %call.i.i, 0
  br i1 %cmp, label %of_gpio_spi_cs_get_count.exit.cleanup_crit_edge, label %of_gpio_spi_cs_get_count.exit.if.end7.thread_crit_edge

of_gpio_spi_cs_get_count.exit.if.end7.thread_crit_edge: ; preds = %of_gpio_spi_cs_get_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.thread

of_gpio_spi_cs_get_count.exit.cleanup_crit_edge:  ; preds = %of_gpio_spi_cs_get_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.1:                                       ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #10
  %call3.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %propname, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull %con_id, ptr noundef nonnull @.str.12)
  br label %if.end7.1

if.else.1:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %3 = call ptr @memcpy(ptr %propname, ptr @.str.12, i32 5)
  br label %if.end7.1

if.end7.1:                                        ; preds = %if.else.1, %if.then2.1
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call.i26.1 = call i32 @of_count_phandle_with_args(ptr noundef %5, ptr noundef nonnull %propname, ptr noundef nonnull @.str.13) #8
  br label %for.end

if.end7:                                          ; preds = %entry
  %6 = call ptr @memcpy(ptr %propname, ptr @.str.11, i32 6)
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call.i26 = call i32 @of_count_phandle_with_args(ptr noundef %8, ptr noundef nonnull %propname, ptr noundef nonnull @.str.13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp10 = icmp sgt i32 %call.i26, 0
  br i1 %cmp10, label %if.end7.for.end_crit_edge, label %if.else.1

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end7.thread:                                   ; preds = %of_gpio_spi_cs_get_count.exit.if.end7.thread_crit_edge, %land.lhs.true6.i.if.end7.thread_crit_edge, %lor.lhs.false.i.if.end7.thread_crit_edge
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %propname, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull %con_id, ptr noundef nonnull @.str.11)
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  %call.i2632 = call i32 @of_count_phandle_with_args(ptr noundef %10, ptr noundef nonnull %propname, ptr noundef nonnull @.str.13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2632)
  %cmp1033 = icmp sgt i32 %call.i2632, 0
  br i1 %cmp1033, label %if.end7.thread.for.end_crit_edge, label %if.then2.1

if.end7.thread.for.end_crit_edge:                 ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end7.thread.for.end_crit_edge, %if.end7.for.end_crit_edge, %if.end7.1
  %call.i26.lcssa = phi i32 [ %call.i26, %if.end7.for.end_crit_edge ], [ %call.i2632, %if.end7.thread.for.end_crit_edge ], [ %call.i26.1, %if.end7.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.lcssa)
  %tobool13.not = icmp eq i32 %call.i26.lcssa, 0
  %spec.select = select i1 %tobool13.not, i32 -2, i32 %call.i26.lcssa
  br label %cleanup

cleanup:                                          ; preds = %for.end, %of_gpio_spi_cs_get_count.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ %call.i.i, %of_gpio_spi_cs_get_count.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %propname) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @of_gpio_need_valid_mask(ptr nocapture noundef readonly %gc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 39
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 4
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  %2 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp eq i32 %2, 0
  %or.cond = and i1 %cmp, %cmp1
  ret i1 %or.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_get_named_gpio_flags(ptr noundef %np, ptr noundef %list_name, i32 noundef %index, ptr noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %np, ptr noundef %list_name, i32 noundef %index, ptr noundef %flags)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @desc_to_gpio(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_get_named_gpiod_flags(ptr noundef %np, ptr noundef %propname, i32 noundef %index, ptr noundef %flags) unnamed_addr #0 align 64 {
entry:
  %cs.i = alloca i32, align 4
  %gpiospec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %gpiospec) #8
  %0 = call ptr @memset(ptr %gpiospec, i32 255, i32 72)
  %call = call i32 @of_parse_phandle_with_args_map(ptr noundef %np, ptr noundef %propname, ptr noundef nonnull @.str.12, i32 noundef %index, ptr noundef nonnull %gpiospec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_get_named_gpiod_flags.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@of_get_named_gpiod_flags, %do.end)) #8
          to label %if.then6 [label %do.end], !srcloc !155

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_get_named_gpiod_flags.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %propname, ptr noundef %np, i32 noundef %index) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %1 = inttoptr i32 %call to ptr
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call.i = call ptr @gpiochip_find(ptr noundef nonnull %gpiospec, ptr noundef nonnull @of_gpiochip_match_node_and_xlate) #8
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %if.end13

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end13:                                         ; preds = %if.end8
  %of_gpio_n_cells.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 40
  %2 = ptrtoint ptr %of_gpio_n_cells.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %of_gpio_n_cells.i, align 4
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 1
  %4 = ptrtoint ptr %args_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.i = icmp eq i32 %3, %5
  br i1 %cmp.not.i, label %if.end.i, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %if.end13
  %of_xlate.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 41
  %6 = ptrtoint ptr %of_xlate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_xlate.i, align 4
  %call1.i = call i32 %7(ptr noundef nonnull %call.i, ptr noundef nonnull %gpiospec, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = inttoptr i32 %call1.i to ptr
  br label %of_xlate_and_get_gpiod_flags.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call ptr @gpiochip_get_desc(ptr noundef nonnull %call.i, i32 noundef %call1.i) #8
  br label %of_xlate_and_get_gpiod_flags.exit

of_xlate_and_get_gpiod_flags.exit:                ; preds = %if.end5.i, %if.then3.i
  %retval.0.i62 = phi ptr [ %8, %if.then3.i ], [ %call6.i, %if.end5.i ]
  %cmp.i = icmp ugt ptr %retval.0.i62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %of_xlate_and_get_gpiod_flags.exit.out_crit_edge, label %if.end17

of_xlate_and_get_gpiod_flags.exit.out_crit_edge:  ; preds = %of_xlate_and_get_gpiod_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end17:                                         ; preds = %of_xlate_and_get_gpiod_flags.exit
  %tobool18.not = icmp eq ptr %flags, null
  br i1 %tobool18.not, label %if.end17.do.body21_crit_edge, label %if.then19

if.end17.do.body21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

if.then19:                                        ; preds = %if.end17
  %call.i63 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then19.if.then.i_crit_edge

if.then19.if.then.i_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then19
  %call1.i64 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool2.not.i = icmp eq i32 %call1.i64, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %call4.i = call i32 @strcmp(ptr noundef %propname, ptr noundef nonnull dereferenceable(12) @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.land.lhs.true8.i_crit_edge, label %land.lhs.true.i

lor.lhs.false3.i.land.lhs.true8.i_crit_edge:      ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true8.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false3.i
  %call6.i65 = call i32 @strcmp(ptr noundef %propname, ptr noundef nonnull dereferenceable(13) @.str.21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i65)
  %tobool7.not.i = icmp eq i32 %call6.i65, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.land.lhs.true8.i_crit_edge, label %land.lhs.true.i.if.end22.i_crit_edge

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

land.lhs.true.i.land.lhs.true8.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true8.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i.land.lhs.true8.i_crit_edge, %lor.lhs.false3.i.land.lhs.true8.i_crit_edge
  %call9.i = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.end22.i_crit_edge, label %land.lhs.true8.i.if.then.i_crit_edge

land.lhs.true8.i.if.then.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true8.i.if.end22.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then.i:                                        ; preds = %land.lhs.true8.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.then19.if.then.i_crit_edge
  %call.i.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.23, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  %brmerge.i = select i1 %tobool12.not.i, i1 true, i1 %tobool.i.not.i
  br i1 %brmerge.i, label %if.then.i.if.end.i66_crit_edge, label %do.end.i

if.then.i.if.end.i66_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i66

do.end.i:                                         ; preds = %if.then.i
  %tobool.not.i.i = icmp eq ptr %np, null
  br i1 %tobool.not.i.i, label %do.end.i.of_node_full_name.exit.i_crit_edge, label %cond.true.i.i

do.end.i.of_node_full_name.exit.i_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_node_full_name.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %11 = ptrtoint ptr %full_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %full_name.i.i, align 4
  br label %of_node_full_name.exit.i

of_node_full_name.exit.i:                         ; preds = %cond.true.i.i, %do.end.i.of_node_full_name.exit.i_crit_edge
  %cond.i.i = phi ptr [ %12, %cond.true.i.i ], [ @.str.40, %do.end.i.of_node_full_name.exit.i_crit_edge ]
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %cond.i.i) #12
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and18.i = and i32 %14, -2
  store i32 %and18.i, ptr %flags, align 4
  br label %if.end.i66

if.end.i66:                                       ; preds = %of_node_full_name.exit.i, %if.then.i.if.end.i66_crit_edge
  br i1 %tobool.i.not.i, label %if.then20.i, label %if.end.i66.if.end22.i_crit_edge

if.end.i66.if.end22.i_crit_edge:                  ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or.i = or i32 %16, 1
  store i32 %or.i, ptr %flags, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end.i66.if.end22.i_crit_edge, %land.lhs.true8.i.if.end22.i_crit_edge, %land.lhs.true.i.if.end22.i_crit_edge
  %call23.i = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end35.i_crit_edge, label %land.lhs.true25.i

if.end22.i.if.end35.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.lhs.true25.i:                                ; preds = %if.end22.i
  %call.i112.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.26, ptr noundef null) #8
  %tobool.i113.not.i = icmp eq ptr %call.i112.i, null
  br i1 %tobool.i113.not.i, label %land.lhs.true25.i.if.end35.i_crit_edge, label %if.then27.i

land.lhs.true25.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then27.i:                                      ; preds = %land.lhs.true25.i
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or28.i = or i32 %18, 6
  store i32 %or28.i, ptr %flags, align 4
  %tobool.not.i114.i = icmp eq ptr %np, null
  br i1 %tobool.not.i114.i, label %if.then27.i.of_node_full_name.exit118.i_crit_edge, label %cond.true.i116.i

if.then27.i.of_node_full_name.exit118.i_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_node_full_name.exit118.i

cond.true.i116.i:                                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i115.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %19 = ptrtoint ptr %full_name.i115.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %full_name.i115.i, align 4
  br label %of_node_full_name.exit118.i

of_node_full_name.exit118.i:                      ; preds = %cond.true.i116.i, %if.then27.i.of_node_full_name.exit118.i_crit_edge
  %cond.i117.i = phi ptr [ %20, %cond.true.i116.i ], [ @.str.40, %if.then27.i.of_node_full_name.exit118.i_crit_edge ]
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %cond.i117.i) #12
  br label %if.end35.i

if.end35.i:                                       ; preds = %of_node_full_name.exit118.i, %land.lhs.true25.i.if.end35.i_crit_edge, %if.end22.i.if.end35.i_crit_edge
  %call36.i = call i32 @strcmp(ptr noundef %propname, ptr noundef nonnull dereferenceable(9) @.str.30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %land.lhs.true38.i, label %if.end35.i.if.end75.i_crit_edge

if.end35.i.if.end75.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

land.lhs.true38.i:                                ; preds = %if.end35.i
  %call.i119.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.30, ptr noundef null) #8
  %tobool.i120.not.i = icmp eq ptr %call.i119.i, null
  br i1 %tobool.i120.not.i, label %land.lhs.true38.i.if.end75.i_crit_edge, label %if.then40.i

land.lhs.true38.i.if.end75.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

if.then40.i:                                      ; preds = %land.lhs.true38.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i) #8
  %21 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %cs.i, align 4, !annotation !156
  %call41.i = call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #8
  %cmp.not138.i = icmp eq ptr %call41.i, null
  br i1 %cmp.not138.i, label %if.then40.i.for.end.i_crit_edge, label %if.then40.i.for.body.i_crit_edge

if.then40.i.for.body.i_crit_edge:                 ; preds = %if.then40.i
  br label %for.body.i

if.then40.i.for.end.i_crit_edge:                  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then40.i.for.body.i_crit_edge
  %child.0139.i = phi ptr [ %call74.i, %for.inc.i.for.body.i_crit_edge ], [ %call41.i, %if.then40.i.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0139.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %cs.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool43.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool43.not.i, label %if.end45.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end45.i:                                       ; preds = %for.body.i
  %22 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %index)
  %cmp46.i = icmp eq i32 %23, %index
  br i1 %cmp46.i, label %if.then47.i, label %if.end45.i.for.inc.i_crit_edge

if.end45.i.for.inc.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then47.i:                                      ; preds = %if.end45.i
  %call.i121.i = call ptr @of_find_property(ptr noundef nonnull %child.0139.i, ptr noundef nonnull @.str.32, ptr noundef null) #8
  %tobool.i122.not.i = icmp eq ptr %call.i121.i, null
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and61.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool.i122.not.i, label %if.else.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.then47.i
  br i1 %tobool62.not.i, label %if.then49.i.if.end72.i_crit_edge, label %of_node_full_name.exit127.i

if.then49.i.if.end72.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

of_node_full_name.exit127.i:                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i124.i = getelementptr inbounds %struct.device_node, ptr %child.0139.i, i32 0, i32 2
  %26 = ptrtoint ptr %full_name.i124.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %full_name.i124.i, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %27) #12
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and59.i = and i32 %29, -2
  br label %if.end72.sink.split.i

if.else.i:                                        ; preds = %if.then47.i
  br i1 %tobool62.not.i, label %of_node_full_name.exit132.i, label %if.else.i.if.end70.i_crit_edge

if.else.i.if.end70.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i

of_node_full_name.exit132.i:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i129.i = getelementptr inbounds %struct.device_node, ptr %child.0139.i, i32 0, i32 2
  %30 = ptrtoint ptr %full_name.i129.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %full_name.i129.i, align 4
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %31) #12
  br label %if.end70.i

if.end70.i:                                       ; preds = %of_node_full_name.exit132.i, %if.else.i.if.end70.i_crit_edge
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %or71.i = or i32 %33, 1
  br label %if.end72.sink.split.i

if.end72.sink.split.i:                            ; preds = %if.end70.i, %of_node_full_name.exit127.i
  %and59.sink.i = phi i32 [ %and59.i, %of_node_full_name.exit127.i ], [ %or71.i, %if.end70.i ]
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and59.sink.i, ptr %flags, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.end72.sink.split.i, %if.then49.i.if.end72.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %child.0139.i) #8
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end45.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call74.i = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.0139.i) #8
  %cmp.not.i67 = icmp eq ptr %call74.i, null
  br i1 %cmp.not.i67, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end72.i, %if.then40.i.for.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #8
  br label %if.end75.i

if.end75.i:                                       ; preds = %for.end.i, %land.lhs.true38.i.if.end75.i_crit_edge, %if.end35.i.if.end75.i_crit_edge
  %call76.i = call i32 @strcmp(ptr noundef %propname, ptr noundef nonnull dereferenceable(16) @.str.38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %land.lhs.true78.i, label %if.end75.i.do.body21_crit_edge

if.end75.i.do.body21_crit_edge:                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

land.lhs.true78.i:                                ; preds = %if.end75.i
  %call.i133.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.39, ptr noundef null) #8
  %tobool.i134.not.i = icmp eq ptr %call.i133.i, null
  br i1 %tobool.i134.not.i, label %land.lhs.true78.i.do.body21_crit_edge, label %if.then80.i

land.lhs.true78.i.do.body21_crit_edge:            ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

if.then80.i:                                      ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %or81.i = or i32 %36, 1
  store i32 %or81.i, ptr %flags, align 4
  br label %do.body21

do.body21:                                        ; preds = %if.then80.i, %land.lhs.true78.i.do.body21_crit_edge, %if.end75.i.do.body21_crit_edge, %if.end17.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_get_named_gpiod_flags.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@of_get_named_gpiod_flags, %out)) #8
          to label %if.then35 [label %out], !srcloc !155

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_get_named_gpiod_flags.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef %propname, ptr noundef %np, i32 noundef %index, i32 noundef 0) #8
  br label %out

out:                                              ; preds = %if.then35, %do.body21, %of_xlate_and_get_gpiod_flags.exit.out_crit_edge, %if.end13.out_crit_edge, %if.end8.out_crit_edge
  %desc.0 = phi ptr [ %retval.0.i62, %of_xlate_and_get_gpiod_flags.exit.out_crit_edge ], [ %retval.0.i62, %if.then35 ], [ inttoptr (i32 -517 to ptr), %if.end8.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end13.out_crit_edge ], [ %retval.0.i62, %do.body21 ]
  %37 = ptrtoint ptr %gpiospec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gpiospec, align 4
  call void @of_node_put(ptr noundef %38) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi ptr [ %1, %do.end ], [ %desc.0, %out ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %gpiospec) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gpiod_get_from_of_node(ptr noundef %node, ptr noundef %propname, i32 noundef %index, i32 noundef %dflags, ptr noundef %label) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !156
  %call = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %node, ptr noundef %propname, i32 noundef %index, ptr noundef nonnull %flags)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1
  %and3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %and6 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and9 = and i32 %2, 8
  %call12 = call i32 @gpiod_request(ptr noundef nonnull %call, ptr noundef %label) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call12)
  %cmp = icmp ne i32 %call12, -16
  %and13 = and i32 %dflags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = or i1 %tobool14.not, %cmp
  br i1 %or.cond, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool17.not = icmp eq i32 %call12, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %3 = inttoptr i32 %call12 to ptr
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  br i1 %tobool4.not, label %if.end20.if.end31_crit_edge, label %if.then25

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then25:                                        ; preds = %if.end20
  br i1 %tobool7.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %or28 = or i32 %and, 2
  br label %if.end31

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %or29 = or i32 %and, 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27, %if.end20.if.end31_crit_edge
  %lflags.1 = phi i32 [ %or28, %if.then27 ], [ %or29, %if.else ], [ %and, %if.end20.if.end31_crit_edge ]
  %4 = or i32 %lflags.1, %and9
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and36 = and i32 %6, 16
  %7 = or i32 %4, %and36
  %and41 = and i32 %6, 32
  %8 = or i32 %7, %and41
  %call46 = call i32 @gpiod_configure_flags(ptr noundef nonnull %call, ptr noundef %propname, i32 noundef %8, i32 noundef %dflags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_put(ptr noundef nonnull %call) #8
  %9 = inttoptr i32 %call46 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end31.cleanup_crit_edge, %if.then18, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.then18 ], [ %9, %if.then48 ], [ %call, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_configure_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_find_gpio(ptr nocapture noundef readonly %dev, ptr noundef %con_id, i32 noundef %idx, ptr nocapture noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %whitelist.i = alloca [3 x ptr], align 4
  %prop_name.i = alloca [32 x i8], align 1
  %prop_name = alloca [32 x i8], align 1
  %of_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prop_name) #8
  %0 = call ptr @memset(ptr %prop_name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_flags) #8
  %1 = ptrtoint ptr %of_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %of_flags, align 4, !annotation !156
  %tobool.not = icmp eq ptr %con_id, null
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.then.1:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  %call.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop_name, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull %con_id, ptr noundef nonnull @.str.12)
  br label %if.end.1

if.else.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = call ptr @memcpy(ptr %prop_name, ptr @.str.12, i32 5)
  br label %if.end.1

if.end.1:                                         ; preds = %if.else.1, %if.then.1
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call5.1 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %4, ptr noundef nonnull %prop_name, i32 noundef %idx, ptr noundef nonnull %of_flags)
  %cmp8.1 = icmp eq ptr %call5.1, inttoptr (i32 -2 to ptr)
  br i1 %cmp8.1, label %if.then15, label %if.end.1.if.end27_crit_edge

if.end.1.if.end27_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end:                                           ; preds = %entry
  %5 = call ptr @memcpy(ptr %prop_name, ptr @.str.11, i32 6)
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call5 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %7, ptr noundef nonnull %prop_name, i32 noundef %idx, ptr noundef nonnull %of_flags)
  %cmp8 = icmp eq ptr %call5, inttoptr (i32 -2 to ptr)
  br i1 %cmp8, label %if.else.1, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end.thread:                                    ; preds = %entry
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop_name, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull %con_id, ptr noundef nonnull @.str.11)
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call5190 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %9, ptr noundef nonnull %prop_name, i32 noundef %idx, ptr noundef nonnull %of_flags)
  %cmp8191 = icmp eq ptr %call5190, inttoptr (i32 -2 to ptr)
  br i1 %cmp8191, label %if.then.1, label %if.end.thread.if.end27_crit_edge

if.end.thread.if.end27_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then15:                                        ; preds = %if.end.1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prop_name.i) #8
  %10 = call ptr @memset(ptr %prop_name.i, i32 255, i32 32)
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %or.cond.i = or i1 %tobool.not, %tobool.not.i
  br i1 %or.cond.i, label %if.end17.thread196, label %if.end17

if.end17.thread196:                               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prop_name.i) #8
  br label %if.then22

if.end17:                                         ; preds = %if.then15
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop_name.i, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, ptr noundef nonnull %con_id) #8
  %call5.i = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %12, ptr noundef nonnull %prop_name.i, i32 noundef 0, ptr noundef nonnull %of_flags) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prop_name.i) #8
  %cmp21 = icmp eq ptr %call5.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp21, label %if.end17.if.then22_crit_edge, label %if.end17.if.end27_crit_edge

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end17.if.then22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.then22:                                        ; preds = %if.end17.if.then22_crit_edge, %if.end17.thread196
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i124 = call i32 @of_device_is_compatible(ptr noundef %14, ptr noundef nonnull @.str.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool.not.i125 = icmp eq i32 %call.i124, 0
  br i1 %tobool.not.i125, label %land.lhs.true.i, label %if.then22.if.end.i126_crit_edge

if.then22.if.end.i126_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i126

land.lhs.true.i:                                  ; preds = %if.then22
  %call1.i = call i32 @of_device_is_compatible(ptr noundef %14, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.end.i126_crit_edge

land.lhs.true.i.if.end.i126_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i126

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = call i32 @of_device_is_compatible(ptr noundef %14, ptr noundef nonnull @.str.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.if.then32_crit_edge, label %land.lhs.true3.i.if.end.i126_crit_edge

land.lhs.true3.i.if.end.i126_crit_edge:           ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i126

land.lhs.true3.i.if.then32_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.end.i126:                                      ; preds = %land.lhs.true3.i.if.end.i126_crit_edge, %land.lhs.true.i.if.end.i126_crit_edge, %if.then22.if.end.i126_crit_edge
  br i1 %tobool.not, label %if.then32.thread, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i126
  %call8.i = call i32 @strcmp(ptr noundef nonnull %con_id, ptr noundef nonnull dereferenceable(3) @.str.7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %of_find_spi_cs_gpio.exit, label %if.then32.thread205

if.then32.thread205:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %whitelist.i) #8
  %15 = call ptr @memcpy(ptr %whitelist.i, ptr @__const.of_find_regulator_gpio.whitelist, i32 12)
  br label %if.end.i134

of_find_spi_cs_gpio.exit:                         ; preds = %lor.lhs.false.i
  %call13.i = call ptr @of_find_gpio(ptr noundef %dev, ptr noundef null, i32 noundef %idx, ptr noundef %flags) #8
  %cmp.i128 = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %of_find_spi_cs_gpio.exit.if.end27_crit_edge, label %of_find_spi_cs_gpio.exit.cleanup_crit_edge

of_find_spi_cs_gpio.exit.cleanup_crit_edge:       ; preds = %of_find_spi_cs_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

of_find_spi_cs_gpio.exit.if.end27_crit_edge:      ; preds = %of_find_spi_cs_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %of_find_spi_cs_gpio.exit.if.end27_crit_edge, %if.end17.if.end27_crit_edge, %if.end.thread.if.end27_crit_edge, %if.end.if.end27_crit_edge, %if.end.1.if.end27_crit_edge
  %desc.3 = phi ptr [ %call13.i, %of_find_spi_cs_gpio.exit.if.end27_crit_edge ], [ %call5.i, %if.end17.if.end27_crit_edge ], [ %call5190, %if.end.thread.if.end27_crit_edge ], [ %call5.1, %if.end.1.if.end27_crit_edge ], [ %call5, %if.end.if.end27_crit_edge ]
  %cmp.i129 = icmp ugt ptr %desc.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %land.lhs.true29, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true29:                                  ; preds = %if.end27
  %cmp31 = icmp eq ptr %desc.3, inttoptr (i32 -2 to ptr)
  br i1 %cmp31, label %land.lhs.true29.if.then32_crit_edge, label %land.lhs.true29.if.end48_crit_edge

land.lhs.true29.if.end48_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true29.if.then32_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then32.thread:                                 ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %whitelist.i) #8
  br label %of_find_regulator_gpio.exit

if.then32:                                        ; preds = %land.lhs.true29.if.then32_crit_edge, %land.lhs.true3.i.if.then32_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %whitelist.i) #8
  %16 = call ptr @memcpy(ptr %whitelist.i, ptr @__const.of_find_regulator_gpio.whitelist, i32 12)
  br i1 %tobool.not, label %if.then32.of_find_regulator_gpio.exit_crit_edge, label %if.then32.if.end.i134_crit_edge

if.then32.if.end.i134_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i134

if.then32.of_find_regulator_gpio.exit_crit_edge:  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_find_regulator_gpio.exit

if.end.i134:                                      ; preds = %if.then32.if.end.i134_crit_edge, %if.then32.thread205
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call1.i132 = call i32 @match_string(ptr noundef nonnull %whitelist.i, i32 noundef 3, ptr noundef nonnull %con_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %cmp.i133 = icmp slt i32 %call1.i132, 0
  br i1 %cmp.i133, label %if.end.i134.of_find_regulator_gpio.exit_crit_edge, label %if.end4.i

if.end.i134.of_find_regulator_gpio.exit_crit_edge: ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_find_regulator_gpio.exit

if.end4.i:                                        ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i135 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %18, ptr noundef nonnull %con_id, i32 noundef 0, ptr noundef nonnull %of_flags) #8
  br label %of_find_regulator_gpio.exit

of_find_regulator_gpio.exit:                      ; preds = %if.end4.i, %if.end.i134.of_find_regulator_gpio.exit_crit_edge, %if.then32.of_find_regulator_gpio.exit_crit_edge, %if.then32.thread
  %retval.0.i136 = phi ptr [ %call5.i135, %if.end4.i ], [ inttoptr (i32 -2 to ptr), %if.then32.of_find_regulator_gpio.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.i134.of_find_regulator_gpio.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then32.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %whitelist.i) #8
  br label %if.end34

if.end34:                                         ; preds = %of_find_regulator_gpio.exit, %if.end27.if.end34_crit_edge
  %desc.4 = phi ptr [ %retval.0.i136, %of_find_regulator_gpio.exit ], [ %desc.3, %if.end27.if.end34_crit_edge ]
  %cmp38 = icmp eq ptr %desc.4, inttoptr (i32 -2 to ptr)
  br i1 %cmp38, label %if.then39, label %if.end34.if.end48_crit_edge

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then39:                                        ; preds = %if.end34
  br i1 %tobool.not, label %if.then39.cleanup_crit_edge, label %lor.lhs.false.i141

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i141:                               ; preds = %if.then39
  %call.i139 = call i32 @strcmp(ptr noundef nonnull %con_id, ptr noundef nonnull dereferenceable(10) @.str.45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool1.not.i140 = icmp eq i32 %call.i139, 0
  br i1 %tobool1.not.i140, label %if.end41, label %lor.lhs.false.i141.lor.lhs.false.i150_crit_edge

lor.lhs.false.i141.lor.lhs.false.i150_crit_edge:  ; preds = %lor.lhs.false.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i150

if.end41:                                         ; preds = %lor.lhs.false.i141
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call3.i143 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %20, ptr noundef nonnull %con_id, i32 noundef 0, ptr noundef nonnull %of_flags) #8
  %cmp45 = icmp eq ptr %call3.i143, inttoptr (i32 -2 to ptr)
  br i1 %cmp45, label %if.end41.lor.lhs.false.i150_crit_edge, label %if.end41.if.end48_crit_edge

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end41.lor.lhs.false.i150_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i150

lor.lhs.false.i150:                               ; preds = %if.end41.lor.lhs.false.i150_crit_edge, %lor.lhs.false.i141.lor.lhs.false.i150_crit_edge
  %call.i148 = call i32 @strcmp(ptr noundef nonnull %con_id, ptr noundef nonnull dereferenceable(10) @.str.46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool1.not.i149 = icmp eq i32 %call.i148, 0
  br i1 %tobool1.not.i149, label %if.end.i153, label %lor.lhs.false.i150.cleanup_crit_edge

lor.lhs.false.i150.cleanup_crit_edge:             ; preds = %lor.lhs.false.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i153:                                      ; preds = %lor.lhs.false.i150
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call3.i152 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %22, ptr noundef nonnull %con_id, i32 noundef 0, ptr noundef nonnull %of_flags) #8
  br label %if.end48

if.end48:                                         ; preds = %if.end.i153, %if.end41.if.end48_crit_edge, %if.end34.if.end48_crit_edge, %land.lhs.true29.if.end48_crit_edge
  %desc.6 = phi ptr [ %call3.i143, %if.end41.if.end48_crit_edge ], [ %call3.i152, %if.end.i153 ], [ %desc.3, %land.lhs.true29.if.end48_crit_edge ], [ %desc.4, %if.end34.if.end48_crit_edge ]
  %cmp.i155 = icmp ugt ptr %desc.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.end48.cleanup_crit_edge, label %if.end51

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end48
  %23 = ptrtoint ptr %of_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %of_flags, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.end51.if.end54_crit_edge, label %if.then53

if.end51.if.end54_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51.if.end54_crit_edge
  %and55 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end65_crit_edge, label %if.then57

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %and58 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %. = select i1 %tobool59.not, i32 4, i32 2
  %or61 = or i32 %28, %.
  store i32 %or61, ptr %flags, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then57, %if.end54.if.end65_crit_edge
  %and66 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %or69 = or i32 %30, 8
  store i32 %or69, ptr %flags, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  %and71 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end75_crit_edge, label %if.then73

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %or74 = or i32 %32, 16
  store i32 %or74, ptr %flags, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end70.if.end75_crit_edge
  %and76 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.cleanup_crit_edge, label %if.then78

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %or79 = or i32 %34, 32
  store i32 %or79, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %if.end75.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %lor.lhs.false.i150.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %of_find_spi_cs_gpio.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call13.i, %of_find_spi_cs_gpio.exit.cleanup_crit_edge ], [ %desc.6, %if.end48.cleanup_crit_edge ], [ %desc.6, %if.then78 ], [ %desc.6, %if.end75.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %lor.lhs.false.i150.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_flags) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prop_name) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_gpio_notify(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_reconfig_get_state_change(i32 noundef %action, ptr noundef %arg) #8
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arg, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.47, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arg, align 4
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 10
  %call.i49 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %_flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not = icmp eq i32 %call.i49, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arg, align 4
  %parent = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %call.i50 = tail call ptr @gpiochip_find(ptr noundef %8, ptr noundef nonnull @of_gpiochip_match_node) #8
  %cmp = icmp eq ptr %call.i50, null
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arg, align 4
  %call11 = tail call fastcc i32 @of_gpiochip_add_hog(ptr noundef nonnull %call.i50, ptr noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %12) #12
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg, align 4
  %_flags.i51 = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i51) #8
  %sub.i = sub i32 1, %call11
  %or.i = or i32 %sub.i, 32768
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arg, align 4
  %_flags.i52 = getelementptr inbounds %struct.device_node, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %_flags.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_flags.i52, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %sw.bb19.cleanup_crit_edge, label %if.end24

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %sw.bb19
  %parent26 = getelementptr inbounds %struct.device_node, ptr %16, i32 0, i32 6
  %20 = ptrtoint ptr %parent26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent26, align 4
  %call.i53 = tail call ptr @gpiochip_find(ptr noundef %21, ptr noundef nonnull @of_gpiochip_match_node) #8
  %cmp28 = icmp eq ptr %call.i53, null
  br i1 %cmp28, label %if.end24.cleanup_crit_edge, label %if.end30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arg, align 4
  %gpiodev.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i53, i32 0, i32 1
  %24 = ptrtoint ptr %gpiodev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gpiodev.i, align 4
  %descs1.i = getelementptr inbounds %struct.gpio_device, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %descs1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %descs1.i, align 4
  %ngpio.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i53, i32 0, i32 20
  %28 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ngpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp16.not.i = icmp eq i16 %29, 0
  br i1 %cmp16.not.i, label %if.end30.of_gpiochip_remove_hog.exit_crit_edge, label %if.end30.for.body.i_crit_edge

if.end30.for.body.i_crit_edge:                    ; preds = %if.end30
  br label %for.body.i

if.end30.of_gpiochip_remove_hog.exit_crit_edge:   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_gpiochip_remove_hog.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end30.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end30.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_desc, ptr %27, i32 %i.017.i
  %flags.i = getelementptr %struct.gpio_desc, ptr %27, i32 %i.017.i, i32 1
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i, align 4
  %32 = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %hog4.i = getelementptr %struct.gpio_desc, ptr %27, i32 %i.017.i, i32 4
  %33 = ptrtoint ptr %hog4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hog4.i, align 4
  %cmp5.i = icmp eq ptr %34, %23
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiochip_free_own_desc(ptr noundef %arrayidx.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %35 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %36 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.of_gpiochip_remove_hog.exit_crit_edge

for.inc.i.of_gpiochip_remove_hog.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_gpiochip_remove_hog.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

of_gpiochip_remove_hog.exit:                      ; preds = %for.inc.i.of_gpiochip_remove_hog.exit_crit_edge, %if.end30.of_gpiochip_remove_hog.exit_crit_edge
  %37 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arg, align 4
  %_flags.i54 = getelementptr inbounds %struct.device_node, ptr %38, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i54) #8
  br label %cleanup

cleanup:                                          ; preds = %of_gpiochip_remove_hog.exit, %if.end24.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %do.end, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or.i, %do.end ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 1, %sw.bb19.cleanup_crit_edge ], [ 1, %if.end24.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %of_gpiochip_remove_hog.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_mm_gpiochip_add_data(ptr noundef %np, ptr noundef %mm_gc, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %np) #8
  %0 = ptrtoint ptr %mm_gc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %mm_gc, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.of_mm_gpio_chip, ptr %mm_gc, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %regs, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.err1_crit_edge, label %if.end7

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err1

if.end7:                                          ; preds = %if.end
  %base = getelementptr inbounds %struct.gpio_chip, ptr %mm_gc, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %base, align 4
  %save_regs = getelementptr inbounds %struct.of_mm_gpio_chip, ptr %mm_gc, i32 0, i32 1
  %3 = ptrtoint ptr %save_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %save_regs, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %4(ptr noundef %mm_gc) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %of_node = getelementptr inbounds %struct.gpio_chip, ptr %mm_gc, i32 0, i32 39
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %np, ptr %of_node, align 4
  %call13 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %mm_gc, ptr noundef %data, ptr noundef nonnull @of_mm_gpiochip_add_data.lock_key, ptr noundef nonnull @of_mm_gpiochip_add_data.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %err2

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err2:                                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %7) #8
  br label %err1

err1:                                             ; preds = %err2, %if.end.err1_crit_edge
  %ret.0 = phi i32 [ %call13, %err2 ], [ -12, %if.end.err1_crit_edge ]
  %8 = ptrtoint ptr %mm_gc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm_gc, align 4
  tail call void @kfree(ptr noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %err1, %entry.do.end_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err1 ], [ -12, %entry.do.end_crit_edge ]
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %np, i32 noundef %ret.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_mm_gpiochip_remove(ptr noundef %mm_gc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mm_gc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiochip_remove(ptr noundef nonnull %mm_gc) #8
  %regs = getelementptr inbounds %struct.of_mm_gpio_chip, ptr %mm_gc, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %1) #8
  %2 = ptrtoint ptr %mm_gc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm_gc, align 4
  tail call void @kfree(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_gpiochip_add(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %pinspec.i = alloca %struct.of_phandle_args, align 4
  %name.i = alloca ptr, align 4
  %start.i = alloca i32, align 4
  %count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 39
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_xlate = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 41
  %2 = ptrtoint ptr %of_xlate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_xlate, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 40
  %4 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %5 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @of_gpio_simple_xlate, ptr %of_xlate, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %of_gpio_n_cells5 = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 40
  %6 = ptrtoint ptr %of_gpio_n_cells5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %of_gpio_n_cells5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp = icmp ugt i32 %7, 16
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start.i) #8
  %8 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %start.i, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #8
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %count.i, align 4, !annotation !156
  %call.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i32 noundef 4) #8
  %10 = and i32 %call.i.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp230.i = icmp sgt i32 %call.i.i, 0
  %or.cond.i = and i1 %cmp230.i, %11
  br i1 %or.cond.i, label %for.body.lr.ph.i, label %if.end7.of_gpiochip_init_valid_mask.exit_crit_edge

if.end7.of_gpiochip_init_valid_mask.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_gpiochip_init_valid_mask.exit

for.body.lr.ph.i:                                 ; preds = %if.end7
  %ngpio.i = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %valid_mask.i = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 38
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add15.i, %for.inc.i.for.body.i_crit_edge ]
  %call3.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i32 noundef %i.031.i, ptr noundef nonnull %start.i) #8
  %add.i = or i32 %i.031.i, 1
  %call4.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i32 noundef %add.i, ptr noundef nonnull %count.i) #8
  %12 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start.i, align 4
  %14 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp5.not.i = icmp ult i32 %13, %conv.i
  br i1 %cmp5.not.i, label %lor.lhs.false7.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false7.i:                                 ; preds = %for.body.i
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 4
  %add8.i = add i32 %17, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %conv.i)
  %cmp11.not.i = icmp ult i32 %add8.i, %conv.i
  br i1 %cmp11.not.i, label %if.end14.i, label %lor.lhs.false7.i.for.inc.i_crit_edge

lor.lhs.false7.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end14.i:                                       ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %valid_mask.i, align 4
  call void @__bitmap_clear(ptr noundef %19, i32 noundef %13, i32 noundef %17) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %lor.lhs.false7.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add15.i = add i32 %i.031.i, 2
  %cmp2.i = icmp slt i32 %add15.i, %call.i.i
  br i1 %cmp2.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.of_gpiochip_init_valid_mask.exit_crit_edge

for.inc.i.of_gpiochip_init_valid_mask.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_gpiochip_init_valid_mask.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

of_gpiochip_init_valid_mask.exit:                 ; preds = %for.inc.i.of_gpiochip_init_valid_mask.exit_crit_edge, %if.end7.of_gpiochip_init_valid_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #8
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pinspec.i) #8
  %22 = call ptr @memset(ptr %pinspec.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #8
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i, align 4, !annotation !156
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %of_gpiochip_init_valid_mask.exit.if.end10_crit_edge, label %if.end.i

of_gpiochip_init_valid_mask.exit.if.end10_crit_edge: ; preds = %of_gpiochip_init_valid_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i:                                         ; preds = %of_gpiochip_init_valid_mask.exit
  %call.i = call ptr @of_find_property(ptr noundef nonnull %21, ptr noundef nonnull @of_gpiochip_add_pin_range.group_names_propname, ptr noundef null) #8
  %call.i101.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %21, ptr noundef nonnull @.str.56, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %pinspec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool2.not102.i = icmp eq i32 %call.i101.i, 0
  br i1 %tobool2.not102.i, label %if.end4.lr.ph.i, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end4.lr.ph.i:                                  ; preds = %if.end.i
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %pinspec.i, i32 0, i32 2
  %arrayidx.i = getelementptr inbounds %struct.of_phandle_args, ptr %pinspec.i, i32 0, i32 2, i32 2
  %tobool13.not.i = icmp eq ptr %call.i, null
  %arrayidx26.i = getelementptr inbounds %struct.of_phandle_args, ptr %pinspec.i, i32 0, i32 2, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %for.inc.i32.if.end4.i_crit_edge, %if.end4.lr.ph.i
  %index.0103.i = phi i32 [ 0, %if.end4.lr.ph.i ], [ %inc.i, %for.inc.i32.if.end4.i_crit_edge ]
  %24 = ptrtoint ptr %pinspec.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pinspec.i, align 4
  %call6.i = call ptr @of_pinctrl_get(ptr noundef %25) #8
  %26 = ptrtoint ptr %pinspec.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pinspec.i, align 4
  call void @of_node_put(ptr noundef %27) #8
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %if.end4.i.of_gpiochip_add_pin_range.exit_crit_edge, label %if.end10.i

if.end4.i.of_gpiochip_add_pin_range.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_gpiochip_add_pin_range.exit

if.end10.i:                                       ; preds = %if.end4.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool11.not.i = icmp eq i32 %29, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  br i1 %tobool13.not.i, label %if.then12.i.if.end21.i_crit_edge, label %if.then14.i

if.then12.i.if.end21.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then14.i:                                      ; preds = %if.then12.i
  %call.i99.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %21, ptr noundef nonnull @of_gpiochip_add_pin_range.group_names_propname, ptr noundef nonnull %name.i, i32 noundef 1, i32 noundef %index.0103.i) #8
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %char098.i = load i8, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char098.i)
  %tobool17.not.i = icmp eq i8 %char098.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.if.end21.i_crit_edge, label %do.end.i

if.then14.i.if.end21.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

do.end.i:                                         ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull %21) #12
  br label %if.end10

if.end21.i:                                       ; preds = %if.then14.i.if.end21.i_crit_edge, %if.then12.i.if.end21.i_crit_edge
  %call22.i = call ptr @pinctrl_dev_get_devname(ptr noundef nonnull %call6.i) #8
  %33 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %args.i, align 4
  %35 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx26.i, align 4
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %call29.i = call i32 @gpiochip_add_pin_range(ptr noundef %chip, ptr noundef %call22.i, i32 noundef %34, i32 noundef %36, i32 noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end21.i.for.inc.i32_crit_edge, label %if.end21.i.of_gpiochip_add_pin_range.exit_crit_edge

if.end21.i.of_gpiochip_add_pin_range.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_gpiochip_add_pin_range.exit

if.end21.i.for.inc.i32_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i32

if.else.i:                                        ; preds = %if.end10.i
  %39 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool35.not.i = icmp eq i32 %40, 0
  br i1 %tobool35.not.i, label %if.end42.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %21) #12
  br label %if.end10

if.end42.i:                                       ; preds = %if.else.i
  br i1 %tobool13.not.i, label %do.end47.i, label %if.end50.i

do.end47.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull %21, ptr noundef nonnull @of_gpiochip_add_pin_range.group_names_propname) #12
  br label %if.end10

if.end50.i:                                       ; preds = %if.end42.i
  %call.i100.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %21, ptr noundef nonnull @of_gpiochip_add_pin_range.group_names_propname, ptr noundef nonnull %name.i, i32 noundef 1, i32 noundef %index.0103.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i100.i)
  %tobool52.not.i = icmp sgt i32 %call.i100.i, -1
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end50.i.if.end10_crit_edge

if.end50.i.if.end10_crit_edge:                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end54.i:                                       ; preds = %if.end50.i
  %41 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %char0.i = load i8, ptr %42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool56.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool56.not.i, label %do.end60.i, label %if.end63.i

do.end60.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %call62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull %21) #12
  br label %if.end10

if.end63.i:                                       ; preds = %if.end54.i
  %44 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %args.i, align 4
  %call66.i = call i32 @gpiochip_add_pingroup_range(ptr noundef %chip, ptr noundef nonnull %call6.i, i32 noundef %45, ptr noundef %42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end63.i.for.inc.i32_crit_edge, label %if.end63.i.of_gpiochip_add_pin_range.exit_crit_edge

if.end63.i.of_gpiochip_add_pin_range.exit_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_gpiochip_add_pin_range.exit

if.end63.i.for.inc.i32_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i32

for.inc.i32:                                      ; preds = %if.end63.i.for.inc.i32_crit_edge, %if.end21.i.for.inc.i32_crit_edge
  %inc.i = add i32 %index.0103.i, 1
  %call.i.i31 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %21, ptr noundef nonnull @.str.56, ptr noundef null, i32 noundef 3, i32 noundef %inc.i, ptr noundef nonnull %pinspec.i) #8
  %tobool2.not.i = icmp eq i32 %call.i.i31, 0
  br i1 %tobool2.not.i, label %for.inc.i32.if.end4.i_crit_edge, label %for.inc.i32.if.end10_crit_edge

for.inc.i32.if.end10_crit_edge:                   ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.inc.i32.if.end4.i_crit_edge:                  ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

of_gpiochip_add_pin_range.exit:                   ; preds = %if.end63.i.of_gpiochip_add_pin_range.exit_crit_edge, %if.end21.i.of_gpiochip_add_pin_range.exit_crit_edge, %if.end4.i.of_gpiochip_add_pin_range.exit_crit_edge
  %retval.0.i = phi i32 [ -517, %if.end4.i.of_gpiochip_add_pin_range.exit_crit_edge ], [ %call29.i, %if.end21.i.of_gpiochip_add_pin_range.exit_crit_edge ], [ %call66.i, %if.end63.i.of_gpiochip_add_pin_range.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinspec.i) #8
  br label %cleanup

if.end10:                                         ; preds = %for.inc.i32.if.end10_crit_edge, %do.end60.i, %if.end50.i.if.end10_crit_edge, %do.end47.i, %do.end39.i, %do.end.i, %if.end.i.if.end10_crit_edge, %of_gpiochip_init_valid_mask.exit.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinspec.i) #8
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 4
  %call12 = call ptr @of_node_get(ptr noundef %47) #8
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 4
  %call.i34 = call ptr @of_get_next_available_child(ptr noundef %49, ptr noundef null) #8
  %cmp.not18.i = icmp eq ptr %call.i34, null
  br i1 %cmp.not18.i, label %if.end10.cleanup_crit_edge, label %if.end10.for.body.i36_crit_edge

if.end10.for.body.i36_crit_edge:                  ; preds = %if.end10
  br label %for.body.i36

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i36:                                     ; preds = %for.inc.i38.for.body.i36_crit_edge, %if.end10.for.body.i36_crit_edge
  %np.019.i = phi ptr [ %call7.i, %for.inc.i38.for.body.i36_crit_edge ], [ %call.i34, %if.end10.for.body.i36_crit_edge ]
  %call.i.i35 = call ptr @of_find_property(ptr noundef nonnull %np.019.i, ptr noundef nonnull @.str.47, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i35, null
  br i1 %tobool.i.not.i, label %for.body.i36.for.inc.i38_crit_edge, label %if.end.i37

for.body.i36.for.inc.i38_crit_edge:               ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i38

if.end.i37:                                       ; preds = %for.body.i36
  %call2.i = call fastcc i32 @of_gpiochip_add_hog(ptr noundef %chip, ptr noundef nonnull %np.019.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then15, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  %_flags.i.i = getelementptr inbounds %struct.device_node, ptr %np.019.i, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %_flags.i.i) #8
  br label %for.inc.i38

for.inc.i38:                                      ; preds = %if.end5.i, %for.body.i36.for.inc.i38_crit_edge
  %50 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node, align 4
  %call7.i = call ptr @of_get_next_available_child(ptr noundef %51, ptr noundef nonnull %np.019.i) #8
  %cmp.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not.i, label %for.inc.i38.cleanup_crit_edge, label %for.inc.i38.for.body.i36_crit_edge

for.inc.i38.for.body.i36_crit_edge:               ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i36

for.inc.i38.cleanup_crit_edge:                    ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %np.019.i) #8
  %52 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node, align 4
  call void @of_node_put(ptr noundef %53) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %for.inc.i38.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %of_gpiochip_add_pin_range.exit, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %retval.0.i, %of_gpiochip_add_pin_range.exit ], [ %call2.i, %if.then15 ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %for.inc.i38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_gpio_simple_xlate(ptr nocapture noundef readonly %gc, ptr nocapture noundef readonly %gpiospec, ptr noundef writeonly %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 40
  %0 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %of_gpio_n_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 810, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end16:                                         ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp19 = icmp ult i32 %3, %1
  br i1 %cmp19, label %do.end35, label %if.end51, !prof !157

do.end35:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 814, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end51:                                         ; preds = %if.end16
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp52.not = icmp ult i32 %5, %conv
  br i1 %cmp52.not, label %if.end55, label %if.end51.return_crit_edge

if.end51.return_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end55:                                         ; preds = %if.end51
  %tobool56.not = icmp eq ptr %flags, null
  br i1 %tobool56.not, label %if.end55.if.end60_crit_edge, label %if.then57

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx59 = getelementptr %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx59, align 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %flags, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end55.if.end60_crit_edge
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args, align 4
  br label %return

return:                                           ; preds = %if.end60, %if.end51.return_crit_edge, %do.end35, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end35 ], [ %12, %if.end60 ], [ -22, %if.end51.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_gpiochip_remove(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 39
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 4
  tail call void @of_node_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @of_gpio_dev_init(ptr nocapture noundef %gc, ptr nocapture noundef %gdev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %of_node2 = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 1, i32 27
  %4 = ptrtoint ptr %of_node2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %of_node2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fwnode = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 3
  %5 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwnode, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %cmp.i.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

if.then4.is_of_node.exit.thread_crit_edge:        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %8, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %6, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %if.then4.is_of_node.exit.thread_crit_edge
  %9 = phi ptr [ null, %if.then4.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  %of_node7 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 39
  %10 = ptrtoint ptr %of_node7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %of_node7, align 4
  br label %if.end8

if.end8:                                          ; preds = %is_of_node.exit.thread, %if.end.if.end8_crit_edge
  %of_node9 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 39
  %11 = ptrtoint ptr %of_node9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node9, align 4
  %tobool10.not = icmp eq ptr %12, null
  %of_node16 = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 1, i32 27
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %of_node16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %of_node16, align 8
  br label %if.end18

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %of_node16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node16, align 8
  %16 = ptrtoint ptr %of_node9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %of_node9, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_parse_phandle_with_args_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_gpiochip_match_node_and_xlate(ptr noundef %chip, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiodev = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %gpiodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiodev, align 4
  %of_node = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %of_xlate = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 41
  %6 = ptrtoint ptr %of_xlate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_xlate, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %7(ptr noundef %chip, ptr noundef %data, ptr noundef null) #8
  %8 = xor i32 %call, -1
  %call.lobit.not = lshr i32 %8, 31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %9 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %call.lobit.not, %land.rhs ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_desc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_get_state_change(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_gpiochip_add_hog(ptr noundef %chip, ptr noundef %hog) unnamed_addr #0 align 64 {
entry:
  %xlate_flags.i = alloca i32, align 4
  %gpiospec.i = alloca %struct.of_phandle_args, align 4
  %tmp.i = alloca i32, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #8
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !156
  %1 = getelementptr inbounds i8, ptr %gpiospec.i, i32 8
  %of_node.i = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlate_flags.i) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %gpiospec.i) #8
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp.i, align 4, !annotation !156
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 4
  %tobool.not.i27 = icmp eq ptr %5, null
  br i1 %tobool.not.i27, label %entry.of_parse_own_gpio.exit.thread_crit_edge, label %if.end.i.lr.ph

entry.of_parse_own_gpio.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_own_gpio.exit.thread

if.end.i.lr.ph:                                   ; preds = %entry
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec.i, i32 0, i32 1
  %of_gpio_n_cells.i.i = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 40
  %of_xlate.i.i = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 41
  br label %if.end.i

if.end.i:                                         ; preds = %if.end4.if.end.i_crit_edge, %if.end.i.lr.ph
  %6 = phi ptr [ %5, %if.end.i.lr.ph ], [ %36, %if.end4.if.end.i_crit_edge ]
  %i.028 = phi i32 [ 0, %if.end.i.lr.ph ], [ %inc, %if.end4.if.end.i_crit_edge ]
  %7 = ptrtoint ptr %xlate_flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %xlate_flags.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.13, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool2.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = inttoptr i32 %call.i.i.i to ptr
  br label %of_parse_own_gpio.exit

if.end5.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %gpiospec.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %gpiospec.i, align 4
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp.i, align 4
  %12 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp99.not.i = icmp eq i32 %11, 0
  br i1 %cmp99.not.i, label %if.end5.i.for.end.i_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0100.i, 1
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %15 = phi i32 [ %14, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end5.i.for.body.i_crit_edge ]
  %i.0100.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %15, %i.028
  %add.i = add i32 %mul.i, %i.0100.i
  %arrayidx.i = getelementptr %struct.of_phandle_args, ptr %gpiospec.i, i32 0, i32 2, i32 %i.0100.i
  %call7.i = call i32 @of_property_read_u32_index(ptr noundef %hog, ptr noundef nonnull @.str.11, i32 noundef %add.i, ptr noundef %arrayidx.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %for.cond.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = inttoptr i32 %call7.i to ptr
  br label %of_parse_own_gpio.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.end5.i.for.end.i_crit_edge
  %17 = ptrtoint ptr %of_gpio_n_cells.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %of_gpio_n_cells.i.i, align 4
  %19 = ptrtoint ptr %args_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not.i.i = icmp eq i32 %18, %20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.end.i.of_parse_own_gpio.exit.thread_crit_edge

for.end.i.of_parse_own_gpio.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_own_gpio.exit.thread

if.end.i.i:                                       ; preds = %for.end.i
  %21 = ptrtoint ptr %of_xlate.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_xlate.i.i, align 4
  %call1.i.i = call i32 %22(ptr noundef %chip, ptr noundef nonnull %gpiospec.i, ptr noundef nonnull %xlate_flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = inttoptr i32 %call1.i.i to ptr
  br label %of_xlate_and_get_gpiod_flags.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = call ptr @gpiochip_get_desc(ptr noundef %chip, i32 noundef %call1.i.i) #8
  br label %of_xlate_and_get_gpiod_flags.exit.i

of_xlate_and_get_gpiod_flags.exit.i:              ; preds = %if.end5.i.i, %if.then3.i.i
  %retval.0.i.i = phi ptr [ %23, %if.then3.i.i ], [ %call6.i.i, %if.end5.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %of_xlate_and_get_gpiod_flags.exit.i.of_parse_own_gpio.exit_crit_edge, label %if.end15.i

of_xlate_and_get_gpiod_flags.exit.i.of_parse_own_gpio.exit_crit_edge: ; preds = %of_xlate_and_get_gpiod_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_own_gpio.exit

if.end15.i:                                       ; preds = %of_xlate_and_get_gpiod_flags.exit.i
  %24 = ptrtoint ptr %xlate_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xlate_flags.i, align 4
  %26 = and i32 %25, 57
  %call.i.i = call ptr @of_find_property(ptr noundef %hog, ptr noundef nonnull @.str.50, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.else.i, label %if.end15.i.if.end51.i_crit_edge

if.end15.i.if.end51.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.else.i:                                        ; preds = %if.end15.i
  %call.i92.i = call ptr @of_find_property(ptr noundef %hog, ptr noundef nonnull @.str.51, ptr noundef null) #8
  %tobool.i93.not.i = icmp eq ptr %call.i92.i, null
  br i1 %tobool.i93.not.i, label %if.else40.i, label %if.else.i.if.end51.i_crit_edge

if.else.i.if.end51.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.else40.i:                                      ; preds = %if.else.i
  %call.i94.i = call ptr @of_find_property(ptr noundef %hog, ptr noundef nonnull @.str.52, ptr noundef null) #8
  %tobool.i95.not.i = icmp eq ptr %call.i94.i, null
  br i1 %tobool.i95.not.i, label %do.end.i, label %if.else40.i.if.end51.i_crit_edge

if.else40.i.if.end51.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

do.end.i:                                         ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #10
  %call46.i = call i32 @desc_to_gpio(ptr noundef %retval.0.i.i) #8
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %call46.i, ptr noundef %hog) #12
  br label %of_parse_own_gpio.exit.thread

if.end51.i:                                       ; preds = %if.else40.i.if.end51.i_crit_edge, %if.else.i.if.end51.i_crit_edge, %if.end15.i.if.end51.i_crit_edge
  %.sink103.i = phi i32 [ 1, %if.end15.i.if.end51.i_crit_edge ], [ 3, %if.else.i.if.end51.i_crit_edge ], [ 7, %if.else40.i.if.end51.i_crit_edge ]
  %call53.i = call i32 @of_property_read_string(ptr noundef %hog, ptr noundef nonnull @.str.55, ptr noundef nonnull %name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end51.i.of_parse_own_gpio.exit_crit_edge, label %if.then55.i

if.end51.i.of_parse_own_gpio.exit_crit_edge:      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_own_gpio.exit

if.then55.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %hog to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hog, align 4
  %29 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %name, align 4
  br label %of_parse_own_gpio.exit

of_parse_own_gpio.exit.thread:                    ; preds = %if.end4.of_parse_own_gpio.exit.thread_crit_edge, %do.end.i, %for.end.i.of_parse_own_gpio.exit.thread_crit_edge, %entry.of_parse_own_gpio.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %gpiospec.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlate_flags.i) #8
  br label %cleanup

of_parse_own_gpio.exit:                           ; preds = %if.then55.i, %if.end51.i.of_parse_own_gpio.exit_crit_edge, %of_xlate_and_get_gpiod_flags.exit.i.of_parse_own_gpio.exit_crit_edge, %if.then9.i, %if.then3.i
  %dflags.1 = phi i32 [ 0, %of_xlate_and_get_gpiod_flags.exit.i.of_parse_own_gpio.exit_crit_edge ], [ %.sink103.i, %if.end51.i.of_parse_own_gpio.exit_crit_edge ], [ %.sink103.i, %if.then55.i ], [ 0, %if.then9.i ], [ 0, %if.then3.i ]
  %lflags.5 = phi i32 [ 0, %of_xlate_and_get_gpiod_flags.exit.i.of_parse_own_gpio.exit_crit_edge ], [ %26, %if.end51.i.of_parse_own_gpio.exit_crit_edge ], [ %26, %if.then55.i ], [ 0, %if.then9.i ], [ 0, %if.then3.i ]
  %retval.0.i = phi ptr [ %retval.0.i.i, %of_xlate_and_get_gpiod_flags.exit.i.of_parse_own_gpio.exit_crit_edge ], [ %retval.0.i.i, %if.end51.i.of_parse_own_gpio.exit_crit_edge ], [ %retval.0.i.i, %if.then55.i ], [ %16, %if.then9.i ], [ %8, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %gpiospec.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlate_flags.i) #8
  %cmp.i16 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16, label %of_parse_own_gpio.exit.cleanup_crit_edge, label %if.end

of_parse_own_gpio.exit.cleanup_crit_edge:         ; preds = %of_parse_own_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %of_parse_own_gpio.exit
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 4
  %call2 = call i32 @gpiod_hog(ptr noundef %retval.0.i, ptr noundef %31, i32 noundef %lflags.5, i32 noundef %dflags.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %hog5 = getelementptr inbounds %struct.gpio_desc, ptr %retval.0.i, i32 0, i32 4
  %32 = ptrtoint ptr %hog5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %hog, ptr %hog5, align 4
  %inc = add i32 %i.028, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlate_flags.i) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %gpiospec.i) #8
  %33 = call ptr @memset(ptr %1, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %34 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %tmp.i, align 4, !annotation !156
  %35 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end4.of_parse_own_gpio.exit.thread_crit_edge, label %if.end4.if.end.i_crit_edge

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end4.of_parse_own_gpio.exit.thread_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_own_gpio.exit.thread

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %of_parse_own_gpio.exit.cleanup_crit_edge, %of_parse_own_gpio.exit.thread
  %retval.0 = phi i32 [ 0, %of_parse_own_gpio.exit.thread ], [ 0, %of_parse_own_gpio.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @of_gpiochip_match_node(ptr nocapture noundef readonly %chip, ptr noundef readnone %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiodev = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %gpiodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiodev, align 4
  %of_node = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %3, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_hog(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_free_own_desc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_pinctrl_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_devname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pingroup_range(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !78, !80, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !116, !118, !120, !121, !122, !123, !125, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpiolib-of.c", i32 71, i32 41}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpiolib-of.c", i32 74, i32 41}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpiolib-of.c", i32 127, i32 42}
!6 = !{ptr @__ksymtab_of_get_named_gpio_flags, !7, !"__ksymtab_of_get_named_gpio_flags", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpiolib-of.c", i32 290, i32 1}
!8 = !{ptr @__ksymtab_gpiod_get_from_of_node, !9, !"__ksymtab_gpiod_get_from_of_node", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpiolib-of.c", i32 365, i32 1}
!10 = !{ptr @gpio_of_notifier, !11, !"gpio_of_notifier", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpiolib-of.c", i32 784, i32 23}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpiolib-of.c", i32 853, i32 36}
!14 = !{ptr @of_mm_gpiochip_add_data.lock_key, !15, !"lock_key", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpiolib-of.c", i32 868, i32 8}
!16 = !{ptr @of_mm_gpiochip_add_data.request_key, !15, !"request_key", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpiolib-of.c", i32 878, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @of_mm_gpiochip_add_data._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @of_mm_gpiochip_add_data._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_of_mm_gpiochip_add_data, !24, !"__ksymtab_of_mm_gpiochip_add_data", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpiolib-of.c", i32 881, i32 1}
!25 = !{ptr @__ksymtab_of_mm_gpiochip_remove, !26, !"__ksymtab_of_mm_gpiochip_remove", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpiolib-of.c", i32 898, i32 1}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpiolib-of.c", i32 44, i32 32}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpiolib-of.c", i32 46, i32 35}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpiolib-of.c", i32 47, i32 35}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpiolib-of.c", i32 48, i32 35}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpiolib-of.c", i32 50, i32 33}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpiolib.h", i32 73, i32 71}
!39 = distinct !{null, !40, !"gpio_suffixes", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpiolib.h", i32 73, i32 42}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/of_gpio.h", i32 104, i32 50}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpiolib-of.c", i32 250, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @of_get_named_gpiod_flags.__UNIQUE_ID_ddebug223, !44, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpiolib-of.c", i32 268, i32 2}
!50 = !{ptr @of_get_named_gpiod_flags.__UNIQUE_ID_ddebug224, !49, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpiolib-of.c", i32 143, i32 35}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpiolib-of.c", i32 144, i32 35}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpiolib-of.c", i32 145, i32 27}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpiolib-of.c", i32 146, i32 20}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpiolib-of.c", i32 147, i32 36}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpiolib-of.c", i32 149, i32 9}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpiolib-of.c", i32 157, i32 4}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @of_gpio_flags_quirks._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @of_gpio_flags_quirks._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpio/gpiolib-of.c", i32 169, i32 32}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpio/gpiolib-of.c", i32 171, i32 3}
!72 = !{ptr @of_gpio_flags_quirks._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @of_gpio_flags_quirks._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpio/gpiolib-of.c", i32 180, i32 57}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpio/gpiolib-of.c", i32 187, i32 38}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpio/gpiolib-of.c", i32 203, i32 38}
!80 = !{ptr @of_gpio_flags_quirks._entry.33, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/gpio/gpiolib-of.c", i32 205, i32 7}
!82 = !{ptr @of_gpio_flags_quirks._entry_ptr.34, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpio/gpiolib-of.c", i32 211, i32 7}
!85 = !{ptr @of_gpio_flags_quirks._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @of_gpio_flags_quirks._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpio/gpiolib-of.c", i32 223, i32 24}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpio/gpiolib-of.c", i32 224, i32 32}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/of.h", i32 261, i32 30}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpio/gpiolib-of.c", i32 387, i32 35}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpio/gpiolib-of.c", i32 439, i32 3}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpio/gpiolib-of.c", i32 440, i32 3}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpio/gpiolib-of.c", i32 441, i32 3}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpio/gpiolib-of.c", i32 468, i32 32}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpio/gpiolib-of.c", i32 486, i32 32}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpio/gpiolib-of.c", i32 749, i32 38}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpio/gpiolib-of.c", i32 761, i32 4}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @of_gpio_notify._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @of_gpio_notify._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpio/gpiolib-of.c", i32 625, i32 32}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpio/gpiolib-of.c", i32 627, i32 37}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpio/gpiolib-of.c", i32 629, i32 37}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpio/gpiolib-of.c", i32 632, i32 3}
!120 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @of_parse_own_gpio._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @of_parse_own_gpio._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpio/gpiolib-of.c", i32 637, i32 42}
!125 = !{ptr @of_gpiochip_add_pin_range.group_names_propname, !126, !"group_names_propname", i1 false, i1 false}
!126 = !{!"../drivers/gpio/gpiolib-of.c", i32 930, i32 20}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpio/gpiolib-of.c", i32 939, i32 46}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpio/gpiolib-of.c", i32 955, i32 6}
!131 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @of_gpiochip_add_pin_range._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @of_gpiochip_add_pin_range._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpio/gpiolib-of.c", i32 971, i32 5}
!136 = !{ptr @of_gpiochip_add_pin_range._entry.59, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @of_gpiochip_add_pin_range._entry_ptr.61, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpio/gpiolib-of.c", i32 977, i32 5}
!140 = !{ptr @of_gpiochip_add_pin_range._entry.62, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @of_gpiochip_add_pin_range._entry_ptr.64, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpio/gpiolib-of.c", i32 989, i32 5}
!144 = !{ptr @of_gpiochip_add_pin_range._entry.65, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @of_gpiochip_add_pin_range._entry_ptr.67, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{i64 2148302825, i64 2148302830, i64 2148302843, i64 2148302887, i64 2148302921, i64 2148302942}
!156 = !{!"auto-init"}
!157 = !{!"branch_weights", i32 1, i32 2000}
