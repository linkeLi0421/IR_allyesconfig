; ModuleID = '/llk/IR_all_yes/drivers/regulator/wm8350-regulator.c_pt.bc'
source_filename = "../drivers/regulator/wm8350-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm8350_isink_set_flash\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8350_isink_set_flash\09\09\09\09"
module asm "\09.long\09__crc_wm8350_isink_set_flash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8350_isink_set_flash:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8350_isink_set_flash\22\09\09\09\09\09"
module asm "__kstrtabns_wm8350_isink_set_flash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wm8350_dcdc_set_slot\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8350_dcdc_set_slot\09\09\09\09"
module asm "\09.long\09__crc_wm8350_dcdc_set_slot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8350_dcdc_set_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8350_dcdc_set_slot\22\09\09\09\09\09"
module asm "__kstrtabns_wm8350_dcdc_set_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wm8350_ldo_set_slot\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8350_ldo_set_slot\09\09\09\09"
module asm "\09.long\09__crc_wm8350_ldo_set_slot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8350_ldo_set_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8350_ldo_set_slot\22\09\09\09\09\09"
module asm "__kstrtabns_wm8350_ldo_set_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wm8350_dcdc25_set_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8350_dcdc25_set_mode\09\09\09\09"
module asm "\09.long\09__crc_wm8350_dcdc25_set_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8350_dcdc25_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8350_dcdc25_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_wm8350_dcdc25_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wm8350_register_regulator\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8350_register_regulator\09\09\09\09"
module asm "\09.long\09__crc_wm8350_register_regulator\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8350_register_regulator:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8350_register_regulator\22\09\09\09\09\09"
module asm "__kstrtabns_wm8350_register_regulator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wm8350_register_led\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8350_register_led\09\09\09\09"
module asm "\09.long\09__crc_wm8350_register_led\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8350_register_led:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8350_register_led\22\09\09\09\09\09"
module asm "__kstrtabns_wm8350_register_led:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.wm8350_dcdc_efficiency = type { i32, i32, i32 }
%struct.wm8350 = type { ptr, ptr, i8, %struct.mutex, %struct.completion, %struct.mutex, i32, i32, [7 x i16], %struct.wm8350_codec, %struct.wm8350_gpio, %struct.wm8350_hwmon, %struct.wm8350_pmic, %struct.wm8350_power, %struct.wm8350_rtc, %struct.wm8350_wdt }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wm8350_codec = type { ptr, ptr }
%struct.wm8350_gpio = type { ptr }
%struct.wm8350_hwmon = type { ptr, ptr }
%struct.wm8350_pmic = type { i32, i32, i32, i32, i16, i16, i16, i16, [12 x ptr], [2 x %struct.wm8350_led] }
%struct.wm8350_led = type { ptr, %struct.work_struct, %struct.spinlock, i32, %struct.led_classdev, i32, i32, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.wm8350_power = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wm8350_rtc = type { ptr, ptr, i32, i32 }
%struct.wm8350_wdt = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wm8350_led_platform_data = type { ptr, ptr, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_wm8350_isink_set_flash = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8350_isink_set_flash = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8350_isink_set_flash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8350_isink_set_flash to i32), ptr @__kstrtab_wm8350_isink_set_flash, ptr @__kstrtabns_wm8350_isink_set_flash }, section "___ksymtab_gpl+wm8350_isink_set_flash", align 4
@wm8350_dcdc_set_slot.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8350_regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wm8350_dcdc_set_slot\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/wm8350-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s %d start %d stop %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_wm8350_dcdc_set_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8350_dcdc_set_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8350_dcdc_set_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8350_dcdc_set_slot to i32), ptr @__kstrtab_wm8350_dcdc_set_slot, ptr @__kstrtabns_wm8350_dcdc_set_slot }, section "___ksymtab_gpl+wm8350_dcdc_set_slot", align 4
@wm8350_ldo_set_slot.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 -100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm8350_ldo_set_slot\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_wm8350_ldo_set_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8350_ldo_set_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8350_ldo_set_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8350_ldo_set_slot to i32), ptr @__kstrtab_wm8350_ldo_set_slot, ptr @__kstrtabns_wm8350_ldo_set_slot }, section "___ksymtab_gpl+wm8350_ldo_set_slot", align 4
@wm8350_dcdc25_set_mode.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm8350_dcdc25_set_mode\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s %d mode: %s %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"boost\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_wm8350_dcdc25_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8350_dcdc25_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8350_dcdc25_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8350_dcdc25_set_mode to i32), ptr @__kstrtab_wm8350_dcdc25_set_mode, ptr @__kstrtabns_wm8350_dcdc25_set_mode }, section "___ksymtab_gpl+wm8350_dcdc25_set_mode", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8350-regulator\00", [47 x i8] zeroinitializer }, align 32
@wm8350_register_regulator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1205, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register regulator %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wm8350_register_regulator\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8350_register_regulator._entry_ptr = internal global ptr @wm8350_register_regulator._entry, section ".printk_index", align 4
@__kstrtab_wm8350_register_regulator = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8350_register_regulator = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8350_register_regulator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8350_register_regulator to i32), ptr @__kstrtab_wm8350_register_regulator, ptr @__kstrtabns_wm8350_register_regulator }, section "___ksymtab_gpl+wm8350_register_regulator", align 4
@wm8350_register_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1238, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid LED index %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm8350_register_led\00", [44 x i8] zeroinitializer }, align 32
@wm8350_register_led._entry_ptr = internal global ptr @wm8350_register_led._entry, section ".printk_index", align 4
@wm8350_register_led._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1245, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LED %d already allocated\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8350_register_led._entry_ptr.19 = internal global ptr @wm8350_register_led._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm8350-led\00", [21 x i8] zeroinitializer }, align 32
@wm8350_register_led._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.2, i32 1251, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate LED %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8350_register_led._entry_ptr.23 = internal global ptr @wm8350_register_led._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"led_isink\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"led_vcc\00", [24 x i8] zeroinitializer }, align 32
@wm8350_register_led._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 1296, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register LED %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8350_register_led._entry_ptr.28 = internal global ptr @wm8350_register_led._entry.26, section ".printk_index", align 4
@__kstrtab_wm8350_register_led = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8350_register_led = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8350_register_led = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8350_register_led to i32), ptr @__kstrtab_wm8350_register_led, ptr @__kstrtabns_wm8350_register_led }, section "___ksymtab_gpl+wm8350_register_led", align 4
@__initcall__kmod_wm8350_regulator__294_1319_wm8350_regulator_init4 = internal global ptr @wm8350_regulator_init, section ".initcall4.init", align 4
@wm8350_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm8350_regulator_probe, ptr @wm8350_regulator_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm8350_regulator_exit = internal global ptr @wm8350_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [38 x i8] c"wm8350_regulator.author=Liam Girdwood\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [73 x i8] c"wm8350_regulator.description=WM8350 voltage and current regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [57 x i8] c"wm8350_regulator.file=drivers/regulator/wm8350-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [29 x i8] c"wm8350_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [49 x i8] c"wm8350_regulator.alias=platform:wm8350-regulator\00", section ".modinfo", align 1
@wm8350_reg = internal constant { [12 x %struct.regulator_desc], [720 x i8] } { [12 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 103, i32 0, ptr @wm8350_dcdc_ops, i32 34, i32 0, ptr null, i32 850000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 180, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 0, i32 0, ptr @wm8350_dcdc2_5_ops, i32 33, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 103, i32 0, ptr @wm8350_dcdc_ops, i32 32, i32 0, ptr null, i32 850000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 186, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 103, i32 0, ptr @wm8350_dcdc_ops, i32 31, i32 0, ptr null, i32 850000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 189, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 0, i32 0, ptr @wm8350_dcdc2_5_ops, i32 30, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 103, i32 0, ptr @wm8350_dcdc_ops, i32 29, i32 0, ptr null, i32 850000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 195, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 32, i32 0, ptr @wm8350_ldo_ops, i32 28, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @wm8350_ldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 200, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 256, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 32, i32 0, ptr @wm8350_ldo_ops, i32 27, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @wm8350_ldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 203, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 512, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 32, i32 0, ptr @wm8350_ldo_ops, i32 26, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @wm8350_ldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 206, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 1024, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 32, i32 0, ptr @wm8350_ldo_ops, i32 25, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @wm8350_ldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 209, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 2048, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 0, i32 64, ptr @wm8350_isink_ops, i32 13, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @isink_cur, i32 0, i32 0, i32 0, i32 0, i32 0, i32 172, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 0, i32 64, ptr @wm8350_isink_ops, i32 14, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @isink_cur, i32 0, i32 0, i32 0, i32 0, i32 0, i32 174, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [720 x i8] zeroinitializer }, align 32
@wm8350_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1145, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm8350_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@wm8350_regulator_probe._entry_ptr = internal global ptr @wm8350_regulator_probe._entry, section ".printk_index", align 4
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UV\00", [29 x i8] zeroinitializer }, align 32
@wm8350_regulator_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.2, i32 1154, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register regulator %s IRQ\0A\00", [59 x i8] zeroinitializer }, align 32
@wm8350_regulator_probe._entry_ptr.34 = internal global ptr @wm8350_regulator_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC1\00", [26 x i8] zeroinitializer }, align 32
@wm8350_dcdc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @wm8350_dcdc_set_mode, ptr @wm8350_dcdc_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8350_dcdc_get_optimum_mode, ptr null, ptr null, ptr null, ptr @wm8350_dcdc_set_suspend_voltage, ptr @wm8350_dcdc_set_suspend_enable, ptr @wm8350_dcdc_set_suspend_disable, ptr @wm8350_dcdc_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC2\00", [26 x i8] zeroinitializer }, align 32
@wm8350_dcdc2_5_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8350_dcdc25_set_suspend_enable, ptr @wm8350_dcdc25_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC3\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC4\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC5\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC6\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@wm8350_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr @wm8350_ldo_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8350_ldo_set_suspend_voltage, ptr @wm8350_ldo_set_suspend_enable, ptr @wm8350_ldo_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@wm8350_ldo_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 15, i32 50000 }, %struct.linear_range { i32 1800000, i32 16, i32 31, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ISINKA\00", [25 x i8] zeroinitializer }, align 32
@wm8350_isink_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8350_isink_enable, ptr @wm8350_isink_disable, ptr @wm8350_isink_is_enabled, ptr null, ptr null, ptr null, ptr @wm8350_isink_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@isink_cur = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 11, i32 14, i32 16, i32 19, i32 23, i32 27, i32 32, i32 39, i32 46, i32 54, i32 65, i32 77, i32 92, i32 109, i32 130, i32 154, i32 183, i32 218, i32 259, i32 308, i32 367, i32 436, i32 518, i32 616, i32 733, i32 872, i32 1037, i32 1233, i32 1466, i32 1744, i32 2073, i32 2466, i32 2933, i32 3487, i32 4147, i32 4932, i32 5865, i32 6975, i32 8294, i32 9864, i32 11730, i32 13949, i32 16589, i32 19728, i32 23460, i32 27899, i32 33178, i32 39455, i32 46920, i32 55798, i32 66355, i32 78910, i32 93840, i32 111596, i32 132710, i32 157820, i32 187681, i32 223191], [64 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ISINKB\00", [25 x i8] zeroinitializer }, align 32
@wm8350_dcdc_get_mode.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wm8350_dcdc_get_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mask %x active %x sleep %x force %x\00", [60 x i8] zeroinitializer }, align 32
@dcdc1_6_efficiency = internal constant { [4 x %struct.wm8350_dcdc_efficiency], [48 x i8] } { [4 x %struct.wm8350_dcdc_efficiency] [%struct.wm8350_dcdc_efficiency { i32 0, i32 10000, i32 8 }, %struct.wm8350_dcdc_efficiency { i32 10000, i32 100000, i32 4 }, %struct.wm8350_dcdc_efficiency { i32 100000, i32 1000000, i32 2 }, %struct.wm8350_dcdc_efficiency { i32 -1, i32 -1, i32 2 }], [48 x i8] zeroinitializer }, align 32
@dcdc3_4_efficiency = internal constant { [4 x %struct.wm8350_dcdc_efficiency], [48 x i8] } { [4 x %struct.wm8350_dcdc_efficiency] [%struct.wm8350_dcdc_efficiency { i32 0, i32 10000, i32 8 }, %struct.wm8350_dcdc_efficiency { i32 10000, i32 100000, i32 4 }, %struct.wm8350_dcdc_efficiency { i32 100000, i32 800000, i32 2 }, %struct.wm8350_dcdc_efficiency { i32 -1, i32 -1, i32 2 }], [48 x i8] zeroinitializer }, align 32
@wm8350_dcdc_set_suspend_voltage.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 67, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wm8350_dcdc_set_suspend_voltage\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %d mV %d\0A\00", [19 x i8] zeroinitializer }, align 32
@wm8350_ldo_set_suspend_voltage.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.50, i8 0, i8 121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wm8350_ldo_set_suspend_voltage\00", [33 x i8] zeroinitializer }, align 32
@switch.table.wm8350_dcdc_set_mode = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 248, i16 248, i16 250, i16 251, i16 248, i16 253], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8350_dcdc_set_mode.52 = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 248, i16 248, i16 250, i16 251, i16 248, i16 253], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8350_dcdc_set_mode.53 = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 248, i16 248, i16 250, i16 251, i16 248, i16 253], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8350_dcdc_set_mode.54 = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 248, i16 248, i16 250, i16 251, i16 248, i16 253], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8350_dcdc_get_mode = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 248, i32 248, i32 250, i32 251, i32 248, i32 253], [40 x i8] zeroinitializer }, align 32
@switch.table.wm8350_dcdc_set_suspend_voltage = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 182, i32 182, i32 188, i32 191, i32 182, i32 197], [40 x i8] zeroinitializer }, align 32
@switch.table.wm8350_isink_enable_time = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1950, i32 3910, i32 7800], [16 x i8] zeroinitializer }, align 32
@switch.table.wm8350_isink_enable_time.55 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 250000, i32 500000, i32 1000000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 577, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 624, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 659, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1189, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1204, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1238, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1245, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1249, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1251, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1256, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1271, i32 30 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1295, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [24 x i8] c"wm8350_regulator_driver\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1307, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"wm8350_reg\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 921, i32 36 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1144, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1151, i32 27 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1153, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 923, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"wm8350_dcdc_ops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 873, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 938, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"wm8350_dcdc2_5_ops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 890, i32 35 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 948, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 963, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 978, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 988, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1003, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"wm8350_ldo_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 898, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"wm8350_ldo_ranges\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 473, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1018, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1033, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1048, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1063, i32 11 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"wm8350_isink_ops\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 912, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant [10 x i8] c"isink_cur\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 26, i32 27 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1075, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 794, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [19 x i8] c"dcdc1_6_efficiency\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 821, i32 44 }
@___asan_gen_.247 = private unnamed_addr constant [19 x i8] c"dcdc3_4_efficiency\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 828, i32 44 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 269, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [40 x i8] c"../drivers/regulator/wm8350-regulator.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 484, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [34 x i8] c"switch.table.wm8350_dcdc_set_mode\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [37 x i8] c"switch.table.wm8350_dcdc_set_mode.52\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [37 x i8] c"switch.table.wm8350_dcdc_set_mode.53\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [37 x i8] c"switch.table.wm8350_dcdc_set_mode.54\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [34 x i8] c"switch.table.wm8350_dcdc_get_mode\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [45 x i8] c"switch.table.wm8350_dcdc_set_suspend_voltage\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [38 x i8] c"switch.table.wm8350_isink_enable_time\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [41 x i8] c"switch.table.wm8350_isink_enable_time.55\00", align 1
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_wm8350_regulator_exit, ptr @__initcall__kmod_wm8350_regulator__294_1319_wm8350_regulator_init4, ptr @__ksymtab_wm8350_dcdc25_set_mode, ptr @__ksymtab_wm8350_dcdc_set_slot, ptr @__ksymtab_wm8350_isink_set_flash, ptr @__ksymtab_wm8350_ldo_set_slot, ptr @__ksymtab_wm8350_register_led, ptr @__ksymtab_wm8350_register_regulator, ptr @wm8350_register_led._entry, ptr @wm8350_register_led._entry.17, ptr @wm8350_register_led._entry.21, ptr @wm8350_register_led._entry.26, ptr @wm8350_register_led._entry_ptr, ptr @wm8350_register_led._entry_ptr.19, ptr @wm8350_register_led._entry_ptr.23, ptr @wm8350_register_led._entry_ptr.28, ptr @wm8350_register_regulator._entry, ptr @wm8350_register_regulator._entry_ptr, ptr @wm8350_regulator_exit, ptr @wm8350_regulator_probe._entry, ptr @wm8350_regulator_probe._entry.32, ptr @wm8350_regulator_probe._entry_ptr, ptr @wm8350_regulator_probe._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @wm8350_regulator_driver, ptr @wm8350_reg, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @wm8350_dcdc_ops, ptr @.str.36, ptr @wm8350_dcdc2_5_ops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @wm8350_ldo_ops, ptr @wm8350_ldo_ranges, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @wm8350_isink_ops, ptr @isink_cur, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @dcdc1_6_efficiency, ptr @dcdc3_4_efficiency, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @switch.table.wm8350_dcdc_set_mode, ptr @switch.table.wm8350_dcdc_set_mode.52, ptr @switch.table.wm8350_dcdc_set_mode.53, ptr @switch.table.wm8350_dcdc_set_mode.54, ptr @switch.table.wm8350_dcdc_get_mode, ptr @switch.table.wm8350_dcdc_set_suspend_voltage, ptr @switch.table.wm8350_isink_enable_time, ptr @switch.table.wm8350_isink_enable_time.55], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_register_regulator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_register_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_register_led._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_register_led._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_register_led._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_reg to i32), i32 2928, i32 3648, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_regulator_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dcdc2_5_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_ldo_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_isink_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isink_cur to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcdc1_6_efficiency to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcdc3_4_efficiency to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8350_dcdc_set_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8350_dcdc_set_mode.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8350_dcdc_set_mode.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8350_dcdc_set_mode.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8350_dcdc_get_mode to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8350_dcdc_set_suspend_voltage to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8350_isink_enable_time to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8350_isink_enable_time.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_isink_set_flash(ptr noundef %wm8350, i32 noundef %isink, i16 noundef zeroext %mode, i16 noundef zeroext %trigger, i16 noundef zeroext %duration, i16 noundef zeroext %on_ramp, i16 noundef zeroext %off_ramp, i16 noundef zeroext %drive) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %isink to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %isink, label %entry.return_crit_edge [
    i32 10, label %entry.return.sink.split_crit_edge
    i32 11, label %sw.bb13
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb13, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 175, %sw.bb13 ], [ 173, %entry.return.sink.split_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mode)
  %tobool.not = icmp eq i16 %mode, 0
  %cond = select i1 %tobool.not, i16 0, i16 -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %trigger)
  %tobool2.not = icmp eq i16 %trigger, 0
  %cond3 = select i1 %tobool2.not, i16 0, i16 16384
  %or = or i16 %on_ramp, %duration
  %or5 = or i16 %or, %cond
  %or7 = or i16 %or5, %cond3
  %or9 = or i16 %or7, %off_ramp
  %or11 = or i16 %or9, %drive
  %call = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef %.sink, i16 noundef zeroext %or11) #6
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_dcdc_set_slot(ptr noundef %wm8350, i32 noundef %dcdc, i16 noundef zeroext %start, i16 noundef zeroext %stop, i16 noundef zeroext %fault) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8350_dcdc_set_slot.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8350_dcdc_set_slot, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm8350, align 4
  %conv = zext i16 %start to i32
  %conv4 = zext i16 %stop to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8350_dcdc_set_slot.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %dcdc, i32 noundef %conv, i32 noundef %conv4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = or i16 %stop, %start
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %2)
  %.not = icmp ult i16 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %dcdc)
  %3 = icmp ult i32 %dcdc, 6
  %or.cond = and i1 %.not, %3
  br i1 %or.cond, label %switch.lookup, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult = mul i32 %dcdc, 3
  %switch.offset = add i32 %switch.idx.mult, 181
  %call17 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef %switch.offset) #6
  %4 = and i16 %call17, 63
  %shl = shl nuw nsw i16 %start, 10
  %or = or i16 %4, %shl
  %shl23 = shl nuw nsw i16 %stop, 6
  %shl26 = shl i16 %fault, 14
  %or24 = or i16 %shl26, %shl23
  %or27 = or i16 %or24, %or
  %call29 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef %switch.offset, i16 noundef zeroext %or27) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wm8350_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_ldo_set_slot(ptr noundef %wm8350, i32 noundef %ldo, i16 noundef zeroext %start, i16 noundef zeroext %stop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8350_ldo_set_slot.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8350_ldo_set_slot, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm8350, align 4
  %conv = zext i16 %start to i32
  %conv4 = zext i16 %stop to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8350_ldo_set_slot.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %ldo, i32 noundef %conv, i32 noundef %conv4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = or i16 %stop, %start
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %2)
  %.not = icmp ult i16 %2, 16
  br i1 %.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %switch.tableidx = add i32 %ldo, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 4
  br i1 %3, label %switch.lookup, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult = mul i32 %switch.tableidx, 3
  %switch.offset = add i32 %switch.idx.mult, 201
  %call15 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef %switch.offset) #6
  %4 = and i16 %call15, -961
  %shl = shl nuw nsw i16 %start, 10
  %shl21 = shl nuw nsw i16 %stop, 6
  %or = or i16 %shl21, %shl
  %or22 = or i16 %or, %4
  %call24 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef %switch.offset, i16 noundef zeroext %or22) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_dcdc25_set_mode(ptr noundef %wm8350, i32 noundef %dcdc, i16 noundef zeroext %mode, i16 noundef zeroext %ilim, i16 noundef zeroext %ramp, i16 noundef zeroext %feedback) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8350_dcdc25_set_mode.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8350_dcdc25_set_mode, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm8350, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mode)
  %tobool4.not = icmp eq i16 %mode, 0
  %cond = select i1 %tobool4.not, ptr @.str.8, ptr @.str.7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ilim)
  %tobool6.not = icmp eq i16 %ilim, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.7, ptr @.str.9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8350_dcdc25_set_mode.__UNIQUE_ID_ddebug292, ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %dcdc, ptr noundef nonnull %cond, ptr noundef nonnull %cond7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %dcdc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %dcdc, label %do.end.cleanup_crit_edge [
    i32 1, label %do.end.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb24
  ]

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb24:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb24, %do.end.cleanup.sink.split_crit_edge
  %.sink58 = phi i32 [ 192, %sw.bb24 ], [ 183, %do.end.cleanup.sink.split_crit_edge ]
  %call8 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef %.sink58) #6
  %3 = and i16 %call8, -16476
  %shl = shl i16 %mode, 14
  %shl14 = shl i16 %ilim, 6
  %shl17 = shl i16 %ramp, 3
  %or = or i16 %shl14, %shl
  %or15 = or i16 %or, %shl17
  %or18 = or i16 %or15, %feedback
  %or21 = or i16 %or18, %3
  %call23 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef %.sink58, i16 noundef zeroext %or21) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_register_regulator(ptr noundef %wm8350, i32 noundef %reg, ptr noundef %initdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %reg)
  %0 = icmp ugt i32 %reg, 11
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pmic = getelementptr inbounds %struct.wm8350, ptr %wm8350, i32 0, i32 12
  %arrayidx = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 8, i32 %reg
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg)
  %cmp6 = icmp ult i32 %reg, 6
  br i1 %cmp6, label %land.lhs.true7, label %if.end11

