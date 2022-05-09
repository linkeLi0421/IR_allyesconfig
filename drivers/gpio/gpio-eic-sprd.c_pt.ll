; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-eic-sprd.c_pt.bc'
source_filename = "../drivers/gpio/gpio-eic-sprd.c"
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
%struct.sprd_eic_variant_data = type { i32, i32 }
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
%struct.sprd_eic = type { %struct.gpio_chip, %struct.irq_chip, [3 x ptr], i32, %struct.spinlock, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_eic_sprd__227_686_sprd_eic_driver_init6 = internal global ptr @sprd_eic_driver_init, section ".initcall6.init", align 4
@sprd_eic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_eic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_eic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_eic_driver_exit = internal global ptr @sprd_eic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [48 x i8] c"gpio_eic_sprd.description=Spreadtrum EIC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [46 x i8] c"gpio_eic_sprd.file=drivers/gpio/gpio-eic-sprd\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [29 x i8] c"gpio_eic_sprd.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sprd-eic\00", [23 x i8] zeroinitializer }, align 32
@sprd_eic_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-eic-debounce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc9860_eic_dbnc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-eic-latch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc9860_eic_latch_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-eic-async\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc9860_eic_async_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-eic-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc9860_eic_sync_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@sprd_eic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No matching driver data found.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_eic_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-eic-sprd.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_eic_probe._entry_ptr = internal global ptr @sprd_eic_probe._entry, section ".printk_index", align 4
@sprd_eic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sprd_eic->lock\00", [16 x i8] zeroinitializer }, align 32
@sprd_eic_label_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [16 x i8] zeroinitializer }, align 32
@sprd_eic_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sprd_eic_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sprd_eic_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register gpiochip %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@sprd_eic_probe._entry_ptr.9 = internal global ptr @sprd_eic_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eic-debounce\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eic-latch\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eic-async\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eic-sync\00", [23 x i8] zeroinitializer }, align 32
@sprd_eic_irq_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported EIC type.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sprd_eic_irq_ack\00", [47 x i8] zeroinitializer }, align 32
@sprd_eic_irq_ack._entry_ptr = internal global ptr @sprd_eic_irq_ack._entry, section ".printk_index", align 4
@sprd_eic_irq_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sprd_eic_irq_mask\00", [46 x i8] zeroinitializer }, align 32
@sprd_eic_irq_mask._entry_ptr = internal global ptr @sprd_eic_irq_mask._entry, section ".printk_index", align 4
@sprd_eic_irq_unmask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.17, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sprd_eic_irq_unmask\00", [44 x i8] zeroinitializer }, align 32
@sprd_eic_irq_unmask._entry_ptr = internal global ptr @sprd_eic_irq_unmask._entry, section ".printk_index", align 4
@sprd_eic_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.18, ptr @.str.3, i32 438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sprd_eic_irq_set_type\00", [42 x i8] zeroinitializer }, align 32
@sprd_eic_irq_set_type._entry_ptr = internal global ptr @sprd_eic_irq_set_type._entry, section ".printk_index", align 4
@sprd_eic_handle_one_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.19, ptr @.str.3, i32 528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sprd_eic_handle_one_type\00", [39 x i8] zeroinitializer }, align 32
@sprd_eic_handle_one_type._entry_ptr = internal global ptr @sprd_eic_handle_one_type._entry, section ".printk_index", align 4
@sprd_eic_toggle_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 486, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EIC level was changed.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sprd_eic_toggle_trigger\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sprd_eic_toggle_trigger._entry_ptr = internal global ptr @sprd_eic_toggle_trigger._entry, section ".printk_index", align 4
@sc9860_eic_dbnc_data = internal constant { %struct.sprd_eic_variant_data, [24 x i8] } { %struct.sprd_eic_variant_data { i32 0, i32 8 }, [24 x i8] zeroinitializer }, align 32
@sc9860_eic_latch_data = internal constant { %struct.sprd_eic_variant_data, [24 x i8] } { %struct.sprd_eic_variant_data { i32 1, i32 8 }, [24 x i8] zeroinitializer }, align 32
@sc9860_eic_async_data = internal constant { %struct.sprd_eic_variant_data, [24 x i8] } { %struct.sprd_eic_variant_data { i32 2, i32 8 }, [24 x i8] zeroinitializer }, align 32
@sc9860_eic_sync_data = internal constant { %struct.sprd_eic_variant_data, [24 x i8] } { %struct.sprd_eic_variant_data { i32 3, i32 8 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"sprd_eic_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 678, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 681, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"sprd_eic_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 655, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 577, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 585, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"sprd_eic_label_name\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 106, i32 20 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 645, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 647, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 107, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 107, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 107, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 108, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 305, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 256, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 281, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 438, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 528, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 486, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"sc9860_eic_dbnc_data\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 111, i32 43 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"sc9860_eic_latch_data\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 116, i32 43 }
@___asan_gen_.145 = private unnamed_addr constant [22 x i8] c"sc9860_eic_async_data\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 121, i32 43 }
@___asan_gen_.148 = private unnamed_addr constant [21 x i8] c"sc9860_eic_sync_data\00", align 1
@___asan_gen_.149 = private constant [32 x i8] c"../drivers/gpio/gpio-eic-sprd.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 126, i32 43 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_sprd_eic_driver_exit, ptr @__initcall__kmod_gpio_eic_sprd__227_686_sprd_eic_driver_init6, ptr @sprd_eic_driver_exit, ptr @sprd_eic_handle_one_type._entry, ptr @sprd_eic_handle_one_type._entry_ptr, ptr @sprd_eic_irq_ack._entry, ptr @sprd_eic_irq_ack._entry_ptr, ptr @sprd_eic_irq_mask._entry, ptr @sprd_eic_irq_mask._entry_ptr, ptr @sprd_eic_irq_set_type._entry, ptr @sprd_eic_irq_set_type._entry_ptr, ptr @sprd_eic_irq_unmask._entry, ptr @sprd_eic_irq_unmask._entry_ptr, ptr @sprd_eic_probe._entry, ptr @sprd_eic_probe._entry.7, ptr @sprd_eic_probe._entry_ptr, ptr @sprd_eic_probe._entry_ptr.9, ptr @sprd_eic_toggle_trigger._entry, ptr @sprd_eic_toggle_trigger._entry_ptr, ptr @sprd_eic_driver, ptr @.str, ptr @sprd_eic_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sprd_eic_probe.__key, ptr @.str.6, ptr @sprd_eic_label_name, ptr @sprd_eic_probe.lock_key, ptr @sprd_eic_probe.request_key, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @sc9860_eic_dbnc_data, ptr @sc9860_eic_latch_data, ptr @sc9860_eic_async_data, ptr @sc9860_eic_sync_data], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_label_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_irq_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_irq_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_irq_unmask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_handle_one_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_eic_toggle_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc9860_eic_dbnc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc9860_eic_latch_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc9860_eic_async_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc9860_eic_sync_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_eic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_eic_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_eic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_eic_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_eic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 548, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @sprd_eic_probe.__key, i16 noundef signext 3) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %type11 = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %type11, align 4
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq13 = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %irq13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call12, ptr %irq13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.body7.cleanup_crit_edge, label %for.body.preheader

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %do.body7
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %for.body.preheader.for.end_crit_edge, label %if.end22

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %if.end22
  %call19.1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #9
  %tobool20.not.1 = icmp eq ptr %call19.1, null
  br i1 %tobool20.not.1, label %for.cond.for.end_crit_edge, label %if.end22.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end22.1:                                       ; preds = %for.cond
  %call24.1 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call19.1) #9
  %arrayidx.1 = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call24.1, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %call24.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end22.1.if.then28_crit_edge, label %for.cond.1

if.end22.1.if.then28_crit_edge:                   ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

for.cond.1:                                       ; preds = %if.end22.1
  %call19.2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #9
  %tobool20.not.2 = icmp eq ptr %call19.2, null
  br i1 %tobool20.not.2, label %for.cond.1.for.end_crit_edge, label %if.end22.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end22.2:                                       ; preds = %for.cond.1
  %call24.2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call19.2) #9
  %arrayidx.2 = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call24.2, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %call24.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.end22.2.if.then28_crit_edge, label %if.end22.2.for.end_crit_edge

if.end22.2.for.end_crit_edge:                     ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end22.2.if.then28_crit_edge:                   ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end22:                                         ; preds = %for.body.preheader
  %call24 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call19) #9
  %arrayidx = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call24, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end22.if.then28_crit_edge, label %for.cond

if.end22.if.then28_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then28:                                        ; preds = %if.end22.if.then28_crit_edge, %if.end22.2.if.then28_crit_edge, %if.end22.1.if.then28_crit_edge
  %call24.lcssa = phi ptr [ %call24, %if.end22.if.then28_crit_edge ], [ %call24.1, %if.end22.1.if.then28_crit_edge ], [ %call24.2, %if.end22.2.if.then28_crit_edge ]
  %7 = ptrtoint ptr %call24.lcssa to i32
  br label %cleanup

for.end:                                          ; preds = %if.end22.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %8 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type11, align 4
  %arrayidx34 = getelementptr [4 x ptr], ptr @sprd_eic_label_name, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx34, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call.i, align 4
  %num_eics = getelementptr inbounds %struct.sprd_eic_variant_data, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %num_eics to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_eics, align 4
  %conv = trunc i32 %14 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %15 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %ngpio, align 4
  %base37 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %base37 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %base37, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %parent, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sprd_eic_direction_input, ptr %direction_input, align 4
  %19 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %for.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %for.end.sw.bb46_crit_edge
    i32 3, label %for.end.sw.bb46_crit_edge137
  ]

for.end.sw.bb46_crit_edge137:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb46

for.end.sw.bb46_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb46

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sprd_eic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sprd_eic_free, ptr %free, align 4
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 14
  %22 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sprd_eic_set_config, ptr %set_config, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %23 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sprd_eic_set, ptr %set, align 4
  br label %sw.bb46

sw.bb46:                                          ; preds = %sw.bb, %for.end.sw.bb46_crit_edge, %for.end.sw.bb46_crit_edge137
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %24 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sprd_eic_get, ptr %get, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb46, %for.end.sw.epilog_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.dev_name.exit_crit_edge

sw.epilog.dev_name.exit_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %sw.epilog.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %28, %if.end.i ], [ %26, %sw.epilog.dev_name.exit_crit_edge ]
  %intc = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 1
  %name = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 1, i32 6
  %30 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sprd_eic_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 1, i32 7
  %31 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sprd_eic_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 1, i32 9
  %32 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sprd_eic_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 1, i32 13
  %33 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sprd_eic_irq_set_type, ptr %irq_set_type, align 4
  %flags = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 1, i32 33
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %flags, align 4
  %irq57 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %35 = ptrtoint ptr %irq57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %intc, ptr %irq57, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %36 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @handle_bad_irq, ptr %handler, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %37 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %default_type, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %38 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @sprd_eic_irq_handler, ptr %parent_handler, align 4
  %39 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 14
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %39, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %41 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %42 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %irq13, ptr %parents, align 4
  %call63 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @sprd_eic_probe.lock_key, ptr noundef nonnull @sprd_eic_probe.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end69, label %if.end71

do.end69:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call63) #12
  br label %cleanup

if.end71:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end69, %if.then28, %do.body7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %if.then28 ], [ %call63, %do.end69 ], [ 0, %if.end71 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call12, %do.body7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_eic_direction_input(ptr nocapture noundef readnone %chip, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_eic_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %offset)
  %cmp.i.i = icmp ugt i32 %offset, 23
  br i1 %cmp.i.i, label %entry.sprd_eic_update.exit_crit_edge, label %if.end.i.i

entry.sprd_eic_update.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i = lshr i32 %offset, 3
  %arrayidx.i.i = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 %div25.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sprd_eic_update.exit

sprd_eic_update.exit:                             ; preds = %if.end.i.i, %entry.sprd_eic_update.exit_crit_edge
  %retval.0.i.i = phi ptr [ %1, %if.end.i.i ], [ null, %entry.sprd_eic_update.exit_crit_edge ]
  %lock.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 4
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !86
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %and11.i = and i32 %offset, 7
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %or.i = or i32 %3, %shl12.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_eic_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %offset)
  %cmp.i.i = icmp ugt i32 %offset, 23
  br i1 %cmp.i.i, label %entry.sprd_eic_update.exit_crit_edge, label %if.end.i.i

entry.sprd_eic_update.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i = lshr i32 %offset, 3
  %arrayidx.i.i = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 %div25.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sprd_eic_update.exit

sprd_eic_update.exit:                             ; preds = %if.end.i.i, %entry.sprd_eic_update.exit_crit_edge
  %retval.0.i.i = phi ptr [ %1, %if.end.i.i ], [ null, %entry.sprd_eic_update.exit_crit_edge ]
  %lock.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 4
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !86
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %and11.i = and i32 %offset, 7
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %3, %neg.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_eic_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 11
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %offset)
  %cmp.i.i = icmp ugt i32 %offset, 23
  br i1 %cmp.i.i, label %if.then.sprd_eic_set_debounce.exit_crit_edge, label %if.end.i.i

if.then.sprd_eic_set_debounce.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_set_debounce.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %div1.i = lshr i32 %offset, 3
  %arrayidx.i.i = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 %div1.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sprd_eic_set_debounce.exit

sprd_eic_set_debounce.exit:                       ; preds = %if.end.i.i, %if.then.sprd_eic_set_debounce.exit_crit_edge
  %retval.0.i.i = phi ptr [ %1, %if.end.i.i ], [ null, %if.then.sprd_eic_set_debounce.exit_crit_edge ]
  %and.i5 = shl i32 %offset, 2
  %mul.i = and i32 %and.i5, 28
  %add.i = or i32 %mul.i, 64
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !86
  %3 = and i32 %2, 15794175
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %div4.i = udiv i32 %config, 256000
  %and5.i = and i32 %div4.i, 4095
  %or.i = or i32 %4, %and5.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #9, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %sprd_eic_set_debounce.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sprd_eic_set_debounce.exit ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sprd_eic_set(ptr nocapture noundef %chip, i32 noundef %offset, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_eic_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %type = getelementptr inbounds %struct.sprd_eic, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %offset)
  %cmp.i.i = icmp ugt i32 %offset, 23
  br i1 %cmp.i.i, label %sw.bb.sprd_eic_read.exit_crit_edge, label %if.end.i.i

