; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/samsung/pinctrl-exynos.c_pt.bc'
source_filename = "../drivers/pinctrl/samsung/pinctrl-exynos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.exynos_irq_chip = type { %struct.irq_chip, i32, i32, i32, ptr, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.samsung_pinctrl_drv_data = type { %struct.list_head, ptr, ptr, i32, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.samsung_pin_bank = type { ptr, ptr, i32, i8, ptr, i8, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, %struct.raw_spinlock, [7 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.65, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.65 = type { ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.exynos_weint_data = type { i32, ptr }
%struct.exynos_muxed_weint_data = type { i32, [0 x ptr] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.exynos_eint_gpio_save = type { i32, i32, i32, i32 }
%struct.samsung_retention_ctrl = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.samsung_retention_data = type { ptr, i32, i32, ptr, ptr }
%struct.samsung_pin_bank_type = type { [6 x i8], [6 x i8] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@exynos_eint_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"irq number not available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_eint_gpio_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pinctrl/samsung/pinctrl-exynos.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_eint_gpio_init._entry_ptr = internal global ptr @exynos_eint_gpio_init._entry, section ".printk_index", align 4
@exynos_eint_gpio_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@exynos_eint_gpio_init._entry_ptr.7 = internal global ptr @exynos_eint_gpio_init._entry.5, section ".printk_index", align 4
@exynos_gpio_irq_chip = internal constant %struct.exynos_irq_chip { %struct.irq_chip { ptr null, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_ack, ptr @exynos_irq_mask, ptr null, ptr @exynos_irq_unmask, ptr null, ptr null, ptr null, ptr @exynos_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_request_resources, ptr @exynos_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, i32 1792, i32 2304, i32 2560, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@exynos_eint_irqd_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @exynos_eint_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@exynos_eint_gpio_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 313, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gpio irq domain add failed\0A\00", [36 x i8] zeroinitializer }, align 32
@exynos_eint_gpio_init._entry_ptr.10 = internal global ptr @exynos_eint_gpio_init._entry.8, section ".printk_index", align 4
@exynos_wkup_irq_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-wakeup-eint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_wkup_irq_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-wakeup-eint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_wkup_irq_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-wakeup-eint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_wkup_irq_chip }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@exynos_eint_wkup_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 566, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wkup irq domain add failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_eint_wkup_init\00", [42 x i8] zeroinitializer }, align 32
@exynos_eint_wkup_init._entry_ptr = internal global ptr @exynos_eint_wkup_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interrupts\00", [21 x i8] zeroinitializer }, align 32
@exynos_eint_wkup_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 589, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"irq number for eint-%s-%d not found\0A\00", [59 x i8] zeroinitializer }, align 32
@exynos_eint_wkup_init._entry_ptr.16 = internal global ptr @exynos_eint_wkup_init._entry.14, section ".printk_index", align 4
@exynos_eint_wkup_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 608, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"irq number for muxed EINTs not found\0A\00", [58 x i8] zeroinitializer }, align 32
@exynos_eint_wkup_init._entry_ptr.19 = internal global ptr @exynos_eint_wkup_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exynos_gpio_irq_chip\00", [43 x i8] zeroinitializer }, align 32
@exynos_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013unsupported external interrupt type\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_irq_set_type\00", [44 x i8] zeroinitializer }, align 32
@exynos_irq_set_type._entry_ptr = internal global ptr @exynos_irq_set_type._entry, section ".printk_index", align 4
@exynos_irq_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to lock pin %s-%lu IRQ\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"exynos_irq_request_resources\00", [35 x i8] zeroinitializer }, align 32
@exynos_irq_request_resources._entry_ptr = internal global ptr @exynos_irq_request_resources._entry, section ".printk_index", align 4
@s5pv210_wkup_irq_chip = internal constant %struct.exynos_irq_chip { %struct.irq_chip { ptr null, ptr @.str.25, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_ack, ptr @exynos_irq_mask, ptr null, ptr @exynos_irq_unmask, ptr null, ptr null, ptr null, ptr @exynos_irq_set_type, ptr @exynos_wkup_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_request_resources, ptr @exynos_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, i32 3584, i32 3840, i32 3904, ptr @eint_wake_mask_value, i32 49156, ptr @s5pv210_pinctrl_set_eint_wakeup_mask }, section ".init.rodata", align 4
@exynos4210_wkup_irq_chip = internal constant %struct.exynos_irq_chip { %struct.irq_chip { ptr null, ptr @.str.33, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_ack, ptr @exynos_irq_mask, ptr null, ptr @exynos_irq_unmask, ptr null, ptr null, ptr null, ptr @exynos_irq_set_type, ptr @exynos_wkup_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_request_resources, ptr @exynos_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, i32 3584, i32 3840, i32 3904, ptr @eint_wake_mask_value, i32 1540, ptr @exynos_pinctrl_set_eint_wakeup_mask }, section ".init.rodata", align 4
@exynos7_wkup_irq_chip = internal constant %struct.exynos_irq_chip { %struct.irq_chip { ptr null, ptr @.str.39, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_ack, ptr @exynos_irq_mask, ptr null, ptr @exynos_irq_unmask, ptr null, ptr null, ptr null, ptr @exynos_irq_set_type, ptr @exynos_wkup_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_request_resources, ptr @exynos_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, i32 1792, i32 2304, i32 2560, ptr @eint_wake_mask_value, i32 1548, ptr @exynos_pinctrl_set_eint_wakeup_mask }, section ".init.rodata", align 4
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5pv210_wkup_irq_chip\00", [42 x i8] zeroinitializer }, align 32
@eint_wake_mask_value = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@exynos_wkup_irq_set_wake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016wake %s for irq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"exynos_wkup_irq_set_wake\00", [39 x i8] zeroinitializer }, align 32
@exynos_wkup_irq_set_wake._entry_ptr = internal global ptr @exynos_wkup_irq_set_wake._entry, section ".printk_index", align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@s5pv210_pinctrl_set_eint_wakeup_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 387, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"No retention data configured bank with external wakeup interrupt. Wake-up mask will not be set.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"s5pv210_pinctrl_set_eint_wakeup_mask\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s5pv210_pinctrl_set_eint_wakeup_mask._entry_ptr = internal global ptr @s5pv210_pinctrl_set_eint_wakeup_mask._entry, section ".printk_index", align 4
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"exynos4210_wkup_irq_chip\00", [39 x i8] zeroinitializer }, align 32
@exynos_pinctrl_set_eint_wakeup_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.34, ptr @.str.2, i32 365, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"exynos_pinctrl_set_eint_wakeup_mask\00", [60 x i8] zeroinitializer }, align 32
@exynos_pinctrl_set_eint_wakeup_mask._entry_ptr = internal global ptr @exynos_pinctrl_set_eint_wakeup_mask._entry, section ".printk_index", align 4
@exynos_pinctrl_set_eint_wakeup_mask._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 372, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Setting external wakeup interrupt mask: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@exynos_pinctrl_set_eint_wakeup_mask._entry_ptr.38 = internal global ptr @exynos_pinctrl_set_eint_wakeup_mask._entry.35, section ".printk_index", align 4
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos7_wkup_irq_chip\00", [42 x i8] zeroinitializer }, align 32
@exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl_exynos\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"exynos_pinctrl_suspend_bank\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: save     con %#010x\0A\00", [39 x i8] zeroinitializer }, align 32
@exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 0, i8 -94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: save fltcon0 %#010x\0A\00", [39 x i8] zeroinitializer }, align 32
@exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 0, i8 -94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: save fltcon1 %#010x\0A\00", [39 x i8] zeroinitializer }, align 32
@exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.2, ptr @.str.45, i8 0, i8 -93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: save    mask %#010x\0A\00", [39 x i8] zeroinitializer }, align 32
@exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"exynos_pinctrl_resume_bank\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:     con %#010x => %#010x\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 -85, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: fltcon0 %#010x => %#010x\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 -84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: fltcon1 %#010x => %#010x\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.46, ptr @.str.2, ptr @.str.50, i8 0, i8 -83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:    mask %#010x => %#010x\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 286, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 293, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"exynos_eint_irqd_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 240, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 313, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"exynos_wkup_irq_ids\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 461, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 566, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 571, i32 40 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 588, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 608, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 212, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 135, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 162, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 404, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant [21 x i8] c"eint_wake_mask_value\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 398, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 347, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 386, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 424, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 364, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 370, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 443, i32 11 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 649, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 650, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 651, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 652, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 681, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 684, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 687, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [44 x i8] c"../drivers/pinctrl/samsung/pinctrl-exynos.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 690, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @exynos_eint_gpio_init._entry, ptr @exynos_eint_gpio_init._entry.5, ptr @exynos_eint_gpio_init._entry.8, ptr @exynos_eint_gpio_init._entry_ptr, ptr @exynos_eint_gpio_init._entry_ptr.10, ptr @exynos_eint_gpio_init._entry_ptr.7, ptr @exynos_eint_wkup_init._entry, ptr @exynos_eint_wkup_init._entry.14, ptr @exynos_eint_wkup_init._entry.17, ptr @exynos_eint_wkup_init._entry_ptr, ptr @exynos_eint_wkup_init._entry_ptr.16, ptr @exynos_eint_wkup_init._entry_ptr.19, ptr @exynos_irq_request_resources._entry, ptr @exynos_irq_request_resources._entry_ptr, ptr @exynos_irq_set_type._entry, ptr @exynos_irq_set_type._entry_ptr, ptr @exynos_pinctrl_set_eint_wakeup_mask._entry, ptr @exynos_pinctrl_set_eint_wakeup_mask._entry.35, ptr @exynos_pinctrl_set_eint_wakeup_mask._entry_ptr, ptr @exynos_pinctrl_set_eint_wakeup_mask._entry_ptr.38, ptr @exynos_wkup_irq_set_wake._entry, ptr @exynos_wkup_irq_set_wake._entry_ptr, ptr @s5pv210_pinctrl_set_eint_wakeup_mask._entry, ptr @s5pv210_pinctrl_set_eint_wakeup_mask._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @exynos_eint_irqd_ops, ptr @.str.9, ptr @exynos_wkup_irq_ids, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @eint_wake_mask_value, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_eint_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_eint_gpio_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_eint_irqd_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_eint_gpio_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_wkup_irq_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_eint_wkup_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_eint_wkup_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_eint_wkup_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_irq_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eint_wake_mask_value to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_wkup_irq_set_wake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_pinctrl_set_eint_wakeup_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pinctrl_set_eint_wakeup_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pinctrl_set_eint_wakeup_mask._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_eint_gpio_init(ptr noundef %d) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %irq = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %3, ptr noundef nonnull @exynos_eint_gpio_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %d) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end9, label %dev_name.exit.cleanup.sink.split_crit_edge