land.lhs.true7:                                   ; preds = %land.lhs.true
  %3 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pmic, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %reg)
  %cmp9 = icmp slt i32 %4, %reg
  br i1 %cmp9, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end19_crit_edge

land.lhs.true7.if.end19_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %reg)
  %cmp12 = icmp ugt i32 %reg, 9
  br i1 %cmp12, label %land.lhs.true15, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true15:                                  ; preds = %if.end11
  %max_isink = getelementptr inbounds %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %max_isink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_isink, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %reg)
  %cmp17 = icmp slt i32 %6, %reg
  br i1 %cmp17, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end19_crit_edge

land.lhs.true15.if.end19_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true15.if.end19_crit_edge, %if.end11.if.end19_crit_edge, %land.lhs.true7.if.end19_crit_edge
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.10, i32 noundef %reg) #6
  %tobool20.not = icmp eq ptr %call, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %arrayidx, align 4
  %driver_data = getelementptr inbounds %struct.regulator_init_data, ptr %initdata, i32 0, i32 5
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %wm8350, ptr %driver_data, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %initdata, ptr %platform_data, align 8
  %10 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wm8350, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %wm8350, ptr %driver_data.i.i, align 4
  %call28 = tail call i32 @platform_device_add(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.end22.cleanup_crit_edge, label %do.end

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wm8350, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %reg, i32 noundef %call28) #9
  tail call void @platform_device_put(ptr noundef nonnull %call) #6
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -19, %land.lhs.true7.cleanup_crit_edge ], [ -19, %land.lhs.true15.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ], [ %call28, %do.end ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_register_led(ptr noundef %wm8350, i32 noundef %lednum, i32 noundef %dcdc, i32 noundef %isink, ptr noundef %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lednum)
  %cmp = icmp ugt i32 %lednum, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm8350, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %lednum) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wm8350, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %lednum) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.20, i32 noundef %lednum) #6
  %cmp10 = icmp eq ptr %call, null
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wm8350, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef %lednum) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.dev_name.exit_crit_edge

