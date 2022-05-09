; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-aspeed.c_pt.bc'
source_filename = "../drivers/gpio/gpio-aspeed.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+aspeed_gpio_copro_set_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_aspeed_gpio_copro_set_ops\09\09\09\09"
module asm "\09.long\09__crc_aspeed_gpio_copro_set_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aspeed_gpio_copro_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22aspeed_gpio_copro_set_ops\22\09\09\09\09\09"
module asm "__kstrtabns_aspeed_gpio_copro_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+aspeed_gpio_copro_grab_gpio\22, \22a\22\09"
module asm "\09.weak\09__crc_aspeed_gpio_copro_grab_gpio\09\09\09\09"
module asm "\09.long\09__crc_aspeed_gpio_copro_grab_gpio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aspeed_gpio_copro_grab_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22aspeed_gpio_copro_grab_gpio\22\09\09\09\09\09"
module asm "__kstrtabns_aspeed_gpio_copro_grab_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+aspeed_gpio_copro_release_gpio\22, \22a\22\09"
module asm "\09.weak\09__crc_aspeed_gpio_copro_release_gpio\09\09\09\09"
module asm "\09.long\09__crc_aspeed_gpio_copro_release_gpio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aspeed_gpio_copro_release_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22aspeed_gpio_copro_release_gpio\22\09\09\09\09\09"
module asm "__kstrtabns_aspeed_gpio_copro_release_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aspeed_gpio_bank = type { i16, i16, i16, i16, i16, i16, [4 x [3 x i8]] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aspeed_gpio_config = type { i32, ptr }
%struct.aspeed_bank_props = type { i32, i32, i32 }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.aspeed_gpio = type { %struct.gpio_chip, %struct.irq_chip, %struct.raw_spinlock, ptr, i32, ptr, ptr, [4 x i32], ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.aspeed_gpio_copro_ops = type { ptr, ptr }

@copro_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@copro_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_aspeed_gpio_copro_set_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_aspeed_gpio_copro_set_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_aspeed_gpio_copro_set_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aspeed_gpio_copro_set_ops to i32), ptr @__kstrtab_aspeed_gpio_copro_set_ops, ptr @__kstrtabns_aspeed_gpio_copro_set_ops }, section "___ksymtab_gpl+aspeed_gpio_copro_set_ops", align 4
@__kstrtab_aspeed_gpio_copro_grab_gpio = external dso_local constant [0 x i8], align 1
@__kstrtabns_aspeed_gpio_copro_grab_gpio = external dso_local constant [0 x i8], align 1
@__ksymtab_aspeed_gpio_copro_grab_gpio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aspeed_gpio_copro_grab_gpio to i32), ptr @__kstrtab_aspeed_gpio_copro_grab_gpio, ptr @__kstrtabns_aspeed_gpio_copro_grab_gpio }, section "___ksymtab_gpl+aspeed_gpio_copro_grab_gpio", align 4
@__kstrtab_aspeed_gpio_copro_release_gpio = external dso_local constant [0 x i8], align 1
@__kstrtabns_aspeed_gpio_copro_release_gpio = external dso_local constant [0 x i8], align 1
@__ksymtab_aspeed_gpio_copro_release_gpio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aspeed_gpio_copro_release_gpio to i32), ptr @__kstrtab_aspeed_gpio_copro_release_gpio, ptr @__kstrtabns_aspeed_gpio_copro_release_gpio }, section "___ksymtab_gpl+aspeed_gpio_copro_release_gpio", align 4
@__initcall__kmod_gpio_aspeed__223_1248_aspeed_gpio_driver_init6 = internal global ptr @aspeed_gpio_driver_init, section ".initcall6.init", align 4
@aspeed_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_gpio_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_gpio_driver_exit = internal global ptr @aspeed_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [43 x i8] c"gpio_aspeed.description=Aspeed GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [42 x i8] c"gpio_aspeed.file=drivers/gpio/gpio-aspeed\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [24 x i8] c"gpio_aspeed.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-aspeed.c\00", [37 x i8] zeroinitializer }, align 32
@aspeed_gpio_banks = internal constant { [8 x %struct.aspeed_gpio_bank], [32 x i8] } { [8 x %struct.aspeed_gpio_bank] [%struct.aspeed_gpio_bank { i16 0, i16 192, i16 8, i16 64, i16 28, i16 96, [4 x [3 x i8]] [[3 x i8] c"A\00\00", [3 x i8] c"B\00\00", [3 x i8] c"C\00\00", [3 x i8] c"D\00\00"] }, %struct.aspeed_gpio_bank { i16 32, i16 196, i16 40, i16 72, i16 60, i16 104, [4 x [3 x i8]] [[3 x i8] c"E\00\00", [3 x i8] c"F\00\00", [3 x i8] c"G\00\00", [3 x i8] c"H\00\00"] }, %struct.aspeed_gpio_bank { i16 112, i16 200, i16 152, i16 176, i16 172, i16 144, [4 x [3 x i8]] [[3 x i8] c"I\00\00", [3 x i8] c"J\00\00", [3 x i8] c"K\00\00", [3 x i8] c"L\00\00"] }, %struct.aspeed_gpio_bank { i16 120, i16 204, i16 232, i16 256, i16 252, i16 224, [4 x [3 x i8]] [[3 x i8] c"M\00\00", [3 x i8] c"N\00\00", [3 x i8] c"O\00\00", [3 x i8] c"P\00\00"] }, %struct.aspeed_gpio_bank { i16 128, i16 208, i16 280, i16 304, i16 300, i16 272, [4 x [3 x i8]] [[3 x i8] c"Q\00\00", [3 x i8] c"R\00\00", [3 x i8] c"S\00\00", [3 x i8] c"T\00\00"] }, %struct.aspeed_gpio_bank { i16 136, i16 212, i16 328, i16 352, i16 348, i16 320, [4 x [3 x i8]] [[3 x i8] c"U\00\00", [3 x i8] c"V\00\00", [3 x i8] c"W\00\00", [3 x i8] c"X\00\00"] }, %struct.aspeed_gpio_bank { i16 480, i16 216, i16 376, i16 400, i16 396, i16 368, [4 x [3 x i8]] [[3 x i8] c"Y\00\00", [3 x i8] c"Z\00\00", [3 x i8] c"AA\00", [3 x i8] c"AB\00"] }, %struct.aspeed_gpio_bank { i16 488, i16 220, i16 424, i16 448, i16 444, i16 416, [4 x [3 x i8]] [[3 x i8] c"AC\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer] }], [32 x i8] zeroinitializer }, align 32
@aspeed_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&gpio->lock\00", [20 x i8] zeroinitializer }, align 32
@aspeed_gpio_of_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_config }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@aspeed_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to get clock from devicetree, debouncing disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aspeed_gpio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_gpio_probe._entry_ptr = internal global ptr @aspeed_gpio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@aspeed_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aspeed_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ast2400_config = internal constant { %struct.aspeed_gpio_config, [24 x i8] } { %struct.aspeed_gpio_config { i32 220, ptr @ast2400_bank_props }, [24 x i8] zeroinitializer }, align 32
@ast2500_config = internal constant { %struct.aspeed_gpio_config, [24 x i8] } { %struct.aspeed_gpio_config { i32 232, ptr @ast2500_bank_props }, [24 x i8] zeroinitializer }, align 32
@ast2600_config = internal constant { %struct.aspeed_gpio_config, [24 x i8] } { %struct.aspeed_gpio_config { i32 208, ptr @ast2600_bank_props }, [24 x i8] zeroinitializer }, align 32
@ast2400_bank_props = internal constant { [3 x %struct.aspeed_bank_props], [60 x i8] } { [3 x %struct.aspeed_bank_props] [%struct.aspeed_bank_props { i32 5, i32 -1, i32 65535 }, %struct.aspeed_bank_props { i32 6, i32 15, i32 268435215 }, %struct.aspeed_bank_props zeroinitializer], [60 x i8] zeroinitializer }, align 32
@ast2500_bank_props = internal constant { [4 x %struct.aspeed_bank_props], [48 x i8] } { [4 x %struct.aspeed_bank_props] [%struct.aspeed_bank_props { i32 5, i32 -1, i32 65535 }, %struct.aspeed_bank_props { i32 6, i32 268435455, i32 268435455 }, %struct.aspeed_bank_props { i32 7, i32 255, i32 255 }, %struct.aspeed_bank_props zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ast2600_bank_props = internal constant { [4 x %struct.aspeed_bank_props], [48 x i8] } { [4 x %struct.aspeed_bank_props] [%struct.aspeed_bank_props { i32 4, i32 -1, i32 16777215 }, %struct.aspeed_bank_props { i32 5, i32 -1, i32 -256 }, %struct.aspeed_bank_props { i32 6, i32 65535, i32 65535 }, %struct.aspeed_bank_props zeroinitializer], [48 x i8] zeroinitializer }, align 32
@enable_debounce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 855, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to convert %luus to cycles at %luHz: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable_debounce\00", [16 x i8] zeroinitializer }, align 32
@enable_debounce._entry_ptr = internal global ptr @enable_debounce._entry, section ".printk_index", align 4
@debounce_timers = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 80, i32 84, i32 88], [16 x i8] zeroinitializer }, align 32
@enable_debounce._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str, i32 891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Debounce timers exhausted, cannot debounce for period %luus\0A\00", [35 x i8] zeroinitializer }, align 32
@enable_debounce._entry_ptr.11 = internal global ptr @enable_debounce._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No timer allocated to offset %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No users recorded for timer %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Offset %d already allocated timer %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timer user count would overflow\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio_aspeed\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 9, i64 11, i64 20]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"copro_data\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 95, i32 14 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"copro_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 94, i32 44 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"aspeed_gpio_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1241, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 255, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"aspeed_gpio_banks\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 97, i32 38 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1151, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"aspeed_gpio_of_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1128, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1159, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1167, i32 48 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1234, i32 7 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"ast2400_config\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1096, i32 40 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"ast2500_config\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1108, i32 40 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"ast2600_config\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1120, i32 40 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"ast2400_bank_props\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1089, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"ast2500_bank_props\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1100, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"ast2600_bank_props\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1112, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 854, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"debounce_timers\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 92, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 889, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 797, i32 6 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 801, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 778, i32 6 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 783, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [30 x i8] c"../drivers/gpio/gpio-aspeed.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1243, i32 11 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_aspeed_gpio_driver_exit, ptr @__initcall__kmod_gpio_aspeed__223_1248_aspeed_gpio_driver_init6, ptr @__ksymtab_aspeed_gpio_copro_grab_gpio, ptr @__ksymtab_aspeed_gpio_copro_release_gpio, ptr @__ksymtab_aspeed_gpio_copro_set_ops, ptr @aspeed_gpio_driver_exit, ptr @aspeed_gpio_probe._entry, ptr @aspeed_gpio_probe._entry_ptr, ptr @enable_debounce._entry, ptr @enable_debounce._entry.9, ptr @enable_debounce._entry_ptr, ptr @enable_debounce._entry_ptr.11, ptr @copro_data, ptr @copro_ops, ptr @aspeed_gpio_driver, ptr @.str, ptr @aspeed_gpio_banks, ptr @aspeed_gpio_probe.__key, ptr @.str.1, ptr @aspeed_gpio_of_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @aspeed_gpio_probe.lock_key, ptr @aspeed_gpio_probe.request_key, ptr @ast2400_config, ptr @ast2500_config, ptr @ast2600_config, ptr @ast2400_bank_props, ptr @ast2500_bank_props, ptr @ast2600_bank_props, ptr @.str.7, ptr @.str.8, ptr @debounce_timers, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copro_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copro_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gpio_banks to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gpio_of_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2400_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2400_bank_props to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_bank_props to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_bank_props to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_debounce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debounce_timers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_debounce._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @aspeed_gpio_copro_set_ops(ptr noundef %ops, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %data, ptr @copro_data, align 4
  store ptr %ops, ptr @copro_ops, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_gpio_copro_grab_gpio(ptr noundef %desc, ptr noundef writeonly %vreg_offset, ptr noundef writeonly %dreg_offset, ptr noundef writeonly %bit) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiod_to_chip(ptr noundef %desc) #8
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %call) #8
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %descs.i = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %descs.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %desc to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.ptr.div.i)
  %cmp.i = icmp ugt i32 %sub.ptr.div.i, 255
  br i1 %cmp.i, label %do.end.i, label %entry.to_bank.exit_crit_edge, !prof !85

