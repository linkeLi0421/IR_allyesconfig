; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-pmic-eic-sprd.c_pt.bc'
source_filename = "../drivers/gpio/gpio-pmic-eic-sprd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sprd_pmic_eic = type { %struct.gpio_chip, %struct.irq_chip, ptr, i32, [3 x i8], %struct.mutex, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_pmic_eic_sprd__227_377_sprd_pmic_eic_driver_init6 = internal global ptr @sprd_pmic_eic_driver_init, section ".initcall6.init", align 4
@sprd_pmic_eic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_pmic_eic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_pmic_eic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_pmic_eic_driver_exit = internal global ptr @sprd_pmic_eic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [58 x i8] c"gpio_pmic_eic_sprd.description=Spreadtrum PMIC EIC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [56 x i8] c"gpio_pmic_eic_sprd.file=drivers/gpio/gpio-pmic-eic-sprd\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [34 x i8] c"gpio_pmic_eic_sprd.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sprd-pmic-eic\00", [18 x i8] zeroinitializer }, align 32
@sprd_pmic_eic_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2731-eic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_pmic_eic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&pmic_eic->buslock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sprd_pmic_eic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 317, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get PMIC EIC base address.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sprd_pmic_eic_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpio/gpio-pmic-eic-sprd.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_pmic_eic_probe._entry_ptr = internal global ptr @sprd_pmic_eic_probe._entry, section ".printk_index", align 4
@sprd_pmic_eic_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 326, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request PMIC EIC IRQ.\0A\00", [63 x i8] zeroinitializer }, align 32
@sprd_pmic_eic_probe._entry_ptr.10 = internal global ptr @sprd_pmic_eic_probe._entry.8, section ".printk_index", align 4
@sprd_pmic_eic_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sprd_pmic_eic_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sprd_pmic_eic_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 355, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register gpiochip %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@sprd_pmic_eic_probe._entry_ptr.13 = internal global ptr @sprd_pmic_eic_probe._entry.11, section ".printk_index", align 4
@sprd_pmic_eic_toggle_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 252, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PMIC EIC level was changed.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sprd_pmic_eic_toggle_trigger\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sprd_pmic_eic_toggle_trigger._entry_ptr = internal global ptr @sprd_pmic_eic_toggle_trigger._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"sprd_pmic_eic_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 369, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 372, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"sprd_pmic_eic_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 363, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 305, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 315, i32 48 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 317, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 326, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 353, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 355, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [37 x i8] c"../drivers/gpio/gpio-pmic-eic-sprd.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 252, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_sprd_pmic_eic_driver_exit, ptr @__initcall__kmod_gpio_pmic_eic_sprd__227_377_sprd_pmic_eic_driver_init6, ptr @sprd_pmic_eic_driver_exit, ptr @sprd_pmic_eic_probe._entry, ptr @sprd_pmic_eic_probe._entry.11, ptr @sprd_pmic_eic_probe._entry.8, ptr @sprd_pmic_eic_probe._entry_ptr, ptr @sprd_pmic_eic_probe._entry_ptr.10, ptr @sprd_pmic_eic_probe._entry_ptr.13, ptr @sprd_pmic_eic_toggle_trigger._entry, ptr @sprd_pmic_eic_toggle_trigger._entry_ptr, ptr @sprd_pmic_eic_driver, ptr @.str, ptr @sprd_pmic_eic_of_match, ptr @sprd_pmic_eic_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @sprd_pmic_eic_probe.lock_key, ptr @sprd_pmic_eic_probe.request_key, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_eic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_eic_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_eic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_eic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_eic_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_eic_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_eic_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_eic_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_eic_toggle_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_eic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_pmic_eic_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pmic_eic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_pmic_eic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_eic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 592, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %buslock = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %buslock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sprd_pmic_eic_probe.__key) #6
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq2 = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %irq2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.body
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %call8 = tail call ptr @dev_get_regmap(ptr noundef %2, ptr noundef null) #6
  %map = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %map, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %offset = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef %offset, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq2, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.dev_name.exit_crit_edge

if.end21.dev_name.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end21.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end21.dev_name.exit_crit_edge ]
  %call26 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %7, ptr noundef null, ptr noundef nonnull @sprd_pmic_eic_irq_handler, i32 noundef 24576, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end33:                                         ; preds = %dev_name.exit
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i123 = icmp eq ptr %13, null
  br i1 %tobool.not.i123, label %if.end.i124, label %if.end33.dev_name.exit126_crit_edge