if.end16.dev_name.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end16.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end16.dev_name.exit_crit_edge ]
  %isink_consumer = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 8
  %12 = ptrtoint ptr %isink_consumer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i, ptr %isink_consumer, align 4
  %supply = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 8, i32 1
  %13 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.24, ptr %supply, align 4
  %isink_init = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 9
  %num_consumer_supplies = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 9, i32 2
  %14 = ptrtoint ptr %num_consumer_supplies to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_consumer_supplies, align 4
  %consumer_supplies = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 9, i32 3
  %15 = ptrtoint ptr %consumer_supplies to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %isink_consumer, ptr %consumer_supplies, align 4
  %min_uA = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 9, i32 1, i32 4
  %16 = ptrtoint ptr %min_uA to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %min_uA, align 4
  %max_uA = getelementptr inbounds %struct.wm8350_led_platform_data, ptr %pdata, i32 0, i32 2
  %17 = ptrtoint ptr %max_uA to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_uA, align 4
  %max_uA25 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 9, i32 1, i32 5
  %19 = ptrtoint ptr %max_uA25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_uA25, align 4
  %valid_ops_mask = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 9, i32 1, i32 11
  %20 = ptrtoint ptr %valid_ops_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %valid_ops_mask, align 4
  %valid_modes_mask = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 9, i32 1, i32 10
  %21 = ptrtoint ptr %valid_modes_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %valid_modes_mask, align 4
  %call31 = tail call i32 @wm8350_register_regulator(ptr noundef %wm8350, i32 noundef %isink, ptr noundef %isink_init)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_device_put(ptr noundef nonnull %call) #6
  br label %cleanup

