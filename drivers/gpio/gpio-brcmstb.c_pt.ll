; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-brcmstb.c_pt.bc'
source_filename = "../drivers/gpio/gpio-brcmstb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.brcmstb_gpio_priv = type { %struct.list_head, ptr, ptr, ptr, %struct.irq_chip, i32, i32, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.brcmstb_gpio_bank = type { %struct.list_head, i32, %struct.gpio_chip, ptr, i32, i32, [7 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_gpio_brcmstb__230_779_brcmstb_gpio_driver_init6 = internal global ptr @brcmstb_gpio_driver_init, section ".initcall6.init", align 4
@brcmstb_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @brcmstb_gpio_probe, ptr @brcmstb_gpio_remove, ptr @brcmstb_gpio_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_brcmstb_gpio_driver_exit = internal global ptr @brcmstb_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [33 x i8] c"gpio_brcmstb.author=Gregory Fong\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [66 x i8] c"gpio_brcmstb.description=Driver for Broadcom BRCMSTB SoC UPG GPIO\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [44 x i8] c"gpio_brcmstb.file=drivers/gpio/gpio-brcmstb\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [28 x i8] c"gpio_brcmstb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcmstb-gpio\00", [19 x i8] zeroinitializer }, align 32
@brcmstb_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@brcmstb_gpio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_gpio_suspend, ptr @brcmstb_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcmstb_gpio_probe.gpio_base = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcm,gpio-bank-widths\00", [42 x i8] zeroinitializer }, align 32
@brcmstb_gpio_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 -89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_brcmstb\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcmstb_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-brcmstb.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Width 0 found: Empty bank @ %d\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmstb_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 685, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid bank width %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmstb_gpio_probe._entry_ptr = internal global ptr @brcmstb_gpio_probe._entry, section ".printk_index", align 4
@brcmstb_gpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 702, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bgpio_init() failed\0A\00", [43 x i8] zeroinitializer }, align 32
@brcmstb_gpio_probe._entry_ptr.12 = internal global ptr @brcmstb_gpio_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pOF\00", [27 x i8] zeroinitializer }, align 32
@brcmstb_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@brcmstb_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@brcmstb_gpio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 731, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not add gpiochip for bank %d\0A\00", [60 x i8] zeroinitializer }, align 32
@brcmstb_gpio_probe._entry_ptr.16 = internal global ptr @brcmstb_gpio_probe._entry.14, section ".printk_index", align 4
@brcmstb_gpio_probe.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.17, i8 0, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bank=%d, base=%d, ngpio=%d, width=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@brcmstb_gpio_sanity_check_banks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 377, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Mismatch in banks: res had %d, bank-widths had %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"brcmstb_gpio_sanity_check_banks\00", [32 x i8] zeroinitializer }, align 32
@brcmstb_gpio_sanity_check_banks._entry_ptr = internal global ptr @brcmstb_gpio_sanity_check_banks._entry, section ".printk_index", align 4
@brcmstb_gpio_of_xlate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmstb_gpio_of_xlate = private unnamed_addr constant [22 x i8] c"brcmstb_gpio_of_xlate\00", align 1
@brcmstb_gpio_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.brcmstb_gpio_of_xlate, ptr @.str.5, i32 439, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Received request for invalid GPIO offset %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@brcmstb_gpio_of_xlate._entry_ptr = internal global ptr @brcmstb_gpio_of_xlate._entry, section ".printk_index", align 4
@brcmstb_gpio_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @brcmstb_gpio_irq_map, ptr @brcmstb_gpio_irq_unmap, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@brcmstb_gpio_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 461, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't allocate IRQ domain\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcmstb_gpio_irq_setup\00", [41 x i8] zeroinitializer }, align 32
@brcmstb_gpio_irq_setup._entry_ptr = internal global ptr @brcmstb_gpio_irq_setup._entry, section ".printk_index", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@brcmstb_gpio_irq_setup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.5, i32 470, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Couldn't get wake IRQ - GPIOs will not be able to wake from sleep\00", [62 x i8] zeroinitializer }, align 32
@brcmstb_gpio_irq_setup._entry_ptr.28 = internal global ptr @brcmstb_gpio_irq_setup._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcmstb-gpio-wake\00", [46 x i8] zeroinitializer }, align 32
@brcmstb_gpio_irq_setup._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.5, i32 484, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't request wake IRQ\00", [38 x i8] zeroinitializer }, align 32
@brcmstb_gpio_irq_setup._entry_ptr.32 = internal global ptr @brcmstb_gpio_irq_setup._entry.30, section ".printk_index", align 4
@brcmstb_gpio_irq_map.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 86, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcmstb_gpio_irq_map\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Mapping irq %d for gpio line %d (bank %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@brcmstb_gpio_irq_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@brcmstb_gpio_irq_request_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@brcmstb_gpio_priv_set_wake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 238, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to %s wake-up interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"brcmstb_gpio_priv_set_wake\00", [37 x i8] zeroinitializer }, align 32
@brcmstb_gpio_priv_set_wake._entry_ptr = internal global ptr @brcmstb_gpio_priv_set_wake._entry, section ".printk_index", align 4
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@brcmstb_gpio_irq_bank_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 286, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"IRQ for invalid GPIO (bank=%d, offset=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"brcmstb_gpio_irq_bank_handler\00", [34 x i8] zeroinitializer }, align 32
@brcmstb_gpio_irq_bank_handler._entry_ptr = internal global ptr @brcmstb_gpio_irq_bank_handler._entry, section ".printk_index", align 4
@brcmstb_gpio_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 391, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"called %s without drvdata!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcmstb_gpio_remove\00", [44 x i8] zeroinitializer }, align 32
@brcmstb_gpio_remove._entry_ptr = internal global ptr @brcmstb_gpio_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"brcmstb_gpio_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 769, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 771, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"brcmstb_gpio_of_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 762, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"brcmstb_gpio_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 600, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"gpio_base\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 617, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 636, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 659, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 669, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 685, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 702, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 707, i32 47 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 728, i32 9 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 730, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 736, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 376, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 437, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [28 x i8] c"brcmstb_gpio_irq_domain_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 361, i32 36 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 461, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 465, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 469, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 481, i32 13 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 484, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 343, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [28 x i8] c"brcmstb_gpio_irq_lock_class\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 327, i32 30 }
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"brcmstb_gpio_irq_request_class\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 328, i32 30 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 237, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 284, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [31 x i8] c"../drivers/gpio/gpio-brcmstb.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 391, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_brcmstb_gpio_driver_exit, ptr @__initcall__kmod_gpio_brcmstb__230_779_brcmstb_gpio_driver_init6, ptr @brcmstb_gpio_driver_exit, ptr @brcmstb_gpio_irq_bank_handler._entry, ptr @brcmstb_gpio_irq_bank_handler._entry_ptr, ptr @brcmstb_gpio_irq_setup._entry, ptr @brcmstb_gpio_irq_setup._entry.26, ptr @brcmstb_gpio_irq_setup._entry.30, ptr @brcmstb_gpio_irq_setup._entry_ptr, ptr @brcmstb_gpio_irq_setup._entry_ptr.28, ptr @brcmstb_gpio_irq_setup._entry_ptr.32, ptr @brcmstb_gpio_of_xlate._entry, ptr @brcmstb_gpio_of_xlate._entry_ptr, ptr @brcmstb_gpio_priv_set_wake._entry, ptr @brcmstb_gpio_priv_set_wake._entry_ptr, ptr @brcmstb_gpio_probe._entry, ptr @brcmstb_gpio_probe._entry.10, ptr @brcmstb_gpio_probe._entry.14, ptr @brcmstb_gpio_probe._entry_ptr, ptr @brcmstb_gpio_probe._entry_ptr.12, ptr @brcmstb_gpio_probe._entry_ptr.16, ptr @brcmstb_gpio_remove._entry, ptr @brcmstb_gpio_remove._entry_ptr, ptr @brcmstb_gpio_sanity_check_banks._entry, ptr @brcmstb_gpio_sanity_check_banks._entry_ptr, ptr @brcmstb_gpio_driver, ptr @.str, ptr @brcmstb_gpio_of_match, ptr @brcmstb_gpio_pm_ops, ptr @brcmstb_gpio_probe.gpio_base, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @brcmstb_gpio_probe.lock_key, ptr @brcmstb_gpio_probe.request_key, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @brcmstb_gpio_of_xlate._rs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @brcmstb_gpio_irq_domain_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @brcmstb_gpio_irq_lock_class, ptr @brcmstb_gpio_irq_request_class, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_probe.gpio_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_sanity_check_banks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_of_xlate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_irq_setup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_irq_setup._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_irq_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_irq_request_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_priv_set_wake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_irq_bank_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gpio_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bank_width = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank_width) #6
  %2 = ptrtoint ptr %bank_width to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bank_width, align 4, !annotation !118
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 172, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup142_crit_edge, label %if.end