dev_name.exit.cleanup.sink.split_crit_edge:       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9:                                          ; preds = %dev_name.exit
  %nr_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 11
  %8 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp97.not = icmp eq i32 %9, 0
  br i1 %cmp97.not, label %if.end9.cleanup_crit_edge, label %for.body.preheader

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end9
  %pin_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 10
  %10 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pin_banks, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0100 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %bank.098 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %eint_type = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.098, i32 0, i32 6
  %12 = ptrtoint ptr %eint_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eint_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp10.not = icmp eq i32 %13, 1
  br i1 %cmp10.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %call13 = tail call ptr @devm_kmemdup(ptr noundef %1, ptr noundef nonnull @exynos_gpio_irq_chip, i32 noundef 160, i32 noundef 3264) #6
  %irq_chip = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.098, i32 0, i32 17
  %14 = ptrtoint ptr %irq_chip to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %irq_chip, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end12.err_domains_crit_edge, label %if.end17

if.end12.err_domains_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_domains

if.end17:                                         ; preds = %if.end12
  %name = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.098, i32 0, i32 9
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %name19 = getelementptr inbounds %struct.irq_chip, ptr %call13, i32 0, i32 1
  %17 = ptrtoint ptr %name19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %name19, align 4
  %of_node = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.098, i32 0, i32 12
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 4
  %nr_pins = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.098, i32 0, i32 3
  %20 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nr_pins, align 4
  %conv = zext i8 %21 to i32
  %tobool.not.i.i = icmp eq ptr %19, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %conv, i32 noundef %conv, i32 noundef 0, ptr noundef nonnull @exynos_eint_irqd_ops, ptr noundef %bank.098) #6
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.098, i32 0, i32 14
  %22 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool22.not = icmp eq ptr %call1.i, null
  br i1 %tobool22.not, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #9
  br label %err_domains

if.end27:                                         ; preds = %if.end17
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %call.i86 = tail call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef 16, i32 noundef 3520) #6
  %soc_priv = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.098, i32 0, i32 11
  %25 = ptrtoint ptr %soc_priv to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i86, ptr %soc_priv, align 4
  %tobool31.not = icmp eq ptr %call.i86, null
  br i1 %tobool31.not, label %if.then32, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %irq_domain.le = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.098, i32 0, i32 14
  %26 = ptrtoint ptr %irq_domain.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_domain.le, align 4
  tail call void @irq_domain_remove(ptr noundef %27) #6
  br label %err_domains

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0100, 1
  %incdec.ptr = getelementptr %struct.samsung_pin_bank, ptr %bank.098, i32 1
  %28 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_banks, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