entry.to_bank.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit

to_bank.exit:                                     ; preds = %do.end.i, %entry.to_bank.exit_crit_edge
  %shr.i = lshr i32 %sub.ptr.div.i, 5
  %arrayidx.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i
  %cf_copro_bankmap = getelementptr inbounds %struct.aspeed_gpio, ptr %call1, i32 0, i32 10
  %4 = ptrtoint ptr %cf_copro_bankmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cf_copro_bankmap, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end8.i.i, label %to_bank.exit.if.end10_crit_edge

to_bank.exit.if.end10_crit_edge:                  ; preds = %to_bank.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end8.i.i:                                      ; preds = %to_bank.exit
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %8 = lshr i16 %7, 3
  %9 = zext i16 %8 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #11
  %10 = ptrtoint ptr %cf_copro_bankmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i, ptr %cf_copro_bankmap, align 4
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i.if.end10_crit_edge

if.end8.i.i.if.end10_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end8.i.i.if.end10_crit_edge, %to_bank.exit.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %ngpio13 = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 20
  %11 = ptrtoint ptr %ngpio13 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ngpio13, align 4
  %conv14 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %conv14)
  %cmp15 = icmp ugt i32 %sub.ptr.div.i, %conv14
  br i1 %cmp15, label %lor.lhs.false.cleanup_crit_edge, label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %shr1990 = lshr i32 %sub.ptr.div.i, 3
  %lock = getelementptr inbounds %struct.aspeed_gpio, ptr %call1, i32 0, i32 2
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %13 = ptrtoint ptr %cf_copro_bankmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cf_copro_bankmap, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 %shr1990
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp25 = icmp eq i8 %16, -1
  br i1 %cmp25, label %if.end18.do.body48_crit_edge, label %if.end28

if.end18.do.body48_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

if.end28:                                         ; preds = %if.end18
  %inc = add nuw i8 %16, 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %inc, ptr %arrayidx, align 1
  %18 = ptrtoint ptr %cf_copro_bankmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cf_copro_bankmap, align 4
  %arrayidx32 = getelementptr i8, ptr %19, i32 %shr1990
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp34 = icmp eq i8 %21, 1
  br i1 %cmp34, label %if.then36, label %if.end28.if.end37_crit_edge

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %base57.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call1, i32 0, i32 3
  %22 = ptrtoint ptr %base57.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base57.i.i, align 4
  %cmdsrc_regs.i.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i, i32 5
  %24 = ptrtoint ptr %cmdsrc_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cmdsrc_regs.i.i, align 2
  %conv58.i.i = zext i16 %25 to i32
  %add.ptr59.i.i = getelementptr i8, ptr %23, i32 %conv58.i.i
  %add.ptr66.i.i = getelementptr i8, ptr %add.ptr59.i.i, i32 4
  %shl.i = and i32 %sub.ptr.div.i, 24
  %shl2.i = shl nuw nsw i32 1, %shl.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i.i) #8, !srcloc !86
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %or.i = or i32 %27, %shl2.i
  %neg.i = xor i32 %shl2.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i.i, i32 %28) #8, !srcloc !89
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i.i) #8, !srcloc !86
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and13.i = and i32 %30, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i.i, i32 %31) #8, !srcloc !89
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end28.if.end37_crit_edge
  %tobool38.not = icmp eq ptr %vreg_offset, null
  br i1 %tobool38.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i, align 2
  %34 = ptrtoint ptr %vreg_offset to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %vreg_offset, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  %tobool41.not = icmp eq ptr %dreg_offset, null
  br i1 %tobool41.not, label %if.end40.if.end43_crit_edge, label %if.then42

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %rdata_reg = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i, i32 1
  %35 = ptrtoint ptr %rdata_reg to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %rdata_reg, align 2
  %37 = ptrtoint ptr %dreg_offset to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %dreg_offset, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40.if.end43_crit_edge
  %tobool44.not = icmp eq ptr %bit, null
  br i1 %tobool44.not, label %if.end43.do.body48_crit_edge, label %if.then45

if.end43.do.body48_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %38 = trunc i32 %sub.ptr.div.i to i8
  %conv46 = and i8 %38, 31
  %39 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv46, ptr %bit, align 1
  br label %do.body48

do.body48:                                        ; preds = %if.then45, %if.end43.do.body48_crit_edge, %if.end18.do.body48_crit_edge
  %rc.0 = phi i32 [ 0, %if.then45 ], [ 0, %if.end43.do.body48_crit_edge ], [ -5, %if.end18.do.body48_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call22) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %do.body48 ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_to_chip(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_gpio_change_cmd_source(ptr nocapture noundef readonly %gpio, ptr nocapture noundef readonly %bank, i32 noundef %bindex, i32 noundef %cmdsrc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base57.i = getelementptr inbounds %struct.aspeed_gpio, ptr %gpio, i32 0, i32 3
  %0 = ptrtoint ptr %base57.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base57.i, align 4
  %cmdsrc_regs.i = getelementptr inbounds %struct.aspeed_gpio_bank, ptr %bank, i32 0, i32 5
  %2 = ptrtoint ptr %cmdsrc_regs.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmdsrc_regs.i, align 2
  %conv58.i = zext i16 %3 to i32
  %add.ptr59.i = getelementptr i8, ptr %1, i32 %conv58.i
  %add.ptr66.i = getelementptr i8, ptr %add.ptr59.i, i32 4
  %and = shl i32 %bindex, 3
  %shl = and i32 %and, 24
  %shl2 = shl nuw nsw i32 1, %shl
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i) #8, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and4 = and i32 %cmdsrc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %or = or i32 %5, %shl2
  %neg = xor i32 %shl2, -1
  %and5 = and i32 %5, %neg
  %reg.0 = select i1 %tobool.not, i32 %and5, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %6) #8, !srcloc !89
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #8, !srcloc !86
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and7 = and i32 %cmdsrc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or10 = or i32 %8, %shl2
  %and13 = and i32 %8, %neg
  %reg.1 = select i1 %tobool8.not, i32 %and13, i32 %or10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %9) #8, !srcloc !89
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_gpio_copro_release_gpio(ptr noundef %desc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiod_to_chip(ptr noundef %desc) #8
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %call) #8
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %descs.i = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %descs.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %desc to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.ptr.div.i)
  %cmp.i = icmp ugt i32 %sub.ptr.div.i, 255
  br i1 %cmp.i, label %do.end.i, label %entry.to_bank.exit_crit_edge, !prof !85

entry.to_bank.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit

to_bank.exit:                                     ; preds = %do.end.i, %entry.to_bank.exit_crit_edge
  %shr.i = lshr i32 %sub.ptr.div.i, 5
  %cf_copro_bankmap = getelementptr inbounds %struct.aspeed_gpio, ptr %call1, i32 0, i32 10
  %4 = ptrtoint ptr %cf_copro_bankmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cf_copro_bankmap, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %to_bank.exit.cleanup_crit_edge, label %if.end

to_bank.exit.cleanup_crit_edge:                   ; preds = %to_bank.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %to_bank.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %conv)
  %cmp5 = icmp ugt i32 %sub.ptr.div.i, %conv
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %shr56 = lshr i32 %sub.ptr.div.i, 3
  %lock = getelementptr inbounds %struct.aspeed_gpio, ptr %call1, i32 0, i32 2
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %8 = ptrtoint ptr %cf_copro_bankmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cf_copro_bankmap, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %shr56
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14 = icmp eq i8 %11, 0
  br i1 %cmp14, label %if.end8.do.body27_crit_edge, label %if.end17

if.end8.do.body27_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

if.end17:                                         ; preds = %if.end8
  %dec = add i8 %11, -1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %dec, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %cf_copro_bankmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cf_copro_bankmap, align 4
  %arrayidx21 = getelementptr i8, ptr %14, i32 %shr56
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp23 = icmp eq i8 %16, 0
  br i1 %cmp23, label %if.then25, label %if.end17.do.body27_crit_edge

if.end17.do.body27_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %base57.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call1, i32 0, i32 3
  %17 = ptrtoint ptr %base57.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base57.i.i, align 4
  %cmdsrc_regs.i.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i, i32 5
  %19 = ptrtoint ptr %cmdsrc_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cmdsrc_regs.i.i, align 2
  %conv58.i.i = zext i16 %20 to i32
  %add.ptr59.i.i = getelementptr i8, ptr %18, i32 %conv58.i.i
  %add.ptr66.i.i = getelementptr i8, ptr %add.ptr59.i.i, i32 4
  %shl.i = and i32 %sub.ptr.div.i, 24
  %shl2.i = shl nuw nsw i32 1, %shl.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i.i) #8, !srcloc !86
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %neg.i = xor i32 %shl2.i, -1
  %and5.i = and i32 %22, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i.i, i32 %23) #8, !srcloc !89
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i.i) #8, !srcloc !86
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and13.i = and i32 %25, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i.i, i32 %26) #8, !srcloc !89
  br label %do.body27

do.body27:                                        ; preds = %if.then25, %if.end17.do.body27_crit_edge, %if.end8.do.body27_crit_edge
  %rc.0 = phi i32 [ 0, %if.then25 ], [ 0, %if.end17.do.body27_crit_edge ], [ -5, %if.end8.do.body27_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body27, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %to_bank.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %do.body27 ], [ -6, %to_bank.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_gpio_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @aspeed_gpio_driver, ptr noundef nonnull @aspeed_gpio_probe, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gpio_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_gpio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_gpio_probe(ptr noundef %pdev) #4 section ".init.text" align 64 {
entry:
  %ngpio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpio) #8
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ngpio, align 4, !annotation !90
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 572, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup105_crit_edge, label %if.end

entry.cleanup105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup105

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @aspeed_gpio_probe.__key, i16 noundef signext 2) #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @of_match_node(ptr noundef nonnull @aspeed_gpio_of_table, ptr noundef %4) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.body.cleanup105_crit_edge, label %if.end12

do.body.cleanup105_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.end12:                                         ; preds = %do.body
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call15 = tail call ptr @of_clk_get(ptr noundef %6, i32 noundef 0) #8
  %clk = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %clk, align 4
  %cmp.i191 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %do.end21, label %if.end12.if.end24_crit_edge

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %clk, align 4
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end12.if.end24_crit_edge
  %data = getelementptr inbounds %struct.of_device_id, ptr %call9, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %config = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %config, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 4
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef nonnull %ngpio, i32 noundef 1, i32 noundef 0) #8
  %15 = ptrtoint ptr %ngpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ngpio, align 4
  %conv = trunc i32 %16 to i16
  %ngpio30 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %17 = ptrtoint ptr %ngpio30 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %ngpio30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool31.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool31.not, label %if.end24.if.end37_crit_edge, label %if.then32

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %conv34 = trunc i32 %21 to i16
  %22 = ptrtoint ptr %ngpio30 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv34, ptr %ngpio30, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end24.if.end37_crit_edge
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @aspeed_gpio_dir_in, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @aspeed_gpio_dir_out, ptr %direction_output, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @aspeed_gpio_get_direction, ptr %get_direction, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @aspeed_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @aspeed_gpio_free, ptr %free, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @aspeed_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %29 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @aspeed_gpio_set, ptr %set, align 4
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 14
  %30 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @aspeed_gpio_set_config, ptr %set_config, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end37.dev_name.exit_crit_edge