sw.bb.sprd_eic_read.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_read.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %div6.i = lshr i32 %offset, 3
  %arrayidx.i.i = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 %div6.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sprd_eic_read.exit

sprd_eic_read.exit:                               ; preds = %if.end.i.i, %sw.bb.sprd_eic_read.exit_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.end.i.i ], [ null, %sw.bb.sprd_eic_read.exit_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i.i) #9, !srcloc !86
  %6 = lshr i32 %5, 24
  %and.i = and i32 %offset, 7
  %7 = lshr i32 %6, %and.i
  %8 = and i32 %7, 1
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %call.i11 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %offset)
  %cmp.i.i12 = icmp ugt i32 %offset, 23
  br i1 %cmp.i.i12, label %sw.bb2.sprd_eic_read.exit18_crit_edge, label %if.end.i.i15

sw.bb2.sprd_eic_read.exit18_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_read.exit18

if.end.i.i15:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %div6.i13 = lshr i32 %offset, 3
  %arrayidx.i.i14 = getelementptr %struct.sprd_eic, ptr %call.i11, i32 0, i32 2, i32 %div6.i13
  %9 = ptrtoint ptr %arrayidx.i.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i14, align 4
  br label %sprd_eic_read.exit18

sprd_eic_read.exit18:                             ; preds = %if.end.i.i15, %sw.bb2.sprd_eic_read.exit18_crit_edge
  %retval.0.i.i16 = phi ptr [ %10, %if.end.i.i15 ], [ null, %sw.bb2.sprd_eic_read.exit18_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i16, i32 28
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !86
  %12 = lshr i32 %11, 24
  %and.i17 = and i32 %offset, 7
  %13 = lshr i32 %12, %and.i17
  %14 = and i32 %13, 1
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %call.i19 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %offset)
  %cmp.i.i20 = icmp ugt i32 %offset, 23
  br i1 %cmp.i.i20, label %sw.bb4.sprd_eic_read.exit27_crit_edge, label %if.end.i.i23

sw.bb4.sprd_eic_read.exit27_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_read.exit27

if.end.i.i23:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %div6.i21 = lshr i32 %offset, 3
  %arrayidx.i.i22 = getelementptr %struct.sprd_eic, ptr %call.i19, i32 0, i32 2, i32 %div6.i21
  %15 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i22, align 4
  br label %sprd_eic_read.exit27

sprd_eic_read.exit27:                             ; preds = %if.end.i.i23, %sw.bb4.sprd_eic_read.exit27_crit_edge
  %retval.0.i.i24 = phi ptr [ %16, %if.end.i.i23 ], [ null, %sw.bb4.sprd_eic_read.exit27_crit_edge ]
  %add.ptr.i25 = getelementptr i8, ptr %retval.0.i.i24, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #9, !srcloc !86
  %18 = lshr i32 %17, 24
  %and.i26 = and i32 %offset, 7
  %19 = lshr i32 %18, %and.i26
  %20 = and i32 %19, 1
  br label %cleanup

cleanup:                                          ; preds = %sprd_eic_read.exit27, %sprd_eic_read.exit18, %sprd_eic_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %sprd_eic_read.exit27 ], [ %14, %sprd_eic_read.exit18 ], [ %8, %sprd_eic_read.exit ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_eic_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %type = getelementptr inbounds %struct.sprd_eic, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i = icmp ugt i32 %3, 23
  br i1 %cmp.i.i, label %sw.bb.sprd_eic_update.exit_crit_edge, label %if.end.i.i

sw.bb.sprd_eic_update.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i = lshr i32 %3, 3
  %arrayidx.i.i = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 %div25.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sprd_eic_update.exit

sprd_eic_update.exit:                             ; preds = %if.end.i.i, %sw.bb.sprd_eic_update.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ null, %sw.bb.sprd_eic_update.exit_crit_edge ]
  %lock.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 4
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !86
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %and11.i = and i32 %3, 7
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %or.i = or i32 %10, %shl12.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call.i15 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i16 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i16, label %sw.bb3.sprd_eic_update.exit29_crit_edge, label %if.end.i.i19

sw.bb3.sprd_eic_update.exit29_crit_edge:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit29

if.end.i.i19:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i17 = lshr i32 %3, 3
  %arrayidx.i.i18 = getelementptr %struct.sprd_eic, ptr %call.i15, i32 0, i32 2, i32 %div25.i17
  %12 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i18, align 4
  br label %sprd_eic_update.exit29

sprd_eic_update.exit29:                           ; preds = %if.end.i.i19, %sw.bb3.sprd_eic_update.exit29_crit_edge
  %retval.0.i.i20 = phi ptr [ %13, %if.end.i.i19 ], [ null, %sw.bb3.sprd_eic_update.exit29_crit_edge ]
  %lock.i21 = getelementptr inbounds %struct.sprd_eic, ptr %call.i15, i32 0, i32 4
  %call5.i22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i21) #9
  %add.ptr.i23 = getelementptr i8, ptr %retval.0.i.i20, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #9, !srcloc !86
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %and11.i24 = and i32 %3, 7
  %shl12.i25 = shl nuw nsw i32 1, %and11.i24
  %or.i26 = or i32 %15, %shl12.i25
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i26) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %16) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i21, i32 noundef %call5.i22) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call.i30 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i31 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i31, label %sw.bb4.sprd_eic_update.exit44_crit_edge, label %if.end.i.i34

sw.bb4.sprd_eic_update.exit44_crit_edge:          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit44

if.end.i.i34:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i32 = lshr i32 %3, 3
  %arrayidx.i.i33 = getelementptr %struct.sprd_eic, ptr %call.i30, i32 0, i32 2, i32 %div25.i32
  %17 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i33, align 4
  br label %sprd_eic_update.exit44

sprd_eic_update.exit44:                           ; preds = %if.end.i.i34, %sw.bb4.sprd_eic_update.exit44_crit_edge
  %retval.0.i.i35 = phi ptr [ %18, %if.end.i.i34 ], [ null, %sw.bb4.sprd_eic_update.exit44_crit_edge ]
  %lock.i36 = getelementptr inbounds %struct.sprd_eic, ptr %call.i30, i32 0, i32 4
  %call5.i37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i36) #9
  %add.ptr.i38 = getelementptr i8, ptr %retval.0.i.i35, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #9, !srcloc !86
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %and11.i39 = and i32 %3, 7
  %shl12.i40 = shl nuw nsw i32 1, %and11.i39
  %or.i41 = or i32 %20, %shl12.i40
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i41) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %21) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i36, i32 noundef %call5.i37) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call.i45 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i46 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i46, label %sw.bb5.sprd_eic_update.exit59_crit_edge, label %if.end.i.i49

sw.bb5.sprd_eic_update.exit59_crit_edge:          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit59

if.end.i.i49:                                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i47 = lshr i32 %3, 3
  %arrayidx.i.i48 = getelementptr %struct.sprd_eic, ptr %call.i45, i32 0, i32 2, i32 %div25.i47
  %22 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i48, align 4
  br label %sprd_eic_update.exit59

sprd_eic_update.exit59:                           ; preds = %if.end.i.i49, %sw.bb5.sprd_eic_update.exit59_crit_edge
  %retval.0.i.i50 = phi ptr [ %23, %if.end.i.i49 ], [ null, %sw.bb5.sprd_eic_update.exit59_crit_edge ]
  %lock.i51 = getelementptr inbounds %struct.sprd_eic, ptr %call.i45, i32 0, i32 4
  %call5.i52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i51) #9
  %add.ptr.i53 = getelementptr i8, ptr %retval.0.i.i50, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #9, !srcloc !86
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %and11.i54 = and i32 %3, 7
  %shl12.i55 = shl nuw nsw i32 1, %and11.i54
  %or.i56 = or i32 %25, %shl12.i55
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i56) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %26) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i51, i32 noundef %call5.i52) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sprd_eic_update.exit59, %sprd_eic_update.exit44, %sprd_eic_update.exit29, %sprd_eic_update.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_eic_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %type = getelementptr inbounds %struct.sprd_eic, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i = icmp ugt i32 %3, 23
  br i1 %cmp.i.i, label %sw.bb.sprd_eic_update.exit_crit_edge, label %if.end.i.i

sw.bb.sprd_eic_update.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i = lshr i32 %3, 3
  %arrayidx.i.i = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 %div25.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sprd_eic_update.exit

sprd_eic_update.exit:                             ; preds = %if.end.i.i, %sw.bb.sprd_eic_update.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ null, %sw.bb.sprd_eic_update.exit_crit_edge ]
  %lock.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 4
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !86
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %and11.i = and i32 %3, 7
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %10, %neg.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #9
  %call.i17 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i, label %sprd_eic_update.exit.sprd_eic_update.exit31_crit_edge, label %if.end.i.i21

sprd_eic_update.exit.sprd_eic_update.exit31_crit_edge: ; preds = %sprd_eic_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit31

if.end.i.i21:                                     ; preds = %sprd_eic_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i19 = lshr i32 %3, 3
  %arrayidx.i.i20 = getelementptr %struct.sprd_eic, ptr %call.i17, i32 0, i32 2, i32 %div25.i19
  %12 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i20, align 4
  br label %sprd_eic_update.exit31

sprd_eic_update.exit31:                           ; preds = %if.end.i.i21, %sprd_eic_update.exit.sprd_eic_update.exit31_crit_edge
  %retval.0.i.i22 = phi ptr [ %13, %if.end.i.i21 ], [ null, %sprd_eic_update.exit.sprd_eic_update.exit31_crit_edge ]
  %lock.i23 = getelementptr inbounds %struct.sprd_eic, ptr %call.i17, i32 0, i32 4
  %call5.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i23) #9
  %add.ptr.i25 = getelementptr i8, ptr %retval.0.i.i22, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #9, !srcloc !86
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %and13.i30 = and i32 %15, %neg.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and13.i30) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %16) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i23, i32 noundef %call5.i24) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call.i32 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i33 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i33, label %sw.bb3.sprd_eic_update.exit45_crit_edge, label %if.end.i.i36

sw.bb3.sprd_eic_update.exit45_crit_edge:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit45

if.end.i.i36:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i34 = lshr i32 %3, 3
  %arrayidx.i.i35 = getelementptr %struct.sprd_eic, ptr %call.i32, i32 0, i32 2, i32 %div25.i34
  %17 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i35, align 4
  br label %sprd_eic_update.exit45

sprd_eic_update.exit45:                           ; preds = %if.end.i.i36, %sw.bb3.sprd_eic_update.exit45_crit_edge
  %retval.0.i.i37 = phi ptr [ %18, %if.end.i.i36 ], [ null, %sw.bb3.sprd_eic_update.exit45_crit_edge ]
  %lock.i38 = getelementptr inbounds %struct.sprd_eic, ptr %call.i32, i32 0, i32 4
  %call5.i39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i38) #9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i.i37) #9, !srcloc !86
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %and11.i40 = and i32 %3, 7
  %shl12.i41 = shl nuw nsw i32 1, %and11.i40
  %neg.i43 = xor i32 %shl12.i41, -1
  %and13.i44 = and i32 %20, %neg.i43
  %21 = tail call i32 @llvm.bswap.i32(i32 %and13.i44) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i.i37, i32 %21) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i38, i32 noundef %call5.i39) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call.i46 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i47 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i47, label %sw.bb4.sprd_eic_update.exit59_crit_edge, label %if.end.i.i50

sw.bb4.sprd_eic_update.exit59_crit_edge:          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit59

if.end.i.i50:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i48 = lshr i32 %3, 3
  %arrayidx.i.i49 = getelementptr %struct.sprd_eic, ptr %call.i46, i32 0, i32 2, i32 %div25.i48
  %22 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i49, align 4
  br label %sprd_eic_update.exit59

sprd_eic_update.exit59:                           ; preds = %if.end.i.i50, %sw.bb4.sprd_eic_update.exit59_crit_edge
  %retval.0.i.i51 = phi ptr [ %23, %if.end.i.i50 ], [ null, %sw.bb4.sprd_eic_update.exit59_crit_edge ]
  %lock.i52 = getelementptr inbounds %struct.sprd_eic, ptr %call.i46, i32 0, i32 4
  %call5.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i52) #9
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i.i51) #9, !srcloc !86
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %and11.i54 = and i32 %3, 7
  %shl12.i55 = shl nuw nsw i32 1, %and11.i54
  %neg.i57 = xor i32 %shl12.i55, -1
  %and13.i58 = and i32 %25, %neg.i57
  %26 = tail call i32 @llvm.bswap.i32(i32 %and13.i58) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i.i51, i32 %26) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i52, i32 noundef %call5.i53) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call.i60 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i61 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i61, label %sw.bb5.sprd_eic_update.exit73_crit_edge, label %if.end.i.i64

sw.bb5.sprd_eic_update.exit73_crit_edge:          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit73

if.end.i.i64:                                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i62 = lshr i32 %3, 3
  %arrayidx.i.i63 = getelementptr %struct.sprd_eic, ptr %call.i60, i32 0, i32 2, i32 %div25.i62
  %27 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i63, align 4
  br label %sprd_eic_update.exit73

sprd_eic_update.exit73:                           ; preds = %if.end.i.i64, %sw.bb5.sprd_eic_update.exit73_crit_edge
  %retval.0.i.i65 = phi ptr [ %28, %if.end.i.i64 ], [ null, %sw.bb5.sprd_eic_update.exit73_crit_edge ]
  %lock.i66 = getelementptr inbounds %struct.sprd_eic, ptr %call.i60, i32 0, i32 4
  %call5.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i66) #9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i.i65) #9, !srcloc !86
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %and11.i68 = and i32 %3, 7
  %shl12.i69 = shl nuw nsw i32 1, %and11.i68
  %neg.i71 = xor i32 %shl12.i69, -1
  %and13.i72 = and i32 %30, %neg.i71
  %31 = tail call i32 @llvm.bswap.i32(i32 %and13.i72) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i.i65, i32 %31) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i66, i32 noundef %call5.i67) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.14) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sprd_eic_update.exit73, %sprd_eic_update.exit59, %sprd_eic_update.exit45, %sprd_eic_update.exit31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_eic_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %type = getelementptr inbounds %struct.sprd_eic, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i = icmp ugt i32 %3, 23
  br i1 %cmp.i.i, label %sw.bb.sprd_eic_update.exit_crit_edge, label %if.end.i.i

