; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-ath79.c_pt.bc'
source_filename = "../drivers/gpio/gpio-ath79.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.ath79_gpio_platform_data = type { i32, i8 }
%struct.ath79_gpio_ctrl = type { %struct.gpio_chip, ptr, %struct.raw_spinlock, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_ath79__227_300_ath79_gpio_driver_init6 = internal global ptr @ath79_gpio_driver_init, section ".initcall6.init", align 4
@ath79_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ath79_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ath79_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ath79_gpio_driver_exit = internal global ptr @ath79_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [69 x i8] c"gpio_ath79.description=Atheros AR71XX/AR724X/AR913X GPIO API support\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [40 x i8] c"gpio_ath79.file=drivers/gpio/gpio-ath79\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [26 x i8] c"gpio_ath79.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ath79-gpio\00", [21 x i8] zeroinitializer }, align 32
@ath79_gpio_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,ar7100-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,ar9340-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@ath79_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ngpios property is not valid\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ath79_gpio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpio/gpio-ath79.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath79_gpio_probe._entry_ptr = internal global ptr @ath79_gpio_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qca,ar9340-gpio\00", [16 x i8] zeroinitializer }, align 32
@ath79_gpio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 246, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No DT node or platform data found\0A\00", [61 x i8] zeroinitializer }, align 32
@ath79_gpio_probe._entry_ptr.10 = internal global ptr @ath79_gpio_probe._entry.8, section ".printk_index", align 4
@ath79_gpio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ngpios must be less than 32\0A\00", [35 x i8] zeroinitializer }, align 32
@ath79_gpio_probe._entry_ptr.13 = internal global ptr @ath79_gpio_probe._entry.11, section ".printk_index", align 4
@ath79_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctrl->lock\00", [20 x i8] zeroinitializer }, align 32
@ath79_gpio_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 268, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bgpio_init failed\0A\00", [45 x i8] zeroinitializer }, align 32
@ath79_gpio_probe._entry_ptr.17 = internal global ptr @ath79_gpio_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@ath79_gpio_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.19, ptr null, ptr null, ptr @ath79_gpio_irq_enable, ptr @ath79_gpio_irq_disable, ptr null, ptr @ath79_gpio_irq_mask, ptr null, ptr @ath79_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @ath79_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@ath79_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ath79_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio-ath79\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"ath79_gpio_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 292, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 294, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"ath79_gpio_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 213, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 236, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 238, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 241, i32 45 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 246, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 251, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 259, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 268, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 275, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"ath79_gpio_irqchip\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 172, i32 24 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 289, i32 9 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [29 x i8] c"../drivers/gpio/gpio-ath79.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 173, i32 10 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_ath79_gpio_driver_exit, ptr @__initcall__kmod_gpio_ath79__227_300_ath79_gpio_driver_init6, ptr @ath79_gpio_driver_exit, ptr @ath79_gpio_probe._entry, ptr @ath79_gpio_probe._entry.11, ptr @ath79_gpio_probe._entry.15, ptr @ath79_gpio_probe._entry.8, ptr @ath79_gpio_probe._entry_ptr, ptr @ath79_gpio_probe._entry_ptr.10, ptr @ath79_gpio_probe._entry_ptr.13, ptr @ath79_gpio_probe._entry_ptr.17, ptr @ath79_gpio_driver, ptr @.str, ptr @ath79_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @ath79_gpio_probe.__key, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @ath79_gpio_irqchip, ptr @ath79_gpio_probe.lock_key, ptr @ath79_gpio_probe.request_key, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_gpio_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_gpio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_gpio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_gpio_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_gpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ath79_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ath79_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ath79_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ath79_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath79_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ath79_gpio_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ath79_gpio_count) #6
  %4 = ptrtoint ptr %ath79_gpio_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ath79_gpio_count, align 4, !annotation !59
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 400, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %ath79_gpio_count, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool7.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call i32 @of_device_is_compatible(ptr noundef nonnull %3, ptr noundef nonnull @.str.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11 = icmp ne i32 %call10, 0
  %5 = ptrtoint ptr %ath79_gpio_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %ath79_gpio_count, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %do.end20, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %ath79_gpio_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ath79_gpio_count, align 4
  %oe_inverted14 = getelementptr inbounds %struct.ath79_gpio_platform_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %oe_inverted14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %oe_inverted14, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %extract.t125 = icmp ne i8 %10, 0
  br label %if.end22

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end22:                                         ; preds = %if.then13, %if.end9
  %11 = phi i32 [ %7, %if.then13 ], [ %.pr, %if.end9 ]
  %oe_inverted.0.off0 = phi i1 [ %extract.t125, %if.then13 ], [ %tobool11, %if.end9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %11)
  %cmp = icmp ugt i32 %11, 31
  br i1 %cmp, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %call28 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call28, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %do.body35

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call28 to i32
  br label %cleanup

do.body35:                                        ; preds = %if.end27
  %lock = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %call.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @ath79_gpio_probe.__key, i16 noundef signext 2) #6
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 4
  %add.ptr40 = getelementptr i8, ptr %15, i32 12
  %add.ptr42 = getelementptr i8, ptr %15, i32 16
  %spec.select = select i1 %oe_inverted.0.off0, ptr null, ptr %15
  %spec.select127 = select i1 %oe_inverted.0.off0, ptr %15, ptr null
  %call53 = call i32 @bgpio_init(ptr noundef nonnull %call.i, ptr noundef %dev, i32 noundef 4, ptr noundef %add.ptr, ptr noundef %add.ptr40, ptr noundef %add.ptr42, ptr noundef %spec.select, ptr noundef %spec.select127, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end59:                                         ; preds = %do.body35
  %base61 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %base61 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %base61, align 4
  br i1 %tobool4.not, label %if.end59.if.then64_crit_edge, label %lor.lhs.false

if.end59.if.then64_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

lor.lhs.false:                                    ; preds = %if.end59
  %call.i126 = call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.18, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i126, null
  br i1 %tobool.i.not, label %lor.lhs.false.if.end73_crit_edge, label %lor.lhs.false.if.then64_crit_edge

lor.lhs.false.if.then64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

lor.lhs.false.if.end73_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then64:                                        ; preds = %lor.lhs.false.if.then64_crit_edge, %if.end59.if.then64_crit_edge
  %irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ath79_gpio_irqchip, ptr %irq, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %18 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ath79_gpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %19 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #6
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %20 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool68.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool68.not, label %if.then64.cleanup_crit_edge, label %if.end70

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %21 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parents, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call71, ptr %22, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %24 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %25 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @handle_simple_irq, ptr %handler, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end70, %lor.lhs.false.if.end73_crit_edge
  %call75 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @ath79_gpio_probe.lock_key, ptr noundef nonnull @ath79_gpio_probe.request_key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then64.cleanup_crit_edge, %do.end58, %if.then31, %do.end26, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -22, %do.end26 ], [ %13, %if.then31 ], [ %call53, %do.end58 ], [ %call75, %if.end73 ], [ -22, %do.end20 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ath79_gpio_count) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath79_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #6
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %lock = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base.i = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !61
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %16 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pending, align 4
  %both_edges5 = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %both_edges5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %both_edges5, align 4
  %and = and i32 %18, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %chained_irq_enter.exit.do.body8_crit_edge, label %if.then

