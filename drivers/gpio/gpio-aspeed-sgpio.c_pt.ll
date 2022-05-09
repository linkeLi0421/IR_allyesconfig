; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-aspeed-sgpio.c_pt.bc'
source_filename = "../drivers/gpio/gpio-aspeed-sgpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aspeed_sgpio_bank = type { i16, i16, i16, i16, [4 x [3 x i8]] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.aspeed_sgpio_pdata = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_sgpio = type { %struct.gpio_chip, %struct.irq_chip, ptr, %struct.raw_spinlock, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_aspeed_sgpio__228_610_aspeed_sgpio_driver_init6 = internal global ptr @aspeed_sgpio_driver_init, section ".initcall6.init", align 4
@aspeed_sgpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_sgpio_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_sgpio_driver_exit = internal global ptr @aspeed_sgpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [56 x i8] c"gpio_aspeed_sgpio.description=Aspeed Serial GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [54 x i8] c"gpio_aspeed_sgpio.file=drivers/gpio/gpio-aspeed-sgpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [30 x i8] c"gpio_aspeed_sgpio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@aspeed_sgpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not read ngpios property\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed_sgpio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpio/gpio-aspeed-sgpio.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_sgpio_probe._entry_ptr = internal global ptr @aspeed_sgpio_probe._entry, section ".printk_index", align 4
@aspeed_sgpio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 539, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Number of GPIOs not multiple of 8: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@aspeed_sgpio_probe._entry_ptr.8 = internal global ptr @aspeed_sgpio_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bus-frequency\00", [18 x i8] zeroinitializer }, align 32
@aspeed_sgpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 545, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not read bus-frequency property\0A\00", [57 x i8] zeroinitializer }, align 32
@aspeed_sgpio_probe._entry_ptr.12 = internal global ptr @aspeed_sgpio_probe._entry.10, section ".printk_index", align 4
@aspeed_sgpio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"devm_clk_get failed\0A\00", [43 x i8] zeroinitializer }, align 32
@aspeed_sgpio_probe._entry_ptr.15 = internal global ptr @aspeed_sgpio_probe._entry.13, section ".printk_index", align 4
@aspeed_sgpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&gpio->lock\00", [20 x i8] zeroinitializer }, align 32
@aspeed_sgpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aspeed_sgpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aspeed_sgpio_banks = internal constant { [4 x %struct.aspeed_sgpio_bank], [48 x i8] } { [4 x %struct.aspeed_sgpio_bank] [%struct.aspeed_sgpio_bank { i16 0, i16 112, i16 4, i16 24, [4 x [3 x i8]] [[3 x i8] c"A\00\00", [3 x i8] c"B\00\00", [3 x i8] c"C\00\00", [3 x i8] c"D\00\00"] }, %struct.aspeed_sgpio_bank { i16 28, i16 116, i16 32, i16 52, [4 x [3 x i8]] [[3 x i8] c"E\00\00", [3 x i8] c"F\00\00", [3 x i8] c"G\00\00", [3 x i8] c"H\00\00"] }, %struct.aspeed_sgpio_bank { i16 56, i16 120, i16 60, i16 80, [4 x [3 x i8]] [[3 x i8] c"I\00\00", [3 x i8] c"J\00\00", [3 x i8] c"K\00\00", [3 x i8] c"L\00\00"] }, %struct.aspeed_sgpio_bank { i16 144, i16 124, i16 148, i16 168, [4 x [3 x i8]] [[3 x i8] c"M\00\00", [3 x i8] c"N\00\00", [3 x i8] c"O\00\00", [3 x i8] c"P\00\00"] }], [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpio_aspeed_sgpio\00", [46 x i8] zeroinitializer }, align 32
@aspeed_sgpio_of_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-sgpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_sgpio_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-sgpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_sgpio_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-sgpiom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_sgpiom_pdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ast2400_sgpio_pdata = internal constant { %struct.aspeed_sgpio_pdata, [28 x i8] } { %struct.aspeed_sgpio_pdata { i32 960 }, [28 x i8] zeroinitializer }, align 32
@ast2600_sgpiom_pdata = internal constant { %struct.aspeed_sgpio_pdata, [28 x i8] } { %struct.aspeed_sgpio_pdata { i32 1984 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"aspeed_sgpio_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 603, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 533, i32 44 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 535, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 538, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 543, i32 44 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 545, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 551, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 578, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 596, i32 7 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"aspeed_sgpio_banks\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 54, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 605, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"aspeed_sgpio_of_table\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 502, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"ast2400_sgpio_pdata\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 456, i32 40 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"ast2600_sgpiom_pdata\00", align 1
@___asan_gen_.88 = private constant [36 x i8] c"../drivers/gpio/gpio-aspeed-sgpio.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 498, i32 40 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_aspeed_sgpio_driver_exit, ptr @__initcall__kmod_gpio_aspeed_sgpio__228_610_aspeed_sgpio_driver_init6, ptr @aspeed_sgpio_driver_exit, ptr @aspeed_sgpio_probe._entry, ptr @aspeed_sgpio_probe._entry.10, ptr @aspeed_sgpio_probe._entry.13, ptr @aspeed_sgpio_probe._entry.6, ptr @aspeed_sgpio_probe._entry_ptr, ptr @aspeed_sgpio_probe._entry_ptr.12, ptr @aspeed_sgpio_probe._entry_ptr.15, ptr @aspeed_sgpio_probe._entry_ptr.8, ptr @aspeed_sgpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @aspeed_sgpio_probe.__key, ptr @.str.16, ptr @aspeed_sgpio_probe.lock_key, ptr @aspeed_sgpio_probe.request_key, ptr @aspeed_sgpio_banks, ptr @.str.17, ptr @aspeed_sgpio_of_table, ptr @ast2400_sgpio_pdata, ptr @ast2600_sgpiom_pdata], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sgpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sgpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sgpio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sgpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sgpio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sgpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sgpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sgpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sgpio_banks to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sgpio_of_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2400_sgpio_pdata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_sgpiom_pdata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @aspeed_sgpio_driver, ptr noundef nonnull @aspeed_sgpio_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sgpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_sgpio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %nr_gpios = alloca i32, align 4
  %sgpio_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_gpios) #7
  %0 = ptrtoint ptr %nr_gpios to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_gpios, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sgpio_freq) #7
  %1 = ptrtoint ptr %sgpio_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sgpio_freq, align 4, !annotation !59
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 540, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @device_get_match_data(ptr noundef %dev) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call9, align 4
  %call.i162 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull %nr_gpios, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %cmp = icmp slt i32 %call.i162, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %6 = ptrtoint ptr %nr_gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_gpios, align 4
  %rem = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool18.not = icmp eq i32 %rem, 0
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %7) #10
  br label %cleanup

if.end25:                                         ; preds = %if.else
  %call.i163 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %sgpio_freq, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp28 = icmp slt i32 %call.i163, 0
  br i1 %cmp28, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end25
  %call36 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %pclk = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call36, ptr %pclk, align 4
  %cmp.i164 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %do.end42, label %if.end46

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  %9 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pclk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end34
  %call48 = call i32 @clk_get_rate(ptr noundef %call36) #7
  %12 = ptrtoint ptr %sgpio_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sgpio_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp49 = icmp eq i32 %13, 0
  br i1 %cmp49, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %mul = shl i32 %13, 1
  %div = udiv i32 %call48, %mul
  %sub = add i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub)
  %cmp52 = icmp ugt i32 %sub, 65535
  br i1 %cmp52, label %if.end51.cleanup_crit_edge, label %do.end74

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end74:                                         ; preds = %if.end51
  %14 = ptrtoint ptr %nr_gpios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_gpios, align 4
  %16 = shl i32 %15, 3
  %shl = and i32 %5, -64
  %and = and i32 %shl, %16
  %shl75 = shl nuw i32 %sub, 16
  %or = or i32 %shl75, %and
  %or77 = or i32 %or, 1
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  %19 = call i32 @llvm.bswap.i32(i32 %or77) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #7, !srcloc !61
  %lock = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @aspeed_sgpio_probe.__key, i16 noundef signext 2) #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %parent, align 4
  %21 = ptrtoint ptr %nr_gpios to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_gpios, align 4
  %.tr = trunc i32 %22 to i16
  %conv = shl i16 %.tr, 1
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %23 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %ngpio, align 4
  %init_valid_mask = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 17
  %24 = ptrtoint ptr %init_valid_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @aspeed_sgpio_init_valid_mask, ptr %init_valid_mask, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @aspeed_sgpio_dir_in, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %26 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @aspeed_sgpio_dir_out, ptr %direction_output, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @aspeed_sgpio_get_direction, ptr %get_direction, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %free, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %30 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @aspeed_sgpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %31 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @aspeed_sgpio_set, ptr %set, align 4
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 14
  %32 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @aspeed_sgpio_set_config, ptr %set_config, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end74.dev_name.exit_crit_edge