err_domains:                                      ; preds = %if.then32, %do.end26, %if.end12.err_domains_crit_edge
  %ret.0 = phi i32 [ -12, %if.then32 ], [ -6, %do.end26 ], [ -12, %if.end12.err_domains_crit_edge ]
  %i.1102 = add i32 %i.0100, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1102)
  %cmp37104 = icmp sgt i32 %i.1102, -1
  br i1 %cmp37104, label %err_domains.for.body39_crit_edge, label %err_domains.cleanup_crit_edge

err_domains.cleanup_crit_edge:                    ; preds = %err_domains
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_domains.for.body39_crit_edge:                 ; preds = %err_domains
  br label %for.body39

for.body39:                                       ; preds = %for.inc46.for.body39_crit_edge, %err_domains.for.body39_crit_edge
  %i.1106 = phi i32 [ %i.1, %for.inc46.for.body39_crit_edge ], [ %i.1102, %err_domains.for.body39_crit_edge ]
  %bank.0.pn105 = phi ptr [ %bank.1107, %for.inc46.for.body39_crit_edge ], [ %bank.098, %err_domains.for.body39_crit_edge ]
  %bank.1107 = getelementptr %struct.samsung_pin_bank, ptr %bank.0.pn105, i32 -1
  %eint_type40 = getelementptr %struct.samsung_pin_bank, ptr %bank.0.pn105, i32 -1, i32 6
  %30 = ptrtoint ptr %eint_type40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %eint_type40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp41.not = icmp eq i32 %31, 1
  br i1 %cmp41.not, label %if.end44, label %for.body39.for.inc46_crit_edge

for.body39.for.inc46_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46

if.end44:                                         ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  %irq_domain45 = getelementptr %struct.samsung_pin_bank, ptr %bank.0.pn105, i32 -1, i32 14
  %32 = ptrtoint ptr %irq_domain45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_domain45, align 4
  tail call void @irq_domain_remove(ptr noundef %33) #6
  br label %for.inc46

for.inc46:                                        ; preds = %if.end44, %for.body39.for.inc46_crit_edge
  %i.1 = add i32 %i.1106, -1
  %cmp37 = icmp sgt i32 %i.1, -1
  br i1 %cmp37, label %for.inc46.for.body39_crit_edge, label %for.inc46.cleanup_crit_edge

for.inc46.cleanup_crit_edge:                      ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc46.for.body39_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

cleanup.sink.split:                               ; preds = %dev_name.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.6, %dev_name.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ -6, %dev_name.exit.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %.str.6.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc46.cleanup_crit_edge, %err_domains.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_domains.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %ret.0, %for.inc46.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_eint_gpio_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_banks, align 4
  %eint_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eint_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2824
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %shr = lshr i32 %5, 3
  %and = and i32 %shr, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and2 = and i32 %5, 7
  %sub = add nsw i32 %and, -1
  %irq_domain = getelementptr %struct.samsung_pin_bank, ptr %1, i32 %sub, i32 14
  %6 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_domain, align 4
  %call4 = tail call i32 @generic_handle_domain_irq(ptr noundef %7, i32 noundef %and2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %. = zext i1 %tobool5.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_eint_wkup_init(ptr nocapture noundef readonly %d) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #6
  %cmp.not190 = icmp eq ptr %call, null
  br i1 %cmp.not190, label %entry.cleanup97_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup97_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.0191 = phi ptr [ %call4, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call2 = tail call ptr @of_match_node(ptr noundef nonnull @exynos_wkup_irq_ids, ptr noundef nonnull %np.0191) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.inc, label %if.end7

for.inc:                                          ; preds = %for.body
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %np.0191) #6
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %for.inc.cleanup97_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup97_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

if.end7:                                          ; preds = %for.body
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %pin_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 10
  %nr_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 11
  %8 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9196.not = icmp eq i32 %9, 0
  br i1 %cmp9196.not, label %if.end7.if.then66_crit_edge, label %for.body10.preheader

if.end7.if.then66_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then66

for.body10.preheader:                             ; preds = %if.end7
  %10 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pin_banks, align 4
  br label %for.body10

for.body10:                                       ; preds = %for.inc62.for.body10_crit_edge, %for.body10.preheader
  %i.0201 = phi i32 [ %inc63, %for.inc62.for.body10_crit_edge ], [ 0, %for.body10.preheader ]
  %muxed_banks.0200 = phi i32 [ %muxed_banks.1, %for.inc62.for.body10_crit_edge ], [ 0, %for.body10.preheader ]
  %bank.0197 = phi ptr [ %incdec.ptr, %for.inc62.for.body10_crit_edge ], [ %11, %for.body10.preheader ]
  %eint_type = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0197, i32 0, i32 6
  %12 = ptrtoint ptr %eint_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eint_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp11.not = icmp eq i32 %13, 2
  br i1 %cmp11.not, label %if.end13, label %for.body10.for.inc62_crit_edge

for.body10.for.inc62_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

if.end13:                                         ; preds = %for.body10
  %call14 = tail call ptr @devm_kmemdup(ptr noundef %1, ptr noundef %7, i32 noundef 160, i32 noundef 3264) #6
  %irq_chip15 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0197, i32 0, i32 17
  %14 = ptrtoint ptr %irq_chip15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call14, ptr %irq_chip15, align 4
  %tobool17.not = icmp eq ptr %call14, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %np.0191) #6
  br label %cleanup97

if.end19:                                         ; preds = %if.end13
  %name = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0197, i32 0, i32 9
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %name21 = getelementptr inbounds %struct.irq_chip, ptr %call14, i32 0, i32 1
  %17 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %name21, align 4
  %of_node22 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0197, i32 0, i32 12
  %18 = ptrtoint ptr %of_node22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node22, align 4
  %nr_pins = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0197, i32 0, i32 3
  %20 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nr_pins, align 4
  %conv = zext i8 %21 to i32
  %tobool.not.i.i = icmp eq ptr %19, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %conv, i32 noundef %conv, i32 noundef 0, ptr noundef nonnull @exynos_eint_irqd_ops, ptr noundef %bank.0197) #6
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0197, i32 0, i32 14
  %22 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool25.not = icmp eq ptr %call1.i, null
  br i1 %tobool25.not, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11) #9
  tail call void @of_node_put(ptr noundef nonnull %np.0191) #6
  br label %cleanup97

if.end27:                                         ; preds = %if.end19
  %23 = ptrtoint ptr %of_node22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node22, align 4
  %call29 = tail call ptr @of_find_property(ptr noundef %24, ptr noundef nonnull @.str.13, ptr noundef null) #6
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then31, label %devm_kcalloc.exit

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %eint_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %eint_type, align 4
  %inc = add i32 %muxed_banks.0200, 1
  br label %for.inc62