sw.bb.sprd_eic_update.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i = lshr i32 %3, 3
  %arrayidx.i.i = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 %div25.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sprd_eic_update.exit

sprd_eic_update.exit:                             ; preds = %if.end.i.i, %sw.bb.sprd_eic_update.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ null, %sw.bb.sprd_eic_update.exit_crit_edge ]
  %lock.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 4
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !86
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %and11.i = and i32 %3, 7
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %or.i = or i32 %10, %shl12.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #9
  %call.i17 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i, label %sprd_eic_update.exit.sprd_eic_update.exit31_crit_edge, label %if.end.i.i21

sprd_eic_update.exit.sprd_eic_update.exit31_crit_edge: ; preds = %sprd_eic_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit31

if.end.i.i21:                                     ; preds = %sprd_eic_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i19 = lshr i32 %3, 3
  %arrayidx.i.i20 = getelementptr %struct.sprd_eic, ptr %call.i17, i32 0, i32 2, i32 %div25.i19
  %12 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i20, align 4
  br label %sprd_eic_update.exit31

sprd_eic_update.exit31:                           ; preds = %if.end.i.i21, %sprd_eic_update.exit.sprd_eic_update.exit31_crit_edge
  %retval.0.i.i22 = phi ptr [ %13, %if.end.i.i21 ], [ null, %sprd_eic_update.exit.sprd_eic_update.exit31_crit_edge ]
  %lock.i23 = getelementptr inbounds %struct.sprd_eic, ptr %call.i17, i32 0, i32 4
  %call5.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i23) #9
  %add.ptr.i25 = getelementptr i8, ptr %retval.0.i.i22, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #9, !srcloc !86
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %or.i28 = or i32 %15, %shl12.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i28) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %16) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i23, i32 noundef %call5.i24) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call.i32 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i33 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i33, label %sw.bb3.sprd_eic_update.exit45_crit_edge, label %if.end.i.i36

sw.bb3.sprd_eic_update.exit45_crit_edge:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit45

if.end.i.i36:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i34 = lshr i32 %3, 3
  %arrayidx.i.i35 = getelementptr %struct.sprd_eic, ptr %call.i32, i32 0, i32 2, i32 %div25.i34
  %17 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i35, align 4
  br label %sprd_eic_update.exit45

sprd_eic_update.exit45:                           ; preds = %if.end.i.i36, %sw.bb3.sprd_eic_update.exit45_crit_edge
  %retval.0.i.i37 = phi ptr [ %18, %if.end.i.i36 ], [ null, %sw.bb3.sprd_eic_update.exit45_crit_edge ]
  %lock.i38 = getelementptr inbounds %struct.sprd_eic, ptr %call.i32, i32 0, i32 4
  %call5.i39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i38) #9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i.i37) #9, !srcloc !86
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %and11.i40 = and i32 %3, 7
  %shl12.i41 = shl nuw nsw i32 1, %and11.i40
  %or.i42 = or i32 %20, %shl12.i41
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i42) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i.i37, i32 %21) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i38, i32 noundef %call5.i39) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call.i46 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i47 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i47, label %sw.bb4.sprd_eic_update.exit59_crit_edge, label %if.end.i.i50

sw.bb4.sprd_eic_update.exit59_crit_edge:          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit59

if.end.i.i50:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i48 = lshr i32 %3, 3
  %arrayidx.i.i49 = getelementptr %struct.sprd_eic, ptr %call.i46, i32 0, i32 2, i32 %div25.i48
  %22 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i49, align 4
  br label %sprd_eic_update.exit59

sprd_eic_update.exit59:                           ; preds = %if.end.i.i50, %sw.bb4.sprd_eic_update.exit59_crit_edge
  %retval.0.i.i51 = phi ptr [ %23, %if.end.i.i50 ], [ null, %sw.bb4.sprd_eic_update.exit59_crit_edge ]
  %lock.i52 = getelementptr inbounds %struct.sprd_eic, ptr %call.i46, i32 0, i32 4
  %call5.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i52) #9
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i.i51) #9, !srcloc !86
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %and11.i54 = and i32 %3, 7
  %shl12.i55 = shl nuw nsw i32 1, %and11.i54
  %or.i56 = or i32 %25, %shl12.i55
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i56) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i.i51, i32 %26) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i52, i32 noundef %call5.i53) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call.i60 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i61 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i61, label %sw.bb5.sprd_eic_update.exit73_crit_edge, label %if.end.i.i64

sw.bb5.sprd_eic_update.exit73_crit_edge:          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit73

if.end.i.i64:                                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i62 = lshr i32 %3, 3
  %arrayidx.i.i63 = getelementptr %struct.sprd_eic, ptr %call.i60, i32 0, i32 2, i32 %div25.i62
  %27 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i63, align 4
  br label %sprd_eic_update.exit73

sprd_eic_update.exit73:                           ; preds = %if.end.i.i64, %sw.bb5.sprd_eic_update.exit73_crit_edge
  %retval.0.i.i65 = phi ptr [ %28, %if.end.i.i64 ], [ null, %sw.bb5.sprd_eic_update.exit73_crit_edge ]
  %lock.i66 = getelementptr inbounds %struct.sprd_eic, ptr %call.i60, i32 0, i32 4
  %call5.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i66) #9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i.i65) #9, !srcloc !86
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %and11.i68 = and i32 %3, 7
  %shl12.i69 = shl nuw nsw i32 1, %and11.i68
  %or.i70 = or i32 %30, %shl12.i69
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i70) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i.i65, i32 %31) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i66, i32 noundef %call5.i67) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.14) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sprd_eic_update.exit73, %sprd_eic_update.exit59, %sprd_eic_update.exit45, %sprd_eic_update.exit31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_eic_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %type = getelementptr inbounds %struct.sprd_eic, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb18
    i32 3, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  %7 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %flow_type, label %sw.bb.cleanup_crit_edge [
    i32 4, label %sw.bb3
    i32 8, label %sw.bb4
    i32 1, label %sw.bb.sw.bb5_crit_edge
    i32 2, label %sw.bb.sw.bb5_crit_edge679
    i32 3, label %sw.bb.sw.bb5_crit_edge680
  ]

sw.bb.sw.bb5_crit_edge680:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge679:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i = icmp ugt i32 %3, 23
  br i1 %cmp.i.i, label %sw.bb3.sprd_eic_update.exit_crit_edge, label %if.end.i.i

sw.bb3.sprd_eic_update.exit_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit

if.end.i.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i = lshr i32 %3, 3
  %arrayidx.i.i = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 %div25.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sprd_eic_update.exit

sprd_eic_update.exit:                             ; preds = %if.end.i.i, %sw.bb3.sprd_eic_update.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ null, %sw.bb3.sprd_eic_update.exit_crit_edge ]
  %lock.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 4
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !86
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %and11.i = and i32 %3, 7
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %or.i = or i32 %11, %shl12.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %sw.bb
  %call.i132 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i133 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i133, label %sw.bb4.sprd_eic_update.exit146_crit_edge, label %if.end.i.i136

sw.bb4.sprd_eic_update.exit146_crit_edge:         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit146

if.end.i.i136:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i134 = lshr i32 %3, 3
  %arrayidx.i.i135 = getelementptr %struct.sprd_eic, ptr %call.i132, i32 0, i32 2, i32 %div25.i134
  %13 = ptrtoint ptr %arrayidx.i.i135 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i135, align 4
  br label %sprd_eic_update.exit146

sprd_eic_update.exit146:                          ; preds = %if.end.i.i136, %sw.bb4.sprd_eic_update.exit146_crit_edge
  %retval.0.i.i137 = phi ptr [ %14, %if.end.i.i136 ], [ null, %sw.bb4.sprd_eic_update.exit146_crit_edge ]
  %lock.i138 = getelementptr inbounds %struct.sprd_eic, ptr %call.i132, i32 0, i32 4
  %call5.i139 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i138) #9
  %add.ptr.i140 = getelementptr i8, ptr %retval.0.i.i137, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #9, !srcloc !86
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %and11.i141 = and i32 %3, 7
  %shl12.i142 = shl nuw nsw i32 1, %and11.i141
  %neg.i144 = xor i32 %shl12.i142, -1
  %and13.i145 = and i32 %16, %neg.i144
  %17 = tail call i32 @llvm.bswap.i32(i32 %and13.i145) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %17) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i138, i32 noundef %call5.i139) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %sw.bb.sw.bb5_crit_edge, %sw.bb.sw.bb5_crit_edge679, %sw.bb.sw.bb5_crit_edge680
  %call6 = tail call i32 @sprd_eic_get(ptr noundef %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  %call.i162 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i163 = icmp ugt i32 %3, 23
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb5
  br i1 %cmp.i.i163, label %if.then.sprd_eic_update.exit161_crit_edge, label %if.end.i.i151

if.then.sprd_eic_update.exit161_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit161

if.end.i.i151:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i149 = lshr i32 %3, 3
  %arrayidx.i.i150 = getelementptr %struct.sprd_eic, ptr %call.i162, i32 0, i32 2, i32 %div25.i149
  %18 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i150, align 4
  br label %sprd_eic_update.exit161

sprd_eic_update.exit161:                          ; preds = %if.end.i.i151, %if.then.sprd_eic_update.exit161_crit_edge
  %retval.0.i.i152 = phi ptr [ %19, %if.end.i.i151 ], [ null, %if.then.sprd_eic_update.exit161_crit_edge ]
  %lock.i153 = getelementptr inbounds %struct.sprd_eic, ptr %call.i162, i32 0, i32 4
  %call5.i154 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i153) #9
  %add.ptr.i155 = getelementptr i8, ptr %retval.0.i.i152, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #9, !srcloc !86
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %and11.i156 = and i32 %3, 7
  %shl12.i157 = shl nuw nsw i32 1, %and11.i156
  %neg.i159 = xor i32 %shl12.i157, -1
  %and13.i160 = and i32 %21, %neg.i159
  %22 = tail call i32 @llvm.bswap.i32(i32 %and13.i160) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %22) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i153, i32 noundef %call5.i154) #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  br i1 %cmp.i.i163, label %if.else.sprd_eic_update.exit176_crit_edge, label %if.end.i.i166

if.else.sprd_eic_update.exit176_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit176

if.end.i.i166:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i164 = lshr i32 %3, 3
  %arrayidx.i.i165 = getelementptr %struct.sprd_eic, ptr %call.i162, i32 0, i32 2, i32 %div25.i164
  %23 = ptrtoint ptr %arrayidx.i.i165 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i165, align 4
  br label %sprd_eic_update.exit176

sprd_eic_update.exit176:                          ; preds = %if.end.i.i166, %if.else.sprd_eic_update.exit176_crit_edge
  %retval.0.i.i167 = phi ptr [ %24, %if.end.i.i166 ], [ null, %if.else.sprd_eic_update.exit176_crit_edge ]
  %lock.i168 = getelementptr inbounds %struct.sprd_eic, ptr %call.i162, i32 0, i32 4
  %call5.i169 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i168) #9
  %add.ptr.i170 = getelementptr i8, ptr %retval.0.i.i167, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170) #9, !srcloc !86
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %and11.i171 = and i32 %3, 7
  %shl12.i172 = shl nuw nsw i32 1, %and11.i171
  %or.i173 = or i32 %26, %shl12.i172
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i173) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %27) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i168, i32 noundef %call5.i169) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sprd_eic_update.exit176, %sprd_eic_update.exit161, %sprd_eic_update.exit146, %sprd_eic_update.exit
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @handle_level_irq, ptr %handle_irq.i, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %31 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %flow_type, label %sw.bb7.cleanup_crit_edge [
    i32 4, label %sw.bb8
    i32 8, label %sw.bb9
    i32 1, label %sw.bb7.sw.bb10_crit_edge
    i32 2, label %sw.bb7.sw.bb10_crit_edge681
    i32 3, label %sw.bb7.sw.bb10_crit_edge682
  ]

sw.bb7.sw.bb10_crit_edge682:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

sw.bb7.sw.bb10_crit_edge681:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

sw.bb7.sw.bb10_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb7
  %call.i177 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i178 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i178, label %sw.bb8.sprd_eic_update.exit191_crit_edge, label %if.end.i.i181

sw.bb8.sprd_eic_update.exit191_crit_edge:         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit191

if.end.i.i181:                                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i179 = lshr i32 %3, 3
  %arrayidx.i.i180 = getelementptr %struct.sprd_eic, ptr %call.i177, i32 0, i32 2, i32 %div25.i179
  %32 = ptrtoint ptr %arrayidx.i.i180 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i180, align 4
  br label %sprd_eic_update.exit191

sprd_eic_update.exit191:                          ; preds = %if.end.i.i181, %sw.bb8.sprd_eic_update.exit191_crit_edge
  %retval.0.i.i182 = phi ptr [ %33, %if.end.i.i181 ], [ null, %sw.bb8.sprd_eic_update.exit191_crit_edge ]
  %lock.i183 = getelementptr inbounds %struct.sprd_eic, ptr %call.i177, i32 0, i32 4
  %call5.i184 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i183) #9
  %add.ptr.i185 = getelementptr i8, ptr %retval.0.i.i182, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #9, !srcloc !86
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %and11.i186 = and i32 %3, 7
  %shl12.i187 = shl nuw nsw i32 1, %and11.i186
  %neg.i189 = xor i32 %shl12.i187, -1
  %and13.i190 = and i32 %35, %neg.i189
  %36 = tail call i32 @llvm.bswap.i32(i32 %and13.i190) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 %36) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i183, i32 noundef %call5.i184) #9
  br label %sw.epilog17

sw.bb9:                                           ; preds = %sw.bb7
  %call.i192 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i193 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i193, label %sw.bb9.sprd_eic_update.exit206_crit_edge, label %if.end.i.i196

sw.bb9.sprd_eic_update.exit206_crit_edge:         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit206