do.end74.dev_name.exit_crit_edge:                 ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end74.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %36, %if.end.i ], [ %34, %do.end74.dev_name.exit_crit_edge ]
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i, ptr %call.i, align 4
  %base98 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %38 = ptrtoint ptr %base98 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %base98, align 4
  %call.i165 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp.i166 = icmp slt i32 %call.i165, 0
  br i1 %cmp.i166, label %dev_name.exit.aspeed_sgpio_setup_irqs.exit_crit_edge, label %if.end.i167

dev_name.exit.aspeed_sgpio_setup_irqs.exit_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_sgpio_setup_irqs.exit

if.end.i167:                                      ; preds = %dev_name.exit
  %irq1.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %irq1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i165, ptr %irq1.i, align 4
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %41, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 0) #7, !srcloc !61
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr34.i.i = getelementptr i8, ptr %43, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.i, i32 -1) #7, !srcloc !61
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr9.i.1.i = getelementptr i8, ptr %45, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.1.i, i32 0) #7, !srcloc !61
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr34.i.1.i = getelementptr i8, ptr %47, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.1.i, i32 -1) #7, !srcloc !61
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr9.i.2.i = getelementptr i8, ptr %49, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.2.i, i32 0) #7, !srcloc !61
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr34.i.2.i = getelementptr i8, ptr %51, i32 76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.2.i, i32 -1) #7, !srcloc !61
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr9.i.3.i = getelementptr i8, ptr %53, i32 148
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.3.i, i32 0) #7, !srcloc !61
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr34.i.3.i = getelementptr i8, ptr %55, i32 164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.3.i, i32 -1) #7, !srcloc !61
  %56 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i167.dev_name.exit.i_crit_edge