chained_irq_enter.exit.do.body8_crit_edge:        ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

if.then:                                          ; preds = %chained_irq_enter.exit
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %22 = xor i32 %21, -1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 28
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !61
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %neg.i = xor i32 %and, -1
  %and.i = and i32 %27, %neg.i
  %and1.i = and i32 %23, %and
  %or.i = or i32 %and.i, %and1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %27)
  %cmp.i.not = icmp eq i32 %or.i, %27
  br i1 %cmp.i.not, label %if.then.do.body8_crit_edge, label %if.then.i

if.then.do.body8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %28) #6, !srcloc !64
  br label %do.body8

do.body8:                                         ; preds = %if.then.i, %if.then.do.body8_crit_edge, %chained_irq_enter.exit.do.body8_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %31 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ngpio, align 4
  %conv17 = zext i16 %32 to i32
  %call18 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %conv17, i32 noundef 0) #6
  %33 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ngpio, align 4
  %conv2051 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %conv2051)
  %cmp2152 = icmp slt i32 %call18, %conv2051
  br i1 %cmp2152, label %for.body.lr.ph, label %do.body8.for.end_crit_edge

do.body8.for.end_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body8
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %irq.053 = phi i32 [ %call18, %for.body.lr.ph ], [ %call27, %for.body.for.body_crit_edge ]
  %35 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %domain, align 4
  %call24 = call i32 @generic_handle_domain_irq(ptr noundef %36, i32 noundef %irq.053) #6
  %37 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ngpio, align 4
  %conv26 = zext i16 %38 to i32
  %add = add nsw i32 %irq.053, 1
  %call27 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %conv26, i32 noundef %add) #6
  %39 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ngpio, align 4
  %conv20 = zext i16 %40 to i32
  %cmp21 = icmp slt i32 %call27, %conv20
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body8.for.end_crit_edge
  %41 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i48 = icmp eq ptr %42, null
  br i1 %tobool.not.i48, label %if.else.i49, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i49:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %43 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i49, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %44, %if.else.i49 ], [ %42, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath79_gpio_irq_enable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %lock = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base.i.i = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !61
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %or.i = or i32 %7, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %7)
  %cmp.i.not = icmp eq i32 %or.i, %7
  br i1 %cmp.i.not, label %entry.ath79_gpio_update_bits.exit_crit_edge, label %if.then.i

