; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-bcm-kona.c_pt.bc'
source_filename = "../drivers/gpio/gpio-bcm-kona.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm_kona_gpio = type { ptr, i32, %struct.raw_spinlock, %struct.gpio_chip, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.bcm_kona_gpio_bank = type { i32, i32, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_gpio_bcm_kona__223_672_bcm_kona_gpio_driver_init6 = internal global ptr @bcm_kona_gpio_driver_init, section ".initcall6.init", align 4
@bcm_kona_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_kona_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_kona_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm-kona-gpio\00", [18 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 576, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to find gpio controller\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm_kona_gpio_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-bcm-kona.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry_ptr = internal global ptr @bcm_kona_gpio_probe._entry, section ".printk_index", align 4
@template_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @bcm_kona_gpio_request, ptr @bcm_kona_gpio_free, ptr @bcm_kona_gpio_get_dir, ptr @bcm_kona_gpio_direction_input, ptr @bcm_kona_gpio_direction_output, ptr @bcm_kona_gpio_get, ptr null, ptr @bcm_kona_gpio_set, ptr null, ptr @bcm_kona_gpio_set_config, ptr @bcm_kona_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't determine # GPIO banks\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry_ptr.8 = internal global ptr @bcm_kona_gpio_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't determine GPIO banks\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 597, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Too many GPIO banks configured (max=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry_ptr.12 = internal global ptr @bcm_kona_gpio_probe._entry.10, section ".printk_index", align 4
@bcm_kona_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @bcm_kona_gpio_irq_map, ptr @bcm_kona_gpio_irq_unmap, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't allocate IRQ domain\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry_ptr.15 = internal global ptr @bcm_kona_gpio_probe._entry.13, section ".printk_index", align 4
@bcm_kona_gpio_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 633, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get IRQ for bank %d\00", [35 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry_ptr.18 = internal global ptr @bcm_kona_gpio_probe._entry.16, section ".printk_index", align 4
@bcm_kona_gpio_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 639, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Setting up Kona GPIO\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry_ptr.22 = internal global ptr @bcm_kona_gpio_probe._entry.19, section ".printk_index", align 4
@bcm_kona_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bcm_kona_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bcm_kona_gpio_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't add GPIO chip -- %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_probe._entry_ptr.25 = internal global ptr @bcm_kona_gpio_probe._entry.23, section ".printk_index", align 4
@bcm_kona_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&kona_gpio->lock\00", [47 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_set_debounce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Debounce value %u not in range\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm_kona_gpio_set_debounce\00", [37 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_set_debounce._entry_ptr = internal global ptr @bcm_kona_gpio_set_debounce._entry, section ".printk_index", align 4
@gpio_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_request_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bcm_gpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @bcm_kona_gpio_irq_ack, ptr @bcm_kona_gpio_irq_mask, ptr null, ptr @bcm_kona_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @bcm_kona_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_kona_gpio_irq_reqres, ptr @bcm_kona_gpio_irq_relres, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid BCM GPIO irq type 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm_kona_gpio_irq_set_type\00", [37 x i8] zeroinitializer }, align 32
@bcm_kona_gpio_irq_set_type._entry_ptr = internal global ptr @bcm_kona_gpio_irq_set_type._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"bcm_kona_gpio_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 665, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 667, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"bcm_kona_gpio_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 508, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 576, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"template_chip\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 322, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 588, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 591, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 596, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"bcm_kona_irq_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 541, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 617, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 633, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 639, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 643, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 645, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 655, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 273, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"gpio_lock_class\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 517, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant [19 x i8] c"gpio_request_class\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 518, i32 30 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"bcm_gpio_irq_chip\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 498, i32 24 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [32 x i8] c"../drivers/gpio/gpio-bcm-kona.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 430, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__initcall__kmod_gpio_bcm_kona__223_672_bcm_kona_gpio_driver_init6, ptr @bcm_kona_gpio_irq_set_type._entry, ptr @bcm_kona_gpio_irq_set_type._entry_ptr, ptr @bcm_kona_gpio_probe._entry, ptr @bcm_kona_gpio_probe._entry.10, ptr @bcm_kona_gpio_probe._entry.13, ptr @bcm_kona_gpio_probe._entry.16, ptr @bcm_kona_gpio_probe._entry.19, ptr @bcm_kona_gpio_probe._entry.23, ptr @bcm_kona_gpio_probe._entry.6, ptr @bcm_kona_gpio_probe._entry_ptr, ptr @bcm_kona_gpio_probe._entry_ptr.12, ptr @bcm_kona_gpio_probe._entry_ptr.15, ptr @bcm_kona_gpio_probe._entry_ptr.18, ptr @bcm_kona_gpio_probe._entry_ptr.22, ptr @bcm_kona_gpio_probe._entry_ptr.25, ptr @bcm_kona_gpio_probe._entry_ptr.8, ptr @bcm_kona_gpio_set_debounce._entry, ptr @bcm_kona_gpio_set_debounce._entry_ptr, ptr @bcm_kona_gpio_driver, ptr @.str, ptr @bcm_kona_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @template_chip, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @bcm_kona_irq_ops, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @bcm_kona_gpio_probe.lock_key, ptr @bcm_kona_gpio_probe.request_key, ptr @.str.24, ptr @bcm_kona_gpio_probe.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @gpio_lock_class, ptr @gpio_request_class, ptr @bcm_gpio_irq_chip, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_set_debounce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_request_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_gpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_gpio_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_kona_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @bcm_kona_gpio_of_match, ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 412, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %gpio_chip = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call.i, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %gpio_chip, ptr @template_chip, i32 348)
  %call7 = tail call i32 @platform_irq_count(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end12, label %if.else

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call7, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end16:                                         ; preds = %if.else
  %num_bank = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %num_bank to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call7, ptr %num_bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call7)
  %cmp18 = icmp ugt i32 %call7, 8
  br i1 %cmp18, label %do.end22, label %devm_kcalloc.exit

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 8) #9
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end16
  %2 = mul nuw nsw i32 %call7, 12
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %2, i32 noundef 3520) #6
  %banks = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %banks to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5.i.i, ptr %banks, align 4
  %tobool27.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool27.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end29

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %devm_kcalloc.exit
  %pdev30 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %pdev30 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev30, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call.i, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %parent, align 4
  %7 = ptrtoint ptr %num_bank to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_bank, align 4
  %.tr = trunc i32 %8 to i16
  %conv = shl i16 %.tr, 5
  %ngpio = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call.i, i32 0, i32 3, i32 20
  %9 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %ngpio, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %conv33 = zext i16 %conv to i32
  %tobool.not.i.i = icmp eq ptr %11, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %conv33, i32 noundef %conv33, i32 noundef 0, ptr noundef nonnull @bcm_kona_irq_ops, ptr noundef nonnull %call.i) #6
  %irq_domain = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool36.not = icmp eq ptr %call1.i, null
  br i1 %tobool36.not, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  %call42 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call42, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end41
  %14 = ptrtoint ptr %num_bank to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp50165 = icmp sgt i32 %15, 0
  br i1 %cmp50165, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.end65_crit_edge