if.end.i167.dev_name.exit.i_crit_edge:            ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i167.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %59, %if.end.i.i ], [ %57, %if.end.i167.dev_name.exit.i_crit_edge ]
  %intc.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %retval.0.i.i, ptr %name.i, align 4
  %irq_ack.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 1, i32 6
  %61 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @aspeed_sgpio_irq_ack, ptr %irq_ack.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 1, i32 7
  %62 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @aspeed_sgpio_irq_mask, ptr %irq_mask.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 1, i32 9
  %63 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @aspeed_sgpio_irq_unmask, ptr %irq_unmask.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 1, i32 13
  %64 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @aspeed_sgpio_set_type, ptr %irq_set_type.i, align 4
  %irq10.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %65 = ptrtoint ptr %irq10.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %intc.i, ptr %irq10.i, align 4
  %init_valid_mask.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 21
  %66 = ptrtoint ptr %init_valid_mask.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @aspeed_sgpio_irq_init_valid_mask, ptr %init_valid_mask.i, align 4
  %handler.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %67 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @handle_bad_irq, ptr %handler.i, align 4
  %default_type.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %68 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %default_type.i, align 4
  %parent_handler.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %69 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @aspeed_sgpio_irq_handler, ptr %parent_handler.i, align 4
  %70 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 14
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %70, align 4
  %parents.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %72 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %irq1.i, ptr %parents.i, align 4
  %num_parents.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %73 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %num_parents.i, align 4
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %75, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 0) #7, !srcloc !61
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %77, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 0) #7, !srcloc !61
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %79, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 0) #7, !srcloc !61
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %add.ptr16.i.1.i = getelementptr i8, ptr %81, i32 36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.1.i, i32 0) #7, !srcloc !61
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %add.ptr22.i.1.i = getelementptr i8, ptr %83, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.1.i, i32 0) #7, !srcloc !61
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr28.i.1.i = getelementptr i8, ptr %85, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.1.i, i32 0) #7, !srcloc !61
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base, align 4
  %add.ptr16.i.2.i = getelementptr i8, ptr %87, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.2.i, i32 0) #7, !srcloc !61
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr22.i.2.i = getelementptr i8, ptr %89, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.2.i, i32 0) #7, !srcloc !61
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr28.i.2.i = getelementptr i8, ptr %91, i32 72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.2.i, i32 0) #7, !srcloc !61
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %add.ptr16.i.3.i = getelementptr i8, ptr %93, i32 152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.3.i, i32 0) #7, !srcloc !61
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %add.ptr22.i.3.i = getelementptr i8, ptr %95, i32 156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.3.i, i32 0) #7, !srcloc !61
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 4
  %add.ptr28.i.3.i = getelementptr i8, ptr %97, i32 160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.3.i, i32 0) #7, !srcloc !61
  br label %aspeed_sgpio_setup_irqs.exit