if.end33.dev_name.exit126_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit126

if.end.i124:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit126

dev_name.exit126:                                 ; preds = %if.end.i124, %if.end33.dev_name.exit126_crit_edge
  %retval.0.i125 = phi ptr [ %15, %if.end.i124 ], [ %13, %if.end33.dev_name.exit126_crit_edge ]
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i125, ptr %call.i, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %17 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 16, ptr %ngpio, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %base, align 4
  %parent40 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %parent40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %parent40, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sprd_pmic_eic_direction_input, ptr %direction_input, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sprd_pmic_eic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sprd_pmic_eic_free, ptr %free, align 4
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 14
  %23 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sprd_pmic_eic_set_config, ptr %set_config, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %24 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sprd_pmic_eic_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sprd_pmic_eic_get, ptr %get, align 4
  br i1 %tobool.not.i123, label %if.end.i129, label %dev_name.exit126.dev_name.exit131_crit_edge

dev_name.exit126.dev_name.exit131_crit_edge:      ; preds = %dev_name.exit126
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit131

if.end.i129:                                      ; preds = %dev_name.exit126
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  br label %dev_name.exit131

dev_name.exit131:                                 ; preds = %if.end.i129, %dev_name.exit126.dev_name.exit131_crit_edge
  %retval.0.i130 = phi ptr [ %27, %if.end.i129 ], [ %13, %dev_name.exit126.dev_name.exit131_crit_edge ]
  %intc = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 1
  %name = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i130, ptr %name, align 4
  %irq_mask = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 1, i32 7
  %29 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sprd_pmic_eic_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 1, i32 9
  %30 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sprd_pmic_eic_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 1, i32 13
  %31 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sprd_pmic_eic_irq_set_type, ptr %irq_set_type, align 4
  %irq_bus_lock = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 1, i32 15
  %32 = ptrtoint ptr %irq_bus_lock to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sprd_pmic_eic_bus_lock, ptr %irq_bus_lock, align 4
  %irq_bus_sync_unlock = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 1, i32 16
  %33 = ptrtoint ptr %irq_bus_sync_unlock to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sprd_pmic_eic_bus_sync_unlock, ptr %irq_bus_sync_unlock, align 4
  %flags = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 1, i32 33
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %flags, align 4
  %irq56 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %35 = ptrtoint ptr %irq56 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %intc, ptr %irq56, align 4
  %threaded = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 18
  %36 = ptrtoint ptr %threaded to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %threaded, align 4
  %call61 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @sprd_pmic_eic_probe.lock_key, ptr noundef nonnull @sprd_pmic_eic_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.end66, label %if.end68

do.end66:                                         ; preds = %dev_name.exit131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call61) #9
  br label %cleanup