for.cond.preheader.do.end65_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call42 to i32
  br label %err_irq_domain

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0166 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %17 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %banks, align 4
  %arrayidx = getelementptr %struct.bcm_kona_gpio_bank, ptr %18, i32 %i.0166
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.0166, ptr %arrayidx, align 4
  %call53 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0166) #6
  %irq = getelementptr %struct.bcm_kona_gpio_bank, ptr %18, i32 %i.0166, i32 1
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call53, ptr %irq, align 4
  %kona_gpio54 = getelementptr %struct.bcm_kona_gpio_bank, ptr %18, i32 %i.0166, i32 2
  %21 = ptrtoint ptr %kona_gpio54 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %kona_gpio54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp56 = icmp slt i32 %call53, 0
  br i1 %cmp56, label %do.end61, label %for.inc

do.end61:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %i.0166) #9
  br label %err_irq_domain

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0166, 1
  %22 = ptrtoint ptr %num_bank to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_bank, align 4
  %cmp50 = icmp slt i32 %inc, %23
  br i1 %cmp50, label %for.inc.for.body_crit_edge, label %for.inc.do.end65_crit_edge

for.inc.do.end65_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end65:                                         ; preds = %for.inc.do.end65_crit_edge, %for.cond.preheader.do.end65_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  tail call fastcc void @bcm_kona_gpio_reset(ptr noundef nonnull %call.i)
  %call67 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %gpio_chip, ptr noundef nonnull %call.i, ptr noundef nonnull @bcm_kona_gpio_probe.lock_key, ptr noundef nonnull @bcm_kona_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end73, label %for.cond75.preheader