devm_kcalloc.exit:                                ; preds = %if.end27
  %26 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nr_pins, align 4
  %conv35 = zext i8 %27 to i32
  %28 = shl nuw nsw i32 %conv35, 3
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %28, i32 noundef 3520) #6
  %tobool37.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool37.not, label %if.then38, label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %devm_kcalloc.exit
  %29 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nr_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp43193.not = icmp eq i8 %30, 0
  br i1 %cmp43193.not, label %for.cond40.preheader.for.inc62_crit_edge, label %for.cond40.preheader.for.body45_crit_edge

for.cond40.preheader.for.body45_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body45

for.cond40.preheader.for.inc62_crit_edge:         ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

if.then38:                                        ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %np.0191) #6
  br label %cleanup97

for.body45:                                       ; preds = %for.inc59.for.body45_crit_edge, %for.cond40.preheader.for.body45_crit_edge
  %idx.0194 = phi i32 [ %inc60, %for.inc59.for.body45_crit_edge ], [ 0, %for.cond40.preheader.for.body45_crit_edge ]
  %31 = ptrtoint ptr %of_node22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node22, align 4
  %call47 = tail call i32 @irq_of_parse_and_map(ptr noundef %32, i32 noundef %idx.0194) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.end52, label %if.end54

do.end52:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef %34, i32 noundef %idx.0194) #9
  br label %for.inc59

if.end54:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.exynos_weint_data, ptr %call5.i.i, i32 %idx.0194
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %idx.0194, ptr %arrayidx, align 4
  %bank57 = getelementptr %struct.exynos_weint_data, ptr %call5.i.i, i32 %idx.0194, i32 1
  %36 = ptrtoint ptr %bank57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %bank.0197, ptr %bank57, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call47, ptr noundef nonnull @exynos_irq_eint0_15, ptr noundef %arrayidx) #6
  br label %for.inc59

for.inc59:                                        ; preds = %if.end54, %do.end52
  %inc60 = add nuw nsw i32 %idx.0194, 1
  %37 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nr_pins, align 4
  %conv42 = zext i8 %38 to i32
  %cmp43 = icmp ult i32 %inc60, %conv42
  br i1 %cmp43, label %for.inc59.for.body45_crit_edge, label %for.inc59.for.inc62_crit_edge

for.inc59.for.inc62_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

for.inc59.for.body45_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45

for.inc62:                                        ; preds = %for.inc59.for.inc62_crit_edge, %for.cond40.preheader.for.inc62_crit_edge, %if.then31, %for.body10.for.inc62_crit_edge
  %muxed_banks.1 = phi i32 [ %muxed_banks.0200, %for.body10.for.inc62_crit_edge ], [ %inc, %if.then31 ], [ %muxed_banks.0200, %for.cond40.preheader.for.inc62_crit_edge ], [ %muxed_banks.0200, %for.inc59.for.inc62_crit_edge ]
  %inc63 = add nuw i32 %i.0201, 1
  %incdec.ptr = getelementptr %struct.samsung_pin_bank, ptr %bank.0197, i32 1
  %39 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_banks, align 4
  %cmp9 = icmp ult i32 %inc63, %40
  br i1 %cmp9, label %for.inc62.for.body10_crit_edge, label %for.end64

for.inc62.for.body10_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10

for.end64:                                        ; preds = %for.inc62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %muxed_banks.1)
  %tobool65.not = icmp eq i32 %muxed_banks.1, 0
  br i1 %tobool65.not, label %for.end64.if.then66_crit_edge, label %if.end67

for.end64.if.then66_crit_edge:                    ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then66

if.then66:                                        ; preds = %for.end64.if.then66_crit_edge, %if.end7.if.then66_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %np.0191) #6
  br label %cleanup97

if.end67:                                         ; preds = %for.end64
  %call68 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0191, i32 noundef 0) #6
  tail call void @of_node_put(ptr noundef nonnull %np.0191) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.end73, label %if.end74

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.18) #9
  br label %cleanup97

if.end74:                                         ; preds = %if.end67
  %mul = shl i32 %muxed_banks.1, 2
  %add = add i32 %mul, 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %add, i32 noundef 3520) #6
  %tobool76.not = icmp eq ptr %call.i, null
  br i1 %tobool76.not, label %if.end74.cleanup97_crit_edge, label %if.end78

if.end74.cleanup97_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

if.end78:                                         ; preds = %if.end74
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call68, ptr noundef nonnull @exynos_irq_demux_eint16_31, ptr noundef nonnull %call.i) #6
  %41 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp82202.not = icmp eq i32 %42, 0
  br i1 %cmp82202.not, label %if.end78.for.end95_crit_edge, label %for.body84.preheader

if.end78.for.end95_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end95

for.body84.preheader:                             ; preds = %if.end78
  %43 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pin_banks, align 4
  br label %for.body84

for.body84:                                       ; preds = %for.inc92.for.body84_crit_edge, %for.body84.preheader
  %idx.1206 = phi i32 [ %idx.2, %for.inc92.for.body84_crit_edge ], [ 0, %for.body84.preheader ]
  %i.1205 = phi i32 [ %inc93, %for.inc92.for.body84_crit_edge ], [ 0, %for.body84.preheader ]
  %bank.1203 = phi ptr [ %incdec.ptr94, %for.inc92.for.body84_crit_edge ], [ %44, %for.body84.preheader ]
  %eint_type85 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.1203, i32 0, i32 6
  %45 = ptrtoint ptr %eint_type85 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eint_type85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp86.not = icmp eq i32 %46, 3
  br i1 %cmp86.not, label %if.end89, label %for.body84.for.inc92_crit_edge

for.body84.for.inc92_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc92

if.end89:                                         ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #8
  %inc90 = add i32 %idx.1206, 1
  %arrayidx91 = getelementptr %struct.exynos_muxed_weint_data, ptr %call.i, i32 0, i32 1, i32 %idx.1206
  %47 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %bank.1203, ptr %arrayidx91, align 4
  br label %for.inc92

for.inc92:                                        ; preds = %if.end89, %for.body84.for.inc92_crit_edge
  %idx.2 = phi i32 [ %idx.1206, %for.body84.for.inc92_crit_edge ], [ %inc90, %if.end89 ]
  %inc93 = add nuw i32 %i.1205, 1
  %incdec.ptr94 = getelementptr %struct.samsung_pin_bank, ptr %bank.1203, i32 1
  %exitcond.not = icmp eq i32 %inc93, %42
  br i1 %exitcond.not, label %for.inc92.for.end95_crit_edge, label %for.inc92.for.body84_crit_edge

for.inc92.for.body84_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body84

for.inc92.for.end95_crit_edge:                    ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end95

for.end95:                                        ; preds = %for.inc92.for.end95_crit_edge, %if.end78.for.end95_crit_edge
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %muxed_banks.1, ptr %call.i, align 4
  br label %cleanup97