if.end.i.i196:                                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i194 = lshr i32 %3, 3
  %arrayidx.i.i195 = getelementptr %struct.sprd_eic, ptr %call.i192, i32 0, i32 2, i32 %div25.i194
  %37 = ptrtoint ptr %arrayidx.i.i195 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i195, align 4
  br label %sprd_eic_update.exit206

sprd_eic_update.exit206:                          ; preds = %if.end.i.i196, %sw.bb9.sprd_eic_update.exit206_crit_edge
  %retval.0.i.i197 = phi ptr [ %38, %if.end.i.i196 ], [ null, %sw.bb9.sprd_eic_update.exit206_crit_edge ]
  %lock.i198 = getelementptr inbounds %struct.sprd_eic, ptr %call.i192, i32 0, i32 4
  %call5.i199 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i198) #9
  %add.ptr.i200 = getelementptr i8, ptr %retval.0.i.i197, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200) #9, !srcloc !86
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %and11.i201 = and i32 %3, 7
  %shl12.i202 = shl nuw nsw i32 1, %and11.i201
  %or.i203 = or i32 %40, %shl12.i202
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i203) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 %41) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i198, i32 noundef %call5.i199) #9
  br label %sw.epilog17

sw.bb10:                                          ; preds = %sw.bb7.sw.bb10_crit_edge, %sw.bb7.sw.bb10_crit_edge681, %sw.bb7.sw.bb10_crit_edge682
  %call11 = tail call i32 @sprd_eic_get(ptr noundef %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %call.i222 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i223 = icmp ugt i32 %3, 23
  br i1 %tobool12.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %sw.bb10
  br i1 %cmp.i.i223, label %if.then13.sprd_eic_update.exit221_crit_edge, label %if.end.i.i211

if.then13.sprd_eic_update.exit221_crit_edge:      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit221

if.end.i.i211:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i209 = lshr i32 %3, 3
  %arrayidx.i.i210 = getelementptr %struct.sprd_eic, ptr %call.i222, i32 0, i32 2, i32 %div25.i209
  %42 = ptrtoint ptr %arrayidx.i.i210 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i210, align 4
  br label %sprd_eic_update.exit221

sprd_eic_update.exit221:                          ; preds = %if.end.i.i211, %if.then13.sprd_eic_update.exit221_crit_edge
  %retval.0.i.i212 = phi ptr [ %43, %if.end.i.i211 ], [ null, %if.then13.sprd_eic_update.exit221_crit_edge ]
  %lock.i213 = getelementptr inbounds %struct.sprd_eic, ptr %call.i222, i32 0, i32 4
  %call5.i214 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i213) #9
  %add.ptr.i215 = getelementptr i8, ptr %retval.0.i.i212, i32 16
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #9, !srcloc !86
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  %and11.i216 = and i32 %3, 7
  %shl12.i217 = shl nuw nsw i32 1, %and11.i216
  %neg.i219 = xor i32 %shl12.i217, -1
  %and13.i220 = and i32 %45, %neg.i219
  %46 = tail call i32 @llvm.bswap.i32(i32 %and13.i220) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 %46) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i213, i32 noundef %call5.i214) #9
  br label %sw.epilog17

if.else14:                                        ; preds = %sw.bb10
  br i1 %cmp.i.i223, label %if.else14.sprd_eic_update.exit236_crit_edge, label %if.end.i.i226

if.else14.sprd_eic_update.exit236_crit_edge:      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit236

if.end.i.i226:                                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i224 = lshr i32 %3, 3
  %arrayidx.i.i225 = getelementptr %struct.sprd_eic, ptr %call.i222, i32 0, i32 2, i32 %div25.i224
  %47 = ptrtoint ptr %arrayidx.i.i225 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i225, align 4
  br label %sprd_eic_update.exit236

sprd_eic_update.exit236:                          ; preds = %if.end.i.i226, %if.else14.sprd_eic_update.exit236_crit_edge
  %retval.0.i.i227 = phi ptr [ %48, %if.end.i.i226 ], [ null, %if.else14.sprd_eic_update.exit236_crit_edge ]
  %lock.i228 = getelementptr inbounds %struct.sprd_eic, ptr %call.i222, i32 0, i32 4
  %call5.i229 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i228) #9
  %add.ptr.i230 = getelementptr i8, ptr %retval.0.i.i227, i32 16
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #9, !srcloc !86
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %and11.i231 = and i32 %3, 7
  %shl12.i232 = shl nuw nsw i32 1, %and11.i231
  %or.i233 = or i32 %50, %shl12.i232
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i233) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230, i32 %51) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i228, i32 noundef %call5.i229) #9
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %sprd_eic_update.exit236, %sprd_eic_update.exit221, %sprd_eic_update.exit206, %sprd_eic_update.exit191
  %common.i.i237 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %52 = ptrtoint ptr %common.i.i237 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %common.i.i237, align 4
  %handle_irq.i238 = getelementptr inbounds %struct.irq_desc, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %handle_irq.i238 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @handle_level_irq, ptr %handle_irq.i238, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %55 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %flow_type, label %sw.bb18.cleanup_crit_edge [
    i32 1, label %sw.bb19
    i32 2, label %sw.bb20
    i32 3, label %sw.bb21
    i32 4, label %sw.bb22
    i32 8, label %sw.bb23
  ]

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb19:                                          ; preds = %sw.bb18
  %call.i239 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i240 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i240, label %sw.bb19.sprd_eic_update.exit253_crit_edge, label %if.end.i.i243

sw.bb19.sprd_eic_update.exit253_crit_edge:        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit253

if.end.i.i243:                                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i241 = lshr i32 %3, 3
  %arrayidx.i.i242 = getelementptr %struct.sprd_eic, ptr %call.i239, i32 0, i32 2, i32 %div25.i241
  %56 = ptrtoint ptr %arrayidx.i.i242 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i242, align 4
  br label %sprd_eic_update.exit253

sprd_eic_update.exit253:                          ; preds = %if.end.i.i243, %sw.bb19.sprd_eic_update.exit253_crit_edge
  %retval.0.i.i244 = phi ptr [ %57, %if.end.i.i243 ], [ null, %sw.bb19.sprd_eic_update.exit253_crit_edge ]
  %lock.i245 = getelementptr inbounds %struct.sprd_eic, ptr %call.i239, i32 0, i32 4
  %call5.i246 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i245) #9
  %add.ptr.i247 = getelementptr i8, ptr %retval.0.i.i244, i32 20
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i247) #9, !srcloc !86
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  %and11.i248 = and i32 %3, 7
  %shl12.i249 = shl nuw nsw i32 1, %and11.i248
  %neg.i251 = xor i32 %shl12.i249, -1
  %and13.i252 = and i32 %59, %neg.i251
  %60 = tail call i32 @llvm.bswap.i32(i32 %and13.i252) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 %60) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i245, i32 noundef %call5.i246) #9
  %call.i254 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i240, label %sprd_eic_update.exit253.sprd_eic_update.exit268_crit_edge, label %if.end.i.i258

sprd_eic_update.exit253.sprd_eic_update.exit268_crit_edge: ; preds = %sprd_eic_update.exit253
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit268

if.end.i.i258:                                    ; preds = %sprd_eic_update.exit253
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i256 = lshr i32 %3, 3
  %arrayidx.i.i257 = getelementptr %struct.sprd_eic, ptr %call.i254, i32 0, i32 2, i32 %div25.i256
  %61 = ptrtoint ptr %arrayidx.i.i257 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i257, align 4
  br label %sprd_eic_update.exit268

sprd_eic_update.exit268:                          ; preds = %if.end.i.i258, %sprd_eic_update.exit253.sprd_eic_update.exit268_crit_edge
  %retval.0.i.i259 = phi ptr [ %62, %if.end.i.i258 ], [ null, %sprd_eic_update.exit253.sprd_eic_update.exit268_crit_edge ]
  %lock.i260 = getelementptr inbounds %struct.sprd_eic, ptr %call.i254, i32 0, i32 4
  %call5.i261 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i260) #9
  %add.ptr.i262 = getelementptr i8, ptr %retval.0.i.i259, i32 16
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262) #9, !srcloc !86
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  %and13.i267 = and i32 %64, %neg.i251
  %65 = tail call i32 @llvm.bswap.i32(i32 %and13.i267) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 %65) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i260, i32 noundef %call5.i261) #9
  %call.i269 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i240, label %sprd_eic_update.exit268.sprd_eic_update.exit283_crit_edge, label %if.end.i.i273

sprd_eic_update.exit268.sprd_eic_update.exit283_crit_edge: ; preds = %sprd_eic_update.exit268
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit283

if.end.i.i273:                                    ; preds = %sprd_eic_update.exit268
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i271 = lshr i32 %3, 3
  %arrayidx.i.i272 = getelementptr %struct.sprd_eic, ptr %call.i269, i32 0, i32 2, i32 %div25.i271
  %66 = ptrtoint ptr %arrayidx.i.i272 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i272, align 4
  br label %sprd_eic_update.exit283

sprd_eic_update.exit283:                          ; preds = %if.end.i.i273, %sprd_eic_update.exit268.sprd_eic_update.exit283_crit_edge
  %retval.0.i.i274 = phi ptr [ %67, %if.end.i.i273 ], [ null, %sprd_eic_update.exit268.sprd_eic_update.exit283_crit_edge ]
  %lock.i275 = getelementptr inbounds %struct.sprd_eic, ptr %call.i269, i32 0, i32 4
  %call5.i276 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i275) #9
  %add.ptr.i277 = getelementptr i8, ptr %retval.0.i.i274, i32 24
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i277) #9, !srcloc !86
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %or.i280 = or i32 %69, %shl12.i249
  %70 = tail call i32 @llvm.bswap.i32(i32 %or.i280) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277, i32 %70) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i275, i32 noundef %call5.i276) #9
  %common.i.i284 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %71 = ptrtoint ptr %common.i.i284 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %common.i.i284, align 4
  %handle_irq.i285 = getelementptr inbounds %struct.irq_desc, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %handle_irq.i285 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @handle_edge_irq, ptr %handle_irq.i285, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb18
  %call.i286 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i287 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i287, label %sw.bb20.sprd_eic_update.exit300_crit_edge, label %if.end.i.i290

sw.bb20.sprd_eic_update.exit300_crit_edge:        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit300

if.end.i.i290:                                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i288 = lshr i32 %3, 3
  %arrayidx.i.i289 = getelementptr %struct.sprd_eic, ptr %call.i286, i32 0, i32 2, i32 %div25.i288
  %74 = ptrtoint ptr %arrayidx.i.i289 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i289, align 4
  br label %sprd_eic_update.exit300

sprd_eic_update.exit300:                          ; preds = %if.end.i.i290, %sw.bb20.sprd_eic_update.exit300_crit_edge
  %retval.0.i.i291 = phi ptr [ %75, %if.end.i.i290 ], [ null, %sw.bb20.sprd_eic_update.exit300_crit_edge ]
  %lock.i292 = getelementptr inbounds %struct.sprd_eic, ptr %call.i286, i32 0, i32 4
  %call5.i293 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i292) #9
  %add.ptr.i294 = getelementptr i8, ptr %retval.0.i.i291, i32 20
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i294) #9, !srcloc !86
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #9
  %and11.i295 = and i32 %3, 7
  %shl12.i296 = shl nuw nsw i32 1, %and11.i295
  %neg.i298 = xor i32 %shl12.i296, -1
  %and13.i299 = and i32 %77, %neg.i298
  %78 = tail call i32 @llvm.bswap.i32(i32 %and13.i299) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i294, i32 %78) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i292, i32 noundef %call5.i293) #9
  %call.i301 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i287, label %sprd_eic_update.exit300.sprd_eic_update.exit315_crit_edge, label %if.end.i.i305

sprd_eic_update.exit300.sprd_eic_update.exit315_crit_edge: ; preds = %sprd_eic_update.exit300
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit315

if.end.i.i305:                                    ; preds = %sprd_eic_update.exit300
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i303 = lshr i32 %3, 3
  %arrayidx.i.i304 = getelementptr %struct.sprd_eic, ptr %call.i301, i32 0, i32 2, i32 %div25.i303
  %79 = ptrtoint ptr %arrayidx.i.i304 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i304, align 4
  br label %sprd_eic_update.exit315

sprd_eic_update.exit315:                          ; preds = %if.end.i.i305, %sprd_eic_update.exit300.sprd_eic_update.exit315_crit_edge
  %retval.0.i.i306 = phi ptr [ %80, %if.end.i.i305 ], [ null, %sprd_eic_update.exit300.sprd_eic_update.exit315_crit_edge ]
  %lock.i307 = getelementptr inbounds %struct.sprd_eic, ptr %call.i301, i32 0, i32 4
  %call5.i308 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i307) #9
  %add.ptr.i309 = getelementptr i8, ptr %retval.0.i.i306, i32 16
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i309) #9, !srcloc !86
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #9
  %and13.i314 = and i32 %82, %neg.i298
  %83 = tail call i32 @llvm.bswap.i32(i32 %and13.i314) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i309, i32 %83) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i307, i32 noundef %call5.i308) #9
  %call.i316 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i287, label %sprd_eic_update.exit315.sprd_eic_update.exit330_crit_edge, label %if.end.i.i320

sprd_eic_update.exit315.sprd_eic_update.exit330_crit_edge: ; preds = %sprd_eic_update.exit315
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit330

if.end.i.i320:                                    ; preds = %sprd_eic_update.exit315
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i318 = lshr i32 %3, 3
  %arrayidx.i.i319 = getelementptr %struct.sprd_eic, ptr %call.i316, i32 0, i32 2, i32 %div25.i318
  %84 = ptrtoint ptr %arrayidx.i.i319 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i319, align 4
  br label %sprd_eic_update.exit330