aspeed_sgpio_setup_irqs.exit:                     ; preds = %dev_name.exit.i, %dev_name.exit.aspeed_sgpio_setup_irqs.exit_crit_edge
  %call103 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @aspeed_sgpio_probe.lock_key, ptr noundef nonnull @aspeed_sgpio_probe.request_key) #7
  %98 = call i32 @llvm.smin.i32(i32 %call103, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %aspeed_sgpio_setup_irqs.exit, %if.end51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end42, %do.end32, %do.end22, %do.end, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ -22, %do.end ], [ -22, %do.end22 ], [ -22, %do.end32 ], [ %11, %do.end42 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end46.cleanup_crit_edge ], [ -22, %if.end51.cleanup_crit_edge ], [ %98, %aspeed_sgpio_setup_irqs.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sgpio_freq) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_gpios) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_init_valid_mask(ptr nocapture noundef readnone %gc, ptr noundef %valid_mask, i32 noundef %ngpios) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__bitmap_set(ptr noundef %valid_mask, i32 noundef 0, i32 noundef %ngpios) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_sgpio_dir_in(ptr nocapture noundef readnone %gc, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %cond = select i1 %tobool.not.i, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_dir_out(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %lock = getelementptr inbounds %struct.aspeed_sgpio, ptr %call, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.to_bank.exit.i_crit_edge, !prof !62

entry.to_bank.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_bank.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %to_bank.exit.i

to_bank.exit.i:                                   ; preds = %do.end.i.i, %entry.to_bank.exit.i_crit_edge
  %rem.i.i = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %to_bank.exit.i.sgpio_set_value.exit_crit_edge, label %if.end.i

to_bank.exit.i.sgpio_set_value.exit_crit_edge:    ; preds = %to_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sgpio_set_value.exit

if.end.i:                                         ; preds = %to_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i = lshr i32 %offset, 6
  %arrayidx.i.i = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %shr.i.i
  %base3.i.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %base3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base3.i.i, align 4
  %rdata_reg.i.i = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %shr.i.i, i32 1
  %2 = ptrtoint ptr %rdata_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rdata_reg.i.i, align 2
  %conv4.i.i = zext i16 %3 to i32
  %add.ptr5.i.i = getelementptr i8, ptr %1, i32 %conv4.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #7, !srcloc !63
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %and7.i = lshr i32 %offset, 1
  %shr8.i = and i32 %and7.i, 31
  %shl9.i = shl nuw i32 1, %shr8.i
  %or.i = or i32 %7, %shl9.i
  %neg.i = xor i32 %shl9.i, -1
  %and10.i = and i32 %7, %neg.i
  %reg.0.i = select i1 %tobool.not.i, i32 %and10.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #7, !srcloc !61
  br label %sgpio_set_value.exit

sgpio_set_value.exit:                             ; preds = %if.end.i, %to_bank.exit.i.sgpio_set_value.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %to_bank.exit.i.sgpio_set_value.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_sgpio_get_direction(ptr nocapture noundef readnone %gc, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = and i32 %offset, 1
  %0 = xor i32 %rem.i, 1
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_get(ptr noundef %gc, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i, label %do.end.i, label %entry.to_bank.exit_crit_edge, !prof !62

entry.to_bank.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %to_bank.exit

to_bank.exit:                                     ; preds = %do.end.i, %entry.to_bank.exit_crit_edge
  %shr.i = lshr i32 %offset, 6
  %lock = getelementptr inbounds %struct.aspeed_sgpio, ptr %call, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %rem.i = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %switch.not.not = icmp eq i32 %rem.i, 0
  %arrayidx.i = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %shr.i
  %rdata_reg.i = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %shr.i, i32 1
  %arrayidx.i.sink = select i1 %switch.not.not, ptr %arrayidx.i, ptr %rdata_reg.i
  %.sink.in = getelementptr inbounds %struct.aspeed_sgpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.sink = load ptr, ptr %.sink.in, align 4
  %1 = ptrtoint ptr %arrayidx.i.sink to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx.i.sink, align 2
  %conv.i = zext i16 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %.sink, i32 %conv.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and = lshr i32 %offset, 1
  %shr = and i32 %and, 31
  %5 = lshr i32 %4, %shr
  %6 = and i32 %5, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sgpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %lock = getelementptr inbounds %struct.aspeed_sgpio, ptr %call, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.to_bank.exit.i_crit_edge, !prof !62

entry.to_bank.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_bank.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %to_bank.exit.i

to_bank.exit.i:                                   ; preds = %do.end.i.i, %entry.to_bank.exit.i_crit_edge
  %rem.i.i = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %to_bank.exit.i.sgpio_set_value.exit_crit_edge, label %if.end.i

to_bank.exit.i.sgpio_set_value.exit_crit_edge:    ; preds = %to_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sgpio_set_value.exit

if.end.i:                                         ; preds = %to_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i = lshr i32 %offset, 6
  %arrayidx.i.i = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %shr.i.i
  %base3.i.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %base3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base3.i.i, align 4
  %rdata_reg.i.i = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %shr.i.i, i32 1
  %2 = ptrtoint ptr %rdata_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rdata_reg.i.i, align 2
  %conv4.i.i = zext i16 %3 to i32
  %add.ptr5.i.i = getelementptr i8, ptr %1, i32 %conv4.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #7, !srcloc !63
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %and7.i = lshr i32 %offset, 1
  %shr8.i = and i32 %and7.i, 31
  %shl9.i = shl nuw i32 1, %shr8.i
  %or.i = or i32 %7, %shl9.i
  %neg.i = xor i32 %shl9.i, -1
  %and10.i = and i32 %7, %neg.i
  %reg.0.i = select i1 %tobool.not.i, i32 %and10.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #7, !srcloc !61
  br label %sgpio_set_value.exit

sgpio_set_value.exit:                             ; preds = %if.end.i, %to_bank.exit.i.sgpio_set_value.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 20
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %tobool.not = icmp ult i32 %config, 256
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp.i.i = icmp ugt i32 %offset, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.aspeed_sgpio_reset_tolerance.exit_crit_edge, !prof !62

if.then.aspeed_sgpio_reset_tolerance.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_sgpio_reset_tolerance.exit

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %aspeed_sgpio_reset_tolerance.exit

aspeed_sgpio_reset_tolerance.exit:                ; preds = %do.end.i.i, %if.then.aspeed_sgpio_reset_tolerance.exit_crit_edge
  %shr.i.i = lshr i32 %offset, 6
  %base36.i.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %base36.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base36.i.i, align 4
  %tolerance_regs.i.i = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %shr.i.i, i32 3
  %2 = ptrtoint ptr %tolerance_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tolerance_regs.i.i, align 2
  %conv37.i.i = zext i16 %3 to i32
  %add.ptr38.i.i = getelementptr i8, ptr %1, i32 %conv37.i.i
  %lock.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call.i, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i.i) #7, !srcloc !63
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %and.i5 = lshr i32 %offset, 1
  %shr.i6 = and i32 %and.i5, 31
  %shl.i = shl nuw i32 1, %shr.i6
  %or.i = or i32 %5, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and10.i = and i32 %5, %neg.i
  %val.0.i = select i1 %tobool.not, i32 %and10.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i, i32 %6) #7, !srcloc !61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  br label %cleanup

cleanup:                                          ; preds = %aspeed_sgpio_reset_tolerance.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %aspeed_sgpio_reset_tolerance.exit ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sgpio_irq_ack(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !62

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 260, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.irqd_to_aspeed_sgpio_data.exit_crit_edge, !prof !62

if.end.i.irqd_to_aspeed_sgpio_data.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irqd_to_aspeed_sgpio_data.exit

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %irqd_to_aspeed_sgpio_data.exit

irqd_to_aspeed_sgpio_data.exit:                   ; preds = %do.end.i.i, %if.end.i.irqd_to_aspeed_sgpio_data.exit_crit_edge
  %shr.i.i = lshr i32 %1, 6
  %and.i = lshr i32 %1, 1
  %shr.i = and i32 %and.i, 31
  %shl.i = shl nuw i32 1, %shr.i
  %base30.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %base30.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base30.i, align 4
  %irq_regs31.i = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %shr.i.i, i32 2
  %6 = ptrtoint ptr %irq_regs31.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %irq_regs31.i, align 2
  %conv32.i = zext i16 %7 to i32
  %add.ptr33.i = getelementptr i8, ptr %5, i32 %conv32.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr33.i, i32 16
  %lock = getelementptr inbounds %struct.aspeed_sgpio, ptr %3, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %8) #7, !srcloc !61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sgpio_irq_mask(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @aspeed_sgpio_irq_set_mask(ptr noundef %d, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sgpio_irq_unmask(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @aspeed_sgpio_irq_set_mask(ptr noundef %d, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !62

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 260, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.irqd_to_aspeed_sgpio_data.exit_crit_edge, !prof !62

if.end.i.irqd_to_aspeed_sgpio_data.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irqd_to_aspeed_sgpio_data.exit

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %irqd_to_aspeed_sgpio_data.exit

irqd_to_aspeed_sgpio_data.exit:                   ; preds = %do.end.i.i, %if.end.i.irqd_to_aspeed_sgpio_data.exit_crit_edge
  %shr.i.i = lshr i32 %1, 6
  %and.i = lshr i32 %1, 1
  %shr.i = and i32 %and.i, 31
  %shl.i = shl nuw i32 1, %shr.i
  %and = and i32 %type, 15
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %irqd_to_aspeed_sgpio_data.exit.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %irqd_to_aspeed_sgpio_data.exit.sw.bb1_crit_edge
    i32 2, label %irqd_to_aspeed_sgpio_data.exit.do.body_crit_edge
    i32 4, label %sw.bb4
    i32 8, label %irqd_to_aspeed_sgpio_data.exit.sw.bb6_crit_edge
  ]

irqd_to_aspeed_sgpio_data.exit.sw.bb6_crit_edge:  ; preds = %irqd_to_aspeed_sgpio_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

irqd_to_aspeed_sgpio_data.exit.do.body_crit_edge: ; preds = %irqd_to_aspeed_sgpio_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

irqd_to_aspeed_sgpio_data.exit.sw.bb1_crit_edge:  ; preds = %irqd_to_aspeed_sgpio_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

irqd_to_aspeed_sgpio_data.exit.cleanup_crit_edge: ; preds = %irqd_to_aspeed_sgpio_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %irqd_to_aspeed_sgpio_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %irqd_to_aspeed_sgpio_data.exit.sw.bb1_crit_edge
  %type2.0 = phi i32 [ 0, %irqd_to_aspeed_sgpio_data.exit.sw.bb1_crit_edge ], [ %shl.i, %sw.bb ]
  br label %do.body

sw.bb4:                                           ; preds = %irqd_to_aspeed_sgpio_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb4, %irqd_to_aspeed_sgpio_data.exit.sw.bb6_crit_edge
  %type0.1 = phi i32 [ 0, %irqd_to_aspeed_sgpio_data.exit.sw.bb6_crit_edge ], [ %shl.i, %sw.bb4 ]
  br label %do.body

do.body:                                          ; preds = %sw.bb6, %sw.bb1, %irqd_to_aspeed_sgpio_data.exit.do.body_crit_edge
  %type1.0 = phi i32 [ %shl.i, %sw.bb6 ], [ 0, %irqd_to_aspeed_sgpio_data.exit.do.body_crit_edge ], [ 0, %sw.bb1 ]
  %type2.2 = phi i32 [ 0, %sw.bb6 ], [ 0, %irqd_to_aspeed_sgpio_data.exit.do.body_crit_edge ], [ %type2.0, %sw.bb1 ]
  %handler.0 = phi ptr [ @handle_level_irq, %sw.bb6 ], [ @handle_edge_irq, %irqd_to_aspeed_sgpio_data.exit.do.body_crit_edge ], [ @handle_edge_irq, %sw.bb1 ]
  %type0.2 = phi i32 [ %type0.1, %sw.bb6 ], [ 0, %irqd_to_aspeed_sgpio_data.exit.do.body_crit_edge ], [ %shl.i, %sw.bb1 ]
  %lock = getelementptr inbounds %struct.aspeed_sgpio, ptr %3, i32 0, i32 3
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %base12.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %base12.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base12.i, align 4
  %irq_regs13.i = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %shr.i.i, i32 2
  %7 = ptrtoint ptr %irq_regs13.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %irq_regs13.i, align 2
  %conv14.i = zext i16 %8 to i32
  %add.ptr15.i = getelementptr i8, ptr %6, i32 %conv14.i
  %add.ptr16.i = getelementptr i8, ptr %add.ptr15.i, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !63
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %neg = xor i32 %shl.i, -1
  %and10 = and i32 %10, %neg
  %or11 = or i32 %and10, %type0.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or11) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %11) #7, !srcloc !61
  %12 = ptrtoint ptr %base12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base12.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %13, i32 %conv14.i
  %add.ptr22.i = getelementptr i8, ptr %add.ptr21.i, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #7, !srcloc !63
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and15 = and i32 %15, %neg
  %or16 = or i32 %and15, %type1.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or16) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %16) #7, !srcloc !61
  %17 = ptrtoint ptr %base12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base12.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %18, i32 %conv14.i
  %add.ptr28.i = getelementptr i8, ptr %add.ptr27.i, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #7, !srcloc !63
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and20 = and i32 %20, %neg
  %or21 = or i32 %and20, %type2.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or21) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %21) #7, !srcloc !61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #7
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %22 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %handler.0, ptr %handle_irq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %irqd_to_aspeed_sgpio_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %irqd_to_aspeed_sgpio_data.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sgpio_irq_init_valid_mask(ptr nocapture noundef readnone %gc, ptr noundef %valid_mask, i32 noundef %ngpios) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ngpios)
  %cmp4.not = icmp eq i32 %ngpios, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %rem = and i32 %i.05, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %i.05, ptr noundef %valid_mask) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %ngpios
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sgpio_irq_handler(ptr noundef %desc) #4 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %call2 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %base30.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %call2, i32 0, i32 4
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  %12 = ptrtoint ptr %base30.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base30.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %13, i32 20
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #7, !srcloc !63
  %15 = call i32 @llvm.bswap.i32(i32 %14) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %reg, align 4
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5)
  %cmp729 = icmp ult i32 %call5, 32
  br i1 %cmp729, label %chained_irq_enter.exit.for.body8_crit_edge, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