if.end37.dev_name.exit_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end37.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %34, %if.end.i ], [ %32, %if.end37.dev_name.exit_crit_edge ]
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i, ptr %call.i, align 4
  %base50 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %36 = ptrtoint ptr %base50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %base50, align 4
  %37 = ptrtoint ptr %ngpio30 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ngpio30, align 4
  %conv53 = zext i16 %38 to i32
  %sub = add nuw nsw i32 %conv53, 31
  %div190 = lshr i32 %sub, 5
  %39 = shl nuw nsw i32 %div190, 2
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %39, i32 noundef 3520) #8
  %dcache = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %dcache to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i.i, ptr %dcache, align 4
  %tobool57.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool57.not, label %dev_name.exit.cleanup105_crit_edge, label %for.cond.preheader

dev_name.exit.cleanup105_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

for.cond.preheader:                               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp205.not = icmp eq i16 %38, 0
  br i1 %cmp205.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div190, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0206 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %i.0206
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %rdata_reg.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %i.0206, i32 1
  %43 = ptrtoint ptr %rdata_reg.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rdata_reg.i, align 2
  %conv4.i = zext i16 %44 to i32
  %add.ptr5.i = getelementptr i8, ptr %42, i32 %conv4.i
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !86
  %46 = call i32 @llvm.bswap.i32(i32 %45) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %47 = ptrtoint ptr %dcache to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dcache, align 4
  %arrayidx64 = getelementptr i32, ptr %48, i32 %i.0206
  %49 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %arrayidx64, align 4
  call fastcc void @aspeed_gpio_change_cmd_source(ptr noundef nonnull %call.i, ptr noundef %arrayidx, i32 noundef 0, i32 noundef 0)
  call fastcc void @aspeed_gpio_change_cmd_source(ptr noundef nonnull %call.i, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 0)
  call fastcc void @aspeed_gpio_change_cmd_source(ptr noundef nonnull %call.i, ptr noundef %arrayidx, i32 noundef 2, i32 noundef 0)
  call fastcc void @aspeed_gpio_change_cmd_source(ptr noundef nonnull %call.i, ptr noundef %arrayidx, i32 noundef 3, i32 noundef 0)
  %inc = add nuw nsw i32 %i.0206, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call65 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp sgt i32 %call65, 0
  br i1 %cmp66, label %if.then68, label %for.end.if.end88_crit_edge

for.end.if.end88_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then68:                                        ; preds = %for.end
  %irq = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call65, ptr %irq, align 4
  %irq70 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %irqc = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 1
  %51 = ptrtoint ptr %irq70 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %irqc, ptr %irq70, align 4
  %52 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i194 = icmp eq ptr %53, null
  br i1 %tobool.not.i194, label %if.end.i195, label %if.then68.dev_name.exit197_crit_edge

if.then68.dev_name.exit197_crit_edge:             ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit197

if.end.i195:                                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  br label %dev_name.exit197

dev_name.exit197:                                 ; preds = %if.end.i195, %if.then68.dev_name.exit197_crit_edge
  %retval.0.i196 = phi ptr [ %55, %if.end.i195 ], [ %53, %if.then68.dev_name.exit197_crit_edge ]
  %name = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %retval.0.i196, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 1, i32 6
  %57 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @aspeed_gpio_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 1, i32 7
  %58 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @aspeed_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 1, i32 9
  %59 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @aspeed_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 1, i32 13
  %60 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @aspeed_gpio_set_type, ptr %irq_set_type, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %61 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @aspeed_gpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %62 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i198 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #8
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %63 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call5.i.i198, ptr %parents, align 4
  %tobool82.not = icmp eq ptr %call5.i.i198, null
  br i1 %tobool82.not, label %dev_name.exit197.cleanup105_crit_edge, label %if.end84

dev_name.exit197.cleanup105_crit_edge:            ; preds = %dev_name.exit197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.end84:                                         ; preds = %dev_name.exit197
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %66 = ptrtoint ptr %call5.i.i198 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %call5.i.i198, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %67 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %68 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @handle_bad_irq, ptr %handler, align 4
  %init_valid_mask = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 21
  %69 = ptrtoint ptr %init_valid_mask to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @aspeed_init_irq_valid_mask, ptr %init_valid_mask, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end84, %for.end.if.end88_crit_edge
  %70 = ptrtoint ptr %ngpio30 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ngpio30, align 4
  %conv92 = zext i16 %71 to i32
  %call.i201 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %conv92, i32 noundef 3520) #8
  %offset_timer = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 6
  %72 = ptrtoint ptr %offset_timer to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i201, ptr %offset_timer, align 4
  %tobool95.not = icmp eq ptr %call.i201, null
  br i1 %tobool95.not, label %if.end88.cleanup105_crit_edge, label %if.end97

if.end88.cleanup105_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.end97:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %call100 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @aspeed_gpio_probe.lock_key, ptr noundef nonnull @aspeed_gpio_probe.request_key) #8
  %73 = call i32 @llvm.smin.i32(i32 %call100, i32 0)
  br label %cleanup105

cleanup105:                                       ; preds = %if.end97, %if.end88.cleanup105_crit_edge, %dev_name.exit197.cleanup105_crit_edge, %dev_name.exit.cleanup105_crit_edge, %do.body.cleanup105_crit_edge, %if.then4, %entry.cleanup105_crit_edge
  %retval.1 = phi i32 [ %2, %if.then4 ], [ -12, %entry.cleanup105_crit_edge ], [ -22, %do.body.cleanup105_crit_edge ], [ -12, %dev_name.exit.cleanup105_crit_edge ], [ -12, %if.end88.cleanup105_crit_edge ], [ %73, %if.end97 ], [ -12, %dev_name.exit197.cleanup105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpio) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_gpio_dir_in(ptr noundef %gc, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i, label %do.end.i, label %entry.to_bank.exit_crit_edge, !prof !85

entry.to_bank.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit

to_bank.exit:                                     ; preds = %do.end.i, %entry.to_bank.exit_crit_edge
  %shr.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i
  %base7.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base7.i, align 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %conv9.i = zext i16 %3 to i32
  %add.ptr10.i = getelementptr i8, ptr %1, i32 %conv9.i
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 4
  %config.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i.i, align 4
  %props1.i.i = getelementptr inbounds %struct.aspeed_gpio_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %props1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %props1.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i, %to_bank.exit
  %props.0.i.i = phi ptr [ %7, %to_bank.exit ], [ %incdec.ptr.i.i, %if.end.i.i ]
  %input.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %is_bank_props_sentinel.exit.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

is_bank_props_sentinel.exit.i.i:                  ; preds = %while.cond.i.i
  %output.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %output.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.i.i.i, label %is_bank_props_sentinel.exit.i.i.do.body_crit_edge, label %is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge

is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

is_bank_props_sentinel.exit.i.i.do.body_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.i.i:                                   ; preds = %is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  %12 = ptrtoint ptr %props.0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %props.0.i.i, align 4
  %cmp.i.i = icmp eq i32 %13, %shr.i
  br i1 %cmp.i.i, label %find_bank_props.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i = getelementptr %struct.aspeed_bank_props, ptr %props.0.i.i, i32 1
  br label %while.cond.i.i

find_bank_props.exit.i:                           ; preds = %while.body.i.i
  %tobool.not.i = icmp eq ptr %props.0.i.i, null
  br i1 %tobool.not.i, label %find_bank_props.exit.i.do.body_crit_edge, label %have_input.exit

find_bank_props.exit.i.do.body_crit_edge:         ; preds = %find_bank_props.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

have_input.exit:                                  ; preds = %find_bank_props.exit.i
  %and.i = and i32 %offset, 31
  %shl.i = shl nuw i32 1, %and.i
  %and1.i = and i32 %9, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %have_input.exit.cleanup_crit_edge, label %have_input.exit.do.body_crit_edge

have_input.exit.do.body_crit_edge:                ; preds = %have_input.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

have_input.exit.cleanup_crit_edge:                ; preds = %have_input.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %have_input.exit.do.body_crit_edge, %find_bank_props.exit.i.do.body_crit_edge, %is_bank_props_sentinel.exit.i.i.do.body_crit_edge
  %lock = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !86
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and = and i32 %offset, 31
  %shl = shl nuw i32 1, %and
  %neg = xor i32 %shl, -1
  %and6 = and i32 %15, %neg
  %call7 = tail call fastcc zeroext i1 @aspeed_gpio_copro_request(ptr noundef %call, i32 noundef %offset)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and6) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %16) #8, !srcloc !89
  br i1 %call7, label %if.then8, label %do.body.do.body10_crit_edge

do.body.do.body10_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_gpio_copro_release(ptr noundef %call, i32 noundef %offset)
  br label %do.body10