for.cond75.preheader:                             ; preds = %do.end65
  %24 = ptrtoint ptr %num_bank to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp77167 = icmp sgt i32 %25, 0
  br i1 %cmp77167, label %for.cond75.preheader.for.body79_crit_edge, label %for.cond75.preheader.do.body86_crit_edge

for.cond75.preheader.do.body86_crit_edge:         ; preds = %for.cond75.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body86

for.cond75.preheader.for.body79_crit_edge:        ; preds = %for.cond75.preheader
  br label %for.body79

do.end73:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call67) #9
  br label %err_irq_domain

for.body79:                                       ; preds = %for.body79.for.body79_crit_edge, %for.cond75.preheader.for.body79_crit_edge
  %i.1168 = phi i32 [ %inc84, %for.body79.for.body79_crit_edge ], [ 0, %for.cond75.preheader.for.body79_crit_edge ]
  %26 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %banks, align 4
  %arrayidx81 = getelementptr %struct.bcm_kona_gpio_bank, ptr %27, i32 %i.1168
  %irq82 = getelementptr %struct.bcm_kona_gpio_bank, ptr %27, i32 %i.1168, i32 1
  %28 = ptrtoint ptr %irq82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq82, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %29, ptr noundef nonnull @bcm_kona_gpio_irq_handler, ptr noundef %arrayidx81) #6
  %inc84 = add nuw nsw i32 %i.1168, 1
  %30 = ptrtoint ptr %num_bank to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_bank, align 4
  %cmp77 = icmp slt i32 %inc84, %31
  br i1 %cmp77, label %for.body79.for.body79_crit_edge, label %for.body79.do.body86_crit_edge

for.body79.do.body86_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body86

for.body79.for.body79_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body79

do.body86:                                        ; preds = %for.body79.do.body86_crit_edge, %for.cond75.preheader.do.body86_crit_edge
  %lock = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @bcm_kona_gpio_probe.__key, i16 noundef signext 2) #6
  br label %cleanup

err_irq_domain:                                   ; preds = %do.end73, %do.end61, %if.then45
  %ret.0 = phi i32 [ %16, %if.then45 ], [ -2, %do.end61 ], [ %call67, %do.end73 ]
  %32 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %33) #6
  br label %cleanup

cleanup:                                          ; preds = %err_irq_domain, %do.body86, %do.end40, %devm_kcalloc.exit.cleanup_crit_edge, %do.end22, %if.then13, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call14, %if.then13 ], [ -6, %do.end22 ], [ %ret.0, %err_irq_domain ], [ 0, %do.body86 ], [ -6, %do.end40 ], [ -2, %do.end12 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_kona_gpio_reset(ptr nocapture noundef readonly %kona_gpio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kona_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kona_gpio, align 4
  %num_bank = getelementptr inbounds %struct.bcm_kona_gpio, ptr %kona_gpio, i32 0, i32 1
  %2 = ptrtoint ptr %num_bank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21 = icmp sgt i32 %3, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 1312
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 27632896) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %shl.i = shl i32 %i.022, 2
  %add.i = add i32 %shl.i, 1280
  %add.ptr3.i = getelementptr i8, ptr %1, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %add = add i32 %shl.i, 160
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %add6 = add i32 %shl.i, 128
  %add.ptr7 = getelementptr i8, ptr %1, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -1) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 27632896) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 -1) #6, !srcloc !79
  %inc = add nuw nsw i32 %i.022, 1
  %4 = ptrtoint ptr %num_bank to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_bank, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %sta = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sta) #6
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
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
  %kona_gpio = getelementptr inbounds %struct.bcm_kona_gpio_bank, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %kona_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kona_gpio, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %shl = shl i32 %17, 2
  %add = add i32 %shl, 128
  %add.ptr = getelementptr i8, ptr %15, i32 %add
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %add8 = add i32 %shl, 160
  %add.ptr9 = getelementptr i8, ptr %15, i32 %add8
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not53 = icmp eq i32 %21, 0
  br i1 %tobool.not53, label %chained_irq_enter.exit.while.end_crit_edge, label %while.body.lr.ph