entry.ath79_gpio_update_bits.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath79_gpio_update_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %8) #6, !srcloc !64
  br label %ath79_gpio_update_bits.exit

ath79_gpio_update_bits.exit:                      ; preds = %if.then.i, %entry.ath79_gpio_update_bits.exit_crit_edge
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %12, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i22) #6, !srcloc !61
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %or.i25 = or i32 %14, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i25, i32 %14)
  %cmp.i26.not = icmp eq i32 %or.i25, %14
  br i1 %cmp.i26.not, label %ath79_gpio_update_bits.exit.ath79_gpio_update_bits.exit29_crit_edge, label %if.then.i28

ath79_gpio_update_bits.exit.ath79_gpio_update_bits.exit29_crit_edge: ; preds = %ath79_gpio_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath79_gpio_update_bits.exit29

if.then.i28:                                      ; preds = %ath79_gpio_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i25) #6
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i27 = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i27, i32 %15) #6, !srcloc !64
  br label %ath79_gpio_update_bits.exit29

ath79_gpio_update_bits.exit29:                    ; preds = %if.then.i28, %ath79_gpio_update_bits.exit.ath79_gpio_update_bits.exit29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath79_gpio_irq_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %lock = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base.i.i = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !61
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %7, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %7)
  %cmp.i.not = icmp eq i32 %and.i, %7
  br i1 %cmp.i.not, label %entry.ath79_gpio_update_bits.exit_crit_edge, label %if.then.i

entry.ath79_gpio_update_bits.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath79_gpio_update_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %8) #6, !srcloc !64
  br label %ath79_gpio_update_bits.exit

ath79_gpio_update_bits.exit:                      ; preds = %if.then.i, %entry.ath79_gpio_update_bits.exit_crit_edge
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #6, !srcloc !61
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and.i22 = and i32 %14, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i22, i32 %14)
  %cmp.i23.not = icmp eq i32 %and.i22, %14
  br i1 %cmp.i23.not, label %ath79_gpio_update_bits.exit.ath79_gpio_update_bits.exit26_crit_edge, label %if.then.i25

ath79_gpio_update_bits.exit.ath79_gpio_update_bits.exit26_crit_edge: ; preds = %ath79_gpio_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath79_gpio_update_bits.exit26

if.then.i25:                                      ; preds = %ath79_gpio_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i22) #6
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i24 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i24, i32 %15) #6, !srcloc !64
  br label %ath79_gpio_update_bits.exit26

ath79_gpio_update_bits.exit26:                    ; preds = %if.then.i25, %ath79_gpio_update_bits.exit.ath79_gpio_update_bits.exit26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath79_gpio_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %lock = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base.i.i = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !61
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %7, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %7)
  %cmp.i.not = icmp eq i32 %and.i, %7
  br i1 %cmp.i.not, label %entry.ath79_gpio_update_bits.exit_crit_edge, label %if.then.i

entry.ath79_gpio_update_bits.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath79_gpio_update_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %8) #6, !srcloc !64
  br label %ath79_gpio_update_bits.exit

ath79_gpio_update_bits.exit:                      ; preds = %if.then.i, %entry.ath79_gpio_update_bits.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath79_gpio_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %lock = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base.i.i = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !61
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %or.i = or i32 %7, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %7)
  %cmp.i.not = icmp eq i32 %or.i, %7
  br i1 %cmp.i.not, label %entry.ath79_gpio_update_bits.exit_crit_edge, label %if.then.i