do.body10:                                        ; preds = %if.then8, %do.body.do.body10_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %have_input.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body10 ], [ -524, %have_input.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_gpio_dir_out(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i, label %do.end.i, label %entry.to_bank.exit_crit_edge, !prof !85

entry.to_bank.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit

to_bank.exit:                                     ; preds = %do.end.i, %entry.to_bank.exit_crit_edge
  %shr.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i
  %base7.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base7.i, align 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %conv9.i = zext i16 %3 to i32
  %add.ptr10.i = getelementptr i8, ptr %1, i32 %conv9.i
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 4
  %config.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i.i, align 4
  %props1.i.i = getelementptr inbounds %struct.aspeed_gpio_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %props1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %props1.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i, %to_bank.exit
  %props.0.i.i = phi ptr [ %7, %to_bank.exit ], [ %incdec.ptr.i.i, %if.end.i.i ]
  %input.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %is_bank_props_sentinel.exit.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

is_bank_props_sentinel.exit.i.i:                  ; preds = %while.cond.i.i
  %output.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %output.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.i.i.i, label %is_bank_props_sentinel.exit.i.i.do.body_crit_edge, label %is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge

is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

is_bank_props_sentinel.exit.i.i.do.body_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.i.i:                                   ; preds = %is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  %12 = ptrtoint ptr %props.0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %props.0.i.i, align 4
  %cmp.i.i = icmp eq i32 %13, %shr.i
  br i1 %cmp.i.i, label %find_bank_props.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i = getelementptr %struct.aspeed_bank_props, ptr %props.0.i.i, i32 1
  br label %while.cond.i.i

find_bank_props.exit.i:                           ; preds = %while.body.i.i
  %tobool.not.i = icmp eq ptr %props.0.i.i, null
  br i1 %tobool.not.i, label %find_bank_props.exit.i.do.body_crit_edge, label %have_output.exit

find_bank_props.exit.i.do.body_crit_edge:         ; preds = %find_bank_props.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

have_output.exit:                                 ; preds = %find_bank_props.exit.i
  %output.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %output.i, align 4
  %and.i = and i32 %offset, 31
  %shl.i = shl nuw i32 1, %and.i
  %and1.i = and i32 %15, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %have_output.exit.cleanup_crit_edge, label %have_output.exit.do.body_crit_edge

have_output.exit.do.body_crit_edge:               ; preds = %have_output.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

have_output.exit.cleanup_crit_edge:               ; preds = %have_output.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %have_output.exit.do.body_crit_edge, %find_bank_props.exit.i.do.body_crit_edge, %is_bank_props_sentinel.exit.i.i.do.body_crit_edge
  %lock = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !86
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and = and i32 %offset, 31
  %shl = shl nuw i32 1, %and
  %or = or i32 %17, %shl
  %call6 = tail call fastcc zeroext i1 @aspeed_gpio_copro_request(ptr noundef %call, i32 noundef %offset)
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  br i1 %cmp.i, label %do.end.i.i, label %do.body.__aspeed_gpio_set.exit_crit_edge, !prof !85

do.body.__aspeed_gpio_set.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__aspeed_gpio_set.exit

do.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %__aspeed_gpio_set.exit

__aspeed_gpio_set.exit:                           ; preds = %do.end.i.i, %do.body.__aspeed_gpio_set.exit_crit_edge
  %base.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %dcache.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %dcache.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dcache.i, align 4
  %arrayidx.i38 = getelementptr i32, ptr %21, i32 %shr.i
  %22 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i39 = icmp eq i32 %val, 0
  %or.i = or i32 %23, %shl
  %neg.i = xor i32 %shl, -1
  %and5.i = and i32 %23, %neg.i
  %reg.0.i = select i1 %tobool.not.i39, i32 %and5.i, i32 %or.i
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv9.i
  %24 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %reg.0.i, ptr %arrayidx.i38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %26) #8, !srcloc !89
  br i1 %call6, label %if.then7, label %__aspeed_gpio_set.exit.do.body9_crit_edge

__aspeed_gpio_set.exit.do.body9_crit_edge:        ; preds = %__aspeed_gpio_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

if.then7:                                         ; preds = %__aspeed_gpio_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_gpio_copro_release(ptr noundef %call, i32 noundef %offset)
  br label %do.body9

do.body9:                                         ; preds = %if.then7, %__aspeed_gpio_set.exit.do.body9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %have_output.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body9 ], [ -524, %have_output.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_gpio_get_direction(ptr noundef %gc, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i, label %do.end.i, label %entry.to_bank.exit_crit_edge, !prof !85

entry.to_bank.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit

to_bank.exit:                                     ; preds = %do.end.i, %entry.to_bank.exit_crit_edge
  %shr.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i
  %config.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i.i, align 4
  %props1.i.i = getelementptr inbounds %struct.aspeed_gpio_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %props1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %props1.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i, %to_bank.exit
  %props.0.i.i = phi ptr [ %3, %to_bank.exit ], [ %incdec.ptr.i.i, %if.end.i.i ]
  %input.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %is_bank_props_sentinel.exit.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

is_bank_props_sentinel.exit.i.i:                  ; preds = %while.cond.i.i
  %output.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %output.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.i.i.i, label %is_bank_props_sentinel.exit.i.i.while.cond.i.i35.preheader_crit_edge, label %is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge

is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

is_bank_props_sentinel.exit.i.i.while.cond.i.i35.preheader_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i35.preheader

while.body.i.i:                                   ; preds = %is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  %8 = ptrtoint ptr %props.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %props.0.i.i, align 4
  %cmp.i.i = icmp eq i32 %9, %shr.i
  br i1 %cmp.i.i, label %find_bank_props.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i = getelementptr %struct.aspeed_bank_props, ptr %props.0.i.i, i32 1
  br label %while.cond.i.i

find_bank_props.exit.i:                           ; preds = %while.body.i.i
  %tobool.not.i = icmp eq ptr %props.0.i.i, null
  br i1 %tobool.not.i, label %find_bank_props.exit.i.while.cond.i.i35.preheader_crit_edge, label %have_input.exit

find_bank_props.exit.i.while.cond.i.i35.preheader_crit_edge: ; preds = %find_bank_props.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i35.preheader

have_input.exit:                                  ; preds = %find_bank_props.exit.i
  %and.i = and i32 %offset, 31
  %shl.i = shl nuw i32 1, %and.i
  %and1.i = and i32 %5, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %have_input.exit.cleanup_crit_edge, label %have_input.exit.while.cond.i.i35.preheader_crit_edge

have_input.exit.while.cond.i.i35.preheader_crit_edge: ; preds = %have_input.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i35.preheader

have_input.exit.cleanup_crit_edge:                ; preds = %have_input.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.i.i35.preheader:                       ; preds = %have_input.exit.while.cond.i.i35.preheader_crit_edge, %find_bank_props.exit.i.while.cond.i.i35.preheader_crit_edge, %is_bank_props_sentinel.exit.i.i.while.cond.i.i35.preheader_crit_edge
  br label %while.cond.i.i35

while.cond.i.i35:                                 ; preds = %if.end.i.i42, %while.cond.i.i35.preheader
  %props.0.i.i32 = phi ptr [ %incdec.ptr.i.i41, %if.end.i.i42 ], [ %3, %while.cond.i.i35.preheader ]
  %input.i.i.i33 = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i32, i32 0, i32 1
  %10 = ptrtoint ptr %input.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input.i.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i34 = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i34, label %is_bank_props_sentinel.exit.i.i38, label %while.cond.i.i35.while.body.i.i40_crit_edge

while.cond.i.i35.while.body.i.i40_crit_edge:      ; preds = %while.cond.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i40

is_bank_props_sentinel.exit.i.i38:                ; preds = %while.cond.i.i35
  %output.i.i.i36 = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i32, i32 0, i32 2
  %12 = ptrtoint ptr %output.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %output.i.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.i.i.i37 = icmp eq i32 %13, 0
  br i1 %tobool1.i.i.i37, label %is_bank_props_sentinel.exit.i.i38.do.body_crit_edge, label %is_bank_props_sentinel.exit.i.i38.while.body.i.i40_crit_edge

is_bank_props_sentinel.exit.i.i38.while.body.i.i40_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i40

is_bank_props_sentinel.exit.i.i38.do.body_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.i.i40:                                 ; preds = %is_bank_props_sentinel.exit.i.i38.while.body.i.i40_crit_edge, %while.cond.i.i35.while.body.i.i40_crit_edge
  %14 = ptrtoint ptr %props.0.i.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %props.0.i.i32, align 4
  %cmp.i.i39 = icmp eq i32 %15, %shr.i
  br i1 %cmp.i.i39, label %find_bank_props.exit.i44, label %if.end.i.i42

if.end.i.i42:                                     ; preds = %while.body.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i41 = getelementptr %struct.aspeed_bank_props, ptr %props.0.i.i32, i32 1
  br label %while.cond.i.i35

find_bank_props.exit.i44:                         ; preds = %while.body.i.i40
  %tobool.not.i43 = icmp eq ptr %props.0.i.i32, null
  br i1 %tobool.not.i43, label %find_bank_props.exit.i44.do.body_crit_edge, label %have_output.exit

find_bank_props.exit.i44.do.body_crit_edge:       ; preds = %find_bank_props.exit.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

have_output.exit:                                 ; preds = %find_bank_props.exit.i44
  %output.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i32, i32 0, i32 2
  %16 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %output.i, align 4
  %and.i45 = and i32 %offset, 31
  %shl.i46 = shl nuw i32 1, %and.i45
  %and1.i47 = and i32 %17, %shl.i46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i47)
  %tobool2.i48.not = icmp eq i32 %and1.i47, 0
  br i1 %tobool2.i48.not, label %have_output.exit.cleanup_crit_edge, label %have_output.exit.do.body_crit_edge

have_output.exit.do.body_crit_edge:               ; preds = %have_output.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

have_output.exit.cleanup_crit_edge:               ; preds = %have_output.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %have_output.exit.do.body_crit_edge, %find_bank_props.exit.i44.do.body_crit_edge, %is_bank_props_sentinel.exit.i.i38.do.body_crit_edge
  %lock = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base7.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base7.i, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %conv9.i = zext i16 %21 to i32
  %add.ptr10.i = getelementptr i8, ptr %19, i32 %conv9.i
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and = and i32 %offset, 31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  %23 = xor i32 %22, -1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = lshr i32 %24, %and
  %26 = and i32 %25, 1
  br label %cleanup

cleanup:                                          ; preds = %do.body, %have_output.exit.cleanup_crit_edge, %have_input.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %do.body ], [ 0, %have_input.exit.cleanup_crit_edge ], [ 1, %have_output.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_gpio_request(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %config.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i.i, align 4
  %props1.i.i = getelementptr inbounds %struct.aspeed_gpio_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %props1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %props1.i.i, align 4
  %shr.i.i = lshr i32 %offset, 5
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i, %entry
  %props.0.i.i = phi ptr [ %3, %entry ], [ %incdec.ptr.i.i, %if.end.i.i ]
  %input.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %is_bank_props_sentinel.exit.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

is_bank_props_sentinel.exit.i.i:                  ; preds = %while.cond.i.i
  %output.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %output.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.i.i.i, label %is_bank_props_sentinel.exit.i.i.find_bank_props.exit.i_crit_edge, label %is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge

is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

is_bank_props_sentinel.exit.i.i.find_bank_props.exit.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_bank_props.exit.i

while.body.i.i:                                   ; preds = %is_bank_props_sentinel.exit.i.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  %8 = ptrtoint ptr %props.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %props.0.i.i, align 4
  %cmp.i.i = icmp eq i32 %9, %shr.i.i
  br i1 %cmp.i.i, label %while.body.i.i.find_bank_props.exit.i_crit_edge, label %if.end.i.i

while.body.i.i.find_bank_props.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_bank_props.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i = getelementptr %struct.aspeed_bank_props, ptr %props.0.i.i, i32 1
  br label %while.cond.i.i

find_bank_props.exit.i:                           ; preds = %while.body.i.i.find_bank_props.exit.i_crit_edge, %is_bank_props_sentinel.exit.i.i.find_bank_props.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %props.0.i.i, %while.body.i.i.find_bank_props.exit.i_crit_edge ], [ null, %is_bank_props_sentinel.exit.i.i.find_bank_props.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i13.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i13.i, label %do.end.i.i, label %find_bank_props.exit.i.to_bank.exit.i_crit_edge, !prof !85

find_bank_props.exit.i.to_bank.exit.i_crit_edge:  ; preds = %find_bank_props.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit.i

do.end.i.i:                                       ; preds = %find_bank_props.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit.i

to_bank.exit.i:                                   ; preds = %do.end.i.i, %find_bank_props.exit.i.to_bank.exit.i_crit_edge
  %and.i = and i32 %offset, 31
  %div12.i = lshr i32 %and.i, 3
  %arrayidx.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i.i, i32 6, i32 %div12.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 0
  br i1 %cmp.not.i, label %to_bank.exit.i.return_crit_edge, label %land.rhs.i

to_bank.exit.i.return_crit_edge:                  ; preds = %to_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.rhs.i:                                       ; preds = %to_bank.exit.i
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %land.rhs.i.if.end_crit_edge, label %have_gpio.exit

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

have_gpio.exit:                                   ; preds = %land.rhs.i
  %input.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %retval.0.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input.i, align 4
  %output.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %retval.0.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %output.i, align 4
  %or.i = or i32 %15, %13
  %shl.i = shl nuw i32 1, %and.i
  %and5.i = and i32 %or.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.i.not = icmp eq i32 %and5.i, 0
  br i1 %tobool6.i.not, label %have_gpio.exit.return_crit_edge, label %have_gpio.exit.if.end_crit_edge

have_gpio.exit.if.end_crit_edge:                  ; preds = %have_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

have_gpio.exit.return_crit_edge:                  ; preds = %have_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %have_gpio.exit.if.end_crit_edge, %land.rhs.i.if.end_crit_edge
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 4
  %add = add i32 %17, %offset
  %call2 = tail call i32 @pinctrl_gpio_request(i32 noundef %add) #8
  br label %return

return:                                           ; preds = %if.end, %have_gpio.exit.return_crit_edge, %to_bank.exit.i.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %have_gpio.exit.return_crit_edge ], [ -19, %to_bank.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gpio_free(ptr nocapture noundef readonly %chip, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  tail call void @pinctrl_gpio_free(i32 noundef %add) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_gpio_get(ptr noundef %gc, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i, label %do.end.i, label %entry.to_bank.exit_crit_edge, !prof !85

entry.to_bank.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit

to_bank.exit:                                     ; preds = %do.end.i, %entry.to_bank.exit_crit_edge
  %shr.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i
  %base.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and = and i32 %offset, 31
  %6 = lshr i32 %5, %and
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %lock = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 2
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call2 = tail call fastcc zeroext i1 @aspeed_gpio_copro_request(ptr noundef %call, i32 noundef %offset)
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.__aspeed_gpio_set.exit_crit_edge, !prof !85

entry.__aspeed_gpio_set.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__aspeed_gpio_set.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %__aspeed_gpio_set.exit

__aspeed_gpio_set.exit:                           ; preds = %do.end.i.i, %entry.__aspeed_gpio_set.exit_crit_edge
  %shr.i.i = lshr i32 %offset, 5
  %arrayidx.i.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i.i
  %base.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i.i, align 2
  %dcache.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %dcache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcache.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %shr.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %and3.i = and i32 %offset, 31
  %shl4.i = shl nuw i32 1, %and3.i
  %or.i = or i32 %7, %shl4.i
  %neg.i = xor i32 %shl4.i, -1
  %and5.i = and i32 %7, %neg.i
  %reg.0.i = select i1 %tobool.not.i, i32 %and5.i, i32 %or.i
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %reg.0.i, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #8, !srcloc !89
  br i1 %call2, label %if.then, label %__aspeed_gpio_set.exit.do.body3_crit_edge

__aspeed_gpio_set.exit.do.body3_crit_edge:        ; preds = %__aspeed_gpio_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

if.then:                                          ; preds = %__aspeed_gpio_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_gpio_copro_release(ptr noundef %call, i32 noundef %offset)
  br label %do.body3

do.body3:                                         ; preds = %if.then, %__aspeed_gpio_set.exit.do.body3_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_gpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %config, 8
  %trunc = trunc i32 %config to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 11, label %if.then
    i8 1, label %entry.if.then7_crit_edge
    i8 3, label %entry.if.then7_crit_edge49
    i8 9, label %entry.if.then7_crit_edge50
    i8 20, label %if.then16
  ]

entry.if.then7_crit_edge50:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

entry.if.then7_crit_edge49:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %config.i.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %config.i.i.i, align 4
  %props1.i.i.i = getelementptr inbounds %struct.aspeed_gpio_config, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %props1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %props1.i.i.i, align 4
  %shr.i.i.i = lshr i32 %offset, 5
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i.i.i, %if.then
  %props.0.i.i.i = phi ptr [ %4, %if.then ], [ %incdec.ptr.i.i.i, %if.end.i.i.i ]
  %input.i.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %input.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i, label %is_bank_props_sentinel.exit.i.i.i, label %while.cond.i.i.i.while.body.i.i.i_crit_edge

while.cond.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

is_bank_props_sentinel.exit.i.i.i:                ; preds = %while.cond.i.i.i
  %output.i.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %output.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %output.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool1.i.i.i.i, label %is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge, label %is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge

is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i.i.i:                                 ; preds = %is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge, %while.cond.i.i.i.while.body.i.i.i_crit_edge
  %9 = ptrtoint ptr %props.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %props.0.i.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %10, %shr.i.i.i
  br i1 %cmp.i.i.i, label %find_bank_props.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i.i = getelementptr %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 1
  br label %while.cond.i.i.i

find_bank_props.exit.i.i:                         ; preds = %while.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %props.0.i.i.i, null
  br i1 %tobool.not.i.i, label %find_bank_props.exit.i.i.if.end.i_crit_edge, label %have_input.exit.i

find_bank_props.exit.i.i.if.end.i_crit_edge:      ; preds = %find_bank_props.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

have_input.exit.i:                                ; preds = %find_bank_props.exit.i.i
  %and.i.i = and i32 %offset, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %and1.i.i = and i32 %6, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %have_input.exit.i.cleanup_crit_edge, label %have_input.exit.i.if.end.i_crit_edge

have_input.exit.i.if.end.i_crit_edge:             ; preds = %have_input.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

have_input.exit.i.cleanup_crit_edge:              ; preds = %have_input.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %have_input.exit.i.if.end.i_crit_edge, %find_bank_props.exit.i.i.if.end.i_crit_edge, %is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %tobool.not.i = icmp ult i32 %config, 256
  %call.i13.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  br i1 %tobool.not.i, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %clk.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 8
  %11 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i.i, align 4
  %tobool.not.i11.i = icmp eq ptr %12, null
  br i1 %tobool.not.i11.i, label %if.then2.i.cleanup_crit_edge, label %if.end.i.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then2.i
  %call.i.i.i = tail call i32 @clk_get_rate(ptr noundef nonnull %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %if.end.i.i12.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.end.i.i12.i:                                   ; preds = %if.end.i.i
  %conv.i.i.i = zext i32 %call.i.i.i to i64
  %conv1.i.i.i = zext i32 %shr.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i.i, %conv1.i.i.i
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i.i.i) #13, !srcloc !91
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i.i.i, i64 %13, i32 0) #13, !srcloc !92
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125899906580479, i64 %asmresult10.i.i.i.i)
  %cmp188.i.i.i = icmp ugt i64 %asmresult10.i.i.i.i, 1125899906580479
  br i1 %cmp188.i.i.i, label %if.end.i.i12.i.do.end.i.i_crit_edge, label %do.body6.i.i

if.end.i.i12.i.do.end.i.i_crit_edge:              ; preds = %if.end.i.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i12.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -34, %if.end.i.i12.i.do.end.i.i_crit_edge ], [ -524, %if.end.i.i.do.end.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %15 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i.i, align 4
  %17 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk.i.i, align 4
  %call4.i.i = tail call i32 @clk_get_rate(ptr noundef %18) #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.7, i32 noundef %shr.i, i32 noundef %call4.i.i, i32 noundef %retval.0.i.ph.i.i) #12
  br label %cleanup

do.body6.i.i:                                     ; preds = %if.end.i.i12.i
  %div166282.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %conv167.i.i.i = trunc i64 %div166282.i.i.i to i32
  %mul168.neg.i.i.i = mul i32 %conv167.i.i.i, -1000000
  %conv19.i.i.i = trunc i64 %mul.i.i.i to i32
  %sub169.i.i.i = sub i32 0, %conv19.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul168.neg.i.i.i, i32 %sub169.i.i.i)
  %tobool192.i.i.i = icmp ne i32 %mul168.neg.i.i.i, %sub169.i.i.i
  %19 = zext i1 %tobool192.i.i.i to i64
  %add198.i.i.i = add nuw nsw i64 %div166282.i.i.i, %19
  %conv199.i.i.i = trunc i64 %add198.i.i.i to i32
  %lock.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 2
  %call8.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %offset_timer.i.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 6
  %20 = ptrtoint ptr %offset_timer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %offset_timer.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %21, i32 %offset
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i.not.i.i = icmp eq i8 %23, 0
  br i1 %cmp.i.not.i.i, label %do.body6.i.i.if.end18.i.i_crit_edge, label %if.end22.i.i.i