chained_irq_enter.exit.for.body8_crit_edge:       ; preds = %chained_irq_enter.exit
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %chained_irq_enter.exit.for.body8_crit_edge
  %p.030 = phi i32 [ %call12, %for.body8.for.body8_crit_edge ], [ %call5, %chained_irq_enter.exit.for.body8_crit_edge ]
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %mul9 = shl nuw nsw i32 %p.030, 1
  %call10 = call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %mul9) #7
  %add11 = add nuw nsw i32 %p.030, 1
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef %add11) #7
  %cmp7 = icmp ult i32 %call12, 32
  br i1 %cmp7, label %for.body8.for.body8_crit_edge, label %for.body8.for.end_crit_edge

for.body8.for.end_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.end:                                          ; preds = %for.body8.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %19 = ptrtoint ptr %base30.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base30.i, align 4
  %add.ptr34.i.1 = getelementptr i8, ptr %20, i32 48
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.1) #7, !srcloc !63
  %22 = call i32 @llvm.bswap.i32(i32 %21) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %reg, align 4
  %call5.1 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5.1)
  %cmp729.1 = icmp ult i32 %call5.1, 32
  br i1 %cmp729.1, label %for.end.for.body8.1_crit_edge, label %for.end.for.end.1_crit_edge

for.end.for.end.1_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