entry.ath79_gpio_update_bits.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath79_gpio_update_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %8) #6, !srcloc !64
  br label %ath79_gpio_update_bits.exit

ath79_gpio_update_bits.exit:                      ; preds = %if.then.i, %entry.ath79_gpio_update_bits.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath79_gpio_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %4 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flow_type, label %entry.cleanup_crit_edge [
    i32 1, label %entry.do.body.thread_crit_edge
    i32 2, label %entry.do.body_crit_edge
    i32 3, label %entry.do.body_crit_edge95
    i32 4, label %sw.bb3
    i32 8, label %entry.sw.bb5_crit_edge
  ]

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.do.body_crit_edge95:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.thread

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb3, %entry.sw.bb5_crit_edge
  %polarity.0 = phi i32 [ 0, %entry.sw.bb5_crit_edge ], [ %shl, %sw.bb3 ]
  br label %do.body.thread

do.body.thread:                                   ; preds = %sw.bb5, %entry.do.body.thread_crit_edge
  %type.0.ph = phi i32 [ %shl, %sw.bb5 ], [ 0, %entry.do.body.thread_crit_edge ]
  %polarity.1.ph = phi i32 [ %polarity.0, %sw.bb5 ], [ %shl, %entry.do.body.thread_crit_edge ]
  %lock85 = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 2
  %call786 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock85) #6
  br label %if.else

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge95
  %lock = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flow_type)
  %cmp8 = icmp eq i32 %flow_type, 3
  br i1 %cmp8, label %if.then, label %do.body.if.else_crit_edge

do.body.if.else_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %both_edges = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %both_edges to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %both_edges, align 4
  %or10 = or i32 %6, %shl
  store i32 %or10, ptr %both_edges, align 4
  %base.i = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %10 = xor i32 %9, -1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %.pre = xor i32 %shl, -1
  br label %if.end

if.else:                                          ; preds = %do.body.if.else_crit_edge, %do.body.thread
  %call794 = phi i32 [ %call786, %do.body.thread ], [ %call7, %do.body.if.else_crit_edge ]
  %lock92 = phi ptr [ %lock85, %do.body.thread ], [ %lock, %do.body.if.else_crit_edge ]
  %polarity.190 = phi i32 [ %polarity.1.ph, %do.body.thread ], [ 0, %do.body.if.else_crit_edge ]
  %type.089 = phi i32 [ %type.0.ph, %do.body.thread ], [ 0, %do.body.if.else_crit_edge ]
  %neg12 = xor i32 %shl, -1
  %both_edges13 = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %both_edges13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %both_edges13, align 4
  %and = and i32 %13, %neg12
  store i32 %and, ptr %both_edges13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %neg.i.pre-phi = phi i32 [ %neg12, %if.else ], [ %.pre, %if.then ]
  %call793 = phi i32 [ %call794, %if.else ], [ %call7, %if.then ]
  %lock91 = phi ptr [ %lock92, %if.else ], [ %lock, %if.then ]
  %type.088 = phi i32 [ %type.089, %if.else ], [ 0, %if.then ]
  %polarity.2 = phi i32 [ %polarity.190, %if.else ], [ %11, %if.then ]
  %base.i.i = getelementptr inbounds %struct.ath79_gpio_ctrl, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !61
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and.i = and i32 %17, %neg.i.pre-phi
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %17)
  %cmp.i.not = icmp eq i32 %and.i, %17
  br i1 %cmp.i.not, label %if.end.ath79_gpio_update_bits.exit_crit_edge, label %if.then.i

if.end.ath79_gpio_update_bits.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath79_gpio_update_bits.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %18) #6, !srcloc !64
  br label %ath79_gpio_update_bits.exit

ath79_gpio_update_bits.exit:                      ; preds = %if.then.i, %if.end.ath79_gpio_update_bits.exit_crit_edge
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #6, !srcloc !61
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and.i59 = and i32 %24, %neg.i.pre-phi
  %and1.i = and i32 %type.088, %shl
  %or.i = or i32 %and.i59, %and1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %24)
  %cmp.i60.not = icmp eq i32 %or.i, %24
  br i1 %cmp.i60.not, label %ath79_gpio_update_bits.exit.ath79_gpio_update_bits.exit63_crit_edge, label %if.then.i62

ath79_gpio_update_bits.exit.ath79_gpio_update_bits.exit63_crit_edge: ; preds = %ath79_gpio_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath79_gpio_update_bits.exit63