sprd_eic_update.exit330:                          ; preds = %if.end.i.i320, %sprd_eic_update.exit315.sprd_eic_update.exit330_crit_edge
  %retval.0.i.i321 = phi ptr [ %85, %if.end.i.i320 ], [ null, %sprd_eic_update.exit315.sprd_eic_update.exit330_crit_edge ]
  %lock.i322 = getelementptr inbounds %struct.sprd_eic, ptr %call.i316, i32 0, i32 4
  %call5.i323 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i322) #9
  %add.ptr.i324 = getelementptr i8, ptr %retval.0.i.i321, i32 24
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i324) #9, !srcloc !86
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #9
  %and13.i329 = and i32 %87, %neg.i298
  %88 = tail call i32 @llvm.bswap.i32(i32 %and13.i329) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i324, i32 %88) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i322, i32 noundef %call5.i323) #9
  %common.i.i331 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %89 = ptrtoint ptr %common.i.i331 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %common.i.i331, align 4
  %handle_irq.i332 = getelementptr inbounds %struct.irq_desc, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %handle_irq.i332 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @handle_edge_irq, ptr %handle_irq.i332, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb18
  %call.i333 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i334 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i334, label %sw.bb21.sprd_eic_update.exit347_crit_edge, label %if.end.i.i337

sw.bb21.sprd_eic_update.exit347_crit_edge:        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit347

if.end.i.i337:                                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i335 = lshr i32 %3, 3
  %arrayidx.i.i336 = getelementptr %struct.sprd_eic, ptr %call.i333, i32 0, i32 2, i32 %div25.i335
  %92 = ptrtoint ptr %arrayidx.i.i336 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i336, align 4
  br label %sprd_eic_update.exit347

sprd_eic_update.exit347:                          ; preds = %if.end.i.i337, %sw.bb21.sprd_eic_update.exit347_crit_edge
  %retval.0.i.i338 = phi ptr [ %93, %if.end.i.i337 ], [ null, %sw.bb21.sprd_eic_update.exit347_crit_edge ]
  %lock.i339 = getelementptr inbounds %struct.sprd_eic, ptr %call.i333, i32 0, i32 4
  %call5.i340 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i339) #9
  %add.ptr.i341 = getelementptr i8, ptr %retval.0.i.i338, i32 16
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i341) #9, !srcloc !86
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #9
  %and11.i342 = and i32 %3, 7
  %shl12.i343 = shl nuw nsw i32 1, %and11.i342
  %neg.i345 = xor i32 %shl12.i343, -1
  %and13.i346 = and i32 %95, %neg.i345
  %96 = tail call i32 @llvm.bswap.i32(i32 %and13.i346) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i341, i32 %96) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i339, i32 noundef %call5.i340) #9
  %call.i348 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i334, label %sprd_eic_update.exit347.sprd_eic_update.exit362_crit_edge, label %if.end.i.i352

sprd_eic_update.exit347.sprd_eic_update.exit362_crit_edge: ; preds = %sprd_eic_update.exit347
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit362

if.end.i.i352:                                    ; preds = %sprd_eic_update.exit347
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i350 = lshr i32 %3, 3
  %arrayidx.i.i351 = getelementptr %struct.sprd_eic, ptr %call.i348, i32 0, i32 2, i32 %div25.i350
  %97 = ptrtoint ptr %arrayidx.i.i351 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i351, align 4
  br label %sprd_eic_update.exit362

sprd_eic_update.exit362:                          ; preds = %if.end.i.i352, %sprd_eic_update.exit347.sprd_eic_update.exit362_crit_edge
  %retval.0.i.i353 = phi ptr [ %98, %if.end.i.i352 ], [ null, %sprd_eic_update.exit347.sprd_eic_update.exit362_crit_edge ]
  %lock.i354 = getelementptr inbounds %struct.sprd_eic, ptr %call.i348, i32 0, i32 4
  %call5.i355 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i354) #9
  %add.ptr.i356 = getelementptr i8, ptr %retval.0.i.i353, i32 20
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i356) #9, !srcloc !86
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #9
  %or.i359 = or i32 %100, %shl12.i343
  %101 = tail call i32 @llvm.bswap.i32(i32 %or.i359) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356, i32 %101) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i354, i32 noundef %call5.i355) #9
  %common.i.i363 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %102 = ptrtoint ptr %common.i.i363 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %common.i.i363, align 4
  %handle_irq.i364 = getelementptr inbounds %struct.irq_desc, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %handle_irq.i364 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @handle_edge_irq, ptr %handle_irq.i364, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %sw.bb18
  %call.i365 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i366 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i366, label %sw.bb22.sprd_eic_update.exit379_crit_edge, label %if.end.i.i369

sw.bb22.sprd_eic_update.exit379_crit_edge:        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit379

if.end.i.i369:                                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i367 = lshr i32 %3, 3
  %arrayidx.i.i368 = getelementptr %struct.sprd_eic, ptr %call.i365, i32 0, i32 2, i32 %div25.i367
  %105 = ptrtoint ptr %arrayidx.i.i368 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i368, align 4
  br label %sprd_eic_update.exit379

sprd_eic_update.exit379:                          ; preds = %if.end.i.i369, %sw.bb22.sprd_eic_update.exit379_crit_edge
  %retval.0.i.i370 = phi ptr [ %106, %if.end.i.i369 ], [ null, %sw.bb22.sprd_eic_update.exit379_crit_edge ]
  %lock.i371 = getelementptr inbounds %struct.sprd_eic, ptr %call.i365, i32 0, i32 4
  %call5.i372 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i371) #9
  %add.ptr.i373 = getelementptr i8, ptr %retval.0.i.i370, i32 20
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i373) #9, !srcloc !86
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #9
  %and11.i374 = and i32 %3, 7
  %shl12.i375 = shl nuw nsw i32 1, %and11.i374
  %neg.i377 = xor i32 %shl12.i375, -1
  %and13.i378 = and i32 %108, %neg.i377
  %109 = tail call i32 @llvm.bswap.i32(i32 %and13.i378) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i373, i32 %109) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i371, i32 noundef %call5.i372) #9
  %call.i380 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i366, label %sprd_eic_update.exit379.sprd_eic_update.exit394_crit_edge, label %if.end.i.i384

sprd_eic_update.exit379.sprd_eic_update.exit394_crit_edge: ; preds = %sprd_eic_update.exit379
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit394

if.end.i.i384:                                    ; preds = %sprd_eic_update.exit379
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i382 = lshr i32 %3, 3
  %arrayidx.i.i383 = getelementptr %struct.sprd_eic, ptr %call.i380, i32 0, i32 2, i32 %div25.i382
  %110 = ptrtoint ptr %arrayidx.i.i383 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i383, align 4
  br label %sprd_eic_update.exit394

sprd_eic_update.exit394:                          ; preds = %if.end.i.i384, %sprd_eic_update.exit379.sprd_eic_update.exit394_crit_edge
  %retval.0.i.i385 = phi ptr [ %111, %if.end.i.i384 ], [ null, %sprd_eic_update.exit379.sprd_eic_update.exit394_crit_edge ]
  %lock.i386 = getelementptr inbounds %struct.sprd_eic, ptr %call.i380, i32 0, i32 4
  %call5.i387 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i386) #9
  %add.ptr.i388 = getelementptr i8, ptr %retval.0.i.i385, i32 16
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i388) #9, !srcloc !86
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #9
  %or.i391 = or i32 %113, %shl12.i375
  %114 = tail call i32 @llvm.bswap.i32(i32 %or.i391) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i388, i32 %114) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i386, i32 noundef %call5.i387) #9
  %call.i395 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i366, label %sprd_eic_update.exit394.sprd_eic_update.exit409_crit_edge, label %if.end.i.i399

sprd_eic_update.exit394.sprd_eic_update.exit409_crit_edge: ; preds = %sprd_eic_update.exit394
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit409

if.end.i.i399:                                    ; preds = %sprd_eic_update.exit394
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i397 = lshr i32 %3, 3
  %arrayidx.i.i398 = getelementptr %struct.sprd_eic, ptr %call.i395, i32 0, i32 2, i32 %div25.i397
  %115 = ptrtoint ptr %arrayidx.i.i398 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i398, align 4
  br label %sprd_eic_update.exit409

sprd_eic_update.exit409:                          ; preds = %if.end.i.i399, %sprd_eic_update.exit394.sprd_eic_update.exit409_crit_edge
  %retval.0.i.i400 = phi ptr [ %116, %if.end.i.i399 ], [ null, %sprd_eic_update.exit394.sprd_eic_update.exit409_crit_edge ]
  %lock.i401 = getelementptr inbounds %struct.sprd_eic, ptr %call.i395, i32 0, i32 4
  %call5.i402 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i401) #9
  %add.ptr.i403 = getelementptr i8, ptr %retval.0.i.i400, i32 24
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i403) #9, !srcloc !86
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #9
  %or.i406 = or i32 %118, %shl12.i375
  %119 = tail call i32 @llvm.bswap.i32(i32 %or.i406) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i403, i32 %119) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i401, i32 noundef %call5.i402) #9
  %common.i.i410 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %120 = ptrtoint ptr %common.i.i410 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %common.i.i410, align 4
  %handle_irq.i411 = getelementptr inbounds %struct.irq_desc, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %handle_irq.i411 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @handle_level_irq, ptr %handle_irq.i411, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %sw.bb18
  %call.i412 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i413 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i413, label %sw.bb23.sprd_eic_update.exit426_crit_edge, label %if.end.i.i416

sw.bb23.sprd_eic_update.exit426_crit_edge:        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit426

if.end.i.i416:                                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i414 = lshr i32 %3, 3
  %arrayidx.i.i415 = getelementptr %struct.sprd_eic, ptr %call.i412, i32 0, i32 2, i32 %div25.i414
  %123 = ptrtoint ptr %arrayidx.i.i415 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i.i415, align 4
  br label %sprd_eic_update.exit426

sprd_eic_update.exit426:                          ; preds = %if.end.i.i416, %sw.bb23.sprd_eic_update.exit426_crit_edge
  %retval.0.i.i417 = phi ptr [ %124, %if.end.i.i416 ], [ null, %sw.bb23.sprd_eic_update.exit426_crit_edge ]
  %lock.i418 = getelementptr inbounds %struct.sprd_eic, ptr %call.i412, i32 0, i32 4
  %call5.i419 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i418) #9
  %add.ptr.i420 = getelementptr i8, ptr %retval.0.i.i417, i32 20
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i420) #9, !srcloc !86
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #9
  %and11.i421 = and i32 %3, 7
  %shl12.i422 = shl nuw nsw i32 1, %and11.i421
  %neg.i424 = xor i32 %shl12.i422, -1
  %and13.i425 = and i32 %126, %neg.i424
  %127 = tail call i32 @llvm.bswap.i32(i32 %and13.i425) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i420, i32 %127) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i418, i32 noundef %call5.i419) #9
  %call.i427 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i413, label %sprd_eic_update.exit426.sprd_eic_update.exit441_crit_edge, label %if.end.i.i431

sprd_eic_update.exit426.sprd_eic_update.exit441_crit_edge: ; preds = %sprd_eic_update.exit426
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit441

if.end.i.i431:                                    ; preds = %sprd_eic_update.exit426
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i429 = lshr i32 %3, 3
  %arrayidx.i.i430 = getelementptr %struct.sprd_eic, ptr %call.i427, i32 0, i32 2, i32 %div25.i429
  %128 = ptrtoint ptr %arrayidx.i.i430 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i.i430, align 4
  br label %sprd_eic_update.exit441

sprd_eic_update.exit441:                          ; preds = %if.end.i.i431, %sprd_eic_update.exit426.sprd_eic_update.exit441_crit_edge
  %retval.0.i.i432 = phi ptr [ %129, %if.end.i.i431 ], [ null, %sprd_eic_update.exit426.sprd_eic_update.exit441_crit_edge ]
  %lock.i433 = getelementptr inbounds %struct.sprd_eic, ptr %call.i427, i32 0, i32 4
  %call5.i434 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i433) #9
  %add.ptr.i435 = getelementptr i8, ptr %retval.0.i.i432, i32 16
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i435) #9, !srcloc !86
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #9
  %or.i438 = or i32 %131, %shl12.i422
  %132 = tail call i32 @llvm.bswap.i32(i32 %or.i438) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i435, i32 %132) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i433, i32 noundef %call5.i434) #9
  %call.i442 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i413, label %sprd_eic_update.exit441.sprd_eic_update.exit456_crit_edge, label %if.end.i.i446

sprd_eic_update.exit441.sprd_eic_update.exit456_crit_edge: ; preds = %sprd_eic_update.exit441
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit456

if.end.i.i446:                                    ; preds = %sprd_eic_update.exit441
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i444 = lshr i32 %3, 3
  %arrayidx.i.i445 = getelementptr %struct.sprd_eic, ptr %call.i442, i32 0, i32 2, i32 %div25.i444
  %133 = ptrtoint ptr %arrayidx.i.i445 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i.i445, align 4
  br label %sprd_eic_update.exit456

sprd_eic_update.exit456:                          ; preds = %if.end.i.i446, %sprd_eic_update.exit441.sprd_eic_update.exit456_crit_edge
  %retval.0.i.i447 = phi ptr [ %134, %if.end.i.i446 ], [ null, %sprd_eic_update.exit441.sprd_eic_update.exit456_crit_edge ]
  %lock.i448 = getelementptr inbounds %struct.sprd_eic, ptr %call.i442, i32 0, i32 4
  %call5.i449 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i448) #9
  %add.ptr.i450 = getelementptr i8, ptr %retval.0.i.i447, i32 24
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i450) #9, !srcloc !86
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #9
  %and13.i455 = and i32 %136, %neg.i424
  %137 = tail call i32 @llvm.bswap.i32(i32 %and13.i455) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i450, i32 %137) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i448, i32 noundef %call5.i449) #9
  %common.i.i457 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %138 = ptrtoint ptr %common.i.i457 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %common.i.i457, align 4
  %handle_irq.i458 = getelementptr inbounds %struct.irq_desc, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %handle_irq.i458 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @handle_level_irq, ptr %handle_irq.i458, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %141 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %flow_type, label %sw.bb26.cleanup_crit_edge [
    i32 1, label %sw.bb27
    i32 2, label %sw.bb28
    i32 3, label %sw.bb29
    i32 4, label %sw.bb30
    i32 8, label %sw.bb31
  ]

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb27:                                          ; preds = %sw.bb26
  %call.i459 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i460 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i460, label %sw.bb27.sprd_eic_update.exit473_crit_edge, label %if.end.i.i463