entry.cleanup142_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %prev.i, align 4
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call3 to i32
  br label %cleanup142

if.end7:                                          ; preds = %if.end
  %7 = load i32, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %gpio_base = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %gpio_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %gpio_base, align 4
  %reg_base8 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %reg_base8, align 4
  %pdev9 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdev9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdev, ptr %pdev9, align 4
  %call.i245 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i245, null
  br i1 %tobool.i.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end7
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %parent_irq = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %parent_irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call12, ptr %parent_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp = icmp slt i32 %call12, 1
  br i1 %cmp, label %if.then11.cleanup142_crit_edge, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then11.cleanup142_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %parent_irq16 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %parent_irq16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2, ptr %parent_irq16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then11.if.end17_crit_edge
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i.i, align 4
  %15 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call2, align 4
  %sub.i.i = add i32 %14, 1
  %add.i.i = sub i32 %sub.i.i, %16
  %div5.i = lshr i32 %add.i.i, 5
  %call.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %div5.i, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %div5.i, %call.i.i
  br i1 %cmp.not.i, label %if.end21, label %brcmstb_gpio_sanity_check_banks.exit

brcmstb_gpio_sanity_check_banks.exit:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %div5.i, i32 noundef %call.i.i) #9
  br label %cleanup142

if.end21:                                         ; preds = %if.end17
  %call22 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %call23 = call ptr @of_prop_next_u32(ptr noundef %call22, ptr noundef null, ptr noundef nonnull %bank_width) #6
  %tobool24.not274 = icmp eq ptr %call23, null
  br i1 %tobool24.not274, label %if.end21.for.end_crit_edge, label %for.body.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %parent_irq68 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %need_wakeup_event.0.off0277 = phi i1 [ false, %for.body.lr.ph ], [ %need_wakeup_event.1.off0, %for.inc.for.body_crit_edge ]
  %num_banks.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %num_banks.1, %for.inc.for.body_crit_edge ]
  %p.0275 = phi ptr [ %call23, %for.body.lr.ph ], [ %call125, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %bank_width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bank_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25 = icmp eq i32 %18, 0
  br i1 %cmp25, label %do.body, label %if.end34

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_gpio_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_gpio_probe, %do.end)) #6
          to label %if.then32 [label %do.end], !srcloc !119

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_gpio_probe.__UNIQUE_ID_ddebug228, ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %num_banks.0276) #6
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %19 = load i32, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %add = add i32 %19, 32
  store i32 %add, ptr @brcmstb_gpio_probe.gpio_base, align 4
  br label %for.inc

if.end34:                                         ; preds = %for.body
  %call.i247 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 400, i32 noundef 3520) #6
  %tobool36.not = icmp eq ptr %call.i247, null
  br i1 %tobool36.not, label %if.end34.fail_crit_edge, label %if.end38

if.end34.fail_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end38:                                         ; preds = %if.end34
  %parent_priv = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 3
  %20 = ptrtoint ptr %parent_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %parent_priv, align 4
  %id = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %num_banks.0276, ptr %id, align 4
  %22 = ptrtoint ptr %bank_width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bank_width, align 4
  %24 = add i32 %23, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %24)
  %25 = icmp ult i32 %24, -32
  br i1 %25, label %do.end44, label %if.else45

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %23) #9
  br label %fail

if.else45:                                        ; preds = %if.end38
  %width = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 4
  %26 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %width, align 4
  %gc47 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 2
  %mul = shl i32 %num_banks.0276, 5
  %add49 = or i32 %mul, 4
  %add.ptr = getelementptr i8, ptr %call3, i32 %add49
  %add52 = or i32 %mul, 8
  %add.ptr53 = getelementptr i8, ptr %call3, i32 %add52
  %call54 = call i32 @bgpio_init(ptr noundef %gc47, ptr noundef %dev1, i32 noundef 4, ptr noundef %add.ptr, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %add.ptr53, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end60, label %do.end59

do.end59:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %fail

if.end60:                                         ; preds = %if.else45
  %owner = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %owner, align 4
  %call61 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.13, ptr noundef %1) #6
  %28 = ptrtoint ptr %gc47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call61, ptr %gc47, align 4
  %tobool63.not = icmp eq ptr %call61, null
  br i1 %tobool63.not, label %if.end60.fail_crit_edge, label %if.end65

if.end60.fail_crit_edge:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end65:                                         ; preds = %if.end60
  %29 = load i32, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %base = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 2, i32 19
  %30 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %base, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 2, i32 40
  %31 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %of_xlate = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 2, i32 41
  %32 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @brcmstb_gpio_of_xlate, ptr %of_xlate, align 4
  %ngpio = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 2, i32 20
  %33 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 32, ptr %ngpio, align 4
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  %.tr = trunc i32 %35 to i16
  %conv = shl i16 %.tr, 5
  %offset = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 2, i32 21
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv, ptr %offset, align 2
  %37 = ptrtoint ptr %parent_irq68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %parent_irq68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp69 = icmp sgt i32 %38, 0
  br i1 %cmp69, label %if.then71, label %if.end65.if.end72_crit_edge

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %to_irq = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 2, i32 15
  %39 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @brcmstb_gpio_to_irq, ptr %to_irq, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end65.if.end72_crit_edge
  %40 = ptrtoint ptr %parent_priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent_priv, align 4
  %reg_base1.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %reg_base1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base1.i, align 4
  %read_reg.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 2, i32 24
  %44 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_reg.i, align 4
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  %mul.i = shl i32 %47, 5
  %add.i = or i32 %mul.i, 28
  %add.ptr.i = getelementptr i8, ptr %43, i32 %add.i
  %call.i248 = call i32 %45(ptr noundef %add.ptr.i) #6
  %48 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_reg.i, align 4
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  %mul5.i = shl i32 %51, 5
  %add6.i = or i32 %mul5.i, 20
  %add.ptr7.i = getelementptr i8, ptr %43, i32 %add6.i
  %call8.i = call i32 %49(ptr noundef %add.ptr7.i) #6
  %and.i = and i32 %call8.i, %call.i248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool74 = icmp ne i32 %and.i, 0
  %or241 = or i1 %need_wakeup_event.0.off0277, %tobool74
  %write_reg = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i247, i32 0, i32 2, i32 25
  %52 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg, align 4
  %54 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id, align 4
  %mul84 = shl i32 %55, 5
  %add85 = or i32 %mul84, 20
  %add.ptr86 = getelementptr i8, ptr %call3, i32 %add85
  call void %53(ptr noundef %add.ptr86, i32 noundef 0) #6
  %call88 = call i32 @gpiochip_add_data_with_key(ptr noundef %gc47, ptr noundef nonnull %call.i247, ptr noundef nonnull @brcmstb_gpio_probe.lock_key, ptr noundef nonnull @brcmstb_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end95, label %do.end93

do.end93:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %57) #9
  br label %fail