if.end34:                                         ; preds = %dev_name.exit
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i127 = icmp eq ptr %23, null
  br i1 %tobool.not.i127, label %if.end.i128, label %if.end34.dev_name.exit130_crit_edge

if.end34.dev_name.exit130_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit130

if.end.i128:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev17, align 4
  br label %dev_name.exit130

dev_name.exit130:                                 ; preds = %if.end.i128, %if.end34.dev_name.exit130_crit_edge
  %retval.0.i129 = phi ptr [ %25, %if.end.i128 ], [ %23, %if.end34.dev_name.exit130_crit_edge ]
  %dcdc_consumer = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 11
  %26 = ptrtoint ptr %dcdc_consumer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i129, ptr %dcdc_consumer, align 4
  %supply39 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 11, i32 1
  %27 = ptrtoint ptr %supply39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.25, ptr %supply39, align 4
  %dcdc_init = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 12
  %num_consumer_supplies40 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 12, i32 2
  %28 = ptrtoint ptr %num_consumer_supplies40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %num_consumer_supplies40, align 4
  %consumer_supplies43 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 12, i32 3
  %29 = ptrtoint ptr %consumer_supplies43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dcdc_consumer, ptr %consumer_supplies43, align 4
  %valid_modes_mask46 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 12, i32 1, i32 10
  %30 = ptrtoint ptr %valid_modes_mask46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %valid_modes_mask46, align 4
  %valid_ops_mask49 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 9, i32 %lednum, i32 12, i32 1, i32 11
  %31 = ptrtoint ptr %valid_ops_mask49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %valid_ops_mask49, align 4
  %call51 = tail call i32 @wm8350_register_regulator(ptr noundef %wm8350, i32 noundef %dcdc, ptr noundef %dcdc_init)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %dev_name.exit130
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_device_put(ptr noundef nonnull %call) #6
  br label %cleanup

if.end54:                                         ; preds = %dev_name.exit130
  %32 = zext i32 %isink to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %isink, label %if.end54.sw.epilog_crit_edge [
    i32 10, label %sw.bb
    i32 11, label %sw.bb56
  ]

if.end54.sw.epilog_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %isink_A_dcdc = getelementptr inbounds %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 2
  br label %sw.epilog.sink.split

sw.bb56:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %isink_B_dcdc = getelementptr inbounds %struct.wm8350, ptr %wm8350, i32 0, i32 12, i32 3
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb56, %sw.bb
  %isink_B_dcdc.sink = phi ptr [ %isink_B_dcdc, %sw.bb56 ], [ %isink_A_dcdc, %sw.bb ]
  %33 = ptrtoint ptr %isink_B_dcdc.sink to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dcdc, ptr %isink_B_dcdc.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end54.sw.epilog_crit_edge
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 7
  %34 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pdata, ptr %platform_data, align 8
  %35 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wm8350, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %parent, align 8
  %call61 = tail call i32 @platform_device_add(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 0
  br i1 %cmp62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wm8350, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.27, i32 noundef %lednum, i32 noundef %call61) #9
  tail call void @platform_device_put(ptr noundef nonnull %call) #6
  br label %cleanup

if.end68:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end66, %if.then53, %if.then33, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end7 ], [ -12, %do.end14 ], [ %call31, %if.then33 ], [ %call51, %if.then53 ], [ %call61, %do.end66 ], [ 0, %if.end68 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_regulator_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm8350_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8350_regulator_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm8350_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_regulator_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %2 = getelementptr inbounds i8, ptr %config, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 12)
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %6 = icmp ugt i32 %5, 11
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb12
    i32 5, label %sw.bb18
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 182) #6
  %8 = and i16 %call4, 28672
  %dcdc1_hib_mode = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 12, i32 4
  %9 = ptrtoint ptr %dcdc1_hib_mode to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %dcdc1_hib_mode, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 188) #6
  %10 = and i16 %call7, 28672
  %dcdc3_hib_mode = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 12, i32 5
  %11 = ptrtoint ptr %dcdc3_hib_mode to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %dcdc3_hib_mode, align 2
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 191) #6
  %12 = and i16 %call13, 28672
  %dcdc4_hib_mode = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 12, i32 6
  %13 = ptrtoint ptr %dcdc4_hib_mode to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %dcdc4_hib_mode, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 197) #6
  %14 = and i16 %call19, 28672
  %dcdc6_hib_mode = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 12, i32 7
  %15 = ptrtoint ptr %dcdc6_hib_mode to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %dcdc6_hib_mode, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb12, %sw.bb6, %sw.bb, %if.end.sw.epilog_crit_edge
  %16 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %config, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %17 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data.i, align 8
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %19 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %init_data, align 4
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %22 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %regmap30 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %25 = ptrtoint ptr %regmap30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %regmap30, align 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [12 x %struct.regulator_desc], ptr @wm8350_reg, i32 0, i32 %27
  %call33 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end40

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %arrayidx38 = getelementptr [12 x %struct.regulator_desc], ptr @wm8350_reg, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx38, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %31) #9
  %32 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end40:                                         ; preds = %sw.epilog
  %irq_base.i = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.end40.do.end49_crit_edge, label %wm8350_register_irq.exit

if.end40.do.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