if.end68:                                         ; preds = %dev_name.exit131
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end66, %do.end31, %do.end19, %if.end6.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end19 ], [ %call26, %do.end31 ], [ %call61, %do.end66 ], [ 0, %if.end68 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %do.body.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_eic_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %value.i.i33.i = alloca i32, align 4
  %value.i.i.i = alloca i32, align 4
  %irq.i = alloca i32, align 4
  %status = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !53
  %map = getelementptr inbounds %struct.sprd_pmic_eic, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %offset = getelementptr inbounds %struct.sprd_pmic_eic, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %add = add i32 %4, 32
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 65535
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %status, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 20
  %8 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %9 to i32
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %conv, i32 noundef 0) #6
  %10 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ngpio, align 4
  %conv536 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %conv536)
  %cmp37 = icmp ult i32 %call3, %conv536
  br i1 %cmp37, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 37, i32 1
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %sprd_pmic_eic_toggle_trigger.exit.for.body_crit_edge, %for.body.lr.ph
  %n.038 = phi i32 [ %call3, %for.body.lr.ph ], [ %call12, %sprd_pmic_eic_toggle_trigger.exit.for.body_crit_edge ]
  %call.i = call ptr @gpiochip_get_data(ptr noundef %data) #6
  %and.i = and i32 %n.038, 15
  %map.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 4
  %offset1.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset1.i, align 4
  %add.i = add i32 %15, 36
  %shl.i = shl nuw nsw i32 1, %and.i
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %irq.i, align 4, !annotation !53
  %call.i32 = call ptr @__irq_resolve_mapping(ptr noundef %17, i32 noundef %n.038, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i32, null
  br i1 %tobool.not.i, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %20, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i) #6
  %call.i.i33 = call ptr @irq_get_irq_data(i32 noundef %retval.0.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i33, null
  br i1 %tobool.not.i.i, label %irq_find_mapping.exit.sprd_pmic_eic_toggle_trigger.exit_crit_edge, label %irq_get_trigger_type.exit.i

irq_find_mapping.exit.sprd_pmic_eic_toggle_trigger.exit_crit_edge: ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_pmic_eic_toggle_trigger.exit

irq_get_trigger_type.exit.i:                      ; preds = %irq_find_mapping.exit
  %common.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i.i33, i32 0, i32 3
  %21 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %common.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %and.i34 = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i35, label %irq_get_trigger_type.exit.i.sprd_pmic_eic_toggle_trigger.exit_crit_edge, label %if.end.i

irq_get_trigger_type.exit.i.sprd_pmic_eic_toggle_trigger.exit_crit_edge: ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_pmic_eic_toggle_trigger.exit

if.end.i:                                         ; preds = %irq_get_trigger_type.exit.i
  %call.i.i.i = call ptr @gpiochip_get_data(ptr noundef %data) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i) #6
  %25 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %value.i.i.i, align 4, !annotation !53
  %map.i.i.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map.i.i.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset1.i.i.i, align 4
  %call2.i.i.i = call i32 @regmap_read(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %value.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.sprd_pmic_eic_get.exit.i_crit_edge

if.end.i.sprd_pmic_eic_get.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_pmic_eic_get.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value.i.i.i, align 4
  %32 = lshr i32 %31, %and.i
  %33 = and i32 %32, 1
  br label %sprd_pmic_eic_get.exit.i

sprd_pmic_eic_get.exit.i:                         ; preds = %if.end.i.i.i, %if.end.i.sprd_pmic_eic_get.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %33, %if.end.i.i.i ], [ %call2.i.i.i, %if.end.i.sprd_pmic_eic_get.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i) #6
  br label %retry.i

retry.i:                                          ; preds = %do.end.i, %sprd_pmic_eic_get.exit.i
  %state.0.i = phi i32 [ %retval.0.i.i.i, %sprd_pmic_eic_get.exit.i ], [ %retval.0.i.i41.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.0.i)
  %tobool2.not.i = icmp eq i32 %state.0.i, 0
  %call.i26.i = call ptr @gpiochip_get_data(ptr noundef %data) #6
  %map.i28.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i26.i, i32 0, i32 2
  %34 = ptrtoint ptr %map.i28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map.i28.i, align 4
  %offset1.i29.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i26.i, i32 0, i32 3
  %36 = ptrtoint ptr %offset1.i29.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset1.i29.i, align 4
  %add.i30.i = add i32 %37, 20
  %shl.i..i = select i1 %tobool2.not.i, i32 %shl.i, i32 0
  %call.i.i32.i = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %add.i30.i, i32 noundef %shl.i, i32 noundef %shl.i..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call.i.i34.i = call ptr @gpiochip_get_data(ptr noundef %data) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i33.i) #6
  %38 = ptrtoint ptr %value.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %value.i.i33.i, align 4, !annotation !53
  %map.i.i35.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i.i34.i, i32 0, i32 2
  %39 = ptrtoint ptr %map.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map.i.i35.i, align 4
  %offset1.i.i36.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i.i34.i, i32 0, i32 3
  %41 = ptrtoint ptr %offset1.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset1.i.i36.i, align 4
  %call2.i.i37.i = call i32 @regmap_read(ptr noundef %40, i32 noundef %42, ptr noundef nonnull %value.i.i33.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i37.i)
  %tobool.not.i.i38.i = icmp eq i32 %call2.i.i37.i, 0
  br i1 %tobool.not.i.i38.i, label %if.end.i.i40.i, label %retry.i.sprd_pmic_eic_get.exit42.i_crit_edge

retry.i.sprd_pmic_eic_get.exit42.i_crit_edge:     ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_pmic_eic_get.exit42.i