cleanup97:                                        ; preds = %for.end95, %if.end74.cleanup97_crit_edge, %do.end73, %if.then66, %if.then38, %do.end, %if.then18, %for.inc.cleanup97_crit_edge, %entry.cleanup97_crit_edge
  %retval.0 = phi i32 [ -12, %if.then38 ], [ -6, %do.end ], [ -12, %if.then18 ], [ 0, %for.end95 ], [ 0, %do.end73 ], [ 0, %if.then66 ], [ -12, %if.end74.cleanup97_crit_edge ], [ -19, %entry.cleanup97_crit_edge ], [ -19, %for.inc.cleanup97_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_irq_eint0_15(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %bank1 = getelementptr inbounds %struct.exynos_weint_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bank1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank1, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_domain, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %call3 = tail call i32 @generic_handle_domain_irq(ptr noundef %15, i32 noundef %17) #6
  %18 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i10 = icmp eq ptr %19, null
  br i1 %tobool.not.i10, label %if.else.i11, label %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge

chained_irq_enter.exit.chained_irq_exit.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i11:                                      ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %20 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i11, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %21, %if.else.i11 ], [ %19, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_irq_demux_eint16_31(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
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
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
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
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp33.not = icmp eq i32 %13, 0
  br i1 %cmp33.not, label %chained_irq_enter.exit.for.end_crit_edge, label %chained_irq_enter.exit.for.body_crit_edge

chained_irq_enter.exit.for.body_crit_edge:        ; preds = %chained_irq_enter.exit
  br label %for.body

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %exynos_irq_demux_eint.exit.for.body_crit_edge, %chained_irq_enter.exit.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %exynos_irq_demux_eint.exit.for.body_crit_edge ], [ 0, %chained_irq_enter.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.exynos_muxed_weint_data, ptr %3, i32 0, i32 1, i32 %i.034
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %eint_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eint_base, align 4
  %irq_chip = getelementptr inbounds %struct.samsung_pin_bank, ptr %15, i32 0, i32 17
  %18 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_chip, align 4
  %eint_pend = getelementptr inbounds %struct.exynos_irq_chip, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %eint_pend to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eint_pend, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %21
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %15, i32 0, i32 8
  %22 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eint_offset, align 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %25 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %eint_base, align 4
  %27 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_chip, align 4
  %eint_mask = getelementptr inbounds %struct.exynos_irq_chip, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %eint_mask, align 4
  %add.ptr9 = getelementptr i8, ptr %26, i32 %30
  %31 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %eint_offset, align 4
  %add.ptr11 = getelementptr i8, ptr %add.ptr9, i32 %32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %34 = xor i32 %33, -1
  %35 = and i32 %24, %34
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %15, i32 0, i32 14
  %36 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %irq_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not5.i = icmp eq i32 %35, 0
  br i1 %tobool.not5.i, label %for.body.exynos_irq_demux_eint.exit_crit_edge, label %while.body.i.preheader

for.body.exynos_irq_demux_eint.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_irq_demux_eint.exit

while.body.i.preheader:                           ; preds = %for.body
  %38 = tail call i32 @llvm.bswap.i32(i32 %35)
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %pend.addr.06.i = phi i32 [ %and.i, %while.body.i.while.body.i_crit_edge ], [ %38, %while.body.i.preheader ]
  %39 = tail call i32 @llvm.ctlz.i32(i32 %pend.addr.06.i, i1 true) #6, !range !125
  %sub.i = xor i32 %39, 31
  %call1.i = tail call i32 @generic_handle_domain_irq(ptr noundef %37, i32 noundef %sub.i) #6
  %shl.i = shl nuw i32 1, %sub.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %pend.addr.06.i, %neg.i
  %tobool.not.i28 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i28, label %while.body.i.exynos_irq_demux_eint.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.exynos_irq_demux_eint.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_irq_demux_eint.exit

exynos_irq_demux_eint.exit:                       ; preds = %while.body.i.exynos_irq_demux_eint.exit_crit_edge, %for.body.exynos_irq_demux_eint.exit_crit_edge
  %inc = add nuw i32 %i.034, 1
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %exynos_irq_demux_eint.exit.for.body_crit_edge, label %exynos_irq_demux_eint.exit.for.end_crit_edge

exynos_irq_demux_eint.exit.for.end_crit_edge:     ; preds = %exynos_irq_demux_eint.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

exynos_irq_demux_eint.exit.for.body_crit_edge:    ; preds = %exynos_irq_demux_eint.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %exynos_irq_demux_eint.exit.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %42 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i30 = icmp eq ptr %43, null
  br i1 %tobool.not.i30, label %if.else.i31, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i31:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %44 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i31, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %45, %if.else.i31 ], [ %43, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_pinctrl_suspend(ptr noundef %drvdata) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 11
  %0 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %pin_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 10
  %2 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_banks, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %irq_chip.022 = phi ptr [ %irq_chip.1, %for.inc.for.body_crit_edge ], [ null, %for.body.preheader ]
  %bank.020 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %eint_type = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.020, i32 0, i32 6
  %4 = ptrtoint ptr %eint_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %for.body.for.inc_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then4
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @exynos_pinctrl_suspend_bank(ptr noundef %bank.020)
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %tobool.not = icmp eq ptr %irq_chip.022, null
  br i1 %tobool.not, label %if.then5, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %irq_chip6 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.020, i32 0, i32 17
  %7 = ptrtoint ptr %irq_chip6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_chip6, align 4
  %set_eint_wakeup_mask = getelementptr inbounds %struct.exynos_irq_chip, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %set_eint_wakeup_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_eint_wakeup_mask, align 4
  tail call void %10(ptr noundef %drvdata, ptr noundef %8) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.then4.for.inc_crit_edge, %if.then, %for.body.for.inc_crit_edge
  %irq_chip.1 = phi ptr [ %irq_chip.022, %if.then ], [ %irq_chip.022, %if.then4.for.inc_crit_edge ], [ %8, %if.then5 ], [ %irq_chip.022, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.023, 1
  %incdec.ptr = getelementptr %struct.samsung_pin_bank, ptr %bank.020, i32 1
  %11 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_banks, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_pinctrl_suspend_bank(ptr nocapture noundef readonly %bank) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_priv = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 11
  %0 = ptrtoint ptr %soc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_priv, align 4
  %eint_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 4
  %2 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eint_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1792
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 8
  %4 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_offset, align 4
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !121
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 2048
  %9 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eint_offset, align 4
  %mul = shl i32 %10, 1
  %add.ptr7 = getelementptr i8, ptr %add.ptr5, i32 %mul
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !121
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %eint_fltcon0 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %eint_fltcon0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %eint_fltcon0, align 4
  %14 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eint_offset, align 4
  %mul15 = shl i32 %15, 1
  %add.ptr16 = getelementptr i8, ptr %add.ptr5, i32 %mul15
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #6, !srcloc !121
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %eint_fltcon1 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %eint_fltcon1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %eint_fltcon1, align 4
  %irq_chip = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 17
  %19 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_chip, align 4
  %eint_mask = getelementptr inbounds %struct.exynos_irq_chip, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eint_mask, align 4
  %add.ptr23 = getelementptr i8, ptr %3, i32 %22
  %23 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %eint_offset, align 4
  %add.ptr25 = getelementptr i8, ptr %add.ptr23, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #6, !srcloc !121
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  %eint_mask29 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %eint_mask29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %eint_mask29, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos_pinctrl_suspend_bank, %do.body36)) #6
          to label %if.then [label %do.body36], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 9
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.42, ptr noundef %29, i32 noundef %31) #6
  br label %do.body36

do.body36:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos_pinctrl_suspend_bank, %do.body56)) #6
          to label %if.then50 [label %do.body56], !srcloc !130