if.end95:                                         ; preds = %if.end72
  %58 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ngpio, align 4
  %conv97 = zext i16 %59 to i32
  %60 = load i32, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %add98 = add i32 %60, %conv97
  store i32 %add98, ptr @brcmstb_gpio_probe.gpio_base, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_gpio_probe.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_gpio_probe, %do.end121)) #6
          to label %if.then113 [label %do.end121], !srcloc !119

if.then113:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id, align 4
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base, align 4
  %65 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ngpio, align 4
  %conv117 = zext i16 %66 to i32
  %67 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %width, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_gpio_probe.__UNIQUE_ID_ddebug229, ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %62, i32 noundef %64, i32 noundef %conv117, i32 noundef %68) #6
  br label %do.end121

do.end121:                                        ; preds = %if.then113, %if.end95
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %call.i.i249 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i247, ptr noundef %call.i, ptr noundef %70) #6
  br i1 %call.i.i249, label %if.end.i.i, label %do.end121.for.inc_crit_edge

do.end121.for.inc_crit_edge:                      ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i247, ptr %prev1.i.i, align 4
  %72 = ptrtoint ptr %call.i247 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %70, ptr %call.i247, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i247, i32 0, i32 1
  %73 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i, ptr %prev3.i.i, align 4
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %call.i247, ptr %call.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %do.end121.for.inc_crit_edge, %do.end
  %need_wakeup_event.1.off0 = phi i1 [ %need_wakeup_event.0.off0277, %do.end ], [ %or241, %do.end121.for.inc_crit_edge ], [ %or241, %if.end.i.i ]
  %num_banks.1 = add i32 %num_banks.0276, 1
  %call125 = call ptr @of_prop_next_u32(ptr noundef %call22, ptr noundef nonnull %p.0275, ptr noundef nonnull %bank_width) #6
  %tobool24.not = icmp eq ptr %call125, null
  br i1 %tobool24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge
  %need_wakeup_event.0.off0.lcssa = phi i1 [ false, %if.end21.for.end_crit_edge ], [ %need_wakeup_event.1.off0, %for.inc.for.end_crit_edge ]
  %75 = load i32, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %76 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %gpio_base, align 4
  %sub = sub i32 %75, %77
  %num_gpios = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 7
  %78 = ptrtoint ptr %num_gpios to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub, ptr %num_gpios, align 4
  %parent_irq127 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 5
  %79 = ptrtoint ptr %parent_irq127 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %parent_irq127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp128 = icmp sgt i32 %80, 0
  br i1 %cmp128, label %if.then130, label %for.end.if.end135_crit_edge

for.end.if.end135_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then130:                                       ; preds = %for.end
  %81 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %of_node, align 8
  %tobool.not.i.i.i = icmp eq ptr %82, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %82, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i.i, i32 noundef %sub, i32 noundef %sub, i32 noundef 0, ptr noundef nonnull @brcmstb_gpio_irq_domain_ops, ptr noundef %call.i) #6
  %irq_domain.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 3
  %83 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call1.i.i, ptr %irq_domain.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i, label %do.end.i250, label %if.end.i

do.end.i250:                                      ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  br label %fail

if.end.i:                                         ; preds = %if.then130
  %call.i.i251 = call ptr @of_find_property(ptr noundef %82, ptr noundef nonnull @.str.25, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i.i251, null
  br i1 %tobool.i.not.i, label %if.end.i.if.end22.i_crit_edge, label %if.then4.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then4.i:                                       ; preds = %if.end.i
  %call5.i = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  %parent_wake_irq.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 8
  %84 = ptrtoint ptr %parent_wake_irq.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call5.i, ptr %parent_wake_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i252 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i252, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %parent_wake_irq.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %parent_wake_irq.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.27) #9
  br label %if.end22.i

if.else.i:                                        ; preds = %if.then4.i
  call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #6
  %call12.i = call i32 @device_wakeup_enable(ptr noundef %dev1) #6
  %86 = ptrtoint ptr %parent_wake_irq.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %parent_wake_irq.i, align 4
  %call.i68.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %87, ptr noundef nonnull @brcmstb_gpio_wake_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.29, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %cmp15.i = icmp slt i32 %call.i68.i, 0
  br i1 %cmp15.i, label %do.end19.i, label %if.else.i.if.end22.i_crit_edge

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

do.end19.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #9
  %88 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %irq_domain.i, align 4
  call void @irq_domain_remove(ptr noundef %89) #6
  br label %fail

if.end22.i:                                       ; preds = %if.else.i.if.end22.i_crit_edge, %if.then7.i, %if.end.i.if.end22.i_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %90 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %91, null
  br i1 %tobool.not.i.i, label %if.end.i.i253, label %if.end22.i.dev_name.exit.i_crit_edge

if.end22.i.dev_name.exit.i_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i253:                                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i253, %if.end22.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %93, %if.end.i.i253 ], [ %91, %if.end22.i.dev_name.exit.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 4, i32 1
  %94 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %retval.0.i.i, ptr %name.i, align 4
  %irq_disable.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 4, i32 5
  %95 = ptrtoint ptr %irq_disable.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @brcmstb_gpio_irq_mask, ptr %irq_disable.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 4, i32 7
  %96 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @brcmstb_gpio_irq_mask, ptr %irq_mask.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 4, i32 9
  %97 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @brcmstb_gpio_irq_unmask, ptr %irq_unmask.i, align 4
  %irq_ack.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 4, i32 6
  %98 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @brcmstb_gpio_irq_ack, ptr %irq_ack.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 4, i32 13
  %99 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @brcmstb_gpio_irq_set_type, ptr %irq_set_type.i, align 4
  %parent_wake_irq29.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 8
  %100 = ptrtoint ptr %parent_wake_irq29.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %parent_wake_irq29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool30.not.i = icmp eq i32 %101, 0
  br i1 %tobool30.not.i, label %dev_name.exit.i.brcmstb_gpio_irq_setup.exit_crit_edge, label %if.then31.i

dev_name.exit.i.brcmstb_gpio_irq_setup.exit_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmstb_gpio_irq_setup.exit

if.then31.i:                                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_set_wake.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 4, i32 14
  %102 = ptrtoint ptr %irq_set_wake.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @brcmstb_gpio_irq_set_wake, ptr %irq_set_wake.i, align 4
  br label %brcmstb_gpio_irq_setup.exit

brcmstb_gpio_irq_setup.exit:                      ; preds = %if.then31.i, %dev_name.exit.i.brcmstb_gpio_irq_setup.exit_crit_edge
  %103 = ptrtoint ptr %parent_irq127 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %parent_irq127, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %104, ptr noundef nonnull @brcmstb_gpio_irq_handler, ptr noundef %call.i) #6
  %105 = ptrtoint ptr %parent_irq127 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %parent_irq127, align 4
  call void @irq_modify_status(i32 noundef %106, i32 noundef 0, i32 noundef 524288) #6
  br label %if.end135

if.end135:                                        ; preds = %brcmstb_gpio_irq_setup.exit, %for.end.if.end135_crit_edge
  %parent_wake_irq = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %call.i, i32 0, i32 8
  %107 = ptrtoint ptr %parent_wake_irq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %parent_wake_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool136.not = icmp eq i32 %108, 0
  %need_wakeup_event.0.off0.not = xor i1 %need_wakeup_event.0.off0.lcssa, true
  %brmerge = select i1 %tobool136.not, i1 true, i1 %need_wakeup_event.0.off0.not
  br i1 %brmerge, label %if.end135.cleanup142_crit_edge, label %if.then139