for.end.for.body8.1_crit_edge:                    ; preds = %for.end
  br label %for.body8.1

for.body8.1:                                      ; preds = %for.body8.1.for.body8.1_crit_edge, %for.end.for.body8.1_crit_edge
  %p.030.1 = phi i32 [ %call12.1, %for.body8.1.for.body8.1_crit_edge ], [ %call5.1, %for.end.for.body8.1_crit_edge ]
  %24 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %domain, align 4
  %add.1 = shl nuw nsw i32 %p.030.1, 1
  %mul9.1 = add nuw nsw i32 %add.1, 64
  %call10.1 = call i32 @generic_handle_domain_irq(ptr noundef %25, i32 noundef %mul9.1) #7
  %add11.1 = add nuw nsw i32 %p.030.1, 1
  %call12.1 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef %add11.1) #7
  %cmp7.1 = icmp ult i32 %call12.1, 32
  br i1 %cmp7.1, label %for.body8.1.for.body8.1_crit_edge, label %for.body8.1.for.end.1_crit_edge

for.body8.1.for.end.1_crit_edge:                  ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

for.body8.1.for.body8.1_crit_edge:                ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.1

for.end.1:                                        ; preds = %for.body8.1.for.end.1_crit_edge, %for.end.for.end.1_crit_edge
  %26 = ptrtoint ptr %base30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base30.i, align 4
  %add.ptr34.i.2 = getelementptr i8, ptr %27, i32 76
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.2) #7, !srcloc !63
  %29 = call i32 @llvm.bswap.i32(i32 %28) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %reg, align 4
  %call5.2 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5.2)
  %cmp729.2 = icmp ult i32 %call5.2, 32
  br i1 %cmp729.2, label %for.end.1.for.body8.2_crit_edge, label %for.end.1.for.end.2_crit_edge