wm8350_register_irq.exit:                         ; preds = %if.end40
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  %irq = getelementptr [12 x %struct.regulator_desc], ptr @wm8350_reg, i32 0, i32 %36, i32 11
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  %add.i = add i32 %38, %34
  %call.i = call i32 @request_threaded_irq(i32 noundef %add.i, ptr noundef null, ptr noundef nonnull @pmic_uv_handler, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef %call33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp44 = icmp slt i32 %call.i, 0
  br i1 %cmp44, label %wm8350_register_irq.exit.do.end49_crit_edge, label %wm8350_register_irq.exit.cleanup_crit_edge

wm8350_register_irq.exit.cleanup_crit_edge:       ; preds = %wm8350_register_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

wm8350_register_irq.exit.do.end49_crit_edge:      ; preds = %wm8350_register_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

do.end49:                                         ; preds = %wm8350_register_irq.exit.do.end49_crit_edge, %if.end40.do.end49_crit_edge
  %retval.0.i90 = phi i32 [ %call.i, %wm8350_register_irq.exit.do.end49_crit_edge ], [ -19, %if.end40.do.end49_crit_edge ]
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  %arrayidx52 = getelementptr [12 x %struct.regulator_desc], ptr @wm8350_reg, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx52, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef %42) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %wm8350_register_irq.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %do.end ], [ %retval.0.i90, %do.end49 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %wm8350_register_irq.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_regulator_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @rdev_get_drvdata(ptr noundef %1) #6
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %irq = getelementptr [12 x %struct.regulator_desc], ptr @wm8350_reg, i32 0, i32 %3, i32 11
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq_base.i = getelementptr inbounds %struct.wm8350, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base.i, align 4
  %add.i = add i32 %7, %5
  %call.i = tail call ptr @free_irq(i32 noundef %add.i, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_uv_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.off = add i32 %irq, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %irq.off)
  %switch = icmp ult i32 %irq.off, 2
  %. = select i1 %switch, i32 4, i32 1
  %call2 = tail call i32 @regulator_notifier_call_chain(ptr noundef %data, i32 noundef %., ptr noundef null) #6
  ret i32 1
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_dcdc_set_mode(ptr noundef %rdev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %0 = icmp ugt i32 %call1, 5
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call1, label %if.end7 [
    i32 1, label %if.end.cleanup_crit_edge
    i32 4, label %if.end.cleanup_crit_edge93
  ]

if.end.cleanup_crit_edge93:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %shl = shl nuw nsw i32 1, %call1
  %conv = trunc i32 %shl to i16
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %mode, label %if.end7.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 4, label %sw.bb15
    i32 8, label %sw.bb19
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %call8 = tail call i32 @wm8350_set_bits(ptr noundef %call, i16 noundef zeroext 177, i16 noundef zeroext %conv) #6
  %call9 = tail call i32 @wm8350_clear_bits(ptr noundef %call, i16 noundef zeroext 178, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %3 = icmp ult i32 %call1, 6
  br i1 %3, label %switch.hole_check, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb
  %switch.maskindex = trunc i32 %call1 to i8
  %switch.shifted = lshr i8 45, %switch.maskindex
  %4 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.lobit.not = icmp eq i8 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i16], ptr @switch.table.wm8350_dcdc_set_mode, i32 0, i32 %call1
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %5)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call.i = tail call i32 @wm8350_set_bits(ptr noundef %call, i16 noundef zeroext %switch.load, i16 noundef zeroext 16) #6
  br label %cleanup

sw.bb11:                                          ; preds = %if.end7
  %call12 = tail call i32 @wm8350_set_bits(ptr noundef %call, i16 noundef zeroext 177, i16 noundef zeroext %conv) #6
  %call13 = tail call i32 @wm8350_clear_bits(ptr noundef %call, i16 noundef zeroext 178, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %6 = icmp ult i32 %call1, 6
  br i1 %6, label %switch.hole_check70, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check70:                              ; preds = %sw.bb11
  %switch.maskindex72 = trunc i32 %call1 to i8
  %switch.shifted73 = lshr i8 45, %switch.maskindex72
  %7 = and i8 %switch.shifted73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit74.not = icmp eq i8 %7, 0
  br i1 %switch.lobit74.not, label %switch.hole_check70.cleanup_crit_edge, label %switch.lookup71

switch.hole_check70.cleanup_crit_edge:            ; preds = %switch.hole_check70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup71:                                  ; preds = %switch.hole_check70
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep75 = getelementptr inbounds [6 x i16], ptr @switch.table.wm8350_dcdc_set_mode.52, i32 0, i32 %call1
  %8 = ptrtoint ptr %switch.gep75 to i32
  call void @__asan_load2_noabort(i32 %8)
  %switch.load76 = load i16, ptr %switch.gep75, align 2
  %call5.i = tail call i32 @wm8350_clear_bits(ptr noundef %call, i16 noundef zeroext %switch.load76, i16 noundef zeroext 16) #6
  br label %cleanup

sw.bb15:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %9 = icmp ult i32 %call1, 6
  br i1 %9, label %switch.hole_check78, label %sw.bb15.force_continuous_enable.exit61_crit_edge

sw.bb15.force_continuous_enable.exit61_crit_edge: ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %force_continuous_enable.exit61

switch.hole_check78:                              ; preds = %sw.bb15
  %switch.maskindex80 = trunc i32 %call1 to i8
  %switch.shifted81 = lshr i8 45, %switch.maskindex80
  %10 = and i8 %switch.shifted81, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit82.not = icmp eq i8 %10, 0
  br i1 %switch.lobit82.not, label %switch.hole_check78.force_continuous_enable.exit61_crit_edge, label %switch.lookup79

switch.hole_check78.force_continuous_enable.exit61_crit_edge: ; preds = %switch.hole_check78
  call void @__sanitizer_cov_trace_pc() #8
  br label %force_continuous_enable.exit61

switch.lookup79:                                  ; preds = %switch.hole_check78
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep83 = getelementptr inbounds [6 x i16], ptr @switch.table.wm8350_dcdc_set_mode.53, i32 0, i32 %call1
  %11 = ptrtoint ptr %switch.gep83 to i32
  call void @__asan_load2_noabort(i32 %11)
  %switch.load84 = load i16, ptr %switch.gep83, align 2
  %call5.i60 = tail call i32 @wm8350_clear_bits(ptr noundef %call, i16 noundef zeroext %switch.load84, i16 noundef zeroext 16) #6
  br label %force_continuous_enable.exit61

force_continuous_enable.exit61:                   ; preds = %switch.lookup79, %switch.hole_check78.force_continuous_enable.exit61_crit_edge, %sw.bb15.force_continuous_enable.exit61_crit_edge
  %call17 = tail call i32 @wm8350_clear_bits(ptr noundef %call, i16 noundef zeroext 178, i16 noundef zeroext %conv) #6
  %call18 = tail call i32 @wm8350_clear_bits(ptr noundef %call, i16 noundef zeroext 177, i16 noundef zeroext %conv) #6
  br label %cleanup

sw.bb19:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %12 = icmp ult i32 %call1, 6
  br i1 %12, label %switch.hole_check86, label %sw.bb19.force_continuous_enable.exit68_crit_edge

sw.bb19.force_continuous_enable.exit68_crit_edge: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  br label %force_continuous_enable.exit68

switch.hole_check86:                              ; preds = %sw.bb19
  %switch.maskindex88 = trunc i32 %call1 to i8
  %switch.shifted89 = lshr i8 45, %switch.maskindex88
  %13 = and i8 %switch.shifted89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit90.not = icmp eq i8 %13, 0
  br i1 %switch.lobit90.not, label %switch.hole_check86.force_continuous_enable.exit68_crit_edge, label %switch.lookup87

switch.hole_check86.force_continuous_enable.exit68_crit_edge: ; preds = %switch.hole_check86
  call void @__sanitizer_cov_trace_pc() #8
  br label %force_continuous_enable.exit68

switch.lookup87:                                  ; preds = %switch.hole_check86
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep91 = getelementptr inbounds [6 x i16], ptr @switch.table.wm8350_dcdc_set_mode.54, i32 0, i32 %call1
  %14 = ptrtoint ptr %switch.gep91 to i32
  call void @__asan_load2_noabort(i32 %14)
  %switch.load92 = load i16, ptr %switch.gep91, align 2
  %call5.i67 = tail call i32 @wm8350_clear_bits(ptr noundef %call, i16 noundef zeroext %switch.load92, i16 noundef zeroext 16) #6
  br label %force_continuous_enable.exit68

force_continuous_enable.exit68:                   ; preds = %switch.lookup87, %switch.hole_check86.force_continuous_enable.exit68_crit_edge, %sw.bb19.force_continuous_enable.exit68_crit_edge
  %call21 = tail call i32 @wm8350_set_bits(ptr noundef %call, i16 noundef zeroext 178, i16 noundef zeroext %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %force_continuous_enable.exit68, %force_continuous_enable.exit61, %switch.lookup71, %switch.hole_check70.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %switch.lookup, %switch.hole_check.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge93, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge93 ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %force_continuous_enable.exit68 ], [ 0, %force_continuous_enable.exit61 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %switch.lookup ], [ 0, %sw.bb11.cleanup_crit_edge ], [ 0, %switch.lookup71 ], [ 0, %switch.hole_check.cleanup_crit_edge ], [ 0, %switch.hole_check70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_dcdc_get_mode(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %0 = icmp ult i32 %call1, 6
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %call1 to i8
  %switch.shifted = lshr i8 45, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.wm8350_dcdc_get_mode, i32 0, i32 %call1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %shl = shl nuw nsw i32 1, %call1
  %call5 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef 177) #6
  %3 = trunc i32 %shl to i16
  %conv8 = and i16 %call5, %3
  %call9 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef %switch.load) #6
  %4 = and i16 %call9, 16
  %call13 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef 178) #6
  %conv17 = and i16 %call13, %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8350_dcdc_get_mode.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8350_dcdc_get_mode, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %conv23 = zext i16 %conv8 to i32
  %conv24 = zext i16 %conv17 to i32
  %conv25 = zext i16 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8350_dcdc_get_mode.__UNIQUE_ID_ddebug293, ptr noundef %6, ptr noundef nonnull @.str.48, i32 noundef %shl, i32 noundef %conv23, i32 noundef %conv24, i32 noundef %conv25) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv8)
  %tobool27.not = icmp ne i16 %conv8, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv17)
  %tobool28.not = icmp eq i16 %conv17, 0
  %or.cond = select i1 %tobool27.not, i1 %tobool28.not, i1 false
  br i1 %or.cond, label %if.then29, label %if.else33

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool30.not = icmp eq i16 %4, 0
  %. = select i1 %tobool30.not, i32 2, i32 1
  br label %cleanup