if.end135.cleanup142_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  call void @pm_wakeup_dev_event(ptr noundef %dev1, i32 noundef 0, i1 noundef zeroext false) #6
  br label %cleanup142

fail:                                             ; preds = %do.end19.i, %do.end.i250, %do.end93, %if.end60.fail_crit_edge, %do.end59, %do.end44, %if.end34.fail_crit_edge
  %err.2 = phi i32 [ %call88, %do.end93 ], [ %call54, %do.end59 ], [ -22, %do.end44 ], [ -6, %do.end.i250 ], [ %call.i68.i, %do.end19.i ], [ -12, %if.end34.fail_crit_edge ], [ -12, %if.end60.fail_crit_edge ]
  %call141 = call i32 @brcmstb_gpio_remove(ptr noundef %pdev)
  br label %cleanup142

cleanup142:                                       ; preds = %fail, %if.then139, %if.end135.cleanup142_crit_edge, %brcmstb_gpio_sanity_check_banks.exit, %if.then11.cleanup142_crit_edge, %if.then5, %entry.cleanup142_crit_edge
  %retval.0 = phi i32 [ %6, %if.then5 ], [ %err.2, %fail ], [ -12, %entry.cleanup142_crit_edge ], [ -2, %if.then11.cleanup142_crit_edge ], [ -22, %brcmstb_gpio_sanity_check_banks.exit ], [ 0, %if.end135.cleanup142_crit_edge ], [ 0, %if.then139 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank_width) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_remove(ptr noundef %pdev) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent_irq = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %parent_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %3, ptr noundef null, ptr noundef null) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %irq_domain = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_domain, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %for.cond.preheader

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.cond.preheader:                               ; preds = %if.end3
  %num_gpios = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %num_gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp639 = icmp sgt i32 %7, 0
  br i1 %cmp639, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %irq_find_mapping.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %offset.040 = phi i32 [ %inc, %irq_find_mapping.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %irq.i, align 4, !annotation !118
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %9, i32 noundef %offset.040, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @irq_dispose_mapping(i32 noundef %retval.0.i) #6
  %inc = add nuw nsw i32 %offset.040, 1
  %13 = ptrtoint ptr %num_gpios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_gpios, align 4
  %cmp6 = icmp slt i32 %inc, %14
  br i1 %cmp6, label %irq_find_mapping.exit.for.body_crit_edge, label %irq_find_mapping.exit.for.end_crit_edge

irq_find_mapping.exit.for.end_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

irq_find_mapping.exit.for.body_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %irq_find_mapping.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %15 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_domain, align 4
  call void @irq_domain_remove(ptr noundef %16) #6
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.end3.if.end10_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %bank.041 = load ptr, ptr %1, align 4
  %cmp13.not42 = icmp eq ptr %bank.041, %1
  br i1 %cmp13.not42, label %if.end10.cleanup_crit_edge, label %if.end10.for.body14_crit_edge

if.end10.for.body14_crit_edge:                    ; preds = %if.end10
  br label %for.body14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %if.end10.for.body14_crit_edge
  %bank.043 = phi ptr [ %bank.0, %for.body14.for.body14_crit_edge ], [ %bank.041, %if.end10.for.body14_crit_edge ]
  %gc = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.043, i32 0, i32 2
  call void @gpiochip_remove(ptr noundef %gc) #6
  %18 = ptrtoint ptr %bank.043 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bank.0 = load ptr, ptr %bank.043, align 4
  %cmp13.not = icmp eq ptr %bank.0, %1
  br i1 %cmp13.not, label %for.body14.cleanup_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.body14.cleanup_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %for.body14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_gpio_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent_irq.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %parent_irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @disable_irq(i32 noundef %3) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %bank.027.i = load ptr, ptr %1, align 4
  %cmp3.not28.i = icmp eq ptr %bank.027.i, %1
  br i1 %cmp3.not28.i, label %if.end.i.brcmstb_gpio_quiesce.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.brcmstb_gpio_quiesce.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmstb_gpio_quiesce.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %reg_base.i.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 1
  %parent_wake_irq.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank.029.i = phi ptr [ %bank.027.i, %for.body.lr.ph.i ], [ %bank.0.i, %if.end9.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %parent_wake_irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %parent_wake_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i, label %for.body.i.if.end9.i_crit_edge, label %if.then8.i

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %wake_active.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.029.i, i32 0, i32 5
  %7 = ptrtoint ptr %wake_active.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wake_active.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %for.body.i.if.end9.i_crit_edge
  %imask.0.i = phi i32 [ %8, %if.then8.i ], [ 0, %for.body.i.if.end9.i_crit_edge ]
  %write_reg.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.029.i, i32 0, i32 2, i32 25
  %9 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg.i, align 4
  %11 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i.i, align 4
  %id.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.029.i, i32 0, i32 1
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %14, 5
  %add.i = or i32 %mul.i, 20
  %add.ptr10.i = getelementptr i8, ptr %12, i32 %add.i
  tail call void %10(ptr noundef %add.ptr10.i, i32 noundef %imask.0.i) #6
  %15 = ptrtoint ptr %bank.029.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bank.0.i = load ptr, ptr %bank.029.i, align 4
  %cmp3.not.i = icmp eq ptr %bank.0.i, %1
  br i1 %cmp3.not.i, label %if.end9.i.brcmstb_gpio_quiesce.exit_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end9.i.brcmstb_gpio_quiesce.exit_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmstb_gpio_quiesce.exit

brcmstb_gpio_quiesce.exit:                        ; preds = %if.end9.i.brcmstb_gpio_quiesce.exit_crit_edge, %if.end.i.brcmstb_gpio_quiesce.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_of_xlate(ptr noundef %gc, ptr nocapture noundef readonly %gpiospec, ptr noundef writeonly %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %parent_priv.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %parent_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_priv.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 40
  %2 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %of_gpio_n_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end17, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 425, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end17:                                         ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp20 = icmp ult i32 %5, 2
  br i1 %cmp20, label %do.end36, label %if.end52, !prof !120

do.end36:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 429, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end52:                                         ; preds = %if.end17
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %gpio_base = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_base, align 4
  %sub.neg = sub i32 %11, %9
  %sub53 = add i32 %sub.neg, %7
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub53, i32 %conv)
  %.not = icmp ult i32 %sub53, %conv
  br i1 %.not, label %if.end59, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  %width = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 4
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub53, i32 %15)
  %cmp60.not = icmp ult i32 %sub53, %15
  br i1 %cmp60.not, label %if.end59.if.end81_crit_edge, label %do.body69, !prof !121

if.end59.if.end81_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

do.body69:                                        ; preds = %if.end59
  %call70 = tail call i32 @___ratelimit(ptr noundef nonnull @brcmstb_gpio_of_xlate._rs, ptr noundef nonnull @__func__.brcmstb_gpio_of_xlate) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %do.body69.if.end81_crit_edge, label %do.end75

do.body69.if.end81_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

do.end75:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %args, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %19) #9
  br label %if.end81