if.then50:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %name51 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 9
  %32 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name51, align 4
  %34 = ptrtoint ptr %eint_fltcon0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %eint_fltcon0, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.43, ptr noundef %33, i32 noundef %35) #6
  br label %do.body56

do.body56:                                        ; preds = %if.then50, %do.body36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos_pinctrl_suspend_bank, %do.body76)) #6
          to label %if.then70 [label %do.body76], !srcloc !130

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  %name71 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 9
  %36 = ptrtoint ptr %name71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name71, align 4
  %38 = ptrtoint ptr %eint_fltcon1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eint_fltcon1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.44, ptr noundef %37, i32 noundef %39) #6
  br label %do.body76

do.body76:                                        ; preds = %if.then70, %do.body56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos_pinctrl_suspend_bank, %do.end95)) #6
          to label %if.then90 [label %do.end95], !srcloc !130

if.then90:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  %name91 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 9
  %40 = ptrtoint ptr %name91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name91, align 4
  %42 = ptrtoint ptr %eint_mask29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %eint_mask29, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.45, ptr noundef %41, i32 noundef %43) #6
  br label %do.end95

do.end95:                                         ; preds = %if.then90, %do.body76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_pinctrl_resume(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 11
  %0 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %pin_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 10
  %2 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_banks, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %bank.08 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %eint_type = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.08, i32 0, i32 6
  %4 = ptrtoint ptr %eint_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @exynos_pinctrl_resume_bank(ptr noundef %bank.08)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.010, 1
  %incdec.ptr = getelementptr %struct.samsung_pin_bank, ptr %bank.08, i32 1
  %6 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_banks, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_pinctrl_resume_bank(ptr nocapture noundef readonly %bank) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_priv = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 11
  %0 = ptrtoint ptr %soc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_priv, align 4
  %eint_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 4
  %2 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eint_base, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos_pinctrl_resume_bank, %do.body8)) #6
          to label %if.then [label %do.body8], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 9
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1792
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 8
  %6 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eint_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !121
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.47, ptr noundef %5, i32 noundef %9, i32 noundef %11) #6
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos_pinctrl_resume_bank, %do.body35)) #6
          to label %if.then22 [label %do.body35], !srcloc !130

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %name23 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 9
  %12 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name23, align 4
  %add.ptr26 = getelementptr i8, ptr %3, i32 2048
  %eint_offset27 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 8
  %14 = ptrtoint ptr %eint_offset27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eint_offset27, align 4
  %mul = shl i32 %15, 1
  %add.ptr28 = getelementptr i8, ptr %add.ptr26, i32 %mul
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !121
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %eint_fltcon0 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %eint_fltcon0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eint_fltcon0, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.48, ptr noundef %13, i32 noundef %17, i32 noundef %19) #6
  br label %do.body35

do.body35:                                        ; preds = %if.then22, %do.body8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos_pinctrl_resume_bank, %do.body64)) #6
          to label %if.then49 [label %do.body64], !srcloc !130

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %name50 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 9
  %20 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name50, align 4
  %add.ptr53 = getelementptr i8, ptr %3, i32 2048
  %eint_offset54 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 8
  %22 = ptrtoint ptr %eint_offset54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eint_offset54, align 4
  %mul55 = shl i32 %23, 1
  %add.ptr56 = getelementptr i8, ptr %add.ptr53, i32 %mul55
  %add.ptr57 = getelementptr i8, ptr %add.ptr56, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #6, !srcloc !121
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %eint_fltcon1 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %eint_fltcon1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eint_fltcon1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.49, ptr noundef %21, i32 noundef %25, i32 noundef %27) #6
  br label %do.body64

do.body64:                                        ; preds = %if.then49, %do.body35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos_pinctrl_resume_bank, %do.body92)) #6
          to label %if.then78 [label %do.body92], !srcloc !130

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  %name79 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 9
  %28 = ptrtoint ptr %name79 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name79, align 4
  %irq_chip = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 17
  %30 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_chip, align 4
  %eint_mask = getelementptr inbounds %struct.exynos_irq_chip, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %eint_mask, align 4
  %add.ptr82 = getelementptr i8, ptr %3, i32 %33
  %eint_offset83 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 8
  %34 = ptrtoint ptr %eint_offset83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %eint_offset83, align 4
  %add.ptr84 = getelementptr i8, ptr %add.ptr82, i32 %35
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #6, !srcloc !121
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  %eint_mask88 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %eint_mask88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eint_mask88, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.50, ptr noundef %29, i32 noundef %37, i32 noundef %39) #6
  br label %do.body92