chained_irq_enter.exit.while.end_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %chained_irq_enter.exit
  %mul = shl i32 %17, 5
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sta, align 4
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %sta, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call13)
  %cmp51 = icmp slt i32 %call13, 32
  br i1 %cmp51, label %while.body.for.body_crit_edge, label %while.body.while.cond.loopexit_crit_edge

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.loopexit

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %bit.052 = phi i32 [ %call30, %for.body.for.body_crit_edge ], [ %call13, %while.body.for.body_crit_edge ]
  %add14 = add i32 %bit.052, %mul
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  call void @arm_heavy_mb() #6
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %shl23 = shl nuw i32 1, %bit.052
  %or = or i32 %31, %shl23
  %32 = call i32 @llvm.bswap.i32(i32 %or)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %32) #6, !srcloc !79
  %33 = ptrtoint ptr %kona_gpio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %kona_gpio, align 4
  %irq_domain = getelementptr inbounds %struct.bcm_kona_gpio, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_domain, align 4
  %call28 = call i32 @generic_handle_domain_irq(ptr noundef %36, i32 noundef %add14) #6
  %add29 = add nsw i32 %bit.052, 1
  %call30 = call i32 @_find_next_bit_be(ptr noundef nonnull %sta, i32 noundef 32, i32 noundef %add29) #6
  %cmp = icmp slt i32 %call30, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.while.cond.loopexit_crit_edge

for.body.while.cond.loopexit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %chained_irq_enter.exit.while.end_crit_edge
  %37 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i48 = icmp eq ptr %38, null
  br i1 %tobool.not.i48, label %if.else.i49, label %while.end.chained_irq_exit.exit_crit_edge

while.end.chained_irq_exit.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i49:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i49, %while.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %40, %if.else.i49 ], [ %38, %while.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sta) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_request(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %lock.i = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call, i32 0, i32 2
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %2 = lshr i32 %gpio, 3
  %shl.i = and i32 %2, 536870908
  %add.i = add nuw nsw i32 %shl.i, 1280
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %shl4.i = shl nuw i32 1, %gpio
  %neg.i = xor i32 %shl4.i, -1
  %and.i = and i32 %4, %neg.i
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 27632896) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %add.ptr3.i.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %7) #6, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_free(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %lock.i = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call, i32 0, i32 2
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %2 = lshr i32 %gpio, 3
  %shl.i = and i32 %2, 536870908
  %add.i = add nuw nsw i32 %shl.i, 1280
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %shl4.i = shl nuw i32 1, %gpio
  %or.i = or i32 %4, %shl4.i
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 27632896) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %add.ptr3.i.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %7) #6, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_get_dir(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shl = shl i32 %gpio, 2
  %add = add i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %3 = lshr i32 %2, 24
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_direction_input(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %lock = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %shl = shl i32 %gpio, 2
  %add = add i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_direction_output(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %lock = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %shl = shl i32 %gpio, 2
  %add = add i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %4 = lshr i32 %gpio, 3
  %shl13 = and i32 %4, 536870908
  %cond.v = select i1 %tobool.not, i32 96, i32 64
  %cond = add nuw nsw i32 %cond.v, %shl13
  %and = and i32 %gpio, 31
  %add.ptr19 = getelementptr i8, ptr %1, i32 %cond
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !83
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %shl23 = shl nuw i32 1, %and
  %or24 = or i32 %6, %shl23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or24)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %7) #6, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_get(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %lock = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %shl.i = shl i32 %gpio, 2
  %add.i = add i32 %shl.i, 256
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  %6 = lshr i32 %gpio, 3
  %shl = and i32 %6, 536870908
  %add = add nuw nsw i32 %shl, 32
  %reg_offset.0 = select i1 %cmp4.not, i32 %shl, i32 %add
  %and = and i32 %gpio, 31
  %add.ptr = getelementptr i8, ptr %1, i32 %reg_offset.0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %9 = lshr i32 %8, %and
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_set(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %lock = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %shl.i = shl i32 %gpio, 2
  %add.i = add i32 %shl.i, 256
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end, label %entry.do.body16_crit_edge

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %gpio, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %6 = lshr i32 %gpio, 3
  %shl = and i32 %6, 536870908
  %cond.v = select i1 %tobool.not, i32 96, i32 64
  %cond = add nuw nsw i32 %cond.v, %shl
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %shl11 = shl nuw i32 1, %and
  %or = or i32 %8, %shl11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !79
  br label %do.body16

do.body16:                                        ; preds = %if.end, %entry.do.body16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_set_config(ptr noundef %chip, i32 noundef %gpio, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i = lshr i32 %config, 8
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %2 = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %2)
  %3 = icmp ult i32 %2, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768255, i32 %config)
  %cmp3.i = icmp ugt i32 %config, 32768255
  %or.cond68.i = or i1 %cmp3.i, %3
  br i1 %or.cond68.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef %shr.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %cmp4.not.i = icmp ult i32 %config, 256
  br i1 %cmp4.not.i, label %if.end.i.do.body13.i_crit_edge, label %if.then5.i