if.end81:                                         ; preds = %do.end75, %do.body69.if.end81_crit_edge, %if.end59.if.end81_crit_edge
  %tobool82.not = icmp eq ptr %flags, null
  br i1 %tobool82.not, label %if.end81.cleanup_crit_edge, label %if.then83

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx85 = getelementptr %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx85, align 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %if.end81.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %do.end36, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end36 ], [ -22, %if.end52.cleanup_crit_edge ], [ %sub53, %if.then83 ], [ %sub53, %if.end81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %parent_priv.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %parent_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_priv.i, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %gpio_base = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_base, align 4
  %sub = sub i32 %3, %5
  %add = add i32 %sub, %offset
  %num_gpios = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %num_gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_gpios, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp.not = icmp slt i32 %add, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq_domain = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_domain, align 4
  %call.i7 = tail call i32 @irq_create_mapping_affinity(ptr noundef %9, i32 noundef %add, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i7, %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmstb_gpio_wake_irq_handler(i32 noundef %irq, ptr noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent_wake_irq = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %parent_wake_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_wake_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq)
  %cmp.not = icmp eq i32 %1, %irq
  %spec.select = zext i1 %cmp.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %parent_priv.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %parent_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_priv.i, align 4
  %base.i.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 19
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i, align 4
  %gpio_base.i.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %gpio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_base.i.i, align 4
  %sub.neg.i.i = sub i32 %3, %7
  %sub1.i.i = add i32 %sub.neg.i.i, %9
  %shl.i = shl nuw i32 1, %sub1.i.i
  %bgpio_lock.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 34
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #6
  %read_reg.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 24
  %10 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg.i, align 4
  %reg_base.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %id.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %15, 5
  %add.i = or i32 %mul.i, 20
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add.i
  %call7.i = tail call i32 %11(ptr noundef %add.ptr.i) #6
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call7.i, %neg.i
  %write_reg.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 25
  %16 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg.i, align 4
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  %mul10.i = shl i32 %21, 5
  %add11.i = or i32 %mul10.i, 20
  %add.ptr12.i = getelementptr i8, ptr %19, i32 %add11.i
  tail call void %17(ptr noundef %add.ptr12.i, i32 noundef %and.i) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call4.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %parent_priv.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %parent_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_priv.i, align 4
  %base.i.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 19
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i, align 4
  %gpio_base.i.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %gpio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_base.i.i, align 4
  %sub.neg.i.i = sub i32 %3, %7
  %sub1.i.i = add i32 %sub.neg.i.i, %9
  %shl.i = shl nuw i32 1, %sub1.i.i
  %bgpio_lock.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 34
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #6
  %read_reg.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 24
  %10 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg.i, align 4
  %reg_base.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %id.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %15, 5
  %add.i = or i32 %mul.i, 20
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add.i
  %call7.i = tail call i32 %11(ptr noundef %add.ptr.i) #6
  %or.i = or i32 %call7.i, %shl.i
  %write_reg.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 25
  %16 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg.i, align 4
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  %mul10.i = shl i32 %21, 5
  %add11.i = or i32 %mul10.i, 20
  %add.ptr12.i = getelementptr i8, ptr %19, i32 %add11.i
  tail call void %17(ptr noundef %add.ptr12.i, i32 noundef %or.i) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call4.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_gpio_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %parent_priv = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %parent_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_priv, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %base.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 19
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  %gpio_base.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %gpio_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_base.i, align 4
  %sub.neg.i = sub i32 %5, %7
  %sub1.i = add i32 %sub.neg.i, %9
  %shl = shl nuw i32 1, %sub1.i
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg, align 4
  %reg_base = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 4
  %id = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %mul = shl i32 %15, 5
  %add = or i32 %mul, 28
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  tail call void %11(ptr noundef %add.ptr, i32 noundef %shl) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %parent_priv = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %parent_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_priv, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %base.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 19
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  %gpio_base.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %gpio_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_base.i, align 4
  %sub.neg.i = sub i32 %5, %7
  %sub1.i = add i32 %sub.neg.i, %9
  %shl = shl nuw i32 1, %sub1.i
  %10 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 8, label %entry.do.body7_crit_edge
    i32 4, label %sw.bb3
    i32 2, label %sw.bb4
    i32 1, label %sw.bb5
    i32 3, label %sw.bb6
  ]

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

do.body7:                                         ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %entry.do.body7_crit_edge
  %edge_insensitive.0 = phi i32 [ %shl, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %entry.do.body7_crit_edge ]
  %edge_config.0 = phi i32 [ 0, %sw.bb6 ], [ %shl, %sw.bb5 ], [ 0, %sw.bb4 ], [ %shl, %sw.bb3 ], [ 0, %entry.do.body7_crit_edge ]
  %level.0 = phi i32 [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ %shl, %sw.bb3 ], [ %shl, %entry.do.body7_crit_edge ]
  %bgpio_lock = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 34
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #6
  %read_reg = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 24
  %11 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg, align 4
  %reg_base = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 4
  %id = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %mul = shl i32 %16, 5
  %add = or i32 %mul, 12
  %add.ptr = getelementptr i8, ptr %14, i32 %add
  %call14 = tail call i32 %12(ptr noundef %add.ptr) #6
  %neg = xor i32 %shl, -1
  %and = and i32 %call14, %neg
  %17 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg, align 4
  %19 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base, align 4
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %mul19 = shl i32 %22, 5
  %add20 = or i32 %mul19, 16
  %add.ptr21 = getelementptr i8, ptr %20, i32 %add20
  %call22 = tail call i32 %18(ptr noundef %add.ptr21) #6
  %and24 = and i32 %call22, %neg
  %23 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_reg, align 4
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base, align 4
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %mul29 = shl i32 %28, 5
  %add30 = or i32 %mul29, 24
  %add.ptr31 = getelementptr i8, ptr %26, i32 %add30
  %call32 = tail call i32 %24(ptr noundef %add.ptr31) #6
  %and34 = and i32 %call32, %neg
  %write_reg = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 25
  %29 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg, align 4
  %31 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base, align 4
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 4
  %mul38 = shl i32 %34, 5
  %add39 = or i32 %mul38, 12
  %add.ptr40 = getelementptr i8, ptr %32, i32 %add39
  %or = or i32 %and, %edge_config.0
  tail call void %30(ptr noundef %add.ptr40, i32 noundef %or) #6
  %35 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg, align 4
  %37 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base, align 4
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  %mul45 = shl i32 %40, 5
  %add46 = or i32 %mul45, 16
  %add.ptr47 = getelementptr i8, ptr %38, i32 %add46
  %or48 = or i32 %and24, %edge_insensitive.0
  tail call void %36(ptr noundef %add.ptr47, i32 noundef %or48) #6
  %41 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg, align 4
  %43 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base, align 4
  %45 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id, align 4
  %mul53 = shl i32 %46, 5
  %add54 = or i32 %mul53, 24
  %add.ptr55 = getelementptr i8, ptr %44, i32 %add54
  %or56 = or i32 %and34, %level.0
  tail call void %42(ptr noundef %add.ptr55, i32 noundef %or56) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call10) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %parent_priv = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %parent_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_priv, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %base.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 2, i32 19
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  %gpio_base.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %gpio_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_base.i, align 4
  %sub.neg.i = sub i32 %5, %7
  %sub1.i = add i32 %sub.neg.i, %9
  %shl = shl nuw i32 1, %sub1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wake_active = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 5
  %10 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wake_active, align 4
  %or = or i32 %11, %shl
  store i32 %or, ptr %wake_active, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %shl, -1
  %wake_active3 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %call1, i32 0, i32 5
  %12 = ptrtoint ptr %wake_active3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wake_active3, align 4
  %and = and i32 %13, %neg
  store i32 %and, ptr %wake_active3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %parent_wake_irq1.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %parent_wake_irq1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parent_wake_irq1.i, align 4
  %not.tobool.not.i = xor i1 %tobool.not, true
  %..i = zext i1 %not.tobool.not.i to i32
  %call.i11.i = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef %..i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool3.not.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool3.not.i, label %if.end.brcmstb_gpio_priv_set_wake.exit_crit_edge, label %do.end.i