do.body92:                                        ; preds = %if.then78, %do.body64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %add.ptr96 = getelementptr i8, ptr %3, i32 1792
  %eint_offset97 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 8
  %43 = ptrtoint ptr %eint_offset97 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %eint_offset97, align 4
  %add.ptr98 = getelementptr i8, ptr %add.ptr96, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %42) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %eint_fltcon0102 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %eint_fltcon0102 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eint_fltcon0102, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %add.ptr103 = getelementptr i8, ptr %3, i32 2048
  %48 = ptrtoint ptr %eint_offset97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %eint_offset97, align 4
  %mul105 = shl i32 %49, 1
  %add.ptr106 = getelementptr i8, ptr %add.ptr103, i32 %mul105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %47) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %eint_fltcon1110 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %eint_fltcon1110 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %eint_fltcon1110, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %eint_offset97 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %eint_offset97, align 4
  %mul113 = shl i32 %54, 1
  %add.ptr114 = getelementptr i8, ptr %add.ptr103, i32 %mul113
  %add.ptr115 = getelementptr i8, ptr %add.ptr114, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %52) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %eint_mask119 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %eint_mask119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %eint_mask119, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %irq_chip120 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank, i32 0, i32 17
  %58 = ptrtoint ptr %irq_chip120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %irq_chip120, align 4
  %eint_mask121 = getelementptr inbounds %struct.exynos_irq_chip, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %eint_mask121 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %eint_mask121, align 4
  %add.ptr122 = getelementptr i8, ptr %3, i32 %61
  %62 = ptrtoint ptr %eint_offset97 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %eint_offset97, align 4
  %add.ptr124 = getelementptr i8, ptr %add.ptr122, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %57) #6, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exynos_retention_init(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef readonly %data) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 28, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @exynos_get_pmu_regmap() #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %priv, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call.i, align 4
  %nr_regs = getelementptr inbounds %struct.samsung_retention_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_regs, align 4
  %nr_regs8 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %nr_regs8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %nr_regs8, align 4
  %value = getelementptr inbounds %struct.samsung_retention_data, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %value9 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %value9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %value9, align 4
  %refcnt = getelementptr inbounds %struct.samsung_retention_data, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %refcnt, align 4
  %refcnt10 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %refcnt10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %refcnt10, align 4
  %enable = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @exynos_retention_enable, ptr %enable, align 4
  %disable = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @exynos_retention_disable, ptr %disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp36 = icmp sgt i32 %7, 0
  br i1 %cmp36, label %for.body.lr.ph, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %17 = ptrtoint ptr %value9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value9, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %4, i32 %i.037
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %call2, i32 noundef %20, i32 noundef %18) #6
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i, %if.end6.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_get_pmu_regmap() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_retention_enable(ptr nocapture noundef readonly %drvdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %retention_ctrl = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 14
  %0 = ptrtoint ptr %retention_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retention_ctrl, align 4
  %refcnt = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %refcnt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #6, !srcloc !140
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_retention_disable(ptr nocapture noundef readonly %drvdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %retention_ctrl = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 14
  %0 = ptrtoint ptr %retention_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retention_ctrl, align 4
  %priv = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %refcnt = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refcnt, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #6, !srcloc !142
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nr_regs = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12 = icmp sgt i32 %8, 0
  br i1 %cmp12, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %value = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %i.013
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %12, i32 noundef %14) #6
  %inc = add nuw nsw i32 %i.013, 1
  %15 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_regs, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_irq_ack(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %eint_pend = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %eint_pend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_pend, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eint_offset, align 4
  %add = add i32 %7, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %9
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %eint_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eint_base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_irq_mask(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %eint_mask = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_mask, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eint_offset, align 4
  %add = add i32 %7, %5
  %slock = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 18
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #6
  %eint_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eint_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %12 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %13
  %or = or i32 %shl, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eint_base, align 4
  %add.ptr11 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %14) #6, !srcloc !136
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_irq_unmask(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %eint_mask = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_mask, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eint_offset, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 3
  %8 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and = and i32 %11, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %eint_pend.i = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %eint_pend.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eint_pend.i, align 4
  %add.i = add i32 %13, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %14 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwirq.i, align 4
  %shl.i = shl nuw i32 1, %15
  %16 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %eint_base.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %eint_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eint_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !136
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %add = add i32 %7, %5
  %slock = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 18
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #6
  %eint_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eint_base, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %add
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %23 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %24
  %neg = xor i32 %shl, -1
  %and8 = and i32 %22, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %and8)
  %26 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %eint_base, align 4
  %add.ptr13 = getelementptr i8, ptr %27, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %25) #6, !srcloc !136
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_irq_set_type(ptr nocapture noundef readonly %irqd, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %5, 2
  %eint_con = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %eint_con to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eint_con, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eint_offset, align 4
  %add = add i32 %9, %7
  %10 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %type, label %do.end [
    i32 1, label %entry.if.end_crit_edge
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %entry.if.else_crit_edge
    i32 8, label %sw.bb6
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.else:                                          ; preds = %sw.bb6, %entry.if.else_crit_edge
  %trig_type.0 = phi i32 [ 0, %sw.bb6 ], [ 1, %entry.if.else_crit_edge ]
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.bb4, %sw.bb3, %entry.if.end_crit_edge
  %handle_level_irq.sink = phi ptr [ @handle_level_irq, %if.else ], [ @handle_edge_irq, %entry.if.end_crit_edge ], [ @handle_edge_irq, %sw.bb4 ], [ @handle_edge_irq, %sw.bb3 ]
  %trig_type.040 = phi i32 [ %trig_type.0, %if.else ], [ 3, %entry.if.end_crit_edge ], [ 4, %sw.bb4 ], [ 2, %sw.bb3 ]
  %common.i.i35 = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 3
  %11 = ptrtoint ptr %common.i.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common.i.i35, align 4
  %handle_irq.i36 = getelementptr inbounds %struct.irq_desc, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %handle_irq.i36 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %handle_level_irq.sink, ptr %handle_irq.i36, align 4
  %eint_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eint_base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  %shl = shl i32 15, %mul
  %neg = xor i32 %shl, -1
  %and11 = and i32 %17, %neg
  %shl12 = shl i32 %trig_type.040, %mul
  %or = or i32 %and11, %shl12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %eint_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eint_base, align 4
  %add.ptr17 = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %18) #6, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_irq_request_resources(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %gpio_chip = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 15
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %call1 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %gpio_chip, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 15, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %name = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef %9, i32 noundef %11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pctl_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pctl_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pctl_offset, align 4
  %reg_offset = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_offset, align 1
  %conv = zext i8 %15 to i32
  %add = add i32 %13, %conv
  %16 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 1
  %conv6 = zext i8 %19 to i32
  %mul = mul i32 %17, %conv6
  %notmask = shl nsw i32 -1, %conv6
  %sub = xor i32 %notmask, -1
  %slock = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 18
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #6
  %pctl_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %pctl_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pctl_base, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %add
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  %shl18 = shl i32 %sub, %mul
  %neg = xor i32 %shl18, -1
  %and = and i32 %23, %neg
  %shl19 = shl i32 15, %mul
  %or = or i32 %and, %shl19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or)
  %25 = ptrtoint ptr %pctl_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pctl_base, align 4
  %add.ptr24 = getelementptr i8, ptr %26, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %24) #6, !srcloc !136
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_irq_release_resources(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pctl_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pctl_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pctl_offset, align 4
  %reg_offset = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_offset, align 1
  %conv = zext i8 %7 to i32
  %add = add i32 %5, %conv
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %conv2 = zext i8 %11 to i32
  %mul = mul i32 %9, %conv2
  %notmask = shl nsw i32 -1, %conv2
  %sub = xor i32 %notmask, -1
  %slock = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 18
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #6
  %pctl_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pctl_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pctl_base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %shl11 = shl i32 %sub, %mul
  %neg = xor i32 %shl11, -1
  %and = and i32 %15, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %and)
  %17 = ptrtoint ptr %pctl_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pctl_base, align 4
  %add.ptr17 = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %16) #6, !srcloc !136
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call7) #6
  %gpio_chip = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwirq, align 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gpio_chip, i32 noundef %20) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_eint_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #6
  %irq_chip = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_chip, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef %3, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_wkup_irq_set_wake(ptr nocapture noundef readonly %irqd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_offset, align 4
  %mul = shl i32 %5, 1
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %add = add i32 %mul, %7
  %shl = shl nuw i32 1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool.not, ptr @.str.29, ptr @.str.28
  %irq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 1
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull %cond, i32 noundef %9) #9
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %eint_wake_mask_value = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %eint_wake_mask_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eint_wake_mask_value, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %or = or i32 %13, %shl
  store i32 %or, ptr %11, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %shl, -1
  %eint_wake_mask_value5 = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %eint_wake_mask_value5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eint_wake_mask_value5, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and = and i32 %17, %neg
  store i32 %and, ptr %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5pv210_pinctrl_set_eint_wakeup_mask(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef readonly %irq_chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %retention_ctrl = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 14
  %0 = ptrtoint ptr %retention_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retention_ctrl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %priv = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %eint_wake_mask_value = getelementptr inbounds %struct.exynos_irq_chip, ptr %irq_chip, i32 0, i32 4
  %6 = ptrtoint ptr %eint_wake_mask_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eint_wake_mask_value, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %eint_wake_mask_reg = getelementptr inbounds %struct.exynos_irq_chip, ptr %irq_chip, i32 0, i32 5
  %10 = ptrtoint ptr %eint_wake_mask_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eint_wake_mask_reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_pinctrl_set_eint_wakeup_mask(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef readonly %irq_chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %retention_ctrl = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 14
  %0 = ptrtoint ptr %retention_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retention_ctrl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %priv = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %dev8 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 2
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  %eint_wake_mask_value = getelementptr inbounds %struct.exynos_irq_chip, ptr %irq_chip, i32 0, i32 4
  %8 = ptrtoint ptr %eint_wake_mask_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eint_wake_mask_value, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef %11) #9
  %eint_wake_mask_reg = getelementptr inbounds %struct.exynos_irq_chip, ptr %irq_chip, i32 0, i32 5
  %12 = ptrtoint ptr %eint_wake_mask_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eint_wake_mask_reg, align 4
  %14 = ptrtoint ptr %eint_wake_mask_value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eint_wake_mask_value, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %call = tail call i32 @regmap_write(ptr noundef nonnull %3, i32 noundef %13, i32 noundef %17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !62, !64, !65, !66, !67, !68, !70, !72, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 286, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @exynos_eint_gpio_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @exynos_eint_gpio_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 293, i32 3}
!10 = !{ptr @exynos_eint_gpio_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @exynos_eint_gpio_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 313, i32 4}
!14 = !{ptr @exynos_eint_gpio_init._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @exynos_eint_gpio_init._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 566, i32 4}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @exynos_eint_wkup_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @exynos_eint_wkup_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 571, i32 40}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 588, i32 5}
!25 = !{ptr @exynos_eint_wkup_init._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @exynos_eint_wkup_init._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 608, i32 3}
!29 = !{ptr @exynos_eint_wkup_init._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @exynos_eint_wkup_init._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 212, i32 11}
!33 = !{ptr @exynos_gpio_irq_chip, !34, !"exynos_gpio_irq_chip", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 210, i32 37}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 135, i32 3}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @exynos_irq_set_type._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @exynos_irq_set_type._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 162, i32 3}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @exynos_irq_request_resources._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @exynos_irq_request_resources._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @exynos_eint_irqd_ops, !46, !"exynos_eint_irqd_ops", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 240, i32 36}
!47 = !{ptr @exynos_wkup_irq_ids, !48, !"exynos_wkup_irq_ids", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 461, i32 34}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 404, i32 11}
!51 = !{ptr @s5pv210_wkup_irq_chip, !52, !"s5pv210_wkup_irq_chip", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 402, i32 37}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 347, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @exynos_wkup_irq_set_wake._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @exynos_wkup_irq_set_wake._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @eint_wake_mask_value, !61, !"eint_wake_mask_value", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 398, i32 12}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 386, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @s5pv210_pinctrl_set_eint_wakeup_mask._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @s5pv210_pinctrl_set_eint_wakeup_mask._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 424, i32 11}
!70 = !{ptr @exynos4210_wkup_irq_chip, !71, !"exynos4210_wkup_irq_chip", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 422, i32 37}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 364, i32 3}
!74 = !{ptr @exynos_pinctrl_set_eint_wakeup_mask._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @exynos_pinctrl_set_eint_wakeup_mask._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 370, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @exynos_pinctrl_set_eint_wakeup_mask._entry.35, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @exynos_pinctrl_set_eint_wakeup_mask._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 443, i32 11}
!83 = !{ptr @exynos7_wkup_irq_chip, !84, !"exynos7_wkup_irq_chip", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 441, i32 37}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 649, i32 2}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug227, !86, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 650, i32 2}
!92 = !{ptr @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug228, !91, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 651, i32 2}
!95 = !{ptr @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug229, !94, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 652, i32 2}
!98 = !{ptr @exynos_pinctrl_suspend_bank.__UNIQUE_ID_ddebug230, !97, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 681, i32 2}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug231, !100, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 684, i32 2}
!105 = !{ptr @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug232, !104, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 687, i32 2}
!108 = !{ptr @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug233, !107, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos.c", i32 690, i32 2}
!111 = !{ptr @exynos_pinctrl_resume_bank.__UNIQUE_ID_ddebug234, !110, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 4878847}
!122 = !{i64 2154077163}
!123 = !{i64 2154091804}
!124 = !{i64 2154092454}
!125 = !{i32 0, i32 33}
!126 = !{i64 2154099045}
!127 = !{i64 2154099613}
!128 = !{i64 2154100197}
!129 = !{i64 2154100847}
!130 = !{i64 2148297176, i64 2148297181, i64 2148297194, i64 2148297238, i64 2148297272, i64 2148297293}
!131 = !{i64 2154113607}
!132 = !{i64 2154116895}
!133 = !{i64 2154120215}
!134 = !{i64 2154123541}
!135 = !{i64 2154123787}
!136 = !{i64 4878429}
!137 = !{i64 2154124264}
!138 = !{i64 2154124761}
!139 = !{i64 2154125271}
!140 = !{i64 2148483783, i64 2148483809, i64 2148483838, i64 2148483872, i64 2148483903, i64 2148483926}
!141 = !{i64 2148572235}
!142 = !{i64 2148486968, i64 2148487000, i64 2148487029, i64 2148487063, i64 2148487094, i64 2148487117}
!143 = !{i64 2148572464}
!144 = !{i64 2154067792}
!145 = !{i64 2154066903}
!146 = !{i64 2154067127}
!147 = !{i64 2154068773}
!148 = !{i64 2154068997}
!149 = !{i64 2154071590}
!150 = !{i64 2154071816}
!151 = !{i64 2154074496}
!152 = !{i64 2154074722}
!153 = !{i64 2154075901}
!154 = !{i64 2154076125}