for.end.1.for.end.2_crit_edge:                    ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.2

for.end.1.for.body8.2_crit_edge:                  ; preds = %for.end.1
  br label %for.body8.2

for.body8.2:                                      ; preds = %for.body8.2.for.body8.2_crit_edge, %for.end.1.for.body8.2_crit_edge
  %p.030.2 = phi i32 [ %call12.2, %for.body8.2.for.body8.2_crit_edge ], [ %call5.2, %for.end.1.for.body8.2_crit_edge ]
  %31 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %domain, align 4
  %add.2 = shl nuw nsw i32 %p.030.2, 1
  %mul9.2 = add nuw nsw i32 %add.2, 128
  %call10.2 = call i32 @generic_handle_domain_irq(ptr noundef %32, i32 noundef %mul9.2) #7
  %add11.2 = add nuw nsw i32 %p.030.2, 1
  %call12.2 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef %add11.2) #7
  %cmp7.2 = icmp ult i32 %call12.2, 32
  br i1 %cmp7.2, label %for.body8.2.for.body8.2_crit_edge, label %for.body8.2.for.end.2_crit_edge

for.body8.2.for.end.2_crit_edge:                  ; preds = %for.body8.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.2

for.body8.2.for.body8.2_crit_edge:                ; preds = %for.body8.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.2

for.end.2:                                        ; preds = %for.body8.2.for.end.2_crit_edge, %for.end.1.for.end.2_crit_edge
  %33 = ptrtoint ptr %base30.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base30.i, align 4
  %add.ptr34.i.3 = getelementptr i8, ptr %34, i32 164
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.3) #7, !srcloc !63
  %36 = call i32 @llvm.bswap.i32(i32 %35) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %reg, align 4
  %call5.3 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5.3)
  %cmp729.3 = icmp ult i32 %call5.3, 32
  br i1 %cmp729.3, label %for.end.2.for.body8.3_crit_edge, label %for.end.2.for.end.3_crit_edge

for.end.2.for.end.3_crit_edge:                    ; preds = %for.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.3

for.end.2.for.body8.3_crit_edge:                  ; preds = %for.end.2
  br label %for.body8.3

for.body8.3:                                      ; preds = %for.body8.3.for.body8.3_crit_edge, %for.end.2.for.body8.3_crit_edge
  %p.030.3 = phi i32 [ %call12.3, %for.body8.3.for.body8.3_crit_edge ], [ %call5.3, %for.end.2.for.body8.3_crit_edge ]
  %38 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %domain, align 4
  %add.3 = shl nuw nsw i32 %p.030.3, 1
  %mul9.3 = add nuw nsw i32 %add.3, 192
  %call10.3 = call i32 @generic_handle_domain_irq(ptr noundef %39, i32 noundef %mul9.3) #7
  %add11.3 = add nuw nsw i32 %p.030.3, 1
  %call12.3 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef %add11.3) #7
  %cmp7.3 = icmp ult i32 %call12.3, 32
  br i1 %cmp7.3, label %for.body8.3.for.body8.3_crit_edge, label %for.body8.3.for.end.3_crit_edge