if.end.brcmstb_gpio_priv_set_wake.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmstb_gpio_priv_set_wake.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %cond.i = select i1 %tobool.not, ptr @.str.38, ptr @.str.37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond.i) #9
  br label %brcmstb_gpio_priv_set_wake.exit

brcmstb_gpio_priv_set_wake.exit:                  ; preds = %do.end.i, %if.end.brcmstb_gpio_priv_set_wake.exit_crit_edge
  ret i32 %call.i11.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
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
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, i1 true, i1 %tobool2.not, !prof !120
  br i1 %spec.select, label %do.body6, label %do.end11, !prof !120

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-brcmstb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #6, !srcloc !122
  unreachable

do.end11:                                         ; preds = %entry
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end11.chained_irq_enter.exit_crit_edge

do.end11.chained_irq_enter.exit_crit_edge:        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %do.end11
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

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %do.end11.chained_irq_enter.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bank.035 = load ptr, ptr %1, align 4
  %cmp.not36 = icmp eq ptr %bank.035, %1
  br i1 %cmp.not36, label %chained_irq_enter.exit.for.end_crit_edge, label %chained_irq_enter.exit.for.body_crit_edge

chained_irq_enter.exit.for.body_crit_edge:        ; preds = %chained_irq_enter.exit
  br label %for.body

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %brcmstb_gpio_irq_bank_handler.exit.for.body_crit_edge, %chained_irq_enter.exit.for.body_crit_edge
  %bank.037 = phi ptr [ %bank.0, %brcmstb_gpio_irq_bank_handler.exit.for.body_crit_edge ], [ %bank.035, %chained_irq_enter.exit.for.body_crit_edge ]
  %parent_priv.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 3
  %13 = ptrtoint ptr %parent_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent_priv.i, align 4
  %irq_domain.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_domain.i, align 4
  %base.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 2, i32 19
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base.i, align 4
  %gpio_base.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %gpio_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_base.i, align 4
  %sub.i = sub i32 %18, %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #6
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %status.i, align 4, !annotation !118
  %bgpio_lock.i.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 2, i32 34
  %read_reg.i.i.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 2, i32 24
  %id.i.i.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 1
  %width.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 4
  %pdev.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %14, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %for.body
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i.i) #6
  %22 = ptrtoint ptr %parent_priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent_priv.i, align 4
  %reg_base1.i.i.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %reg_base1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base1.i.i.i, align 4
  %26 = ptrtoint ptr %read_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_reg.i.i.i, align 4
  %28 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i.i.i, align 4
  %mul.i.i.i = shl i32 %29, 5
  %add.i.i.i = or i32 %mul.i.i.i, 28
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %add.i.i.i
  %call.i.i.i = call i32 %27(ptr noundef %add.ptr.i.i.i) #6
  %30 = ptrtoint ptr %read_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg.i.i.i, align 4
  %32 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i.i.i, align 4
  %mul5.i.i.i = shl i32 %33, 5
  %add6.i.i.i = or i32 %mul5.i.i.i, 20
  %add.ptr7.i.i.i = getelementptr i8, ptr %25, i32 %add6.i.i.i
  %call8.i.i.i = call i32 %31(ptr noundef %add.ptr7.i.i.i) #6
  %and.i.i.i = and i32 %call8.i.i.i, %call.i.i.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i.i, i32 noundef %call2.i.i) #6
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i.i.i, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i29 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i29, label %brcmstb_gpio_irq_bank_handler.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = call i32 @_find_next_bit_be(ptr noundef nonnull %status.i, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1.i)
  %cmp16.i = icmp ult i32 %call1.i, 32
  br i1 %cmp16.i, label %while.body.i.for.body.i_crit_edge, label %while.body.i.while.cond.i.backedge_crit_edge

while.body.i.while.cond.i.backedge_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.backedge

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

while.cond.i.backedge:                            ; preds = %if.end.i30.while.cond.i.backedge_crit_edge, %while.body.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

for.body.i:                                       ; preds = %if.end.i30.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %offset.017.i = phi i32 [ %call5.i, %if.end.i30.for.body.i_crit_edge ], [ %call1.i, %while.body.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.017.i, i32 %36)
  %cmp2.not.i = icmp ult i32 %offset.017.i, %36
  br i1 %cmp2.not.i, label %for.body.i.if.end.i30_crit_edge, label %do.end.i

for.body.i.if.end.i30_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i30

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %40, i32 noundef %offset.017.i) #9
  br label %if.end.i30

if.end.i30:                                       ; preds = %do.end.i, %for.body.i.if.end.i30_crit_edge
  %add.i = add i32 %sub.i, %offset.017.i
  %call3.i = call i32 @generic_handle_domain_irq(ptr noundef %16, i32 noundef %add.i) #6
  %add4.i = add nuw nsw i32 %offset.017.i, 1
  %call5.i = call i32 @_find_next_bit_be(ptr noundef nonnull %status.i, i32 noundef 32, i32 noundef %add4.i) #6
  %cmp.i = icmp ult i32 %call5.i, 32
  br i1 %cmp.i, label %if.end.i30.for.body.i_crit_edge, label %if.end.i30.while.cond.i.backedge_crit_edge

if.end.i30.while.cond.i.backedge_crit_edge:       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.backedge

if.end.i30.for.body.i_crit_edge:                  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

brcmstb_gpio_irq_bank_handler.exit:               ; preds = %while.cond.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #6
  %41 = ptrtoint ptr %bank.037 to i32
  call void @__asan_load4_noabort(i32 %41)
  %bank.0 = load ptr, ptr %bank.037, align 4
  %cmp.not = icmp eq ptr %bank.0, %1
  br i1 %cmp.not, label %brcmstb_gpio_irq_bank_handler.exit.for.end_crit_edge, label %brcmstb_gpio_irq_bank_handler.exit.for.body_crit_edge

brcmstb_gpio_irq_bank_handler.exit.for.body_crit_edge: ; preds = %brcmstb_gpio_irq_bank_handler.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

brcmstb_gpio_irq_bank_handler.exit.for.end_crit_edge: ; preds = %brcmstb_gpio_irq_bank_handler.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %brcmstb_gpio_irq_bank_handler.exit.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %42 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i32 = icmp eq ptr %43, null
  br i1 %tobool.not.i32, label %if.else.i33, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i33:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %44 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i33, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %45, %if.else.i33 ], [ %43, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_irq_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %add.i, %for.body.i.for.cond.i_crit_edge ]
  %priv.pn.i = phi ptr [ %1, %entry ], [ %bank.0.i, %for.body.i.for.cond.i_crit_edge ]
  %bank.0.in.i = getelementptr inbounds %struct.list_head, ptr %priv.pn.i, i32 0, i32 1
  %2 = ptrtoint ptr %bank.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bank.0.i = load ptr, ptr %bank.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bank.0.i, %1
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ngpio.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.0.i, i32 0, i32 2, i32 20
  %3 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %4 to i32
  %add.i = add i32 %i.0.i, %conv.i
  %cmp2.i = icmp ugt i32 %add.i, %hwirq
  br i1 %cmp2.i, label %brcmstb_gpio_hwirq_to_bank.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

brcmstb_gpio_hwirq_to_bank.exit:                  ; preds = %for.body.i
  %pdev1 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev1, align 4
  %tobool.not = icmp eq ptr %bank.0.i, null
  br i1 %tobool.not, label %brcmstb_gpio_hwirq_to_bank.exit.cleanup_crit_edge, label %do.body