if.else33:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv8)
  %tobool34.not = icmp eq i16 %conv8, 0
  %or.cond64 = select i1 %tobool34.not, i1 %tobool28.not, i1 false
  %spec.select = select i1 %tobool28.not, i32 2, i32 8
  %spec.select66 = select i1 %or.cond64, i32 4, i32 %spec.select
  br label %cleanup

cleanup:                                          ; preds = %if.else33, %if.then29, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.then29 ], [ %spec.select66, %if.else33 ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_dcdc_get_optimum_mode(ptr noundef %rdev, i32 noundef %input_uV, i32 noundef %output_uV, i32 noundef %output_uA) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge29
    i32 2, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge30
  ]

entry.sw.bb2_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output_uA)
  %cmp3.not.i = icmp slt i32 %output_uA, 0
  br i1 %cmp3.not.i, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %output_uA)
  %cmp5.not.i = icmp ugt i32 %output_uA, 10000
  br i1 %cmp5.not.i, label %land.lhs.true.i.1, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.2.if.then.i_crit_edge, %land.lhs.true.i.1.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %i.017.i.lcssa = phi i32 [ 0, %land.lhs.true.i.if.then.i_crit_edge ], [ 1, %land.lhs.true.i.1.if.then.i_crit_edge ], [ 2, %land.lhs.true.i.2.if.then.i_crit_edge ]
  %mode.i = getelementptr %struct.wm8350_dcdc_efficiency, ptr @dcdc1_6_efficiency, i32 %i.017.i.lcssa, i32 2
  br label %sw.epilog.sink.split

land.lhs.true.i.1:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %output_uA)
  %cmp5.not.i.1 = icmp ugt i32 %output_uA, 100000
  br i1 %cmp5.not.i.1, label %land.lhs.true.i.2, label %land.lhs.true.i.1.if.then.i_crit_edge

land.lhs.true.i.1.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

land.lhs.true.i.2:                                ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %output_uA)
  %cmp5.not.i.2 = icmp ugt i32 %output_uA, 1000000
  br i1 %cmp5.not.i.2, label %land.lhs.true.i.2.sw.epilog_crit_edge, label %land.lhs.true.i.2.if.then.i_crit_edge

land.lhs.true.i.2.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

land.lhs.true.i.2.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output_uA)
  %cmp3.not.i6 = icmp slt i32 %output_uA, 0
  br i1 %cmp3.not.i6, label %sw.bb2.sw.epilog_crit_edge, label %land.lhs.true.i10

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i10:                                ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %output_uA)
  %cmp5.not.i9 = icmp ugt i32 %output_uA, 10000
  br i1 %cmp5.not.i9, label %land.lhs.true.i10.1, label %land.lhs.true.i10.if.then.i12_crit_edge

land.lhs.true.i10.if.then.i12_crit_edge:          ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i12

if.then.i12:                                      ; preds = %land.lhs.true.i10.2.if.then.i12_crit_edge, %land.lhs.true.i10.1.if.then.i12_crit_edge, %land.lhs.true.i10.if.then.i12_crit_edge
  %i.017.i5.lcssa = phi i32 [ 0, %land.lhs.true.i10.if.then.i12_crit_edge ], [ 1, %land.lhs.true.i10.1.if.then.i12_crit_edge ], [ 2, %land.lhs.true.i10.2.if.then.i12_crit_edge ]
  %mode.i11 = getelementptr %struct.wm8350_dcdc_efficiency, ptr @dcdc3_4_efficiency, i32 %i.017.i5.lcssa, i32 2
  br label %sw.epilog.sink.split

land.lhs.true.i10.1:                              ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %output_uA)
  %cmp5.not.i9.1 = icmp ugt i32 %output_uA, 100000
  br i1 %cmp5.not.i9.1, label %land.lhs.true.i10.2, label %land.lhs.true.i10.1.if.then.i12_crit_edge

land.lhs.true.i10.1.if.then.i12_crit_edge:        ; preds = %land.lhs.true.i10.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i12

land.lhs.true.i10.2:                              ; preds = %land.lhs.true.i10.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %output_uA)
  %cmp5.not.i9.2 = icmp ugt i32 %output_uA, 800000
  br i1 %cmp5.not.i9.2, label %land.lhs.true.i10.2.sw.epilog_crit_edge, label %land.lhs.true.i10.2.if.then.i12_crit_edge

land.lhs.true.i10.2.if.then.i12_crit_edge:        ; preds = %land.lhs.true.i10.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i12