do.body6.i.i.if.end18.i.i_crit_edge:              ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i

if.end22.i.i.i:                                   ; preds = %do.body6.i.i
  %idxprom.i.i.i = zext i8 %23 to i32
  %arrayidx26.i.i.i = getelementptr %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 7, i32 %idxprom.i.i.i
  %24 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp27.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp27.i.i.i, label %unregister_allocated_timer.exit.thread.i.i, label %unregister_allocated_timer.exit.i.i, !prof !85

unregister_allocated_timer.exit.thread.i.i:       ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 803, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %idxprom.i.i.i) #8
  br label %do.body87.i.i

unregister_allocated_timer.exit.i.i:              ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.i.i = add i32 %25, -1
  %26 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dec.i.i.i, ptr %arrayidx26.i.i.i, align 4
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx.i.i.i, align 1
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %unregister_allocated_timer.exit.i.i, %do.body6.i.i.if.end18.i.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 3
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 80
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !86
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv199.i.i.i)
  %cmp22.i.i = icmp eq i32 %31, %conv199.i.i.i
  br i1 %cmp22.i.i, label %if.end18.i.i.if.end85.i.i_crit_edge, label %for.inc.i.i

if.end18.i.i.if.end85.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.i.i

for.inc.i.i:                                      ; preds = %if.end18.i.i
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.1.i.i = getelementptr i8, ptr %33, i32 84
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i) #8, !srcloc !86
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv199.i.i.i)
  %cmp22.1.i.i = icmp eq i32 %35, %conv199.i.i.i
  br i1 %cmp22.1.i.i, label %for.inc.i.i.if.end85.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.if.end85.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %add.ptr.2.i.i = getelementptr i8, ptr %37, i32 88
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i.i) #8, !srcloc !86
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv199.i.i.i)
  %cmp22.2.i.i = icmp eq i32 %39, %conv199.i.i.i
  br i1 %cmp22.2.i.i, label %for.inc.1.i.i.if.end85.i.i_crit_edge, label %for.body32.preheader.i.i

for.inc.1.i.i.if.end85.i.i_crit_edge:             ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.i.i

for.body32.preheader.i.i:                         ; preds = %for.inc.1.i.i
  %arrayidx33.i.i = getelementptr %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx33.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp34.i.i = icmp eq i32 %41, 0
  br i1 %cmp34.i.i, label %for.body32.preheader.i.i.cleanup52.thread.i.i_crit_edge, label %for.inc38.i.i

for.body32.preheader.i.i.cleanup52.thread.i.i_crit_edge: ; preds = %for.body32.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52.thread.i.i

for.inc38.i.i:                                    ; preds = %for.body32.preheader.i.i
  %arrayidx33.1.i.i = getelementptr %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 7, i32 2
  %42 = ptrtoint ptr %arrayidx33.1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx33.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp34.1.i.i = icmp eq i32 %43, 0
  br i1 %cmp34.1.i.i, label %for.inc38.i.i.cleanup52.thread.i.i_crit_edge, label %for.inc38.1.i.i

for.inc38.i.i.cleanup52.thread.i.i_crit_edge:     ; preds = %for.inc38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52.thread.i.i

for.inc38.1.i.i:                                  ; preds = %for.inc38.i.i
  %arrayidx33.2.i.i = getelementptr %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 7, i32 3
  %44 = ptrtoint ptr %arrayidx33.2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx33.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp34.2.i.i = icmp eq i32 %45, 0
  br i1 %cmp34.2.i.i, label %for.inc38.1.i.i.cleanup52.thread.i.i_crit_edge, label %cleanup52.i.i

for.inc38.1.i.i.cleanup52.thread.i.i_crit_edge:   ; preds = %for.inc38.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52.thread.i.i

cleanup52.thread.i.i:                             ; preds = %for.inc38.1.i.i.cleanup52.thread.i.i_crit_edge, %for.inc38.i.i.cleanup52.thread.i.i_crit_edge, %for.body32.preheader.i.i.cleanup52.thread.i.i_crit_edge
  %j.0167.lcssa.i.i = phi i32 [ 1, %for.body32.preheader.i.i.cleanup52.thread.i.i_crit_edge ], [ 2, %for.inc38.i.i.cleanup52.thread.i.i_crit_edge ], [ 3, %for.inc38.1.i.i.cleanup52.thread.i.i_crit_edge ]
  %46 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i, align 4
  %arrayidx50.i.i = getelementptr [4 x i32], ptr @debounce_timers, i32 0, i32 %j.0167.lcssa.i.i
  %48 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx50.i.i, align 4
  %add.ptr51.i.i = getelementptr i8, ptr %47, i32 %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %conv199.i.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i.i, i32 %50) #8, !srcloc !89
  br label %if.end85.i.i

cleanup52.i.i:                                    ; preds = %for.inc38.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %parent47.i.i = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %51 = ptrtoint ptr %parent47.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent47.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.10, i32 noundef %shr.i) #12
  tail call fastcc void @configure_timer(ptr noundef %call.i13.i, i32 noundef %offset, i32 noundef 0) #8
  br label %do.body87.i.i