brcmstb_gpio_hwirq_to_bank.exit.cleanup_crit_edge: ; preds = %brcmstb_gpio_hwirq_to_bank.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %brcmstb_gpio_hwirq_to_bank.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_gpio_irq_map.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_gpio_irq_map, %do.end)) #6
          to label %if.then7 [label %do.end], !srcloc !119

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %id = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_gpio_irq_map.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %irq, i32 noundef %hwirq, i32 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %gc = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.0.i, i32 0, i32 2
  %call9 = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %gc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__irq_set_lockdep_class(i32 noundef %irq, ptr noundef nonnull @brcmstb_gpio_irq_lock_class, ptr noundef nonnull @brcmstb_gpio_irq_request_class) #6
  %irq_chip = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef %irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end.cleanup_crit_edge, %brcmstb_gpio_hwirq_to_bank.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %brcmstb_gpio_hwirq_to_bank.exit.cleanup_crit_edge ], [ %call9, %do.end.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_gpio_irq_unmap(ptr nocapture noundef readnone %d, i32 noundef %irq) #2 align 64 {
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
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_lockdep_class(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmstb_gpio_quiesce(ptr nocapture noundef readonly %dev, i1 noundef zeroext %save) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %parent_irq = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %parent_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @disable_irq(i32 noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %bank.027 = load ptr, ptr %1, align 4
  %cmp3.not28 = icmp eq ptr %bank.027, %1
  br i1 %cmp3.not28, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %reg_base.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 1
  %parent_wake_irq = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %bank.029 = phi ptr [ %bank.027, %for.body.lr.ph ], [ %bank.0, %if.end9.for.body_crit_edge ]
  br i1 %save, label %if.then5, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 2, i32 24
  %id.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 1
  %5 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i, align 4
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %10, 5
  %add.ptr.i = getelementptr i8, ptr %8, i32 %mul.i
  %call.i = tail call i32 %6(ptr noundef %add.ptr.i) #6
  %arrayidx.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 6, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 4
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 4
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %mul.1.i = shl i32 %17, 5
  %add.1.i = or i32 %mul.1.i, 4
  %add.ptr.1.i = getelementptr i8, ptr %15, i32 %add.1.i
  %call.1.i = tail call i32 %13(ptr noundef %add.ptr.1.i) #6
  %arrayidx.1.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.1.i, ptr %arrayidx.1.i, align 4
  %19 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg.i, align 4
  %21 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i, align 4
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i, align 4
  %mul.2.i = shl i32 %24, 5
  %add.2.i = or i32 %mul.2.i, 8
  %add.ptr.2.i = getelementptr i8, ptr %22, i32 %add.2.i
  %call.2.i = tail call i32 %20(ptr noundef %add.ptr.2.i) #6
  %arrayidx.2.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.2.i, ptr %arrayidx.2.i, align 4
  %26 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_reg.i, align 4
  %28 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i, align 4
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i, align 4
  %mul.3.i = shl i32 %31, 5
  %add.3.i = or i32 %mul.3.i, 12
  %add.ptr.3.i = getelementptr i8, ptr %29, i32 %add.3.i
  %call.3.i = tail call i32 %27(ptr noundef %add.ptr.3.i) #6
  %arrayidx.3.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.3.i, ptr %arrayidx.3.i, align 4
  %33 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_reg.i, align 4
  %35 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base.i, align 4
  %37 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i, align 4
  %mul.4.i = shl i32 %38, 5
  %add.4.i = or i32 %mul.4.i, 16
  %add.ptr.4.i = getelementptr i8, ptr %36, i32 %add.4.i
  %call.4.i = tail call i32 %34(ptr noundef %add.ptr.4.i) #6
  %arrayidx.4.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 6, i32 4
  %39 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.4.i, ptr %arrayidx.4.i, align 4
  %40 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_reg.i, align 4
  %42 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i, align 4
  %44 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id.i, align 4
  %mul.5.i = shl i32 %45, 5
  %add.5.i = or i32 %mul.5.i, 20
  %add.ptr.5.i = getelementptr i8, ptr %43, i32 %add.5.i
  %call.5.i = tail call i32 %41(ptr noundef %add.ptr.5.i) #6
  %arrayidx.5.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 6, i32 5
  %46 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call.5.i, ptr %arrayidx.5.i, align 4
  %47 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_reg.i, align 4
  %49 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_base.i, align 4
  %51 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id.i, align 4
  %mul.6.i = shl i32 %52, 5
  %add.6.i = or i32 %mul.6.i, 24
  %add.ptr.6.i = getelementptr i8, ptr %50, i32 %add.6.i
  %call.6.i = tail call i32 %48(ptr noundef %add.ptr.6.i) #6
  %arrayidx.6.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 6, i32 6
  %53 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call.6.i, ptr %arrayidx.6.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body.if.end6_crit_edge
  %54 = ptrtoint ptr %parent_wake_irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %parent_wake_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool7.not = icmp eq i32 %55, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %wake_active = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 5
  %56 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wake_active, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %imask.0 = phi i32 [ %57, %if.then8 ], [ 0, %if.end6.if.end9_crit_edge ]
  %write_reg = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 2, i32 25
  %58 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_reg, align 4
  %60 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base.i, align 4
  %id = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.029, i32 0, i32 1
  %62 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id, align 4
  %mul = shl i32 %63, 5
  %add = or i32 %mul, 20
  %add.ptr10 = getelementptr i8, ptr %61, i32 %add
  tail call void %59(ptr noundef %add.ptr10, i32 noundef %imask.0) #6
  %64 = ptrtoint ptr %bank.029 to i32
  call void @__asan_load4_noabort(i32 %64)
  %bank.0 = load ptr, ptr %bank.029, align 4
  %cmp3.not = icmp eq ptr %bank.0, %1
  br i1 %cmp3.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @brcmstb_gpio_quiesce(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bank.034 = load ptr, ptr %1, align 4
  %cmp.not35 = icmp eq ptr %bank.034, %1
  br i1 %cmp.not35, label %entry.if.end_crit_edge, label %for.body.lr.ph

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph:                                   ; preds = %entry
  %reg_base.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bank.037 = phi ptr [ %bank.034, %for.body.lr.ph ], [ %bank.0, %for.body.for.body_crit_edge ]
  %need_wakeup_event.0.off036 = phi i1 [ false, %for.body.lr.ph ], [ %or30, %for.body.for.body_crit_edge ]
  %parent_priv.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 3
  %3 = ptrtoint ptr %parent_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent_priv.i, align 4
  %reg_base1.i = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %reg_base1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base1.i, align 4
  %read_reg.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 2, i32 24
  %7 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg.i, align 4
  %id.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 1
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %10, 5
  %add.i = or i32 %mul.i, 28
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add.i
  %call.i = tail call i32 %8(ptr noundef %add.ptr.i) #6
  %11 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg.i, align 4
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 4
  %mul5.i = shl i32 %14, 5
  %add6.i = or i32 %mul5.i, 20
  %add.ptr7.i = getelementptr i8, ptr %6, i32 %add6.i
  %call8.i = tail call i32 %12(ptr noundef %add.ptr7.i) #6
  %and.i = and i32 %call8.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool = icmp ne i32 %and.i, 0
  %or30 = or i1 %need_wakeup_event.0.off036, %tobool
  %write_reg.i = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 2, i32 25
  %15 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg.i, align 4
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id.i, align 4
  %mul.i32 = shl i32 %20, 5
  %add.ptr.i33 = getelementptr i8, ptr %18, i32 %mul.i32
  %arrayidx.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 6, i32 0
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  tail call void %16(ptr noundef %add.ptr.i33, i32 noundef %22) #6
  %23 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg.i, align 4
  %25 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i, align 4
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i, align 4
  %mul.1.i = shl i32 %28, 5
  %add.1.i = or i32 %mul.1.i, 4
  %add.ptr.1.i = getelementptr i8, ptr %26, i32 %add.1.i
  %arrayidx.1.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1.i, align 4
  tail call void %24(ptr noundef %add.ptr.1.i, i32 noundef %30) #6
  %31 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg.i, align 4
  %33 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base.i, align 4
  %35 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id.i, align 4
  %mul.2.i = shl i32 %36, 5
  %add.2.i = or i32 %mul.2.i, 8
  %add.ptr.2.i = getelementptr i8, ptr %34, i32 %add.2.i
  %arrayidx.2.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.2.i, align 4
  tail call void %32(ptr noundef %add.ptr.2.i, i32 noundef %38) #6
  %39 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg.i, align 4
  %41 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base.i, align 4
  %43 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id.i, align 4
  %mul.3.i = shl i32 %44, 5
  %add.3.i = or i32 %mul.3.i, 12
  %add.ptr.3.i = getelementptr i8, ptr %42, i32 %add.3.i
  %arrayidx.3.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 6, i32 3
  %45 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.3.i, align 4
  tail call void %40(ptr noundef %add.ptr.3.i, i32 noundef %46) #6
  %47 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg.i, align 4
  %49 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_base.i, align 4
  %51 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id.i, align 4
  %mul.4.i = shl i32 %52, 5
  %add.4.i = or i32 %mul.4.i, 16
  %add.ptr.4.i = getelementptr i8, ptr %50, i32 %add.4.i
  %arrayidx.4.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 6, i32 4
  %53 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.4.i, align 4
  tail call void %48(ptr noundef %add.ptr.4.i, i32 noundef %54) #6
  %55 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg.i, align 4
  %57 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_base.i, align 4
  %59 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id.i, align 4
  %mul.5.i = shl i32 %60, 5
  %add.5.i = or i32 %mul.5.i, 20
  %add.ptr.5.i = getelementptr i8, ptr %58, i32 %add.5.i
  %arrayidx.5.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 6, i32 5
  %61 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.5.i, align 4
  tail call void %56(ptr noundef %add.ptr.5.i, i32 noundef %62) #6
  %63 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_reg.i, align 4
  %65 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base.i, align 4
  %67 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id.i, align 4
  %mul.6.i = shl i32 %68, 5
  %add.6.i = or i32 %mul.6.i, 24
  %add.ptr.6.i = getelementptr i8, ptr %66, i32 %add.6.i
  %arrayidx.6.i = getelementptr %struct.brcmstb_gpio_bank, ptr %bank.037, i32 0, i32 6, i32 6
  %69 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.6.i, align 4
  tail call void %64(ptr noundef %add.ptr.6.i, i32 noundef %70) #6
  %71 = ptrtoint ptr %bank.037 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bank.0 = load ptr, ptr %bank.037, align 4
  %cmp.not = icmp eq ptr %bank.0, %1
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %phi.bo = xor i1 %or30, true
  %parent_wake_irq = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 8
  %72 = ptrtoint ptr %parent_wake_irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %parent_wake_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool12.not = icmp eq i32 %73, 0
  %brmerge = select i1 %tobool12.not, i1 true, i1 %phi.bo
  br i1 %brmerge, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pm_wakeup_dev_event(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %parent_irq = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 5
  %74 = ptrtoint ptr %parent_irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %parent_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp15 = icmp sgt i32 %75, -1
  br i1 %cmp15, label %if.then17, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @enable_irq(i32 noundef %75) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !83, !84, !86, !88, !90, !91, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_gpio_brcmstb__230_779_brcmstb_gpio_driver_init6, !1, !"__initcall__kmod_gpio_brcmstb__230_779_brcmstb_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 779, i32 1}
!2 = !{ptr @__exitcall_brcmstb_gpio_driver_exit, !1, !"__exitcall_brcmstb_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 781, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 782, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 783, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 771, i32 11}
!12 = !{ptr @brcmstb_gpio_driver, !13, !"brcmstb_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 769, i32 31}
!14 = !{ptr @brcmstb_gpio_probe.gpio_base, !15, !"gpio_base", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 617, i32 13}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 636, i32 32}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 659, i32 2}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 669, i32 4}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @brcmstb_gpio_probe.__UNIQUE_ID_ddebug228, !21, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 685, i32 4}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @brcmstb_gpio_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @brcmstb_gpio_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 702, i32 4}
!34 = !{ptr @brcmstb_gpio_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @brcmstb_gpio_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 707, i32 47}
!38 = !{ptr @brcmstb_gpio_probe.lock_key, !39, !"lock_key", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 728, i32 9}
!40 = !{ptr @brcmstb_gpio_probe.request_key, !39, !"request_key", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 730, i32 4}
!43 = !{ptr @brcmstb_gpio_probe._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @brcmstb_gpio_probe._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 736, i32 3}
!47 = !{ptr @brcmstb_gpio_probe.__UNIQUE_ID_ddebug229, !46, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 376, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @brcmstb_gpio_sanity_check_banks._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @brcmstb_gpio_sanity_check_banks._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 437, i32 3}
!55 = !{ptr @brcmstb_gpio_of_xlate._rs, !54, !"_rs", i1 false, i1 false}
!56 = !{ptr @__func__.brcmstb_gpio_of_xlate, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @brcmstb_gpio_of_xlate._entry, !54, !"_entry", i1 false, i1 false}
!60 = !{ptr @brcmstb_gpio_of_xlate._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 461, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @brcmstb_gpio_irq_setup._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @brcmstb_gpio_irq_setup._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 465, i32 32}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 469, i32 4}
!70 = !{ptr @brcmstb_gpio_irq_setup._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @brcmstb_gpio_irq_setup._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 481, i32 13}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 484, i32 5}
!76 = !{ptr @brcmstb_gpio_irq_setup._entry.30, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @brcmstb_gpio_irq_setup._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @brcmstb_gpio_irq_domain_ops, !79, !"brcmstb_gpio_irq_domain_ops", i1 false, i1 false}
!79 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 361, i32 36}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 343, i32 2}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @brcmstb_gpio_irq_map.__UNIQUE_ID_ddebug227, !81, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!84 = !{ptr @brcmstb_gpio_irq_lock_class, !85, !"brcmstb_gpio_irq_lock_class", i1 false, i1 false}
!85 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 327, i32 30}
!86 = !{ptr @brcmstb_gpio_irq_request_class, !87, !"brcmstb_gpio_irq_request_class", i1 false, i1 false}
!87 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 328, i32 30}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 237, i32 3}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @brcmstb_gpio_priv_set_wake._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @brcmstb_gpio_priv_set_wake._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 284, i32 5}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @brcmstb_gpio_irq_bank_handler._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @brcmstb_gpio_irq_bank_handler._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 391, i32 3}
!102 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @brcmstb_gpio_remove._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @brcmstb_gpio_remove._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @brcmstb_gpio_of_match, !106, !"brcmstb_gpio_of_match", i1 false, i1 false}
!106 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 762, i32 34}
!107 = !{ptr @brcmstb_gpio_pm_ops, !108, !"brcmstb_gpio_pm_ops", i1 false, i1 false}
!108 = !{!"../drivers/gpio/gpio-brcmstb.c", i32 600, i32 32}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"auto-init"}
!119 = !{i64 2148815828, i64 2148815833, i64 2148815846, i64 2148815890, i64 2148815924, i64 2148815945}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2153992049, i64 2153992541, i64 2153992086, i64 2153992142, i64 2153992176, i64 2153992200, i64 2153992241, i64 2153992262, i64 2153992290, i64 2153992324}