if.then.i62:                                      ; preds = %ath79_gpio_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i61 = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i61, i32 %25) #6, !srcloc !64
  br label %ath79_gpio_update_bits.exit63

ath79_gpio_update_bits.exit63:                    ; preds = %if.then.i62, %ath79_gpio_update_bits.exit.ath79_gpio_update_bits.exit63_crit_edge
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %29, i32 28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65) #6, !srcloc !61
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and.i67 = and i32 %31, %neg.i.pre-phi
  %and1.i68 = and i32 %polarity.2, %shl
  %or.i69 = or i32 %and.i67, %and1.i68
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i69, i32 %31)
  %cmp.i70.not = icmp eq i32 %or.i69, %31
  br i1 %cmp.i70.not, label %ath79_gpio_update_bits.exit63.ath79_gpio_update_bits.exit73_crit_edge, label %if.then.i72

ath79_gpio_update_bits.exit63.ath79_gpio_update_bits.exit73_crit_edge: ; preds = %ath79_gpio_update_bits.exit63
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath79_gpio_update_bits.exit73

if.then.i72:                                      ; preds = %ath79_gpio_update_bits.exit63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i69) #6
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i71 = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i71, i32 %32) #6, !srcloc !64
  br label %ath79_gpio_update_bits.exit73

ath79_gpio_update_bits.exit73:                    ; preds = %if.then.i72, %ath79_gpio_update_bits.exit63.ath79_gpio_update_bits.exit73_crit_edge
  br i1 %cmp.i.not, label %ath79_gpio_update_bits.exit73.do.body20_crit_edge, label %if.then17

ath79_gpio_update_bits.exit73.do.body20_crit_edge: ; preds = %ath79_gpio_update_bits.exit73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

if.then17:                                        ; preds = %ath79_gpio_update_bits.exit73
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %36, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75) #6, !srcloc !61
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %or.i78 = or i32 %38, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i78, i32 %38)
  %cmp.i79.not = icmp eq i32 %or.i78, %38
  br i1 %cmp.i79.not, label %if.then17.do.body20_crit_edge, label %if.then.i81

if.then17.do.body20_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

if.then.i81:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i78) #6
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i80 = getelementptr i8, ptr %41, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i80, i32 %39) #6, !srcloc !64
  br label %do.body20

do.body20:                                        ; preds = %if.then.i81, %if.then17.do.body20_crit_edge, %ath79_gpio_update_bits.exit73.do.body20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock91, i32 noundef %call793) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body20 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !43, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_gpio_ath79__227_300_ath79_gpio_driver_init6, !1, !"__initcall__kmod_gpio_ath79__227_300_ath79_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-ath79.c", i32 300, i32 1}
!2 = !{ptr @__exitcall_ath79_gpio_driver_exit, !1, !"__exitcall_ath79_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-ath79.c", i32 302, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-ath79.c", i32 303, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-ath79.c", i32 294, i32 11}
!10 = !{ptr @ath79_gpio_driver, !11, !"ath79_gpio_driver", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-ath79.c", i32 292, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-ath79.c", i32 236, i32 34}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-ath79.c", i32 238, i32 4}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ath79_gpio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ath79_gpio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-ath79.c", i32 241, i32 45}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-ath79.c", i32 246, i32 3}
!26 = !{ptr @ath79_gpio_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ath79_gpio_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-ath79.c", i32 251, i32 3}
!30 = !{ptr @ath79_gpio_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ath79_gpio_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ath79_gpio_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-ath79.c", i32 259, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-ath79.c", i32 268, i32 3}
!37 = !{ptr @ath79_gpio_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ath79_gpio_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-ath79.c", i32 275, i32 39}
!41 = !{ptr @ath79_gpio_probe.lock_key, !42, !"lock_key", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-ath79.c", i32 289, i32 9}
!43 = !{ptr @ath79_gpio_probe.request_key, !42, !"request_key", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-ath79.c", i32 173, i32 10}
!46 = !{ptr @ath79_gpio_irqchip, !47, !"ath79_gpio_irqchip", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-ath79.c", i32 172, i32 24}
!48 = !{ptr @ath79_gpio_of_match, !49, !"ath79_gpio_of_match", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-ath79.c", i32 213, i32 34}
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
!60 = !{i8 0, i8 2}
!61 = !{i64 4845904}
!62 = !{i64 2153969514}
!63 = !{i64 2153969727}
!64 = !{i64 4845486}