if.end85.i.i:                                     ; preds = %cleanup52.thread.i.i, %for.inc.1.i.i.if.end85.i.i_crit_edge, %for.inc.i.i.if.end85.i.i_crit_edge, %if.end18.i.i.if.end85.i.i_crit_edge
  %i.2162.i.i = phi i32 [ %j.0167.lcssa.i.i, %cleanup52.thread.i.i ], [ 1, %if.end18.i.i.if.end85.i.i_crit_edge ], [ 2, %for.inc.i.i.if.end85.i.i_crit_edge ], [ 3, %for.inc.1.i.i.if.end85.i.i_crit_edge ]
  %53 = ptrtoint ptr %offset_timer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %offset_timer.i.i.i, align 4
  %arrayidx.i143.i.i = getelementptr i8, ptr %54, i32 %offset
  %55 = ptrtoint ptr %arrayidx.i143.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i143.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp.not.i.i.i = icmp eq i8 %56, 0
  br i1 %cmp.not.i.i.i, label %if.end25.i.i.i, label %do.end.i145.i.i, !prof !93

do.end.i145.i.i:                                  ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i144.i.i = zext i8 %56 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 780, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %offset, i32 noundef %conv.i144.i.i) #8
  br label %register_allocated_timer.exit.i.i

if.end25.i.i.i:                                   ; preds = %if.end85.i.i
  %arrayidx27.i.i.i = getelementptr %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 7, i32 %i.2162.i.i
  %57 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx27.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp28.i.i.i = icmp eq i32 %58, -1
  br i1 %cmp28.i.i.i, label %do.end45.i.i.i, label %if.end61.i.i.i, !prof !85

do.end45.i.i.i:                                   ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 784, i32 noundef 9, ptr noundef nonnull @.str.16) #8
  br label %register_allocated_timer.exit.i.i

if.end61.i.i.i:                                   ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv62.i.i.i = trunc i32 %i.2162.i.i to i8
  %59 = ptrtoint ptr %arrayidx.i143.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv62.i.i.i, ptr %arrayidx.i143.i.i, align 1
  %60 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx27.i.i.i, align 4
  %inc.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i, ptr %arrayidx27.i.i.i, align 4
  br label %register_allocated_timer.exit.i.i

register_allocated_timer.exit.i.i:                ; preds = %if.end61.i.i.i, %do.end45.i.i.i, %do.end.i145.i.i
  tail call fastcc void @configure_timer(ptr noundef %call.i13.i, i32 noundef %offset, i32 noundef %i.2162.i.i) #8
  br label %do.body87.i.i

do.body87.i.i:                                    ; preds = %register_allocated_timer.exit.i.i, %cleanup52.i.i, %unregister_allocated_timer.exit.thread.i.i
  %rc.3.i.i = phi i32 [ -1, %cleanup52.i.i ], [ 0, %register_allocated_timer.exit.i.i ], [ -22, %unregister_allocated_timer.exit.thread.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call8.i.i) #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %lock.i14.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 2
  %call1.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i14.i) #8
  %offset_timer.i.i15.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 6
  %62 = ptrtoint ptr %offset_timer.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %offset_timer.i.i15.i, align 4
  %arrayidx.i.i16.i = getelementptr i8, ptr %63, i32 %offset
  %64 = ptrtoint ptr %arrayidx.i.i16.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i.i16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp.i.i17.i = icmp eq i8 %65, 0
  br i1 %cmp.i.i17.i, label %do.end.i.i.i, label %if.end22.i.i21.i, !prof !85

do.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 798, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %offset) #8
  br label %disable_debounce.exit.i

if.end22.i.i21.i:                                 ; preds = %if.end4.i
  %idxprom.i.i18.i = zext i8 %65 to i32
  %arrayidx26.i.i19.i = getelementptr %struct.aspeed_gpio, ptr %call.i13.i, i32 0, i32 7, i32 %idxprom.i.i18.i
  %66 = ptrtoint ptr %arrayidx26.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx26.i.i19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp27.i.i20.i = icmp eq i32 %67, 0
  br i1 %cmp27.i.i20.i, label %do.end44.i.i.i, label %if.then.i.i, !prof !85

do.end44.i.i.i:                                   ; preds = %if.end22.i.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 803, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %idxprom.i.i18.i) #8
  br label %disable_debounce.exit.i

if.then.i.i:                                      ; preds = %if.end22.i.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.i22.i = add i32 %67, -1
  %68 = ptrtoint ptr %arrayidx26.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %dec.i.i22.i, ptr %arrayidx26.i.i19.i, align 4
  %69 = ptrtoint ptr %arrayidx.i.i16.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx.i.i16.i, align 1
  tail call fastcc void @configure_timer(ptr noundef %call.i13.i, i32 noundef %offset, i32 noundef 0) #8
  br label %disable_debounce.exit.i

disable_debounce.exit.i:                          ; preds = %if.then.i.i, %do.end44.i.i.i, %do.end.i.i.i
  %retval.0.i19.i.i = phi i32 [ 0, %if.then.i.i ], [ -22, %do.end.i.i.i ], [ -22, %do.end44.i.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i14.i, i32 noundef %call1.i.i) #8
  br label %cleanup

if.then7:                                         ; preds = %entry.if.then7_crit_edge, %entry.if.then7_crit_edge49, %entry.if.then7_crit_edge50
  %call8 = tail call i32 @pinctrl_gpio_set_config(i32 noundef %offset, i32 noundef %config) #8
  br label %cleanup

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %tobool.not = icmp ult i32 %config, 256
  %call.i34 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i.i, label %do.end.i.i35, label %if.then16.to_bank.exit.i_crit_edge, !prof !85

if.then16.to_bank.exit.i_crit_edge:               ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit.i

do.end.i.i35:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit.i

to_bank.exit.i:                                   ; preds = %do.end.i.i35, %if.then16.to_bank.exit.i_crit_edge
  %shr.i.i = lshr i32 %offset, 5
  %base53.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i34, i32 0, i32 3
  %70 = ptrtoint ptr %base53.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base53.i.i, align 4
  %tolerance_regs.i.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i.i, i32 4
  %72 = ptrtoint ptr %tolerance_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %tolerance_regs.i.i, align 2
  %conv54.i.i = zext i16 %73 to i32
  %add.ptr55.i.i = getelementptr i8, ptr %71, i32 %conv54.i.i
  %lock.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call.i34, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %call4.i = tail call fastcc zeroext i1 @aspeed_gpio_copro_request(ptr noundef %call.i34, i32 noundef %offset) #8
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i.i) #8, !srcloc !86
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and.i36 = and i32 %offset, 31
  %shl.i = shl nuw i32 1, %and.i36
  %or.i = or i32 %75, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and11.i = and i32 %75, %neg.i
  %val.0.i = select i1 %tobool.not, i32 %and11.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %76 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i.i, i32 %76) #8, !srcloc !89
  br i1 %call4.i, label %if.then16.i, label %to_bank.exit.i.aspeed_gpio_reset_tolerance.exit_crit_edge

to_bank.exit.i.aspeed_gpio_reset_tolerance.exit_crit_edge: ; preds = %to_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aspeed_gpio_reset_tolerance.exit

if.then16.i:                                      ; preds = %to_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_gpio_copro_release(ptr noundef %call.i34, i32 noundef %offset) #8
  br label %aspeed_gpio_reset_tolerance.exit

aspeed_gpio_reset_tolerance.exit:                 ; preds = %if.then16.i, %to_bank.exit.i.aspeed_gpio_reset_tolerance.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %aspeed_gpio_reset_tolerance.exit, %if.then7, %disable_debounce.exit.i, %do.body87.i.i, %do.end.i.i, %if.then2.i.cleanup_crit_edge, %have_input.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ 0, %aspeed_gpio_reset_tolerance.exit ], [ -524, %entry.cleanup_crit_edge ], [ %retval.0.i19.i.i, %disable_debounce.exit.i ], [ -524, %have_input.exit.i.cleanup_crit_edge ], [ %retval.0.i.ph.i.i, %do.end.i.i ], [ %rc.3.i.i, %do.body87.i.i ], [ -22, %if.then2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gpio_irq_ack(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i, align 4
  %config.i.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i.i.i, align 4
  %props1.i.i.i = getelementptr inbounds %struct.aspeed_gpio_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %props1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %props1.i.i.i, align 4
  %shr.i.i.i = lshr i32 %1, 5
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i.i.i, %entry
  %props.0.i.i.i = phi ptr [ %7, %entry ], [ %incdec.ptr.i.i.i, %if.end.i.i.i ]
  %input.i.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %input.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i, label %is_bank_props_sentinel.exit.i.i.i, label %while.cond.i.i.i.while.body.i.i.i_crit_edge

while.cond.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

is_bank_props_sentinel.exit.i.i.i:                ; preds = %while.cond.i.i.i
  %output.i.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %output.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.i.i.i.i, label %is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge, label %is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge

is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i.i.i:                                 ; preds = %is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge, %while.cond.i.i.i.while.body.i.i.i_crit_edge
  %12 = ptrtoint ptr %props.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %props.0.i.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %13, %shr.i.i.i
  br i1 %cmp.i.i.i, label %find_bank_props.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i.i = getelementptr %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 1
  br label %while.cond.i.i.i

find_bank_props.exit.i.i:                         ; preds = %while.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %props.0.i.i.i, null
  br i1 %tobool.not.i.i, label %find_bank_props.exit.i.i.if.end.i_crit_edge, label %have_input.exit.i

find_bank_props.exit.i.i.if.end.i_crit_edge:      ; preds = %find_bank_props.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

have_input.exit.i:                                ; preds = %find_bank_props.exit.i.i
  %and.i.i = and i32 %1, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %and1.i.i = and i32 %9, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %have_input.exit.i.cleanup_crit_edge, label %have_input.exit.i.if.end.i_crit_edge

have_input.exit.i.if.end.i_crit_edge:             ; preds = %have_input.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

have_input.exit.i.cleanup_crit_edge:              ; preds = %have_input.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %have_input.exit.i.if.end.i_crit_edge, %find_bank_props.exit.i.i.if.end.i_crit_edge, %is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.if.end_crit_edge, !prof !85

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end.i.i, %if.end.i.if.end_crit_edge
  %and.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %and.i
  %base36.i = getelementptr inbounds %struct.aspeed_gpio, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %base36.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base36.i, align 4
  %irq_regs37.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i.i.i, i32 2
  %16 = ptrtoint ptr %irq_regs37.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %irq_regs37.i, align 2
  %conv38.i = zext i16 %17 to i32
  %add.ptr39.i = getelementptr i8, ptr %15, i32 %conv38.i
  %add.ptr40.i = getelementptr i8, ptr %add.ptr39.i, i32 16
  %lock = getelementptr inbounds %struct.aspeed_gpio, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call3 = tail call fastcc zeroext i1 @aspeed_gpio_copro_request(ptr noundef %3, i32 noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %18) #8, !srcloc !89
  br i1 %call3, label %if.then5, label %if.end.do.body7_crit_edge

if.end.do.body7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_gpio_copro_release(ptr noundef %3, i32 noundef %1)
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %if.end.do.body7_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %have_input.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gpio_irq_mask(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @aspeed_gpio_irq_set_mask(ptr noundef %d, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gpio_irq_unmask(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @aspeed_gpio_irq_set_mask(ptr noundef %d, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_gpio_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i, align 4
  %config.i.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i.i.i, align 4
  %props1.i.i.i = getelementptr inbounds %struct.aspeed_gpio_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %props1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %props1.i.i.i, align 4
  %shr.i.i.i = lshr i32 %1, 5
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i.i.i, %entry
  %props.0.i.i.i = phi ptr [ %7, %entry ], [ %incdec.ptr.i.i.i, %if.end.i.i.i ]
  %input.i.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %input.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i, label %is_bank_props_sentinel.exit.i.i.i, label %while.cond.i.i.i.while.body.i.i.i_crit_edge

while.cond.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

is_bank_props_sentinel.exit.i.i.i:                ; preds = %while.cond.i.i.i
  %output.i.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %output.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.i.i.i.i, label %is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge, label %is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge

is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i.i.i:                                 ; preds = %is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge, %while.cond.i.i.i.while.body.i.i.i_crit_edge
  %12 = ptrtoint ptr %props.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %props.0.i.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %13, %shr.i.i.i
  br i1 %cmp.i.i.i, label %find_bank_props.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i.i = getelementptr %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 1
  br label %while.cond.i.i.i

find_bank_props.exit.i.i:                         ; preds = %while.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %props.0.i.i.i, null
  br i1 %tobool.not.i.i, label %find_bank_props.exit.i.i.if.end.i_crit_edge, label %have_input.exit.i

find_bank_props.exit.i.i.if.end.i_crit_edge:      ; preds = %find_bank_props.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

have_input.exit.i:                                ; preds = %find_bank_props.exit.i.i
  %and.i.i = and i32 %1, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %and1.i.i = and i32 %9, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %have_input.exit.i.cleanup_crit_edge, label %have_input.exit.i.if.end.i_crit_edge

have_input.exit.i.if.end.i_crit_edge:             ; preds = %have_input.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

have_input.exit.i.cleanup_crit_edge:              ; preds = %have_input.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %have_input.exit.i.if.end.i_crit_edge, %find_bank_props.exit.i.i.if.end.i_crit_edge, %is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.if.end_crit_edge, !prof !85

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end.i.i, %if.end.i.if.end_crit_edge
  %and.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %and.i
  %and = and i32 %type, 15
  %14 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %if.end.sw.bb1_crit_edge
    i32 2, label %if.end.do.body_crit_edge
    i32 4, label %sw.bb4
    i32 8, label %if.end.sw.bb6_crit_edge
  ]

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %if.end.sw.bb1_crit_edge
  %type2.0 = phi i32 [ 0, %if.end.sw.bb1_crit_edge ], [ %shl.i, %sw.bb ]
  br label %do.body

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb4, %if.end.sw.bb6_crit_edge
  %type0.1 = phi i32 [ 0, %if.end.sw.bb6_crit_edge ], [ %shl.i, %sw.bb4 ]
  br label %do.body

do.body:                                          ; preds = %sw.bb6, %sw.bb1, %if.end.do.body_crit_edge
  %type2.2 = phi i32 [ 0, %sw.bb6 ], [ 0, %if.end.do.body_crit_edge ], [ %type2.0, %sw.bb1 ]
  %handler.0 = phi ptr [ @handle_level_irq, %sw.bb6 ], [ @handle_edge_irq, %if.end.do.body_crit_edge ], [ @handle_edge_irq, %sw.bb1 ]
  %type1.0 = phi i32 [ %shl.i, %sw.bb6 ], [ 0, %if.end.do.body_crit_edge ], [ 0, %sw.bb1 ]
  %type0.2 = phi i32 [ %type0.1, %sw.bb6 ], [ 0, %if.end.do.body_crit_edge ], [ %shl.i, %sw.bb1 ]
  %lock = getelementptr inbounds %struct.aspeed_gpio, ptr %3, i32 0, i32 2
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call9 = tail call fastcc zeroext i1 @aspeed_gpio_copro_request(ptr noundef %3, i32 noundef %1)
  %base18.i = getelementptr inbounds %struct.aspeed_gpio, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %base18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base18.i, align 4
  %irq_regs19.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i.i.i, i32 2
  %17 = ptrtoint ptr %irq_regs19.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %irq_regs19.i, align 2
  %conv20.i = zext i16 %18 to i32
  %add.ptr21.i = getelementptr i8, ptr %16, i32 %conv20.i
  %add.ptr22.i = getelementptr i8, ptr %add.ptr21.i, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #8, !srcloc !86
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %neg = xor i32 %shl.i, -1
  %and12 = and i32 %20, %neg
  %or13 = or i32 %and12, %type0.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %or13) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %21) #8, !srcloc !89
  %22 = ptrtoint ptr %base18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base18.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %23, i32 %conv20.i
  %add.ptr28.i = getelementptr i8, ptr %add.ptr27.i, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #8, !srcloc !86
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and17 = and i32 %25, %neg
  %or18 = or i32 %and17, %type1.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %or18) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %26) #8, !srcloc !89
  %27 = ptrtoint ptr %base18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base18.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %28, i32 %conv20.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr33.i, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #8, !srcloc !86
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and22 = and i32 %30, %neg
  %or23 = or i32 %and22, %type2.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %or23) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %31) #8, !srcloc !89
  br i1 %call9, label %if.then25, label %do.body.do.body27_crit_edge