if.end.i.i40.i:                                   ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %value.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %value.i.i33.i, align 4
  %45 = lshr i32 %44, %and.i
  %46 = and i32 %45, 1
  br label %sprd_pmic_eic_get.exit42.i

sprd_pmic_eic_get.exit42.i:                       ; preds = %if.end.i.i40.i, %retry.i.sprd_pmic_eic_get.exit42.i_crit_edge
  %retval.0.i.i41.i = phi i32 [ %46, %if.end.i.i40.i ], [ %call2.i.i37.i, %retry.i.sprd_pmic_eic_get.exit42.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i33.i) #6
  %cmp.not.i = icmp eq i32 %state.0.i, %retval.0.i.i41.i
  br i1 %cmp.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %sprd_pmic_eic_get.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.14) #9
  br label %retry.i

if.end7.i:                                        ; preds = %sprd_pmic_eic_get.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i43.i = call ptr @gpiochip_get_data(ptr noundef %data) #6
  %map.i45.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i43.i, i32 0, i32 2
  %49 = ptrtoint ptr %map.i45.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.i45.i, align 4
  %offset1.i46.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i43.i, i32 0, i32 3
  %51 = ptrtoint ptr %offset1.i46.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset1.i46.i, align 4
  %add.i47.i = add i32 %52, 24
  %call.i.i50.i = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef %add.i47.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call.i51.i = call ptr @gpiochip_get_data(ptr noundef %data) #6
  %map.i53.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i51.i, i32 0, i32 2
  %53 = ptrtoint ptr %map.i53.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map.i53.i, align 4
  %offset1.i54.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i51.i, i32 0, i32 3
  %55 = ptrtoint ptr %offset1.i54.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset1.i54.i, align 4
  %add.i55.i = add i32 %56, 40
  %call.i.i58.i = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef %add.i55.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sprd_pmic_eic_toggle_trigger.exit

sprd_pmic_eic_toggle_trigger.exit:                ; preds = %if.end7.i, %irq_get_trigger_type.exit.i.sprd_pmic_eic_toggle_trigger.exit_crit_edge, %irq_find_mapping.exit.sprd_pmic_eic_toggle_trigger.exit_crit_edge
  %57 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ngpio, align 4
  %conv10 = zext i16 %58 to i32
  %add11 = add i32 %n.038, 1
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %conv10, i32 noundef %add11) #6
  %59 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %ngpio, align 4
  %conv5 = zext i16 %60 to i32
  %cmp = icmp ult i32 %call12, %conv5
  br i1 %cmp, label %sprd_pmic_eic_toggle_trigger.exit.for.body_crit_edge, label %sprd_pmic_eic_toggle_trigger.exit.cleanup_crit_edge