sw.bb27.sprd_eic_update.exit473_crit_edge:        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit473

if.end.i.i463:                                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i461 = lshr i32 %3, 3
  %arrayidx.i.i462 = getelementptr %struct.sprd_eic, ptr %call.i459, i32 0, i32 2, i32 %div25.i461
  %142 = ptrtoint ptr %arrayidx.i.i462 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i.i462, align 4
  br label %sprd_eic_update.exit473

sprd_eic_update.exit473:                          ; preds = %if.end.i.i463, %sw.bb27.sprd_eic_update.exit473_crit_edge
  %retval.0.i.i464 = phi ptr [ %143, %if.end.i.i463 ], [ null, %sw.bb27.sprd_eic_update.exit473_crit_edge ]
  %lock.i465 = getelementptr inbounds %struct.sprd_eic, ptr %call.i459, i32 0, i32 4
  %call5.i466 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i465) #9
  %add.ptr.i467 = getelementptr i8, ptr %retval.0.i.i464, i32 20
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i467) #9, !srcloc !86
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #9
  %and11.i468 = and i32 %3, 7
  %shl12.i469 = shl nuw nsw i32 1, %and11.i468
  %neg.i471 = xor i32 %shl12.i469, -1
  %and13.i472 = and i32 %145, %neg.i471
  %146 = tail call i32 @llvm.bswap.i32(i32 %and13.i472) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i467, i32 %146) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i465, i32 noundef %call5.i466) #9
  %call.i474 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i460, label %sprd_eic_update.exit473.sprd_eic_update.exit488_crit_edge, label %if.end.i.i478

sprd_eic_update.exit473.sprd_eic_update.exit488_crit_edge: ; preds = %sprd_eic_update.exit473
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit488

if.end.i.i478:                                    ; preds = %sprd_eic_update.exit473
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i476 = lshr i32 %3, 3
  %arrayidx.i.i477 = getelementptr %struct.sprd_eic, ptr %call.i474, i32 0, i32 2, i32 %div25.i476
  %147 = ptrtoint ptr %arrayidx.i.i477 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i.i477, align 4
  br label %sprd_eic_update.exit488

sprd_eic_update.exit488:                          ; preds = %if.end.i.i478, %sprd_eic_update.exit473.sprd_eic_update.exit488_crit_edge
  %retval.0.i.i479 = phi ptr [ %148, %if.end.i.i478 ], [ null, %sprd_eic_update.exit473.sprd_eic_update.exit488_crit_edge ]
  %lock.i480 = getelementptr inbounds %struct.sprd_eic, ptr %call.i474, i32 0, i32 4
  %call5.i481 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i480) #9
  %add.ptr.i482 = getelementptr i8, ptr %retval.0.i.i479, i32 16
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i482) #9, !srcloc !86
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #9
  %and13.i487 = and i32 %150, %neg.i471
  %151 = tail call i32 @llvm.bswap.i32(i32 %and13.i487) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i482, i32 %151) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i480, i32 noundef %call5.i481) #9
  %call.i489 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i460, label %sprd_eic_update.exit488.sprd_eic_update.exit503_crit_edge, label %if.end.i.i493

sprd_eic_update.exit488.sprd_eic_update.exit503_crit_edge: ; preds = %sprd_eic_update.exit488
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit503

if.end.i.i493:                                    ; preds = %sprd_eic_update.exit488
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i491 = lshr i32 %3, 3
  %arrayidx.i.i492 = getelementptr %struct.sprd_eic, ptr %call.i489, i32 0, i32 2, i32 %div25.i491
  %152 = ptrtoint ptr %arrayidx.i.i492 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i.i492, align 4
  br label %sprd_eic_update.exit503

sprd_eic_update.exit503:                          ; preds = %if.end.i.i493, %sprd_eic_update.exit488.sprd_eic_update.exit503_crit_edge
  %retval.0.i.i494 = phi ptr [ %153, %if.end.i.i493 ], [ null, %sprd_eic_update.exit488.sprd_eic_update.exit503_crit_edge ]
  %lock.i495 = getelementptr inbounds %struct.sprd_eic, ptr %call.i489, i32 0, i32 4
  %call5.i496 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i495) #9
  %add.ptr.i497 = getelementptr i8, ptr %retval.0.i.i494, i32 24
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i497) #9, !srcloc !86
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #9
  %or.i500 = or i32 %155, %shl12.i469
  %156 = tail call i32 @llvm.bswap.i32(i32 %or.i500) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i497, i32 %156) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i495, i32 noundef %call5.i496) #9
  %common.i.i504 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %157 = ptrtoint ptr %common.i.i504 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %common.i.i504, align 4
  %handle_irq.i505 = getelementptr inbounds %struct.irq_desc, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %handle_irq.i505 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @handle_edge_irq, ptr %handle_irq.i505, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %sw.bb26
  %call.i506 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i507 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i507, label %sw.bb28.sprd_eic_update.exit520_crit_edge, label %if.end.i.i510

sw.bb28.sprd_eic_update.exit520_crit_edge:        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit520

if.end.i.i510:                                    ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i508 = lshr i32 %3, 3
  %arrayidx.i.i509 = getelementptr %struct.sprd_eic, ptr %call.i506, i32 0, i32 2, i32 %div25.i508
  %160 = ptrtoint ptr %arrayidx.i.i509 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i.i509, align 4
  br label %sprd_eic_update.exit520

sprd_eic_update.exit520:                          ; preds = %if.end.i.i510, %sw.bb28.sprd_eic_update.exit520_crit_edge
  %retval.0.i.i511 = phi ptr [ %161, %if.end.i.i510 ], [ null, %sw.bb28.sprd_eic_update.exit520_crit_edge ]
  %lock.i512 = getelementptr inbounds %struct.sprd_eic, ptr %call.i506, i32 0, i32 4
  %call5.i513 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i512) #9
  %add.ptr.i514 = getelementptr i8, ptr %retval.0.i.i511, i32 20
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i514) #9, !srcloc !86
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #9
  %and11.i515 = and i32 %3, 7
  %shl12.i516 = shl nuw nsw i32 1, %and11.i515
  %neg.i518 = xor i32 %shl12.i516, -1
  %and13.i519 = and i32 %163, %neg.i518
  %164 = tail call i32 @llvm.bswap.i32(i32 %and13.i519) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i514, i32 %164) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i512, i32 noundef %call5.i513) #9
  %call.i521 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i507, label %sprd_eic_update.exit520.sprd_eic_update.exit535_crit_edge, label %if.end.i.i525

sprd_eic_update.exit520.sprd_eic_update.exit535_crit_edge: ; preds = %sprd_eic_update.exit520
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit535

if.end.i.i525:                                    ; preds = %sprd_eic_update.exit520
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i523 = lshr i32 %3, 3
  %arrayidx.i.i524 = getelementptr %struct.sprd_eic, ptr %call.i521, i32 0, i32 2, i32 %div25.i523
  %165 = ptrtoint ptr %arrayidx.i.i524 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx.i.i524, align 4
  br label %sprd_eic_update.exit535

sprd_eic_update.exit535:                          ; preds = %if.end.i.i525, %sprd_eic_update.exit520.sprd_eic_update.exit535_crit_edge
  %retval.0.i.i526 = phi ptr [ %166, %if.end.i.i525 ], [ null, %sprd_eic_update.exit520.sprd_eic_update.exit535_crit_edge ]
  %lock.i527 = getelementptr inbounds %struct.sprd_eic, ptr %call.i521, i32 0, i32 4
  %call5.i528 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i527) #9
  %add.ptr.i529 = getelementptr i8, ptr %retval.0.i.i526, i32 16
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i529) #9, !srcloc !86
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #9
  %and13.i534 = and i32 %168, %neg.i518
  %169 = tail call i32 @llvm.bswap.i32(i32 %and13.i534) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i529, i32 %169) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i527, i32 noundef %call5.i528) #9
  %call.i536 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i507, label %sprd_eic_update.exit535.sprd_eic_update.exit550_crit_edge, label %if.end.i.i540

sprd_eic_update.exit535.sprd_eic_update.exit550_crit_edge: ; preds = %sprd_eic_update.exit535
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit550

if.end.i.i540:                                    ; preds = %sprd_eic_update.exit535
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i538 = lshr i32 %3, 3
  %arrayidx.i.i539 = getelementptr %struct.sprd_eic, ptr %call.i536, i32 0, i32 2, i32 %div25.i538
  %170 = ptrtoint ptr %arrayidx.i.i539 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i.i539, align 4
  br label %sprd_eic_update.exit550

sprd_eic_update.exit550:                          ; preds = %if.end.i.i540, %sprd_eic_update.exit535.sprd_eic_update.exit550_crit_edge
  %retval.0.i.i541 = phi ptr [ %171, %if.end.i.i540 ], [ null, %sprd_eic_update.exit535.sprd_eic_update.exit550_crit_edge ]
  %lock.i542 = getelementptr inbounds %struct.sprd_eic, ptr %call.i536, i32 0, i32 4
  %call5.i543 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i542) #9
  %add.ptr.i544 = getelementptr i8, ptr %retval.0.i.i541, i32 24
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i544) #9, !srcloc !86
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #9
  %and13.i549 = and i32 %173, %neg.i518
  %174 = tail call i32 @llvm.bswap.i32(i32 %and13.i549) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i544, i32 %174) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i542, i32 noundef %call5.i543) #9
  %common.i.i551 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %175 = ptrtoint ptr %common.i.i551 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %common.i.i551, align 4
  %handle_irq.i552 = getelementptr inbounds %struct.irq_desc, ptr %176, i32 0, i32 3
  %177 = ptrtoint ptr %handle_irq.i552 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @handle_edge_irq, ptr %handle_irq.i552, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %sw.bb26
  %call.i553 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i554 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i554, label %sw.bb29.sprd_eic_update.exit567_crit_edge, label %if.end.i.i557

sw.bb29.sprd_eic_update.exit567_crit_edge:        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit567

if.end.i.i557:                                    ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i555 = lshr i32 %3, 3
  %arrayidx.i.i556 = getelementptr %struct.sprd_eic, ptr %call.i553, i32 0, i32 2, i32 %div25.i555
  %178 = ptrtoint ptr %arrayidx.i.i556 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.i.i556, align 4
  br label %sprd_eic_update.exit567

sprd_eic_update.exit567:                          ; preds = %if.end.i.i557, %sw.bb29.sprd_eic_update.exit567_crit_edge
  %retval.0.i.i558 = phi ptr [ %179, %if.end.i.i557 ], [ null, %sw.bb29.sprd_eic_update.exit567_crit_edge ]
  %lock.i559 = getelementptr inbounds %struct.sprd_eic, ptr %call.i553, i32 0, i32 4
  %call5.i560 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i559) #9
  %add.ptr.i561 = getelementptr i8, ptr %retval.0.i.i558, i32 16
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i561) #9, !srcloc !86
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #9
  %and11.i562 = and i32 %3, 7
  %shl12.i563 = shl nuw nsw i32 1, %and11.i562
  %neg.i565 = xor i32 %shl12.i563, -1
  %and13.i566 = and i32 %181, %neg.i565
  %182 = tail call i32 @llvm.bswap.i32(i32 %and13.i566) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i561, i32 %182) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i559, i32 noundef %call5.i560) #9
  %call.i568 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i554, label %sprd_eic_update.exit567.sprd_eic_update.exit582_crit_edge, label %if.end.i.i572

sprd_eic_update.exit567.sprd_eic_update.exit582_crit_edge: ; preds = %sprd_eic_update.exit567
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit582

if.end.i.i572:                                    ; preds = %sprd_eic_update.exit567
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i570 = lshr i32 %3, 3
  %arrayidx.i.i571 = getelementptr %struct.sprd_eic, ptr %call.i568, i32 0, i32 2, i32 %div25.i570
  %183 = ptrtoint ptr %arrayidx.i.i571 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx.i.i571, align 4
  br label %sprd_eic_update.exit582

sprd_eic_update.exit582:                          ; preds = %if.end.i.i572, %sprd_eic_update.exit567.sprd_eic_update.exit582_crit_edge
  %retval.0.i.i573 = phi ptr [ %184, %if.end.i.i572 ], [ null, %sprd_eic_update.exit567.sprd_eic_update.exit582_crit_edge ]
  %lock.i574 = getelementptr inbounds %struct.sprd_eic, ptr %call.i568, i32 0, i32 4
  %call5.i575 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i574) #9
  %add.ptr.i576 = getelementptr i8, ptr %retval.0.i.i573, i32 20
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i576) #9, !srcloc !86
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #9
  %or.i579 = or i32 %186, %shl12.i563
  %187 = tail call i32 @llvm.bswap.i32(i32 %or.i579) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i576, i32 %187) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i574, i32 noundef %call5.i575) #9
  %common.i.i583 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %188 = ptrtoint ptr %common.i.i583 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %common.i.i583, align 4
  %handle_irq.i584 = getelementptr inbounds %struct.irq_desc, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %handle_irq.i584 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @handle_edge_irq, ptr %handle_irq.i584, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %sw.bb26
  %call.i585 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i586 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i586, label %sw.bb30.sprd_eic_update.exit599_crit_edge, label %if.end.i.i589

sw.bb30.sprd_eic_update.exit599_crit_edge:        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit599

if.end.i.i589:                                    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i587 = lshr i32 %3, 3
  %arrayidx.i.i588 = getelementptr %struct.sprd_eic, ptr %call.i585, i32 0, i32 2, i32 %div25.i587
  %191 = ptrtoint ptr %arrayidx.i.i588 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i.i588, align 4
  br label %sprd_eic_update.exit599

sprd_eic_update.exit599:                          ; preds = %if.end.i.i589, %sw.bb30.sprd_eic_update.exit599_crit_edge
  %retval.0.i.i590 = phi ptr [ %192, %if.end.i.i589 ], [ null, %sw.bb30.sprd_eic_update.exit599_crit_edge ]
  %lock.i591 = getelementptr inbounds %struct.sprd_eic, ptr %call.i585, i32 0, i32 4
  %call5.i592 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i591) #9
  %add.ptr.i593 = getelementptr i8, ptr %retval.0.i.i590, i32 20
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i593) #9, !srcloc !86
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #9
  %and11.i594 = and i32 %3, 7
  %shl12.i595 = shl nuw nsw i32 1, %and11.i594
  %neg.i597 = xor i32 %shl12.i595, -1
  %and13.i598 = and i32 %194, %neg.i597
  %195 = tail call i32 @llvm.bswap.i32(i32 %and13.i598) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i593, i32 %195) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i591, i32 noundef %call5.i592) #9
  %call.i600 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i586, label %sprd_eic_update.exit599.sprd_eic_update.exit614_crit_edge, label %if.end.i.i604