land.lhs.true.i10.2.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i10.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.then.i12, %if.then.i
  %mode.i11.sink = phi ptr [ %mode.i11, %if.then.i12 ], [ %mode.i, %if.then.i ]
  %1 = ptrtoint ptr %mode.i11.sink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode.i11.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true.i10.2.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %land.lhs.true.i.2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 2, %entry.sw.epilog_crit_edge ], [ 2, %land.lhs.true.i.2.sw.epilog_crit_edge ], [ 2, %land.lhs.true.i10.2.sw.epilog_crit_edge ], [ 2, %sw.bb.sw.epilog_crit_edge ], [ 2, %sw.bb2.sw.epilog_crit_edge ], [ %2, %sw.epilog.sink.split ]
  ret i32 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_dcdc_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8350_dcdc_set_suspend_voltage.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8350_dcdc_set_suspend_voltage, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %div = sdiv i32 %uV, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8350_dcdc_set_suspend_voltage.__UNIQUE_ID_ddebug288, ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %call1, i32 noundef %div) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %2 = icmp ult i32 %call1, 6
  br i1 %2, label %switch.hole_check, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %do.end
  %switch.maskindex = trunc i32 %call1 to i8
  %switch.shifted = lshr i8 45, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.wm8350_dcdc_set_suspend_voltage, i32 0, i32 %call1
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call10 = tail call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %switch.lookup.cleanup_crit_edge, label %if.end12

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef %switch.load) #6
  %5 = and i16 %call13, -128
  %6 = trunc i32 %call10 to i16
  %conv16 = or i16 %5, %6
  %call17 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef %switch.load, i16 noundef zeroext %conv16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %do.end.cleanup_crit_edge ], [ %call10, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_dcdc_set_suspend_enable(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb19
    i32 5, label %sw.bb30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef 182) #6
  %1 = and i16 %call2, -28673
  %dcdc1_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %dcdc1_hib_mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dcdc1_hib_mode, align 4
  %or62 = or i16 %1, %3
  %call7 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef 182, i16 noundef zeroext %or62) #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef 188) #6
  %4 = and i16 %call9, -28673
  %dcdc3_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 5
  %5 = ptrtoint ptr %dcdc3_hib_mode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dcdc3_hib_mode, align 2
  %or1661 = or i16 %4, %6
  %call18 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef 188, i16 noundef zeroext %or1661) #6
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef 191) #6
  %7 = and i16 %call20, -28673
  %dcdc4_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %dcdc4_hib_mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dcdc4_hib_mode, align 4
  %or2760 = or i16 %7, %9
  %call29 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef 191, i16 noundef zeroext %or2760) #6
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef 197) #6
  %10 = and i16 %call31, -28673
  %dcdc6_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 7
  %11 = ptrtoint ptr %dcdc6_hib_mode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dcdc6_hib_mode, align 2
  %or3859 = or i16 %10, %12
  %call40 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef 197, i16 noundef zeroext %or3859) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb30, %sw.bb19, %sw.bb8, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb30 ], [ 0, %sw.bb19 ], [ 0, %sw.bb8 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_dcdc_set_suspend_disable(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb17
    i32 5, label %sw.bb27
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef 182) #6
  %and = and i16 %call2, 28672
  %dcdc1_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 4
  %1 = ptrtoint ptr %dcdc1_hib_mode to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %and, ptr %dcdc1_hib_mode, align 4
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef 188) #6
  %and10 = and i16 %call8, 28672
  %dcdc3_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %dcdc3_hib_mode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %and10, ptr %dcdc3_hib_mode, align 2
  br label %cleanup.sink.split

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef 191) #6
  %and20 = and i16 %call18, 28672
  %dcdc4_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %dcdc4_hib_mode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %and20, ptr %dcdc4_hib_mode, align 4
  br label %cleanup.sink.split

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef 197) #6
  %and30 = and i16 %call28, 28672
  %dcdc6_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 7
  %4 = ptrtoint ptr %dcdc6_hib_mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %and30, ptr %dcdc6_hib_mode, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb27, %sw.bb17, %sw.bb7, %sw.bb
  %call2.sink = phi i16 [ %call2, %sw.bb ], [ %call8, %sw.bb7 ], [ %call18, %sw.bb17 ], [ %call28, %sw.bb27 ]
  %.sink = phi i32 [ 182, %sw.bb ], [ 188, %sw.bb7 ], [ 191, %sw.bb17 ], [ 197, %sw.bb27 ]
  %5 = or i16 %call2.sink, 28672
  %call6 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef %.sink, i16 noundef zeroext %5) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_dcdc_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 5, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dcdc1_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dcdc3_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dcdc4_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dcdc6_hib_mode = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %hib_mode.0 = phi ptr [ %dcdc6_hib_mode, %sw.bb6 ], [ %dcdc4_hib_mode, %sw.bb4 ], [ %dcdc3_hib_mode, %sw.bb2 ], [ %dcdc1_hib_mode, %sw.bb ]
  %1 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %mode, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %sw.epilog.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb10
    i32 8, label %sw.bb11
  ]

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb11, %sw.bb10, %sw.epilog.cleanup.sink.split_crit_edge
  %.sink = phi i16 [ 8192, %sw.bb10 ], [ 20480, %sw.bb11 ], [ 4096, %sw.epilog.cleanup.sink.split_crit_edge ]
  %2 = ptrtoint ptr %hib_mode.0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %.sink, ptr %hib_mode.0, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_clear_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_dcdc25_set_suspend_enable(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb7
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb7, %entry.cleanup.sink.split_crit_edge
  %.sink24 = phi i32 [ 192, %sw.bb7 ], [ 183, %entry.cleanup.sink.split_crit_edge ]
  %call2 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef %.sink24) #6
  %1 = or i16 %call2, 4096
  %call6 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef %.sink24, i16 noundef zeroext %1) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_dcdc25_set_suspend_disable(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb7
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb7, %entry.cleanup.sink.split_crit_edge
  %.sink24 = phi i32 [ 192, %sw.bb7 ], [ 183, %entry.cleanup.sink.split_crit_edge ]
  %call2 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef %.sink24) #6
  %1 = and i16 %call2, -4097
  %call6 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef %.sink24, i16 noundef zeroext %1) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8350_ldo_get_mode(ptr nocapture noundef readnone %rdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_ldo_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8350_ldo_set_suspend_voltage.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8350_ldo_set_suspend_voltage, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %div = sdiv i32 %uV, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8350_ldo_set_suspend_voltage.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %call1, i32 noundef %div) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %switch.tableidx = add i32 %call1, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 4
  br i1 %2, label %switch.lookup, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %do.end
  %call9 = tail call i32 @regulator_map_voltage_linear_range(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %switch.lookup.cleanup_crit_edge, label %if.end11

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult = mul i32 %switch.tableidx, 3
  %switch.offset = add i32 %switch.idx.mult, 202
  %call12 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef %switch.offset) #6
  %3 = and i16 %call12, -32
  %4 = trunc i32 %call9 to i16
  %conv15 = or i16 %3, %4
  %call16 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef %switch.offset, i16 noundef zeroext %conv15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %switch.lookup.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %do.end.cleanup_crit_edge ], [ %call9, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_ldo_set_suspend_enable(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %switch.tableidx = add i32 %call1, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult = mul i32 %switch.tableidx, 3
  %switch.offset = add i32 %switch.idx.mult, 202
  %call5 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef %switch.offset) #6
  %1 = and i16 %call5, -12289
  %call7 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef %switch.offset, i16 noundef zeroext %1) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_ldo_set_suspend_disable(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %switch.tableidx = add i32 %call1, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult = mul i32 %switch.tableidx, 3
  %switch.offset = add i32 %switch.idx.mult, 202
  %call5 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef %switch.offset) #6
  %1 = and i16 %call5, -12289
  %2 = or i16 %1, 4096
  %call9 = tail call i32 @wm8350_reg_write(ptr noundef %call, i32 noundef %switch.offset, i16 noundef zeroext %2) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_isink_enable(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 11, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %isink_A_dcdc = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 2
  %1 = ptrtoint ptr %isink_A_dcdc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %isink_A_dcdc, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %2, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb.cleanup.sink.split_crit_edge35
  ]

sw.bb.cleanup.sink.split_crit_edge35:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %isink_B_dcdc = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 3
  %4 = ptrtoint ptr %isink_B_dcdc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isink_B_dcdc, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %5, label %sw.bb8.cleanup_crit_edge [
    i32 1, label %sw.bb8.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb8.cleanup.sink.split_crit_edge36
  ]

sw.bb8.cleanup.sink.split_crit_edge36:            ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb8.cleanup.sink.split_crit_edge:              ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb8.cleanup.sink.split_crit_edge, %sw.bb8.cleanup.sink.split_crit_edge36, %sw.bb.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge35
  %.sink34 = phi i16 [ 1, %sw.bb.cleanup.sink.split_crit_edge ], [ 1, %sw.bb.cleanup.sink.split_crit_edge35 ], [ 2, %sw.bb8.cleanup.sink.split_crit_edge ], [ 2, %sw.bb8.cleanup.sink.split_crit_edge36 ]
  %.sink = phi i16 [ 173, %sw.bb.cleanup.sink.split_crit_edge ], [ 173, %sw.bb.cleanup.sink.split_crit_edge35 ], [ 175, %sw.bb8.cleanup.sink.split_crit_edge ], [ 175, %sw.bb8.cleanup.sink.split_crit_edge36 ]
  %isink_A_dcdc.sink = phi ptr [ %isink_A_dcdc, %sw.bb.cleanup.sink.split_crit_edge ], [ %isink_A_dcdc, %sw.bb.cleanup.sink.split_crit_edge35 ], [ %isink_B_dcdc, %sw.bb8.cleanup.sink.split_crit_edge ], [ %isink_B_dcdc, %sw.bb8.cleanup.sink.split_crit_edge36 ]
  %call3 = tail call i32 @wm8350_set_bits(ptr noundef %call, i16 noundef zeroext 14, i16 noundef zeroext %.sink34) #6
  %call4 = tail call i32 @wm8350_set_bits(ptr noundef %call, i16 noundef zeroext %.sink, i16 noundef zeroext 8192) #6
  %7 = ptrtoint ptr %isink_A_dcdc.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %isink_A_dcdc.sink, align 4
  %shl = shl nuw i32 1, %8
  %conv = trunc i32 %shl to i16
  %call7 = tail call i32 @wm8350_set_bits(ptr noundef %call, i16 noundef zeroext 176, i16 noundef zeroext %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_isink_disable(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 11, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %isink_A_dcdc = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 2
  %1 = ptrtoint ptr %isink_A_dcdc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %isink_A_dcdc, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %2, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb.cleanup.sink.split_crit_edge31
  ]

sw.bb.cleanup.sink.split_crit_edge31:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %isink_B_dcdc = getelementptr inbounds %struct.wm8350, ptr %call, i32 0, i32 12, i32 3
  %4 = ptrtoint ptr %isink_B_dcdc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isink_B_dcdc, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %5, label %sw.bb7.cleanup_crit_edge [
    i32 1, label %sw.bb7.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb7.cleanup.sink.split_crit_edge32
  ]

sw.bb7.cleanup.sink.split_crit_edge32:            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb7.cleanup.sink.split_crit_edge:              ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb7.cleanup.sink.split_crit_edge, %sw.bb7.cleanup.sink.split_crit_edge32, %sw.bb.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge31
  %.sink30 = phi i32 [ %2, %sw.bb.cleanup.sink.split_crit_edge ], [ %2, %sw.bb.cleanup.sink.split_crit_edge31 ], [ %5, %sw.bb7.cleanup.sink.split_crit_edge ], [ %5, %sw.bb7.cleanup.sink.split_crit_edge32 ]
  %.sink = phi i16 [ 1, %sw.bb.cleanup.sink.split_crit_edge ], [ 1, %sw.bb.cleanup.sink.split_crit_edge31 ], [ 2, %sw.bb7.cleanup.sink.split_crit_edge ], [ 2, %sw.bb7.cleanup.sink.split_crit_edge32 ]
  %shl = shl nuw nsw i32 1, %.sink30
  %conv = trunc i32 %shl to i16
  %call5 = tail call i32 @wm8350_clear_bits(ptr noundef %call, i16 noundef zeroext 176, i16 noundef zeroext %conv) #6
  %call6 = tail call i32 @wm8350_clear_bits(ptr noundef %call, i16 noundef zeroext 14, i16 noundef zeroext %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_isink_is_enabled(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 10, label %entry.cleanup.sink.split_crit_edge
    i32 11, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 174, %sw.bb3 ], [ 172, %entry.cleanup.sink.split_crit_edge ]
  %call4 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef %.sink) #6
  %1 = and i16 %call4, -32768
  %and6 = zext i16 %1 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %and6, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_isink_enable_time(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 10, label %entry.sw.epilog_crit_edge
    i32 11, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 175, %sw.bb3 ], [ 173, %entry.sw.epilog_crit_edge ]
  %call4 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %call, i32 noundef %.sink) #6
  %reg.0 = zext i16 %call4 to i32
  %and = and i32 %reg.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and12 = and i32 %reg.0, 3
  %switch.table.wm8350_isink_enable_time.55.switch.table.wm8350_isink_enable_time = select i1 %tobool.not, ptr @switch.table.wm8350_isink_enable_time.55, ptr @switch.table.wm8350_isink_enable_time
  %switch.gep25 = getelementptr inbounds [4 x i32], ptr %switch.table.wm8350_isink_enable_time.55.switch.table.wm8350_isink_enable_time, i32 0, i32 %and12
  %1 = ptrtoint ptr %switch.gep25 to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load26 = load i32, ptr %switch.gep25, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %switch.load26, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !71, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !120, !122, !124, !125, !126, !128, !130, !132, !133, !135, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__ksymtab_wm8350_isink_set_flash, !1, !"__ksymtab_wm8350_isink_set_flash", i1 false, i1 false}