for.body8.3.for.end.3_crit_edge:                  ; preds = %for.body8.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.3

for.body8.3.for.body8.3_crit_edge:                ; preds = %for.body8.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.3

for.end.3:                                        ; preds = %for.body8.3.for.end.3_crit_edge, %for.end.2.for.end.3_crit_edge
  %40 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i26 = icmp eq ptr %41, null
  br i1 %tobool.not.i26, label %if.else.i27, label %for.end.3.chained_irq_exit.exit_crit_edge

for.end.3.chained_irq_exit.exit_crit_edge:        ; preds = %for.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i27:                                      ; preds = %for.end.3
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %42 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i27, %for.end.3.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %43, %if.else.i27 ], [ %41, %for.end.3.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_sgpio_irq_set_mask(ptr nocapture noundef readonly %d, i1 noundef zeroext %set) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !62

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 260, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.irqd_to_aspeed_sgpio_data.exit_crit_edge, !prof !62

if.end.i.irqd_to_aspeed_sgpio_data.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irqd_to_aspeed_sgpio_data.exit

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %irqd_to_aspeed_sgpio_data.exit

irqd_to_aspeed_sgpio_data.exit:                   ; preds = %do.end.i.i, %if.end.i.irqd_to_aspeed_sgpio_data.exit_crit_edge
  %shr.i.i = lshr i32 %1, 6
  %and.i = lshr i32 %1, 1
  %shr.i = and i32 %and.i, 31
  %shl.i = shl nuw i32 1, %shr.i
  %base7.i = getelementptr inbounds %struct.aspeed_sgpio, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base7.i, align 4
  %irq_regs.i = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %shr.i.i, i32 2
  %6 = ptrtoint ptr %irq_regs.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %irq_regs.i, align 2
  %conv8.i = zext i16 %7 to i32
  %add.ptr9.i = getelementptr i8, ptr %5, i32 %conv8.i
  %lock = getelementptr inbounds %struct.aspeed_sgpio, ptr %3, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !63
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %or = or i32 %9, %shl.i
  %neg = xor i32 %shl.i, -1
  %and = and i32 %9, %neg
  %reg.0 = select i1 %set, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %10) #7, !srcloc !61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_gpio_aspeed_sgpio__228_610_aspeed_sgpio_driver_init6, !1, !"__initcall__kmod_gpio_aspeed_sgpio__228_610_aspeed_sgpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 610, i32 1}
!2 = !{ptr @__exitcall_aspeed_sgpio_driver_exit, !1, !"__exitcall_aspeed_sgpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description229, !4, !"__UNIQUE_ID_description229", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 611, i32 1}
!5 = !{ptr @__UNIQUE_ID_file230, !6, !"__UNIQUE_ID_file230", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 612, i32 1}
!7 = !{ptr @__UNIQUE_ID_license231, !6, !"__UNIQUE_ID_license231", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 533, i32 44}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 535, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @aspeed_sgpio_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @aspeed_sgpio_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 538, i32 3}
!20 = !{ptr @aspeed_sgpio_probe._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @aspeed_sgpio_probe._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 543, i32 44}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 545, i32 3}
!26 = !{ptr @aspeed_sgpio_probe._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @aspeed_sgpio_probe._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 551, i32 3}
!30 = !{ptr @aspeed_sgpio_probe._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @aspeed_sgpio_probe._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @aspeed_sgpio_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 578, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @aspeed_sgpio_probe.lock_key, !36, !"lock_key", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 596, i32 7}
!37 = !{ptr @aspeed_sgpio_probe.request_key, !36, !"request_key", i1 false, i1 false}
!38 = !{ptr @aspeed_sgpio_banks, !39, !"aspeed_sgpio_banks", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 54, i32 39}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 605, i32 11}
!42 = !{ptr @aspeed_sgpio_driver, !43, !"aspeed_sgpio_driver", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 603, i32 31}
!44 = !{ptr @aspeed_sgpio_of_table, !45, !"aspeed_sgpio_of_table", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 502, i32 34}
!46 = !{ptr @ast2400_sgpio_pdata, !47, !"ast2400_sgpio_pdata", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 456, i32 40}
!48 = !{ptr @ast2600_sgpiom_pdata, !49, !"ast2600_sgpiom_pdata", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-aspeed-sgpio.c", i32 498, i32 40}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i64 2152453310}
!61 = !{i64 4911188}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 4911606}
!64 = !{i64 2152451955}
!65 = !{i64 2153873915}
!66 = !{i64 2153876315}