if.end.i.do.body13.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13.i

if.then5.i:                                       ; preds = %if.end.i
  %div.i = udiv i32 %config, 256000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %config)
  %6 = icmp ult i32 %config, 256000
  %7 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #6, !range !100
  %sub.i.i = sub nuw nsw i32 32, %7
  %cond.i.i = select i1 %6, i32 0, i32 %sub.i.i
  %sub.i = add nsw i32 %cond.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp7.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp7.not.i, label %if.then5.i.do.body13.i_crit_edge, label %land.lhs.true8.i

if.then5.i.do.body13.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13.i

land.lhs.true8.i:                                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub9.i = add nsw i32 %cond.i.i, -2
  %shl.i = shl nuw nsw i32 1, %sub9.i
  %and.i4 = and i32 %shl.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i = icmp eq i32 %and.i4, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %sub.i, i32 %cond.i.i
  %phi.bo.i = shl nsw i32 %spec.select.i, 5
  %phi.bo70.i = or i32 %phi.bo.i, 256
  br label %do.body13.i

do.body13.i:                                      ; preds = %land.lhs.true8.i, %if.then5.i.do.body13.i_crit_edge, %if.end.i.do.body13.i_crit_edge
  %res.0.i = phi i32 [ 256, %if.then5.i.do.body13.i_crit_edge ], [ -32, %if.end.i.do.body13.i_crit_edge ], [ %phi.bo70.i, %land.lhs.true8.i ]
  %debounce.addr.0.i = phi i32 [ %div.i, %if.then5.i.do.body13.i_crit_edge ], [ 0, %if.end.i.do.body13.i_crit_edge ], [ %div.i, %land.lhs.true8.i ]
  %lock.i = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call.i, i32 0, i32 2
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %shl18.i = shl i32 %gpio, 2
  %add.i = add i32 %shl18.i, 256
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %9 = and i32 %8, 536805375
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %debounce.addr.0.i)
  %cmp23.i = icmp eq i32 %debounce.addr.0.i, 0
  %spec.select = select i1 %cmp23.i, i32 0, i32 %res.0.i
  %spec.select69.i = or i32 %10, %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %spec.select69.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call15.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body13.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %do.body13.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_to_irq(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %ngpio = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call, i32 0, i32 3, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %gpio)
  %cmp.not = icmp ugt i32 %conv, %gpio
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq_domain = getelementptr inbounds %struct.bcm_kona_gpio, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %3, i32 noundef %gpio, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_irq_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__irq_set_lockdep_class(i32 noundef %irq, ptr noundef nonnull @gpio_lock_class, ptr noundef nonnull @gpio_request_class) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @bcm_gpio_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_unmap(ptr nocapture noundef readnone %d, i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_lockdep_class(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %and = and i32 %1, 31
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lock = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %6 = lshr i32 %1, 3
  %shl = and i32 %6, 536870908
  %add = add nuw nsw i32 %shl, 128
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %shl6 = shl nuw i32 1, %and
  %or = or i32 %8, %shl6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %and = and i32 %1, 31
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lock = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %6 = lshr i32 %1, 3
  %shl = and i32 %6, 536870908
  %add = add nuw nsw i32 %shl, 160
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %shl6 = shl nuw i32 1, %and
  %or = or i32 %8, %shl6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !79
  %gpio_chip = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 3
  tail call void @gpiochip_disable_irq(ptr noundef %gpio_chip, i32 noundef %1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %and = and i32 %1, 31
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lock = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %6 = lshr i32 %1, 3
  %shl = and i32 %6, 536870908
  %add = add nuw nsw i32 %shl, 192
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %shl6 = shl nuw i32 1, %and
  %or = or i32 %8, %shl6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !79
  %gpio_chip = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 3
  tail call void @gpiochip_enable_irq(ptr noundef %gpio_chip, i32 noundef %1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %and = and i32 %type, 15
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.off)
  %switch = icmp ult i32 %and.off, 3
  br i1 %switch, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.bcm_kona_gpio, ptr %1, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %type) #9
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %lock = getelementptr inbounds %struct.bcm_kona_gpio, ptr %1, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %shl = shl i32 %7, 2
  %add = add i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  %9 = and i32 %8, -402653185
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %shl13 = shl nuw nsw i32 %and, 3
  %or = or i32 %10, %shl13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #6, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_irq_reqres(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %gpio_chip = getelementptr inbounds %struct.bcm_kona_gpio, ptr %1, i32 0, i32 3
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %call1 = tail call i32 @gpiochip_reqres_irq(ptr noundef %gpio_chip, i32 noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_relres(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %gpio_chip = getelementptr inbounds %struct.bcm_kona_gpio, ptr %1, i32 0, i32 3
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %gpio_chip, i32 noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_disable_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_enable_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_gpio_bcm_kona__223_672_bcm_kona_gpio_driver_init6, !1, !"__initcall__kmod_gpio_bcm_kona__223_672_bcm_kona_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 672, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 667, i32 12}
!4 = !{ptr @bcm_kona_gpio_driver, !5, !"bcm_kona_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 665, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 576, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @bcm_kona_gpio_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @bcm_kona_gpio_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 588, i32 3}
!16 = !{ptr @bcm_kona_gpio_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @bcm_kona_gpio_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 591, i32 34}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 596, i32 3}
!22 = !{ptr @bcm_kona_gpio_probe._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcm_kona_gpio_probe._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 617, i32 3}
!26 = !{ptr @bcm_kona_gpio_probe._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bcm_kona_gpio_probe._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 633, i32 4}
!30 = !{ptr @bcm_kona_gpio_probe._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bcm_kona_gpio_probe._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 639, i32 2}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bcm_kona_gpio_probe._entry.19, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @bcm_kona_gpio_probe._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @bcm_kona_gpio_probe.lock_key, !38, !"lock_key", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 643, i32 8}
!39 = !{ptr @bcm_kona_gpio_probe.request_key, !38, !"request_key", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 645, i32 3}
!42 = !{ptr @bcm_kona_gpio_probe._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bcm_kona_gpio_probe._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @bcm_kona_gpio_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 655, i32 2}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @template_chip, !48, !"template_chip", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 322, i32 31}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 273, i32 3}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bcm_kona_gpio_set_debounce._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @bcm_kona_gpio_set_debounce._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @bcm_kona_irq_ops, !55, !"bcm_kona_irq_ops", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 541, i32 36}
!56 = !{ptr @gpio_lock_class, !57, !"gpio_lock_class", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 517, i32 30}
!58 = !{ptr @gpio_request_class, !59, !"gpio_request_class", i1 false, i1 false}
!59 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 518, i32 30}
!60 = !{ptr @bcm_gpio_irq_chip, !61, !"bcm_gpio_irq_chip", i1 false, i1 false}
!61 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 498, i32 24}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 430, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @bcm_kona_gpio_irq_set_type._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @bcm_kona_gpio_irq_set_type._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @bcm_kona_gpio_of_match, !68, !"bcm_kona_gpio_of_match", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-bcm-kona.c", i32 508, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2153843289}
!79 = !{i64 1196687}
!80 = !{i64 2153843772}
!81 = !{i64 2153870424}
!82 = !{i64 2153870914}
!83 = !{i64 1197105}
!84 = !{i64 2153866799}
!85 = !{i64 2153867430}
!86 = !{i64 2153868993}
!87 = !{i64 2153870060}
!88 = !{i64 2153846181}
!89 = !{i64 2153844923}
!90 = !{i64 2153847121}
!91 = !{i64 2153850787}
!92 = !{i64 2153851081}
!93 = !{i64 2153852440}
!94 = !{i64 2153852734}
!95 = !{i64 2153853509}
!96 = !{i64 2153853804}
!97 = !{i64 2153849608}
!98 = !{i64 2153848012}
!99 = !{i64 2153848307}
!100 = !{i32 0, i32 33}
!101 = !{i64 2153856861}
!102 = !{i64 2153857168}
!103 = !{i64 2153858567}
!104 = !{i64 2153858922}
!105 = !{i64 2153860299}
!106 = !{i64 2153860654}
!107 = !{i64 2153862031}
!108 = !{i64 2153862386}
!109 = !{i64 2153865438}
!110 = !{i64 2153865723}