do.body.do.body27_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_gpio_copro_release(ptr noundef %3, i32 noundef %1)
  br label %do.body27

do.body27:                                        ; preds = %if.then25, %do.body.do.body27_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #8
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %32 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %handler.0, ptr %handle_irq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body27, %if.end.cleanup_crit_edge, %have_input.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body27 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %have_input.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gpio_irq_handler(ptr noundef %desc) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %call2 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !90
  %call3 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %8(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %10(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %12(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call3, i32 0, i32 20
  %13 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp36.not = icmp eq i16 %14, 0
  br i1 %cmp36.not, label %chained_irq_enter.exit.for.end17_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end17_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %conv = zext i16 %14 to i32
  %sub = add nuw nsw i32 %conv, 31
  %div29 = lshr i32 %sub, 5
  %base36.i = getelementptr inbounds %struct.aspeed_gpio, ptr %call2, i32 0, i32 3
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %15 = ptrtoint ptr %base36.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base36.i, align 4
  %irq_regs37.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %i.037, i32 2
  %17 = ptrtoint ptr %irq_regs37.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %irq_regs37.i, align 2
  %conv38.i = zext i16 %18 to i32
  %add.ptr39.i = getelementptr i8, ptr %16, i32 16
  %add.ptr40.i = getelementptr i8, ptr %add.ptr39.i, i32 %conv38.i
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #8, !srcloc !86
  %20 = call i32 @llvm.bswap.i32(i32 %19) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %reg, align 4
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call7)
  %cmp934 = icmp ult i32 %call7, 32
  br i1 %cmp934, label %for.body11.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body11.lr.ph:                                 ; preds = %for.body
  %mul = shl i32 %i.037, 5
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.lr.ph
  %p.035 = phi i32 [ %call7, %for.body11.lr.ph ], [ %call15, %for.body11.for.body11_crit_edge ]
  %22 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domain, align 4
  %add12 = add nuw i32 %p.035, %mul
  %call13 = call i32 @generic_handle_domain_irq(ptr noundef %23, i32 noundef %add12) #8
  %add14 = add nuw nsw i32 %p.035, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef %add14) #8
  %cmp9 = icmp ult i32 %call15, 32
  br i1 %cmp9, label %for.body11.for.body11_crit_edge, label %for.body11.for.end_crit_edge

for.body11.for.end_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11

for.end:                                          ; preds = %for.body11.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %div29
  br i1 %exitcond.not, label %for.end.for.end17_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.end17:                                        ; preds = %for.end.for.end17_crit_edge, %chained_irq_enter.exit.for.end17_crit_edge
  %24 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i31 = icmp eq ptr %25, null
  br i1 %tobool.not.i31, label %if.else.i32, label %for.end17.chained_irq_exit.exit_crit_edge

for.end17.chained_irq_exit.exit_crit_edge:        ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i32:                                      ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i32, %for.end17.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %27, %if.else.i32 ], [ %25, %for.end17.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_init_irq_valid_mask(ptr noundef %gc, ptr noundef %valid_mask, i32 noundef %ngpios) #1 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %config = getelementptr inbounds %struct.aspeed_gpio, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %props1 = getelementptr inbounds %struct.aspeed_gpio_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %props1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %props1, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 20
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %props.0 = phi ptr [ %3, %entry ], [ %incdec.ptr, %for.end ]
  %input.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0, i32 0, i32 1
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %is_bank_props_sentinel.exit, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

is_bank_props_sentinel.exit:                      ; preds = %while.cond
  %output.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0, i32 0, i32 2
  %6 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.i = icmp eq i32 %7, 0
  br i1 %tobool1.i, label %while.end, label %is_bank_props_sentinel.exit.while.body_crit_edge

is_bank_props_sentinel.exit.while.body_crit_edge: ; preds = %is_bank_props_sentinel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %is_bank_props_sentinel.exit.while.body_crit_edge, %while.cond.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #8
  %8 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %input, align 4
  %call4 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %input, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call4)
  %cmp18 = icmp ult i32 %call4, 32
  br i1 %cmp18, label %while.body.for.body_crit_edge, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %offset.019 = phi i32 [ %call8, %for.inc.for.body_crit_edge ], [ %call4, %while.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %props.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %props.0, align 4
  %mul = shl i32 %10, 5
  %add = add nuw i32 %mul, %offset.019
  %11 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp5.not = icmp ult i32 %add, %conv
  br i1 %cmp5.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  call void @_clear_bit(i32 noundef %add, ptr noundef %valid_mask) #8
  %add7 = add nuw nsw i32 %offset.019, 1
  %call8 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %input, i32 noundef 32, i32 noundef %add7) #8
  %cmp = icmp ult i32 %call8, 32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %while.body.for.end_crit_edge
  %incdec.ptr = getelementptr %struct.aspeed_bank_props, ptr %props.0, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #8
  br label %while.cond