sprd_eic_update.exit599.sprd_eic_update.exit614_crit_edge: ; preds = %sprd_eic_update.exit599
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit614

if.end.i.i604:                                    ; preds = %sprd_eic_update.exit599
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i602 = lshr i32 %3, 3
  %arrayidx.i.i603 = getelementptr %struct.sprd_eic, ptr %call.i600, i32 0, i32 2, i32 %div25.i602
  %196 = ptrtoint ptr %arrayidx.i.i603 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx.i.i603, align 4
  br label %sprd_eic_update.exit614

sprd_eic_update.exit614:                          ; preds = %if.end.i.i604, %sprd_eic_update.exit599.sprd_eic_update.exit614_crit_edge
  %retval.0.i.i605 = phi ptr [ %197, %if.end.i.i604 ], [ null, %sprd_eic_update.exit599.sprd_eic_update.exit614_crit_edge ]
  %lock.i606 = getelementptr inbounds %struct.sprd_eic, ptr %call.i600, i32 0, i32 4
  %call5.i607 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i606) #9
  %add.ptr.i608 = getelementptr i8, ptr %retval.0.i.i605, i32 16
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i608) #9, !srcloc !86
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #9
  %or.i611 = or i32 %199, %shl12.i595
  %200 = tail call i32 @llvm.bswap.i32(i32 %or.i611) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i608, i32 %200) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i606, i32 noundef %call5.i607) #9
  %call.i615 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i586, label %sprd_eic_update.exit614.sprd_eic_update.exit629_crit_edge, label %if.end.i.i619

sprd_eic_update.exit614.sprd_eic_update.exit629_crit_edge: ; preds = %sprd_eic_update.exit614
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit629

if.end.i.i619:                                    ; preds = %sprd_eic_update.exit614
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i617 = lshr i32 %3, 3
  %arrayidx.i.i618 = getelementptr %struct.sprd_eic, ptr %call.i615, i32 0, i32 2, i32 %div25.i617
  %201 = ptrtoint ptr %arrayidx.i.i618 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i.i618, align 4
  br label %sprd_eic_update.exit629

sprd_eic_update.exit629:                          ; preds = %if.end.i.i619, %sprd_eic_update.exit614.sprd_eic_update.exit629_crit_edge
  %retval.0.i.i620 = phi ptr [ %202, %if.end.i.i619 ], [ null, %sprd_eic_update.exit614.sprd_eic_update.exit629_crit_edge ]
  %lock.i621 = getelementptr inbounds %struct.sprd_eic, ptr %call.i615, i32 0, i32 4
  %call5.i622 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i621) #9
  %add.ptr.i623 = getelementptr i8, ptr %retval.0.i.i620, i32 24
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i623) #9, !srcloc !86
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #9
  %or.i626 = or i32 %204, %shl12.i595
  %205 = tail call i32 @llvm.bswap.i32(i32 %or.i626) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i623, i32 %205) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i621, i32 noundef %call5.i622) #9
  %common.i.i630 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %206 = ptrtoint ptr %common.i.i630 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %common.i.i630, align 4
  %handle_irq.i631 = getelementptr inbounds %struct.irq_desc, ptr %207, i32 0, i32 3
  %208 = ptrtoint ptr %handle_irq.i631 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @handle_level_irq, ptr %handle_irq.i631, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %sw.bb26
  %call.i632 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp.i.i633 = icmp ugt i32 %3, 23
  br i1 %cmp.i.i633, label %sw.bb31.sprd_eic_update.exit646_crit_edge, label %if.end.i.i636

sw.bb31.sprd_eic_update.exit646_crit_edge:        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit646

if.end.i.i636:                                    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i634 = lshr i32 %3, 3
  %arrayidx.i.i635 = getelementptr %struct.sprd_eic, ptr %call.i632, i32 0, i32 2, i32 %div25.i634
  %209 = ptrtoint ptr %arrayidx.i.i635 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx.i.i635, align 4
  br label %sprd_eic_update.exit646

sprd_eic_update.exit646:                          ; preds = %if.end.i.i636, %sw.bb31.sprd_eic_update.exit646_crit_edge
  %retval.0.i.i637 = phi ptr [ %210, %if.end.i.i636 ], [ null, %sw.bb31.sprd_eic_update.exit646_crit_edge ]
  %lock.i638 = getelementptr inbounds %struct.sprd_eic, ptr %call.i632, i32 0, i32 4
  %call5.i639 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i638) #9
  %add.ptr.i640 = getelementptr i8, ptr %retval.0.i.i637, i32 20
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i640) #9, !srcloc !86
  %212 = tail call i32 @llvm.bswap.i32(i32 %211) #9
  %and11.i641 = and i32 %3, 7
  %shl12.i642 = shl nuw nsw i32 1, %and11.i641
  %neg.i644 = xor i32 %shl12.i642, -1
  %and13.i645 = and i32 %212, %neg.i644
  %213 = tail call i32 @llvm.bswap.i32(i32 %and13.i645) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i640, i32 %213) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i638, i32 noundef %call5.i639) #9
  %call.i647 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i633, label %sprd_eic_update.exit646.sprd_eic_update.exit661_crit_edge, label %if.end.i.i651

sprd_eic_update.exit646.sprd_eic_update.exit661_crit_edge: ; preds = %sprd_eic_update.exit646
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit661

if.end.i.i651:                                    ; preds = %sprd_eic_update.exit646
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i649 = lshr i32 %3, 3
  %arrayidx.i.i650 = getelementptr %struct.sprd_eic, ptr %call.i647, i32 0, i32 2, i32 %div25.i649
  %214 = ptrtoint ptr %arrayidx.i.i650 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx.i.i650, align 4
  br label %sprd_eic_update.exit661

sprd_eic_update.exit661:                          ; preds = %if.end.i.i651, %sprd_eic_update.exit646.sprd_eic_update.exit661_crit_edge
  %retval.0.i.i652 = phi ptr [ %215, %if.end.i.i651 ], [ null, %sprd_eic_update.exit646.sprd_eic_update.exit661_crit_edge ]
  %lock.i653 = getelementptr inbounds %struct.sprd_eic, ptr %call.i647, i32 0, i32 4
  %call5.i654 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i653) #9
  %add.ptr.i655 = getelementptr i8, ptr %retval.0.i.i652, i32 16
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i655) #9, !srcloc !86
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #9
  %or.i658 = or i32 %217, %shl12.i642
  %218 = tail call i32 @llvm.bswap.i32(i32 %or.i658) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i655, i32 %218) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i653, i32 noundef %call5.i654) #9
  %call.i662 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  br i1 %cmp.i.i633, label %sprd_eic_update.exit661.sprd_eic_update.exit676_crit_edge, label %if.end.i.i666

sprd_eic_update.exit661.sprd_eic_update.exit676_crit_edge: ; preds = %sprd_eic_update.exit661
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit676

if.end.i.i666:                                    ; preds = %sprd_eic_update.exit661
  call void @__sanitizer_cov_trace_pc() #11
  %div25.i664 = lshr i32 %3, 3
  %arrayidx.i.i665 = getelementptr %struct.sprd_eic, ptr %call.i662, i32 0, i32 2, i32 %div25.i664
  %219 = ptrtoint ptr %arrayidx.i.i665 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx.i.i665, align 4
  br label %sprd_eic_update.exit676

sprd_eic_update.exit676:                          ; preds = %if.end.i.i666, %sprd_eic_update.exit661.sprd_eic_update.exit676_crit_edge
  %retval.0.i.i667 = phi ptr [ %220, %if.end.i.i666 ], [ null, %sprd_eic_update.exit661.sprd_eic_update.exit676_crit_edge ]
  %lock.i668 = getelementptr inbounds %struct.sprd_eic, ptr %call.i662, i32 0, i32 4
  %call5.i669 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i668) #9
  %add.ptr.i670 = getelementptr i8, ptr %retval.0.i.i667, i32 24
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i670) #9, !srcloc !86
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #9
  %and13.i675 = and i32 %222, %neg.i644
  %223 = tail call i32 @llvm.bswap.i32(i32 %and13.i675) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i670, i32 %223) #9, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i668, i32 noundef %call5.i669) #9
  %common.i.i677 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %224 = ptrtoint ptr %common.i.i677 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %common.i.i677, align 4
  %handle_irq.i678 = getelementptr inbounds %struct.irq_desc, ptr %225, i32 0, i32 3
  %226 = ptrtoint ptr %handle_irq.i678 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr @handle_level_irq, ptr %handle_irq.i678, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %227 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %228, ptr noundef nonnull @.str.14) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sprd_eic_update.exit676, %sprd_eic_update.exit629, %sprd_eic_update.exit582, %sprd_eic_update.exit550, %sprd_eic_update.exit503, %sw.bb26.cleanup_crit_edge, %sprd_eic_update.exit456, %sprd_eic_update.exit409, %sprd_eic_update.exit362, %sprd_eic_update.exit330, %sprd_eic_update.exit283, %sw.bb18.cleanup_crit_edge, %sw.epilog17, %sw.bb7.cleanup_crit_edge, %sw.epilog, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ -524, %sw.bb.cleanup_crit_edge ], [ -524, %sw.bb7.cleanup_crit_edge ], [ -524, %sw.bb18.cleanup_crit_edge ], [ -524, %sw.bb26.cleanup_crit_edge ], [ 0, %sprd_eic_update.exit503 ], [ 0, %sprd_eic_update.exit550 ], [ 0, %sprd_eic_update.exit582 ], [ 0, %sprd_eic_update.exit629 ], [ 0, %sprd_eic_update.exit676 ], [ 0, %sprd_eic_update.exit283 ], [ 0, %sprd_eic_update.exit330 ], [ 0, %sprd_eic_update.exit362 ], [ 0, %sprd_eic_update.exit409 ], [ 0, %sprd_eic_update.exit456 ], [ 0, %sw.epilog17 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_eic_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #9
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %chained_irq_enter.exit
  %call1 = call ptr @gpiochip_find(ptr noundef nonnull %type, ptr noundef nonnull @sprd_eic_match_chip_by_type) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i = call ptr @gpiochip_get_data(ptr noundef nonnull %call1) #9
  %ngpio.i = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 20
  %11 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ngpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp63.not.i = icmp eq i16 %12, 0
  br i1 %cmp63.not.i, label %if.end.for.inc_crit_edge, label %for.body.lr.ph.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.end
  %type.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i, i32 0, i32 3
  %domain.i = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 37, i32 1
  %parent.i.i = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %mul66.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %mul.i, %cleanup.i.for.body.i_crit_edge ]
  %bank.064.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bank.064.i)
  %cmp.i.i = icmp ugt i32 %bank.064.i, 2
  br i1 %cmp.i.i, label %for.body.i.sprd_eic_offset_base.exit.i_crit_edge, label %if.end.i.i

for.body.i.sprd_eic_offset_base.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_offset_base.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.sprd_eic, ptr %call.i, i32 0, i32 2, i32 %bank.064.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sprd_eic_offset_base.exit.i

sprd_eic_offset_base.exit.i:                      ; preds = %if.end.i.i, %for.body.i.sprd_eic_offset_base.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ null, %for.body.i.sprd_eic_offset_base.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #9
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %reg.i, align 4, !annotation !88
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %17, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb16.i
  ]

sw.bb.i:                                          ; preds = %sprd_eic_offset_base.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 32
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !86
  %20 = lshr i32 %19, 24
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %reg.i, align 4
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %sprd_eic_offset_base.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr6.i = getelementptr i8, ptr %retval.0.i.i, i32 8
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #9, !srcloc !86
  %23 = lshr i32 %22, 24
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %reg.i, align 4
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %sprd_eic_offset_base.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr12.i = getelementptr i8, ptr %retval.0.i.i, i32 8
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #9, !srcloc !86
  %26 = lshr i32 %25, 24
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %reg.i, align 4
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %sprd_eic_offset_base.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr18.i = getelementptr i8, ptr %retval.0.i.i, i32 8
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #9, !srcloc !86
  %29 = lshr i32 %28, 24
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %reg.i, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sprd_eic_offset_base.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  br label %for.inc

sw.epilog.i:                                      ; preds = %sw.bb16.i, %sw.bb10.i, %sw.bb4.i, %sw.bb.i
  %call22.i = call i32 @_find_next_bit_be(ptr noundef nonnull %reg.i, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call22.i)
  %cmp2460.i = icmp ult i32 %call22.i, 8
  br i1 %cmp2460.i, label %sw.epilog.i.for.body26.i_crit_edge, label %sw.epilog.i.cleanup.i_crit_edge

sw.epilog.i.cleanup.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

sw.epilog.i.for.body26.i_crit_edge:               ; preds = %sw.epilog.i
  br label %for.body26.i

for.body26.i:                                     ; preds = %sprd_eic_toggle_trigger.exit.i.for.body26.i_crit_edge, %sw.epilog.i.for.body26.i_crit_edge
  %n.061.i = phi i32 [ %call31.i, %sprd_eic_toggle_trigger.exit.i.for.body26.i_crit_edge ], [ %call22.i, %sw.epilog.i.for.body26.i_crit_edge ]
  %add.i = add i32 %n.061.i, %mul66.i
  %33 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %domain.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #9
  %35 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !88
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %34, i32 noundef %add.i, ptr noundef nonnull %irq.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body26.i.irq_find_mapping.exit.i_crit_edge, label %if.then.i.i

for.body26.i.irq_find_mapping.exit.i_crit_edge:   ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_find_mapping.exit.i

if.then.i.i:                                      ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq.i.i, align 4
  br label %irq_find_mapping.exit.i