!1 = !{!"../drivers/regulator/wm8350-regulator.c", i32 261, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/regulator/wm8350-regulator.c", i32 577, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @wm8350_dcdc_set_slot.__UNIQUE_ID_ddebug290, !3, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!8 = !{ptr @__ksymtab_wm8350_dcdc_set_slot, !9, !"__ksymtab_wm8350_dcdc_set_slot", i1 false, i1 false}
!9 = !{!"../drivers/regulator/wm8350-regulator.c", i32 617, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/wm8350-regulator.c", i32 624, i32 2}
!12 = !{ptr @wm8350_ldo_set_slot.__UNIQUE_ID_ddebug291, !11, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!13 = !{ptr @__ksymtab_wm8350_ldo_set_slot, !14, !"__ksymtab_wm8350_ldo_set_slot", i1 false, i1 false}
!14 = !{!"../drivers/regulator/wm8350-regulator.c", i32 652, i32 1}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/wm8350-regulator.c", i32 659, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wm8350_dcdc25_set_mode.__UNIQUE_ID_ddebug292, !16, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!19 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__ksymtab_wm8350_dcdc25_set_mode, !23, !"__ksymtab_wm8350_dcdc25_set_mode", i1 false, i1 false}
!23 = !{!"../drivers/regulator/wm8350-regulator.c", i32 689, i32 1}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1189, i32 31}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1204, i32 3}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wm8350_register_regulator._entry, !27, !"_entry", i1 false, i1 false}
!32 = !{ptr @wm8350_register_regulator._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_wm8350_register_regulator, !34, !"__ksymtab_wm8350_register_regulator", i1 false, i1 false}
!34 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1212, i32 1}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1238, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wm8350_register_led._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @wm8350_register_led._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1245, i32 3}
!42 = !{ptr @wm8350_register_led._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wm8350_register_led._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1249, i32 31}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1251, i32 3}
!48 = !{ptr @wm8350_register_led._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @wm8350_register_led._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1256, i32 31}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1271, i32 30}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1295, i32 3}
!56 = !{ptr @wm8350_register_led._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @wm8350_register_led._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @__ksymtab_wm8350_register_led, !59, !"__ksymtab_wm8350_register_led", i1 false, i1 false}
!59 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1305, i32 1}
!60 = !{ptr @__initcall__kmod_wm8350_regulator__294_1319_wm8350_regulator_init4, !61, !"__initcall__kmod_wm8350_regulator__294_1319_wm8350_regulator_init4", i1 false, i1 false}
!61 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1319, i32 1}
!62 = !{ptr @__exitcall_wm8350_regulator_exit, !63, !"__exitcall_wm8350_regulator_exit", i1 false, i1 false}
!63 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1325, i32 1}
!64 = !{ptr @__UNIQUE_ID_author295, !65, !"__UNIQUE_ID_author295", i1 false, i1 false}
!65 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1328, i32 1}
!66 = !{ptr @__UNIQUE_ID_description296, !67, !"__UNIQUE_ID_description296", i1 false, i1 false}
!67 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1329, i32 1}
!68 = !{ptr @__UNIQUE_ID_file297, !69, !"__UNIQUE_ID_file297", i1 false, i1 false}
!69 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1330, i32 1}
!70 = !{ptr @__UNIQUE_ID_license298, !69, !"__UNIQUE_ID_license298", i1 false, i1 false}
!71 = !{ptr @__UNIQUE_ID_alias299, !72, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!72 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1331, i32 1}
!73 = !{ptr @wm8350_regulator_driver, !74, !"wm8350_regulator_driver", i1 false, i1 false}
!74 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1307, i32 31}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1144, i32 3}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wm8350_regulator_probe._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @wm8350_regulator_probe._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1151, i32 27}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1153, i32 3}
!84 = !{ptr @wm8350_regulator_probe._entry.32, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @wm8350_regulator_probe._entry_ptr.34, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/wm8350-regulator.c", i32 923, i32 11}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/wm8350-regulator.c", i32 938, i32 11}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/wm8350-regulator.c", i32 948, i32 11}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/wm8350-regulator.c", i32 963, i32 11}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/wm8350-regulator.c", i32 978, i32 11}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/wm8350-regulator.c", i32 988, i32 11}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1003, i32 11}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1018, i32 11}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1033, i32 11}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1048, i32 11}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1063, i32 11}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/wm8350-regulator.c", i32 1075, i32 11}
!110 = !{ptr @wm8350_reg, !111, !"wm8350_reg", i1 false, i1 false}
!111 = !{!"../drivers/regulator/wm8350-regulator.c", i32 921, i32 36}
!112 = !{ptr @wm8350_dcdc_ops, !113, !"wm8350_dcdc_ops", i1 false, i1 false}
!113 = !{!"../drivers/regulator/wm8350-regulator.c", i32 873, i32 35}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/regulator/wm8350-regulator.c", i32 794, i32 2}
!116 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @wm8350_dcdc_get_mode.__UNIQUE_ID_ddebug293, !115, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!118 = !{ptr @dcdc1_6_efficiency, !119, !"dcdc1_6_efficiency", i1 false, i1 false}
!119 = !{!"../drivers/regulator/wm8350-regulator.c", i32 821, i32 44}
!120 = !{ptr @dcdc3_4_efficiency, !121, !"dcdc3_4_efficiency", i1 false, i1 false}
!121 = !{!"../drivers/regulator/wm8350-regulator.c", i32 828, i32 44}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/regulator/wm8350-regulator.c", i32 269, i32 2}
!124 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @wm8350_dcdc_set_suspend_voltage.__UNIQUE_ID_ddebug288, !123, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!126 = !{ptr @wm8350_dcdc2_5_ops, !127, !"wm8350_dcdc2_5_ops", i1 false, i1 false}
!127 = !{!"../drivers/regulator/wm8350-regulator.c", i32 890, i32 35}
!128 = !{ptr @wm8350_ldo_ops, !129, !"wm8350_ldo_ops", i1 false, i1 false}
!129 = !{!"../drivers/regulator/wm8350-regulator.c", i32 898, i32 35}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/wm8350-regulator.c", i32 484, i32 2}
!132 = !{ptr @wm8350_ldo_set_suspend_voltage.__UNIQUE_ID_ddebug289, !131, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!133 = !{ptr @wm8350_ldo_ranges, !134, !"wm8350_ldo_ranges", i1 false, i1 false}
!134 = !{!"../drivers/regulator/wm8350-regulator.c", i32 473, i32 34}
!135 = !{ptr @wm8350_isink_ops, !136, !"wm8350_isink_ops", i1 false, i1 false}
!136 = !{!"../drivers/regulator/wm8350-regulator.c", i32 912, i32 35}
!137 = !{ptr @isink_cur, !138, !"isink_cur", i1 false, i1 false}
!138 = !{!"../drivers/regulator/wm8350-regulator.c", i32 26, i32 27}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i64 2148984971, i64 2148984976, i64 2148984989, i64 2148985033, i64 2148985067, i64 2148985088}