sprd_pmic_eic_toggle_trigger.exit.cleanup_crit_edge: ; preds = %sprd_pmic_eic_toggle_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sprd_pmic_eic_toggle_trigger.exit.for.body_crit_edge: ; preds = %sprd_pmic_eic_toggle_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %sprd_pmic_eic_toggle_trigger.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_pmic_eic_direction_input(ptr nocapture noundef readnone %chip, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_eic_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %and.i = and i32 %offset, 15
  %map.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map.i, align 4
  %offset1.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset1.i, align 4
  %add.i = add i32 %3, 4
  %shl.i = shl nuw nsw i32 1, %and.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pmic_eic_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %and.i = and i32 %offset, 15
  %map.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map.i, align 4
  %offset1.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset1.i, align 4
  %add.i = add i32 %3, 4
  %shl.i = shl nuw nsw i32 1, %and.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_eic_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 11
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value.i, align 4, !annotation !53
  %and.i5 = shl i32 %offset, 2
  %mul.i = and i32 %and.i5, 60
  %add.i = or i32 %mul.i, 64
  %map.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map.i, align 4
  %offset1.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset1.i, align 4
  %add2.i = add i32 %4, %add.i
  %call3.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %add2.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.sprd_pmic_eic_set_debounce.exit_crit_edge

if.then.sprd_pmic_eic_set_debounce.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_pmic_eic_set_debounce.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value.i, align 4
  %and4.i = and i32 %6, -4096
  %div.i = udiv i32 %config, 256000
  %and5.i = and i32 %div.i, 4095
  %or.i = or i32 %and4.i, %and5.i
  store i32 %or.i, ptr %value.i, align 4
  %7 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i, align 4
  %9 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset1.i, align 4
  %add8.i = add i32 %10, %add.i
  %call9.i = call i32 @regmap_write(ptr noundef %8, i32 noundef %add8.i, i32 noundef %or.i) #6
  br label %sprd_pmic_eic_set_debounce.exit

sprd_pmic_eic_set_debounce.exit:                  ; preds = %if.end.i, %if.then.sprd_pmic_eic_set_debounce.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %if.end.i ], [ %call3.i, %if.then.sprd_pmic_eic_set_debounce.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sprd_pmic_eic_set_debounce.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %sprd_pmic_eic_set_debounce.exit ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sprd_pmic_eic_set(ptr nocapture noundef %chip, i32 noundef %offset, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_eic_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value.i, align 4, !annotation !53
  %map.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map.i, align 4
  %offset1.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset1.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.sprd_pmic_eic_read.exit_crit_edge

entry.sprd_pmic_eic_read.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_pmic_eic_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value.i, align 4
  %and.i = and i32 %offset, 15
  %7 = lshr i32 %6, %and.i
  %8 = and i32 %7, 1
  br label %sprd_pmic_eic_read.exit

sprd_pmic_eic_read.exit:                          ; preds = %if.end.i, %entry.sprd_pmic_eic_read.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.end.i ], [ %call2.i, %entry.sprd_pmic_eic_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pmic_eic_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %arrayidx = getelementptr %struct.sprd_pmic_eic, ptr %call1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr %struct.sprd_pmic_eic, ptr %call1, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx3, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pmic_eic_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %arrayidx = getelementptr %struct.sprd_pmic_eic, ptr %call1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr %struct.sprd_pmic_eic, ptr %call1, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx3, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_eic_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %2 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flow_type, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.epilog.sink.split_crit_edge
    i32 8, label %sw.bb2
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge8
    i32 3, label %entry.sw.epilog_crit_edge9
  ]

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  %reg3 = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call1, i32 0, i32 4
  %3 = ptrtoint ptr %reg3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %reg3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge8, %entry.sw.epilog_crit_edge9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pmic_eic_bus_lock(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %buslock = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buslock, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pmic_eic_bus_sync_unlock(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq.i, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else7, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #6
  %8 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value.i.i, align 4, !annotation !53
  %map.i.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i.i, align 4
  %offset1.i.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset1.i.i, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %value.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %sprd_pmic_eic_get.exit, label %sprd_pmic_eic_get.exit.thread

sprd_pmic_eic_get.exit.thread:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #6
  %.pre = and i32 %7, 15
  %.pre66 = shl nuw nsw i32 1, %.pre
  br label %if.then6

sprd_pmic_eic_get.exit:                           ; preds = %if.then
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value.i.i, align 4
  %and.i.i = and i32 %7, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #6
  %15 = shl nuw nsw i32 1, %and.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %if.else, label %sprd_pmic_eic_get.exit.if.then6_crit_edge

sprd_pmic_eic_get.exit.if.then6_crit_edge:        ; preds = %sprd_pmic_eic_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %sprd_pmic_eic_get.exit.if.then6_crit_edge, %sprd_pmic_eic_get.exit.thread
  %shl.i.pre-phi = phi i32 [ %.pre66, %sprd_pmic_eic_get.exit.thread ], [ %15, %sprd_pmic_eic_get.exit.if.then6_crit_edge ]
  %and.i31.pre-phi = phi i32 [ %.pre, %sprd_pmic_eic_get.exit.thread ], [ %and.i.i, %sprd_pmic_eic_get.exit.if.then6_crit_edge ]
  %call.i = call ptr @gpiochip_get_data(ptr noundef %1) #6
  %map.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i, align 4
  %offset1.i = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset1.i, align 4
  %add.i = add i32 %20, 20
  %call.i.i32 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %add.i, i32 noundef %shl.i.pre-phi, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end8

if.else:                                          ; preds = %sprd_pmic_eic_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i33 = call ptr @gpiochip_get_data(ptr noundef %1) #6
  %map.i35 = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i33, i32 0, i32 2
  %21 = ptrtoint ptr %map.i35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i35, align 4
  %offset1.i36 = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i33, i32 0, i32 3
  %23 = ptrtoint ptr %offset1.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset1.i36, align 4
  %add.i37 = add i32 %24, 20
  %call.i.i39 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %add.i37, i32 noundef %15, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end8

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call1, i32 0, i32 4
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg, align 4
  %conv = zext i8 %26 to i32
  %call.i40 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %and.i41 = and i32 %7, 15
  %map.i42 = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i40, i32 0, i32 2
  %27 = ptrtoint ptr %map.i42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i42, align 4
  %offset1.i43 = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i40, i32 0, i32 3
  %29 = ptrtoint ptr %offset1.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset1.i43, align 4
  %add.i44 = add i32 %30, 20
  %shl.i45 = shl nuw nsw i32 1, %and.i41
  %shl2.i46 = shl nuw nsw i32 %conv, %and.i41
  %call.i.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add.i44, i32 noundef %shl.i45, i32 noundef %shl2.i46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.else, %if.then6
  %shl.i53.pre-phi = phi i32 [ %shl.i.pre-phi, %if.then6 ], [ %15, %if.else ], [ %shl.i45, %if.else7 ]
  %and.i49.pre-phi = phi i32 [ %and.i31.pre-phi, %if.then6 ], [ %and.i.i, %if.else ], [ %and.i41, %if.else7 ]
  %arrayidx10 = getelementptr %struct.sprd_pmic_eic, ptr %call1, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %32 to i32
  %call.i48 = call ptr @gpiochip_get_data(ptr noundef %1) #6
  %map.i50 = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i48, i32 0, i32 2
  %33 = ptrtoint ptr %map.i50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i50, align 4
  %offset1.i51 = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i48, i32 0, i32 3
  %35 = ptrtoint ptr %offset1.i51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset1.i51, align 4
  %add.i52 = add i32 %36, 24
  %shl2.i54 = shl nuw nsw i32 %conv11, %and.i49.pre-phi
  %call.i.i55 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %add.i52, i32 noundef %shl.i53.pre-phi, i32 noundef %shl2.i54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %arrayidx13 = getelementptr %struct.sprd_pmic_eic, ptr %call1, i32 0, i32 4, i32 2
  %37 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx13, align 2
  %conv14 = zext i8 %38 to i32
  %call.i56 = call ptr @gpiochip_get_data(ptr noundef %1) #6
  %map.i58 = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i56, i32 0, i32 2
  %39 = ptrtoint ptr %map.i58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map.i58, align 4
  %offset1.i59 = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call.i56, i32 0, i32 3
  %41 = ptrtoint ptr %offset1.i59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset1.i59, align 4
  %add.i60 = add i32 %42, 40
  %shl2.i62 = shl nuw nsw i32 %conv14, %and.i49.pre-phi
  %call.i.i63 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %add.i60, i32 noundef %shl.i53.pre-phi, i32 noundef %shl2.i62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %buslock = getelementptr inbounds %struct.sprd_pmic_eic, ptr %call1, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %buslock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !41, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_gpio_pmic_eic_sprd__227_377_sprd_pmic_eic_driver_init6, !1, !"__initcall__kmod_gpio_pmic_eic_sprd__227_377_sprd_pmic_eic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 377, i32 1}
!2 = !{ptr @__exitcall_sprd_pmic_eic_driver_exit, !1, !"__exitcall_sprd_pmic_eic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 379, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 380, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 372, i32 11}
!10 = !{ptr @sprd_pmic_eic_driver, !11, !"sprd_pmic_eic_driver", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 369, i32 31}
!12 = !{ptr @sprd_pmic_eic_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 305, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 315, i32 48}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 317, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sprd_pmic_eic_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sprd_pmic_eic_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 326, i32 3}
!27 = !{ptr @sprd_pmic_eic_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sprd_pmic_eic_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @sprd_pmic_eic_probe.lock_key, !30, !"lock_key", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 353, i32 8}
!31 = !{ptr @sprd_pmic_eic_probe.request_key, !30, !"request_key", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 355, i32 3}
!34 = !{ptr @sprd_pmic_eic_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sprd_pmic_eic_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 252, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sprd_pmic_eic_toggle_trigger._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @sprd_pmic_eic_toggle_trigger._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sprd_pmic_eic_of_match, !43, !"sprd_pmic_eic_of_match", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-pmic-eic-sprd.c", i32 363, i32 34}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