while.end:                                        ; preds = %is_bank_props_sentinel.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @aspeed_gpio_copro_request(ptr nocapture noundef readonly %gpio, i32 noundef %offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i, label %do.end.i, label %entry.to_bank.exit_crit_edge, !prof !85

entry.to_bank.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit

to_bank.exit:                                     ; preds = %do.end.i, %entry.to_bank.exit_crit_edge
  %shr.i = lshr i32 %offset, 5
  %0 = load ptr, ptr @copro_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %to_bank.exit.cleanup_crit_edge, label %lor.lhs.false

to_bank.exit.cleanup_crit_edge:                   ; preds = %to_bank.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %to_bank.exit
  %cf_copro_bankmap = getelementptr inbounds %struct.aspeed_gpio, ptr %gpio, i32 0, i32 10
  %1 = ptrtoint ptr %cf_copro_bankmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cf_copro_bankmap, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr = lshr i32 %offset, 3
  %arrayidx = getelementptr i8, ptr %2, i32 %shr
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load ptr, ptr @copro_data, align 4
  %call10 = tail call i32 %6(ptr noundef %7) #8
  %base57.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %gpio, i32 0, i32 3
  %8 = ptrtoint ptr %base57.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base57.i.i, align 4
  %cmdsrc_regs.i.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i, i32 5
  %10 = ptrtoint ptr %cmdsrc_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cmdsrc_regs.i.i, align 2
  %conv58.i.i = zext i16 %11 to i32
  %add.ptr59.i.i = getelementptr i8, ptr %9, i32 %conv58.i.i
  %add.ptr66.i.i = getelementptr i8, ptr %add.ptr59.i.i, i32 4
  %shl.i = and i32 %offset, 24
  %shl2.i = shl nuw nsw i32 1, %shl.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i.i) #8, !srcloc !86
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %neg.i = xor i32 %shl2.i, -1
  %and5.i = and i32 %13, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i.i, i32 %14) #8, !srcloc !89
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i.i) #8, !srcloc !86
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and13.i = and i32 %16, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i.i, i32 %17) #8, !srcloc !89
  %18 = ptrtoint ptr %base57.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base57.i.i, align 4
  %rdata_reg.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i, i32 1
  %20 = ptrtoint ptr %rdata_reg.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rdata_reg.i, align 2
  %conv4.i = zext i16 %21 to i32
  %add.ptr5.i = getelementptr i8, ptr %19, i32 %conv4.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !86
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %dcache = getelementptr inbounds %struct.aspeed_gpio, ptr %gpio, i32 0, i32 9
  %24 = ptrtoint ptr %dcache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dcache, align 4
  %arrayidx15 = getelementptr i32, ptr %25, i32 %shr.i
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %arrayidx15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %to_bank.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end8 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %to_bank.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_gpio_copro_release(ptr nocapture noundef readonly %gpio, i32 noundef %offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i, label %do.end.i, label %entry.to_bank.exit_crit_edge, !prof !85

entry.to_bank.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit

to_bank.exit:                                     ; preds = %do.end.i, %entry.to_bank.exit_crit_edge
  %shr.i = lshr i32 %offset, 5
  %0 = load ptr, ptr @copro_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %to_bank.exit.cleanup_crit_edge, label %lor.lhs.false

to_bank.exit.cleanup_crit_edge:                   ; preds = %to_bank.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %to_bank.exit
  %cf_copro_bankmap = getelementptr inbounds %struct.aspeed_gpio, ptr %gpio, i32 0, i32 10
  %1 = ptrtoint ptr %cf_copro_bankmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cf_copro_bankmap, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr = lshr i32 %offset, 3
  %arrayidx = getelementptr i8, ptr %2, i32 %shr
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %release_access = getelementptr inbounds %struct.aspeed_gpio_copro_ops, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %release_access to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release_access, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %base57.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %gpio, i32 0, i32 3
  %7 = ptrtoint ptr %base57.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base57.i.i, align 4
  %cmdsrc_regs.i.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i, i32 5
  %9 = ptrtoint ptr %cmdsrc_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cmdsrc_regs.i.i, align 2
  %conv58.i.i = zext i16 %10 to i32
  %add.ptr59.i.i = getelementptr i8, ptr %8, i32 %conv58.i.i
  %add.ptr66.i.i = getelementptr i8, ptr %add.ptr59.i.i, i32 4
  %shl.i = and i32 %offset, 24
  %shl2.i = shl nuw nsw i32 1, %shl.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i.i) #8, !srcloc !86
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %or.i = or i32 %12, %shl2.i
  %neg.i = xor i32 %shl2.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i.i, i32 %13) #8, !srcloc !89
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i.i) #8, !srcloc !86
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and13.i = and i32 %15, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i.i, i32 %16) #8, !srcloc !89
  %17 = load ptr, ptr @copro_ops, align 4
  %release_access10 = getelementptr inbounds %struct.aspeed_gpio_copro_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %release_access10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %release_access10, align 4
  %20 = load ptr, ptr @copro_data, align 4
  %call11 = tail call i32 %19(ptr noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %to_bank.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_set_config(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @configure_timer(ptr nocapture noundef readonly %gpio, i32 noundef %offset, i32 noundef %timer) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i, label %do.end.i, label %entry.to_bank.exit_crit_edge, !prof !85

entry.to_bank.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %to_bank.exit

to_bank.exit:                                     ; preds = %do.end.i, %entry.to_bank.exit_crit_edge
  %shr.i = lshr i32 %offset, 5
  %and = and i32 %offset, 31
  %shl = shl nuw i32 1, %and
  %base42.i = getelementptr inbounds %struct.aspeed_gpio, ptr %gpio, i32 0, i32 3
  %0 = ptrtoint ptr %base42.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base42.i, align 4
  %debounce_regs.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i, i32 3
  %2 = ptrtoint ptr %debounce_regs.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %debounce_regs.i, align 2
  %conv43.i = zext i16 %3 to i32
  %add.ptr44.i = getelementptr i8, ptr %1, i32 %conv43.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #8, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %neg = xor i32 %shl, -1
  %and3 = and i32 %5, %neg
  %and4 = lshr i32 %timer, 1
  %and4.lobit = and i32 %and4, 1
  %shl7 = shl nuw i32 %and4.lobit, %and
  %or = or i32 %and3, %shl7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %6) #8, !srcloc !89
  %7 = ptrtoint ptr %base42.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base42.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %8, i32 %conv43.i
  %add.ptr51.i = getelementptr i8, ptr %add.ptr50.i, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #8, !srcloc !86
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and11 = and i32 %10, %neg
  %and12 = and i32 %timer, 1
  %shl19 = shl nuw i32 %and12, %and
  %or20 = or i32 %and11, %shl19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %or20) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %11) #8, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_gpio_irq_set_mask(ptr nocapture noundef readonly %d, i1 noundef zeroext %set) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i, align 4
  %config.i.i.i = getelementptr inbounds %struct.aspeed_gpio, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i.i.i, align 4
  %props1.i.i.i = getelementptr inbounds %struct.aspeed_gpio_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %props1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %props1.i.i.i, align 4
  %shr.i.i.i = lshr i32 %1, 5
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i.i.i, %entry
  %props.0.i.i.i = phi ptr [ %7, %entry ], [ %incdec.ptr.i.i.i, %if.end.i.i.i ]
  %input.i.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %input.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i, label %is_bank_props_sentinel.exit.i.i.i, label %while.cond.i.i.i.while.body.i.i.i_crit_edge

while.cond.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

is_bank_props_sentinel.exit.i.i.i:                ; preds = %while.cond.i.i.i
  %output.i.i.i.i = getelementptr inbounds %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %output.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.i.i.i.i, label %is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge, label %is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge

is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge: ; preds = %is_bank_props_sentinel.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i.i.i:                                 ; preds = %is_bank_props_sentinel.exit.i.i.i.while.body.i.i.i_crit_edge, %while.cond.i.i.i.while.body.i.i.i_crit_edge
  %12 = ptrtoint ptr %props.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %props.0.i.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %13, %shr.i.i.i
  br i1 %cmp.i.i.i, label %find_bank_props.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i.i = getelementptr %struct.aspeed_bank_props, ptr %props.0.i.i.i, i32 1
  br label %while.cond.i.i.i

find_bank_props.exit.i.i:                         ; preds = %while.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %props.0.i.i.i, null
  br i1 %tobool.not.i.i, label %find_bank_props.exit.i.i.if.end.i_crit_edge, label %have_input.exit.i

find_bank_props.exit.i.i.if.end.i_crit_edge:      ; preds = %find_bank_props.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

have_input.exit.i:                                ; preds = %find_bank_props.exit.i.i
  %and.i.i = and i32 %1, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %and1.i.i = and i32 %9, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %have_input.exit.i.cleanup_crit_edge, label %have_input.exit.i.if.end.i_crit_edge

have_input.exit.i.if.end.i_crit_edge:             ; preds = %have_input.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

have_input.exit.i.cleanup_crit_edge:              ; preds = %have_input.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %have_input.exit.i.if.end.i_crit_edge, %find_bank_props.exit.i.i.if.end.i_crit_edge, %is_bank_props_sentinel.exit.i.i.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.if.end_crit_edge, !prof !85

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end.i.i, %if.end.i.if.end_crit_edge
  %and.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %and.i
  %base13.i = getelementptr inbounds %struct.aspeed_gpio, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %base13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base13.i, align 4
  %irq_regs.i = getelementptr [8 x %struct.aspeed_gpio_bank], ptr @aspeed_gpio_banks, i32 0, i32 %shr.i.i.i, i32 2
  %16 = ptrtoint ptr %irq_regs.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %irq_regs.i, align 2
  %conv14.i = zext i16 %17 to i32
  %add.ptr15.i = getelementptr i8, ptr %15, i32 %conv14.i
  %lock = getelementptr inbounds %struct.aspeed_gpio, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call3 = tail call fastcc zeroext i1 @aspeed_gpio_copro_request(ptr noundef %3, i32 noundef %1)
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !86
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %or = or i32 %19, %shl.i
  %neg = xor i32 %shl.i, -1
  %and = and i32 %19, %neg
  %reg.0 = select i1 %set, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %20) #8, !srcloc !89
  br i1 %call3, label %if.then10, label %if.end.do.body12_crit_edge

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_gpio_copro_release(ptr noundef %3, i32 noundef %1)
  br label %do.body12

do.body12:                                        ; preds = %if.then10, %if.end.do.body12_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %have_input.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__ksymtab_aspeed_gpio_copro_set_ops, !1, !"__ksymtab_aspeed_gpio_copro_set_ops", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-aspeed.c", i32 990, i32 1}
!2 = !{ptr @__ksymtab_aspeed_gpio_copro_grab_gpio, !3, !"__ksymtab_aspeed_gpio_copro_grab_gpio", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1042, i32 1}
!4 = !{ptr @__ksymtab_aspeed_gpio_copro_release_gpio, !5, !"__ksymtab_aspeed_gpio_copro_release_gpio", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1080, i32 1}
!6 = !{ptr @__initcall__kmod_gpio_aspeed__223_1248_aspeed_gpio_driver_init6, !7, !"__initcall__kmod_gpio_aspeed__223_1248_aspeed_gpio_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1248, i32 1}
!8 = !{ptr @__exitcall_aspeed_gpio_driver_exit, !7, !"__exitcall_aspeed_gpio_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description224, !10, !"__UNIQUE_ID_description224", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1250, i32 1}
!11 = !{ptr @__UNIQUE_ID_file225, !12, !"__UNIQUE_ID_file225", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1251, i32 1}
!13 = !{ptr @__UNIQUE_ID_license226, !12, !"__UNIQUE_ID_license226", i1 false, i1 false}
!14 = !{ptr @copro_ops, !15, !"copro_ops", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-aspeed.c", i32 94, i32 44}
!16 = !{ptr @copro_data, !17, !"copro_data", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-aspeed.c", i32 95, i32 14}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-aspeed.c", i32 255, i32 2}
!20 = !{ptr @aspeed_gpio_banks, !21, !"aspeed_gpio_banks", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-aspeed.c", i32 97, i32 38}
!22 = !{ptr @aspeed_gpio_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1151, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1159, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @aspeed_gpio_probe._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @aspeed_gpio_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1167, i32 48}
!34 = !{ptr @aspeed_gpio_probe.lock_key, !35, !"lock_key", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1234, i32 7}
!36 = !{ptr @aspeed_gpio_probe.request_key, !35, !"request_key", i1 false, i1 false}
!37 = !{ptr @aspeed_gpio_of_table, !38, !"aspeed_gpio_of_table", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1128, i32 34}
!39 = !{ptr @ast2400_config, !40, !"ast2400_config", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1096, i32 40}
!41 = !{ptr @ast2400_bank_props, !42, !"ast2400_bank_props", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1089, i32 39}
!43 = !{ptr @ast2500_config, !44, !"ast2500_config", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1108, i32 40}
!45 = !{ptr @ast2500_bank_props, !46, !"ast2500_bank_props", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1100, i32 39}
!47 = !{ptr @ast2600_config, !48, !"ast2600_config", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1120, i32 40}
!49 = !{ptr @ast2600_bank_props, !50, !"ast2600_bank_props", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1112, i32 39}
!51 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-aspeed.c", i32 854, i32 3}
!53 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @enable_debounce._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @enable_debounce._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-aspeed.c", i32 889, i32 4}
!58 = !{ptr @enable_debounce._entry.9, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @enable_debounce._entry_ptr.11, !57, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpio/gpio-aspeed.c", i32 910, i32 6}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-aspeed.c", i32 797, i32 6}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-aspeed.c", i32 801, i32 6}
!66 = !{ptr @debounce_timers, !67, !"debounce_timers", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-aspeed.c", i32 92, i32 18}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpio/gpio-aspeed.c", i32 778, i32 6}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpio/gpio-aspeed.c", i32 783, i32 6}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1243, i32 11}
!74 = !{ptr @aspeed_gpio_driver, !75, !"aspeed_gpio_driver", i1 false, i1 false}
!75 = !{!"../drivers/gpio/gpio-aspeed.c", i32 1241, i32 31}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 4901530}
!87 = !{i64 2152441879}
!88 = !{i64 2152443234}
!89 = !{i64 4901112}
!90 = !{!"auto-init"}
!91 = !{i64 497046, i64 497073}
!92 = !{i64 497741, i64 497768, i64 497801, i64 497822, i64 497849, i64 497875}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2153895467}
!95 = !{i64 2153895948}