irq_find_mapping.exit.i:                          ; preds = %if.then.i.i, %for.body26.i.irq_find_mapping.exit.i_crit_edge
  %retval.0.i56.i = phi i32 [ %37, %if.then.i.i ], [ 0, %for.body26.i.irq_find_mapping.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #9
  %call29.i = call i32 @generic_handle_irq(i32 noundef %retval.0.i56.i) #9
  %call.i57.i = call ptr @gpiochip_get_data(ptr noundef nonnull %call1) #9
  %call1.i.i = call ptr @irq_get_irq_data(i32 noundef %retval.0.i56.i) #9
  %common.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call1.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %common.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %type.i.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i57.i, i32 0, i32 3
  %42 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %switch.i.i = icmp ugt i32 %43, 1
  %and.i.i = and i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i58.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = select i1 %switch.i.i, i1 true, i1 %tobool.not.i58.i
  br i1 %or.cond.i.i, label %irq_find_mapping.exit.i.sprd_eic_toggle_trigger.exit.i_crit_edge, label %if.end.i59.i

irq_find_mapping.exit.i.sprd_eic_toggle_trigger.exit.i_crit_edge: ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_toggle_trigger.exit.i

if.end.i59.i:                                     ; preds = %irq_find_mapping.exit.i
  call void @sprd_eic_irq_mask(ptr noundef %call1.i.i) #9
  %call5.i.i = call i32 @sprd_eic_get(ptr noundef nonnull %call1, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add.i)
  %cmp.i.i59.i.i = icmp ugt i32 %add.i, 23
  %div25.i60.i.i = lshr i32 %add.i, 3
  %and11.i67.i.i = and i32 %add.i, 7
  %shl12.i68.i.i = shl nuw nsw i32 1, %and11.i67.i.i
  %neg.i70.i.i = xor i32 %shl12.i68.i.i, -1
  br label %retry.i.i

retry.i.i:                                        ; preds = %do.end.i.i, %if.end.i59.i
  %state.0.i.i = phi i32 [ %call5.i.i, %if.end.i59.i ], [ %call15.i.i, %do.end.i.i ]
  %44 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i.i, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %45, label %retry.i.i.cleanup.sink.split.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb10.i.i
  ]

retry.i.i.cleanup.sink.split.i.i_crit_edge:       ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

sw.bb.i.i:                                        ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.0.i.i)
  %tobool7.not.i.i = icmp eq i32 %state.0.i.i, 0
  %call.i43.i.i = call ptr @gpiochip_get_data(ptr noundef nonnull %call1) #9
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %sw.bb.i.i
  br i1 %cmp.i.i59.i.i, label %if.then8.i.i.sprd_eic_update.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then8.i.i.sprd_eic_update.exit.i.i_crit_edge:  ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i.i = getelementptr %struct.sprd_eic, ptr %call.i43.i.i, i32 0, i32 2, i32 %div25.i60.i.i
  %47 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  br label %sprd_eic_update.exit.i.i

sprd_eic_update.exit.i.i:                         ; preds = %if.end.i.i.i.i, %if.then8.i.i.sprd_eic_update.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %48, %if.end.i.i.i.i ], [ null, %if.then8.i.i.sprd_eic_update.exit.i.i_crit_edge ]
  %lock.i.i.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i43.i.i, i32 0, i32 4
  %call5.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #9
  %add.ptr.i.i.i = getelementptr i8, ptr %retval.0.i.i.i.i, i32 20
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !86
  %50 = call i32 @llvm.bswap.i32(i32 %49) #9
  %and13.i.i.i = and i32 %50, %neg.i70.i.i
  %51 = call i32 @llvm.bswap.i32(i32 %and13.i.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %51) #9, !srcloc !87
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call5.i.i.i) #9
  br label %sw.epilog.i.i

if.else.i.i:                                      ; preds = %sw.bb.i.i
  br i1 %cmp.i.i59.i.i, label %if.else.i.i.sprd_eic_update.exit57.i.i_crit_edge, label %if.end.i.i47.i.i

if.else.i.i.sprd_eic_update.exit57.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit57.i.i

if.end.i.i47.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i46.i.i = getelementptr %struct.sprd_eic, ptr %call.i43.i.i, i32 0, i32 2, i32 %div25.i60.i.i
  %52 = ptrtoint ptr %arrayidx.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i46.i.i, align 4
  br label %sprd_eic_update.exit57.i.i

sprd_eic_update.exit57.i.i:                       ; preds = %if.end.i.i47.i.i, %if.else.i.i.sprd_eic_update.exit57.i.i_crit_edge
  %retval.0.i.i48.i.i = phi ptr [ %53, %if.end.i.i47.i.i ], [ null, %if.else.i.i.sprd_eic_update.exit57.i.i_crit_edge ]
  %lock.i49.i.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i43.i.i, i32 0, i32 4
  %call5.i50.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i49.i.i) #9
  %add.ptr.i51.i.i = getelementptr i8, ptr %retval.0.i.i48.i.i, i32 20
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i.i) #9, !srcloc !86
  %55 = call i32 @llvm.bswap.i32(i32 %54) #9
  %or.i54.i.i = or i32 %55, %shl12.i68.i.i
  %56 = call i32 @llvm.bswap.i32(i32 %or.i54.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i.i, i32 %56) #9, !srcloc !87
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i49.i.i, i32 noundef %call5.i50.i.i) #9
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.0.i.i)
  %tobool11.not.i.i = icmp eq i32 %state.0.i.i, 0
  %call.i73.i.i = call ptr @gpiochip_get_data(ptr noundef nonnull %call1) #9
  br i1 %tobool11.not.i.i, label %if.else13.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %sw.bb10.i.i
  br i1 %cmp.i.i59.i.i, label %if.then12.i.i.sprd_eic_update.exit72.i.i_crit_edge, label %if.end.i.i62.i.i

if.then12.i.i.sprd_eic_update.exit72.i.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit72.i.i

if.end.i.i62.i.i:                                 ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i61.i.i = getelementptr %struct.sprd_eic, ptr %call.i73.i.i, i32 0, i32 2, i32 %div25.i60.i.i
  %57 = ptrtoint ptr %arrayidx.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.i61.i.i, align 4
  br label %sprd_eic_update.exit72.i.i

sprd_eic_update.exit72.i.i:                       ; preds = %if.end.i.i62.i.i, %if.then12.i.i.sprd_eic_update.exit72.i.i_crit_edge
  %retval.0.i.i63.i.i = phi ptr [ %58, %if.end.i.i62.i.i ], [ null, %if.then12.i.i.sprd_eic_update.exit72.i.i_crit_edge ]
  %lock.i64.i.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i73.i.i, i32 0, i32 4
  %call5.i65.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i64.i.i) #9
  %add.ptr.i66.i.i = getelementptr i8, ptr %retval.0.i.i63.i.i, i32 16
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i.i) #9, !srcloc !86
  %60 = call i32 @llvm.bswap.i32(i32 %59) #9
  %and13.i71.i.i = and i32 %60, %neg.i70.i.i
  %61 = call i32 @llvm.bswap.i32(i32 %and13.i71.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i.i, i32 %61) #9, !srcloc !87
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i64.i.i, i32 noundef %call5.i65.i.i) #9
  br label %sw.epilog.i.i

if.else13.i.i:                                    ; preds = %sw.bb10.i.i
  br i1 %cmp.i.i59.i.i, label %if.else13.i.i.sprd_eic_update.exit87.i.i_crit_edge, label %if.end.i.i77.i.i

if.else13.i.i.sprd_eic_update.exit87.i.i_crit_edge: ; preds = %if.else13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_eic_update.exit87.i.i

if.end.i.i77.i.i:                                 ; preds = %if.else13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i76.i.i = getelementptr %struct.sprd_eic, ptr %call.i73.i.i, i32 0, i32 2, i32 %div25.i60.i.i
  %62 = ptrtoint ptr %arrayidx.i.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i76.i.i, align 4
  br label %sprd_eic_update.exit87.i.i

sprd_eic_update.exit87.i.i:                       ; preds = %if.end.i.i77.i.i, %if.else13.i.i.sprd_eic_update.exit87.i.i_crit_edge
  %retval.0.i.i78.i.i = phi ptr [ %63, %if.end.i.i77.i.i ], [ null, %if.else13.i.i.sprd_eic_update.exit87.i.i_crit_edge ]
  %lock.i79.i.i = getelementptr inbounds %struct.sprd_eic, ptr %call.i73.i.i, i32 0, i32 4
  %call5.i80.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i79.i.i) #9
  %add.ptr.i81.i.i = getelementptr i8, ptr %retval.0.i.i78.i.i, i32 16
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81.i.i) #9, !srcloc !86
  %65 = call i32 @llvm.bswap.i32(i32 %64) #9
  %or.i84.i.i = or i32 %65, %shl12.i68.i.i
  %66 = call i32 @llvm.bswap.i32(i32 %or.i84.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i.i, i32 %66) #9, !srcloc !87
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i79.i.i, i32 noundef %call5.i80.i.i) #9
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sprd_eic_update.exit87.i.i, %sprd_eic_update.exit72.i.i, %sprd_eic_update.exit57.i.i, %sprd_eic_update.exit.i.i
  %call15.i.i = call i32 @sprd_eic_get(ptr noundef nonnull %call1, i32 noundef %add.i) #9
  %cmp16.not.i.i = icmp eq i32 %state.0.i.i, %call15.i.i
  br i1 %cmp16.not.i.i, label %sw.epilog.i.i.cleanup.sink.split.i.i_crit_edge, label %do.end.i.i

sw.epilog.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

do.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.20) #12
  br label %retry.i.i

cleanup.sink.split.i.i:                           ; preds = %sw.epilog.i.i.cleanup.sink.split.i.i_crit_edge, %retry.i.i.cleanup.sink.split.i.i_crit_edge
  call void @sprd_eic_irq_unmask(ptr noundef %call1.i.i) #9
  br label %sprd_eic_toggle_trigger.exit.i

sprd_eic_toggle_trigger.exit.i:                   ; preds = %cleanup.sink.split.i.i, %irq_find_mapping.exit.i.sprd_eic_toggle_trigger.exit.i_crit_edge
  %add30.i = add i32 %n.061.i, 1
  %call31.i = call i32 @_find_next_bit_be(ptr noundef nonnull %reg.i, i32 noundef 8, i32 noundef %add30.i) #9
  %cmp24.i = icmp ult i32 %call31.i, 8
  br i1 %cmp24.i, label %sprd_eic_toggle_trigger.exit.i.for.body26.i_crit_edge, label %sprd_eic_toggle_trigger.exit.i.cleanup.i_crit_edge

sprd_eic_toggle_trigger.exit.i.cleanup.i_crit_edge: ; preds = %sprd_eic_toggle_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

sprd_eic_toggle_trigger.exit.i.for.body26.i_crit_edge: ; preds = %sprd_eic_toggle_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26.i

cleanup.i:                                        ; preds = %sprd_eic_toggle_trigger.exit.i.cleanup.i_crit_edge, %sw.epilog.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  %inc.i = add nuw nsw i32 %bank.064.i, 1
  %mul.i = shl i32 %inc.i, 3
  %69 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %70 to i32
  %cmp.i = icmp ult i32 %mul.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.inc_crit_edge

cleanup.i.for.inc_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc:                                          ; preds = %cleanup.i.for.inc_crit_edge, %do.end.i, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %71 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type, align 4
  %inc = add i32 %72, 1
  store i32 %inc, ptr %type, align 4
  %cmp = icmp ult i32 %inc, 4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %73 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i7 = icmp eq ptr %74, null
  br i1 %tobool.not.i7, label %if.else.i8, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i8:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %75 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i8, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %76, %if.else.i8 ], [ %74, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_eic_match_chip_by_type(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @sprd_eic_label_name, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_gpio_eic_sprd__227_686_sprd_eic_driver_init6, !1, !"__initcall__kmod_gpio_eic_sprd__227_686_sprd_eic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 686, i32 1}
!2 = !{ptr @__exitcall_sprd_eic_driver_exit, !1, !"__exitcall_sprd_eic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 688, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 689, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 681, i32 11}
!10 = !{ptr @sprd_eic_driver, !11, !"sprd_eic_driver", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 678, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 577, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sprd_eic_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @sprd_eic_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @sprd_eic_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 585, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sprd_eic_probe.lock_key, !24, !"lock_key", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 645, i32 8}
!25 = !{ptr @sprd_eic_probe.request_key, !24, !"request_key", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 647, i32 3}
!28 = !{ptr @sprd_eic_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sprd_eic_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 107, i32 2}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 107, i32 18}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 107, i32 31}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 108, i32 2}
!38 = !{ptr @sprd_eic_label_name, !39, !"sprd_eic_label_name", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 106, i32 20}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 305, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sprd_eic_irq_ack._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @sprd_eic_irq_ack._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 256, i32 3}
!47 = !{ptr @sprd_eic_irq_mask._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sprd_eic_irq_mask._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 281, i32 3}
!51 = !{ptr @sprd_eic_irq_unmask._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sprd_eic_irq_unmask._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 438, i32 3}
!55 = !{ptr @sprd_eic_irq_set_type._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sprd_eic_irq_set_type._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 528, i32 4}
!59 = !{ptr @sprd_eic_handle_one_type._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sprd_eic_handle_one_type._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 486, i32 3}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sprd_eic_toggle_trigger._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @sprd_eic_toggle_trigger._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @sprd_eic_of_match, !68, !"sprd_eic_of_match", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 655, i32 34}
!69 = !{ptr @sc9860_eic_dbnc_data, !70, !"sc9860_eic_dbnc_data", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 111, i32 43}
!71 = !{ptr @sc9860_eic_latch_data, !72, !"sc9860_eic_latch_data", i1 false, i1 false}
!72 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 116, i32 43}
!73 = !{ptr @sc9860_eic_async_data, !74, !"sc9860_eic_async_data", i1 false, i1 false}
!74 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 121, i32 43}
!75 = !{ptr @sc9860_eic_sync_data, !76, !"sc9860_eic_sync_data", i1 false, i1 false}
!76 = !{!"../drivers/gpio/gpio-eic-sprd.c", i32 126, i32 43}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 4856939}
!87 = !{i64 4856521}
!88 = !{!"auto-init"}
