; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-ocelot.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-ocelot.c"
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
%struct.atomic_t = type { i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.ocelot_pin_caps = type { i32, [4 x i8], [4 x i8] }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ocelot_pinctrl = type { ptr, ptr, %struct.gpio_chip, ptr, ptr, ptr, [119 x %struct.ocelot_pmx_func], i8 }
%struct.ocelot_pmx_func = type { ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pinctrl_ocelot__231_1868_ocelot_pinctrl_driver_init6 = internal global ptr @ocelot_pinctrl_driver_init, section ".initcall6.init", align 4
@ocelot_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ocelot_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @ocelot_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl-ocelot\00", [17 x i8] zeroinitializer }, align 32
@ocelot_pinctrl_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,luton-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @luton_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,serval-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @serval_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,ocelot-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ocelot_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,jaguar2-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jaguar2_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sparx5-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sparx5_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,lan966x-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lan966x_desc }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@ocelot_pinctrl_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pinctrl_ocelot:1830:(&regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@ocelot_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1832, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to create regmap\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ocelot_pinctrl_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/pinctrl/pinctrl-ocelot.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ocelot_pinctrl_probe._entry_ptr = internal global ptr @ocelot_pinctrl_probe._entry, section ".printk_index", align 4
@ocelot_pinctrl_probe.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 1, i8 -52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl_ocelot\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create pincfg regmap\0A\00", [32 x i8] zeroinitializer }, align 32
@ocelot_pinctrl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1855, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"driver registered\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ocelot_pinctrl_probe._entry_ptr.12 = internal global ptr @ocelot_pinctrl_probe._entry.9, section ".printk_index", align 4
@ocelot_pinctrl_create_pincfg.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 1, i8 -64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ocelot_pinctrl_create_pincfg\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to ioremap config registers (no extended pinconf)\0A\00", [38 x i8] zeroinitializer }, align 32
@ocelot_pinctrl_create_pincfg._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pinctrl_ocelot:1799:(&regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@ocelot_pinctrl_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 1563, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to create group func map.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ocelot_pinctrl_register\00", [40 x i8] zeroinitializer }, align 32
@ocelot_pinctrl_register._entry_ptr = internal global ptr @ocelot_pinctrl_register._entry, section ".printk_index", align 4
@ocelot_pinctrl_register._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 1569, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register pinctrl\0A\00", [36 x i8] zeroinitializer }, align 32
@ocelot_pinctrl_register._entry_ptr.20 = internal global ptr @ocelot_pinctrl_register._entry.18, section ".printk_index", align 4
@ocelot_gpiolib_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @ocelot_gpio_get_direction, ptr @ocelot_gpio_direction_input, ptr @ocelot_gpio_direction_output, ptr @ocelot_gpio_get, ptr null, ptr @ocelot_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ocelot-gpio\00", [20 x i8] zeroinitializer }, align 32
@ocelot_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr @ocelot_irq_ack, ptr @ocelot_irq_mask, ptr null, ptr @ocelot_irq_unmask, ptr null, ptr null, ptr null, ptr @ocelot_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@ocelot_gpiochip_register.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ocelot_gpiochip_register.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@ocelot_eoi_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocelot_irq_mask, ptr null, ptr @ocelot_irq_unmask, ptr @ocelot_irq_ack, ptr null, ptr null, ptr @ocelot_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 66 }, [56 x i8] zeroinitializer }, align 32
@luton_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.23, ptr @luton_pins, i32 32, ptr @ocelot_pctl_ops, ptr @ocelot_pmx_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@serval_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.174, ptr @serval_pins, i32 32, ptr @ocelot_pctl_ops, ptr @ocelot_pmx_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ocelot_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.175, ptr @ocelot_pins, i32 22, ptr @ocelot_pctl_ops, ptr @ocelot_pmx_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@jaguar2_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.176, ptr @jaguar2_pins, i32 64, ptr @ocelot_pctl_ops, ptr @ocelot_pmx_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@sparx5_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.209, ptr @sparx5_pins, i32 64, ptr @ocelot_pctl_ops, ptr @ocelot_pmx_ops, ptr @ocelot_confops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lan966x_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.210, ptr @lan966x_pins, i32 78, ptr @ocelot_pctl_ops, ptr @lan966x_pmx_ops, ptr @ocelot_confops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"luton-pinctrl\00", [18 x i8] zeroinitializer }, align 32
@luton_pins = internal constant { [32 x %struct.pinctrl_pin_desc], [96 x i8] } { [32 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.24, ptr @luton_pin_0 }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.25, ptr @luton_pin_1 }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.26, ptr @luton_pin_2 }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.27, ptr @luton_pin_3 }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.28, ptr @luton_pin_4 }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.29, ptr @luton_pin_5 }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.30, ptr @luton_pin_6 }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.31, ptr @luton_pin_7 }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.32, ptr @luton_pin_8 }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.33, ptr @luton_pin_9 }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.34, ptr @luton_pin_10 }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.35, ptr @luton_pin_11 }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.36, ptr @luton_pin_12 }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.37, ptr @luton_pin_13 }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.38, ptr @luton_pin_14 }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.39, ptr @luton_pin_15 }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.40, ptr @luton_pin_16 }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.41, ptr @luton_pin_17 }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.42, ptr @luton_pin_18 }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.43, ptr @luton_pin_19 }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.44, ptr @luton_pin_20 }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.45, ptr @luton_pin_21 }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.46, ptr @luton_pin_22 }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.47, ptr @luton_pin_23 }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.48, ptr @luton_pin_24 }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.49, ptr @luton_pin_25 }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.50, ptr @luton_pin_26 }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.51, ptr @luton_pin_27 }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.52, ptr @luton_pin_28 }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.53, ptr @luton_pin_29 }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.54, ptr @luton_pin_30 }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.55, ptr @luton_pin_31 }], [96 x i8] zeroinitializer }, align 32
@ocelot_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @ocelot_pctl_get_groups_count, ptr @ocelot_pctl_get_group_name, ptr @ocelot_pctl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinconf_generic_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@ocelot_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @ocelot_get_functions_count, ptr @ocelot_get_function_name, ptr @ocelot_get_function_groups, ptr @ocelot_pinmux_set_mux, ptr @ocelot_gpio_request_enable, ptr null, ptr @ocelot_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_0\00", [25 x i8] zeroinitializer }, align 32
@luton_pin_0 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 0, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_1\00", [25 x i8] zeroinitializer }, align 32
@luton_pin_1 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 1, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_2\00", [25 x i8] zeroinitializer }, align 32
@luton_pin_2 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 2, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_3\00", [25 x i8] zeroinitializer }, align 32
@luton_pin_3 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 3, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_4\00", [25 x i8] zeroinitializer }, align 32
@luton_pin_4 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 4, [4 x i8] c"'`\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_5\00", [25 x i8] zeroinitializer }, align 32
@luton_pin_5 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 5, [4 x i8] c"'cA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_6\00", [25 x i8] zeroinitializer }, align 32
@luton_pin_6 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 6, [4 x i8] c"'cA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_7\00", [25 x i8] zeroinitializer }, align 32
@luton_pin_7 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 7, [4 x i8] c"'\03A\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_8\00", [25 x i8] zeroinitializer }, align 32
@luton_pin_8 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 8, [4 x i8] c"'7A\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_9\00", [25 x i8] zeroinitializer }, align 32
@luton_pin_9 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 9, [4 x i8] c"'7A\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_10\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_10 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 10, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_11\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_11 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 11, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_12\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_12 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 12, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_13\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_13 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 13, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_14\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_14 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 14, [4 x i8] c"'^A\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_15\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_15 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 15, [4 x i8] c"'^A\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_16\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_16 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 16, [4 x i8] c"'^A\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_17\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_17 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 17, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_18\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_18 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 18, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_19\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_19 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 19, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_20\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_20 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 20, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_21\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_21 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 21, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_22\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_22 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 22, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_23\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_23 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 23, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_24\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_24 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 24, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_25\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_25 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 25, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_26\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_26 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 26, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_27\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_27 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 27, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_28\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_28 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 28, [4 x i8] c"'WA\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_29\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_29 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 29, [4 x i8] c"'O\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_30\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_30 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 30, [4 x i8] c"'i\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_31\00", [24 x i8] zeroinitializer }, align 32
@luton_pin_31 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 31, [4 x i8] c"'i\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_function_names = internal constant { [119 x ptr], [100 x i8] } { [119 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.22, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173], [100 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"can0_a\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"can0_b\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"can1\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc0_a\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc0_b\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc0_c\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc1_a\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc1_b\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc1_c\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc2_a\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc2_b\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc3_a\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc3_b\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc3_c\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc4_a\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc4_b\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fc4_c\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fc_shrd0\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fc_shrd1\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fc_shrd2\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fc_shrd3\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fc_shrd4\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fc_shrd5\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fc_shrd6\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fc_shrd7\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fc_shrd8\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fc_shrd9\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd10\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd11\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd12\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd13\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd14\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd15\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd16\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd17\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd18\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd19\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc_shrd20\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ib_trig_a\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ib_trig_b\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ib_trig_c\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irq0\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq_in_a\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq_in_b\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq_in_c\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq0_in\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"irq_out_a\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"irq_out_b\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"irq_out_c\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq0_out\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irq1\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq1_in\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq1_out\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ext_irq\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"miim\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"miim_a\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"miim_b\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"miim_c\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"miim_slave_a\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"miim_slave_b\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ob_trig\00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ob_trig_a\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ob_trig_b\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy_led\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci_wake\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"md\00", [29 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptp0\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptp1\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptp2\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptp3\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ptpsync_1\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ptpsync_2\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ptpsync_3\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ptpsync_4\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ptpsync_5\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ptpsync_6\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ptpsync_7\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qspi1\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qspi2\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reco_a\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reco_b\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reco_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sd\00", [29 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfp\00", [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sfp_sd\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sg0\00", [28 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sg1\00", [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sg2\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sgpio_a\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sgpio_b\00", [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"si\00", [29 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"si2\00", [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tacho\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tacho_a\00", [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tacho_b\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twi\00", [28 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"twi2\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"twi3\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twi_scl_m\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"twi_slc_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"twi_slc_gate_ad\00", [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_host_a\00", [21 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_host_b\00", [21 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_host_c\00", [21 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_slave_a\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_slave_b\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_slave_c\00", [20 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll_stat\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emmc\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emmc_sd\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcvrd_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serval-pinctrl\00", [17 x i8] zeroinitializer }, align 32
@serval_pins = internal constant { [32 x %struct.pinctrl_pin_desc], [96 x i8] } { [32 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.24, ptr @serval_pin_0 }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.25, ptr @serval_pin_1 }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.26, ptr @serval_pin_2 }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.27, ptr @serval_pin_3 }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.28, ptr @serval_pin_4 }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.29, ptr @serval_pin_5 }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.30, ptr @serval_pin_6 }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.31, ptr @serval_pin_7 }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.32, ptr @serval_pin_8 }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.33, ptr @serval_pin_9 }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.34, ptr @serval_pin_10 }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.35, ptr @serval_pin_11 }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.36, ptr @serval_pin_12 }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.37, ptr @serval_pin_13 }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.38, ptr @serval_pin_14 }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.39, ptr @serval_pin_15 }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.40, ptr @serval_pin_16 }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.41, ptr @serval_pin_17 }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.42, ptr @serval_pin_18 }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.43, ptr @serval_pin_19 }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.44, ptr @serval_pin_20 }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.45, ptr @serval_pin_21 }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.46, ptr @serval_pin_22 }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.47, ptr @serval_pin_23 }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.48, ptr @serval_pin_24 }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.49, ptr @serval_pin_25 }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.50, ptr @serval_pin_26 }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.51, ptr @serval_pin_27 }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.52, ptr @serval_pin_28 }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.53, ptr @serval_pin_29 }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.54, ptr @serval_pin_30 }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.55, ptr @serval_pin_31 }], [96 x i8] zeroinitializer }, align 32
@serval_pin_0 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 0, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_1 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 1, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_2 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 2, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_3 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 3, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_4 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 4, [4 x i8] c"'`\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_5 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 5, [4 x i8] c"'O\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_6 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 6, [4 x i8] c"'c\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_7 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 7, [4 x i8] c"'c\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_8 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 8, [4 x i8] c"'^\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_9 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 9, [4 x i8] c"'^C\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_10 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 10, [4 x i8] c"'^C\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_11 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 11, [4 x i8] c"'WCf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_12 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 12, [4 x i8] c"'WCf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_13 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 13, [4 x i8] c"'Wjf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_14 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 14, [4 x i8] c"'Wjf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_15 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 15, [4 x i8] c"'WDf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_16 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 16, [4 x i8] c"'WDf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_17 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 17, [4 x i8] c"'WBf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_18 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 18, [4 x i8] c"'W\03f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_19 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 19, [4 x i8] c"'W\03f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_20 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 20, [4 x i8] c"'W\03f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_21 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 21, [4 x i8] c"'W\03f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_22 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 22, [4 x i8] c"'\03\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_23 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 23, [4 x i8] c"'\03\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_24 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 24, [4 x i8] c"'\03\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_25 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 25, [4 x i8] c"'\03\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_26 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 26, [4 x i8] c"'i\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_27 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 27, [4 x i8] c"'i\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_28 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 28, [4 x i8] c"'+\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_29 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 29, [4 x i8] c"'4\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_30 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 30, [4 x i8] c"'D\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@serval_pin_31 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 31, [4 x i8] c"'D\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocelot-pinctrl\00", [17 x i8] zeroinitializer }, align 32
@ocelot_pins = internal constant { [22 x %struct.pinctrl_pin_desc], [88 x i8] } { [22 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.24, ptr @ocelot_pin_0 }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.25, ptr @ocelot_pin_1 }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.26, ptr @ocelot_pin_2 }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.27, ptr @ocelot_pin_3 }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.28, ptr @ocelot_pin_4 }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.29, ptr @ocelot_pin_5 }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.30, ptr @ocelot_pin_6 }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.31, ptr @ocelot_pin_7 }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.32, ptr @ocelot_pin_8 }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.33, ptr @ocelot_pin_9 }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.34, ptr @ocelot_pin_10 }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.35, ptr @ocelot_pin_11 }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.36, ptr @ocelot_pin_12 }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.37, ptr @ocelot_pin_13 }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.38, ptr @ocelot_pin_14 }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.39, ptr @ocelot_pin_15 }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.40, ptr @ocelot_pin_16 }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.41, ptr @ocelot_pin_17 }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.42, ptr @ocelot_pin_18 }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.43, ptr @ocelot_pin_19 }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.44, ptr @ocelot_pin_20 }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.45, ptr @ocelot_pin_21 }], [88 x i8] zeroinitializer }, align 32
@ocelot_pin_0 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 0, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_1 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 1, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_2 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 2, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_3 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 3, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_4 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 4, [4 x i8] c"'/3f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_5 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 5, [4 x i8] c"'56B", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_6 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 6, [4 x i8] c"'if\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_7 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 7, [4 x i8] c"'if\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_8 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 8, [4 x i8] c"'^f3", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_9 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 9, [4 x i8] c"'^f6", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_10 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 10, [4 x i8] c"'FfW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_11 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 11, [4 x i8] c"'GfW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_12 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 12, [4 x i8] c"'jfW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_13 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 13, [4 x i8] c"'jfW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_14 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 14, [4 x i8] c"'8fW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_15 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 15, [4 x i8] c"'8fW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_16 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 16, [4 x i8] c"'c\03^", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_17 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 17, [4 x i8] c"'cf^", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_18 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 18, [4 x i8] c"'Df\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_19 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 19, [4 x i8] c"'Ef\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_20 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 20, [4 x i8] c"'U`f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@ocelot_pin_21 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 21, [4 x i8] c"'UOf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jaguar2-pinctrl\00", [16 x i8] zeroinitializer }, align 32
@jaguar2_pins = internal constant { [64 x %struct.pinctrl_pin_desc], [192 x i8] } { [64 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.24, ptr @jaguar2_pin_0 }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.25, ptr @jaguar2_pin_1 }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.26, ptr @jaguar2_pin_2 }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.27, ptr @jaguar2_pin_3 }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.28, ptr @jaguar2_pin_4 }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.29, ptr @jaguar2_pin_5 }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.30, ptr @jaguar2_pin_6 }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.31, ptr @jaguar2_pin_7 }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.32, ptr @jaguar2_pin_8 }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.33, ptr @jaguar2_pin_9 }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.34, ptr @jaguar2_pin_10 }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.35, ptr @jaguar2_pin_11 }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.36, ptr @jaguar2_pin_12 }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.37, ptr @jaguar2_pin_13 }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.38, ptr @jaguar2_pin_14 }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.39, ptr @jaguar2_pin_15 }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.40, ptr @jaguar2_pin_16 }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.41, ptr @jaguar2_pin_17 }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.42, ptr @jaguar2_pin_18 }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.43, ptr @jaguar2_pin_19 }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.44, ptr @jaguar2_pin_20 }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.45, ptr @jaguar2_pin_21 }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.46, ptr @jaguar2_pin_22 }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.47, ptr @jaguar2_pin_23 }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.48, ptr @jaguar2_pin_24 }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.49, ptr @jaguar2_pin_25 }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.50, ptr @jaguar2_pin_26 }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.51, ptr @jaguar2_pin_27 }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.52, ptr @jaguar2_pin_28 }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.53, ptr @jaguar2_pin_29 }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.54, ptr @jaguar2_pin_30 }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.55, ptr @jaguar2_pin_31 }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.177, ptr @jaguar2_pin_32 }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.178, ptr @jaguar2_pin_33 }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.179, ptr @jaguar2_pin_34 }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.180, ptr @jaguar2_pin_35 }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.181, ptr @jaguar2_pin_36 }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.182, ptr @jaguar2_pin_37 }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.183, ptr @jaguar2_pin_38 }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.184, ptr @jaguar2_pin_39 }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.185, ptr @jaguar2_pin_40 }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.186, ptr @jaguar2_pin_41 }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.187, ptr @jaguar2_pin_42 }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.188, ptr @jaguar2_pin_43 }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.189, ptr @jaguar2_pin_44 }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.190, ptr @jaguar2_pin_45 }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.191, ptr @jaguar2_pin_46 }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.192, ptr @jaguar2_pin_47 }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.193, ptr @jaguar2_pin_48 }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.194, ptr @jaguar2_pin_49 }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.195, ptr @jaguar2_pin_50 }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.196, ptr @jaguar2_pin_51 }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.197, ptr @jaguar2_pin_52 }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.198, ptr @jaguar2_pin_53 }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.199, ptr @jaguar2_pin_54 }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.200, ptr @jaguar2_pin_55 }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.201, ptr @jaguar2_pin_56 }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.202, ptr @jaguar2_pin_57 }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.203, ptr @jaguar2_pin_58 }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.204, ptr @jaguar2_pin_59 }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.205, ptr @jaguar2_pin_60 }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.206, ptr @jaguar2_pin_61 }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.207, ptr @jaguar2_pin_62 }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.208, ptr @jaguar2_pin_63 }], [192 x i8] zeroinitializer }, align 32
@jaguar2_pin_0 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 0, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_1 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 1, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_2 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 2, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_3 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 3, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_4 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 4, [4 x i8] c"'Z\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_5 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 5, [4 x i8] c"'Z\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_6 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 6, [4 x i8] c"'/3\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_7 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 7, [4 x i8] c"'56\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_8 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 8, [4 x i8] c"'D\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_9 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 9, [4 x i8] c"'E\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_10 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 10, [4 x i8] c"'i\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_11 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 11, [4 x i8] c"'i\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_12 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 12, [4 x i8] c"'Z\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_13 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 13, [4 x i8] c"'Z\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_14 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 14, [4 x i8] c"'cf\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_15 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 15, [4 x i8] c"'c\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_16 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 16, [4 x i8] c"'^f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_17 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 17, [4 x i8] c"'^f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_18 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 18, [4 x i8] c"'^f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_19 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 19, [4 x i8] c"'B\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_20 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 20, [4 x i8] c"'3f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_21 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 21, [4 x i8] c"'6f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_22 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 22, [4 x i8] c"'`\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_23 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 23, [4 x i8] c"'O\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_24 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 24, [4 x i8] c"'j\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_25 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 25, [4 x i8] c"'j^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_26 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 26, [4 x i8] c"'F^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_27 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 27, [4 x i8] c"'G^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_28 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 28, [4 x i8] c"'d^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_29 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 29, [4 x i8] c"'d^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_30 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 30, [4 x i8] c"'[^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jaguar2_pin_31 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 31, [4 x i8] c"'[^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_32\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_32 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 32, [4 x i8] c"'[^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_33\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_33 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 33, [4 x i8] c"'[^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_34\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_34 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 34, [4 x i8] c"'\03f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_35\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_35 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 35, [4 x i8] c"'\03f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_36\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_36 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 36, [4 x i8] c"'\03f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_37\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_37 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 37, [4 x i8] c"'\03f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_38\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_38 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 38, [4 x i8] c"'\03f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_39\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_39 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 39, [4 x i8] c"'\03f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_40\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_40 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 40, [4 x i8] c"'\03f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_41\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_41 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 41, [4 x i8] c"'\03f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_42\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_42 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 42, [4 x i8] c"'\03f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_43\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_43 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 43, [4 x i8] c"'\03f\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_44\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_44 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 44, [4 x i8] c"'\03W\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_45\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_45 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 45, [4 x i8] c"'\03W\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_46\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_46 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 46, [4 x i8] c"'\03W\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_47\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_47 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 47, [4 x i8] c"'\03W\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_48\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_48 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 48, [4 x i8] c"'W\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_49\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_49 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 49, [4 x i8] c"'W^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_50\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_50 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 50, [4 x i8] c"'W^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_51\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_51 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 51, [4 x i8] c"'W^\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_52\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_52 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 52, [4 x i8] c"'W\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_53\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_53 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 53, [4 x i8] c"'W\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_54\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_54 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 54, [4 x i8] c"'W\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_55\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_55 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 55, [4 x i8] c"'W\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_56\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_56 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 56, [4 x i8] c"'8W\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_57\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_57 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 57, [4 x i8] c"'8W\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_58\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_58 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 58, [4 x i8] c"'8W\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_59\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_59 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 59, [4 x i8] c"'8W\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_60\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_60 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 60, [4 x i8] c"'\03\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_61\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_61 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 61, [4 x i8] c"'\03\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_62\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_62 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 62, [4 x i8] c"'\03\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_63\00", [24 x i8] zeroinitializer }, align 32
@jaguar2_pin_63 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 63, [4 x i8] c"'\03\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sparx5-pinctrl\00", [17 x i8] zeroinitializer }, align 32
@sparx5_pins = internal constant { [64 x %struct.pinctrl_pin_desc], [192 x i8] } { [64 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.24, ptr @sparx5_pin_0 }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.25, ptr @sparx5_pin_1 }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.26, ptr @sparx5_pin_2 }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.27, ptr @sparx5_pin_3 }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.28, ptr @sparx5_pin_4 }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.29, ptr @sparx5_pin_5 }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.30, ptr @sparx5_pin_6 }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.31, ptr @sparx5_pin_7 }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.32, ptr @sparx5_pin_8 }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.33, ptr @sparx5_pin_9 }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.34, ptr @sparx5_pin_10 }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.35, ptr @sparx5_pin_11 }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.36, ptr @sparx5_pin_12 }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.37, ptr @sparx5_pin_13 }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.38, ptr @sparx5_pin_14 }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.39, ptr @sparx5_pin_15 }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.40, ptr @sparx5_pin_16 }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.41, ptr @sparx5_pin_17 }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.42, ptr @sparx5_pin_18 }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.43, ptr @sparx5_pin_19 }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.44, ptr @sparx5_pin_20 }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.45, ptr @sparx5_pin_21 }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.46, ptr @sparx5_pin_22 }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.47, ptr @sparx5_pin_23 }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.48, ptr @sparx5_pin_24 }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.49, ptr @sparx5_pin_25 }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.50, ptr @sparx5_pin_26 }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.51, ptr @sparx5_pin_27 }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.52, ptr @sparx5_pin_28 }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.53, ptr @sparx5_pin_29 }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.54, ptr @sparx5_pin_30 }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.55, ptr @sparx5_pin_31 }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.177, ptr @sparx5_pin_32 }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.178, ptr @sparx5_pin_33 }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.179, ptr @sparx5_pin_34 }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.180, ptr @sparx5_pin_35 }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.181, ptr @sparx5_pin_36 }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.182, ptr @sparx5_pin_37 }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.183, ptr @sparx5_pin_38 }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.184, ptr @sparx5_pin_39 }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.185, ptr @sparx5_pin_40 }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.186, ptr @sparx5_pin_41 }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.187, ptr @sparx5_pin_42 }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.188, ptr @sparx5_pin_43 }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.189, ptr @sparx5_pin_44 }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.190, ptr @sparx5_pin_45 }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.191, ptr @sparx5_pin_46 }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.192, ptr @sparx5_pin_47 }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.193, ptr @sparx5_pin_48 }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.194, ptr @sparx5_pin_49 }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.195, ptr @sparx5_pin_50 }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.196, ptr @sparx5_pin_51 }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.197, ptr @sparx5_pin_52 }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.198, ptr @sparx5_pin_53 }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.199, ptr @sparx5_pin_54 }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.200, ptr @sparx5_pin_55 }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.201, ptr @sparx5_pin_56 }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.202, ptr @sparx5_pin_57 }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.203, ptr @sparx5_pin_58 }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.204, ptr @sparx5_pin_59 }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.205, ptr @sparx5_pin_60 }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.206, ptr @sparx5_pin_61 }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.207, ptr @sparx5_pin_62 }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.208, ptr @sparx5_pin_63 }], [192 x i8] zeroinitializer }, align 32
@ocelot_confops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @ocelot_pinconf_get, ptr @ocelot_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr @pinconf_generic_dump_config }, [32 x i8] zeroinitializer }, align 32
@sparx5_pin_0 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 0, [4 x i8] c"'Yr\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_1 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 1, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_2 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 2, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_3 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 3, [4 x i8] c"'Y\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_4 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 4, [4 x i8] c"'Z\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_5 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 5, [4 x i8] c"'Z\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_6 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 6, [4 x i8] c"'/3W", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_7 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 7, [4 x i8] c"'56W", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_8 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 8, [4 x i8] c"'D\03W", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_9 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 9, [4 x i8] c"'EWf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_10 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 10, [4 x i8] c"'i\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_11 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 11, [4 x i8] c"'i\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_12 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 12, [4 x i8] c"'Z\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_13 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 13, [4 x i8] c"'Z\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_14 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 14, [4 x i8] c"'cf\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_15 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 15, [4 x i8] c"'c\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_16 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 16, [4 x i8] c"'^fW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_17 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 17, [4 x i8] c"'^fW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_18 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 18, [4 x i8] c"'^fW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_19 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 19, [4 x i8] c"'BfW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_20 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 20, [4 x i8] c"'3fW", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_21 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 21, [4 x i8] c"'6`W", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_22 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 22, [4 x i8] c"'`3f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_23 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 23, [4 x i8] c"'Okf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_24 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 24, [4 x i8] c"'Fkf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_25 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 25, [4 x i8] c"'G^f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_26 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 26, [4 x i8] c"'j^f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_27 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 27, [4 x i8] c"'j^f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_28 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 28, [4 x i8] c"'d^W", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_29 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 29, [4 x i8] c"'d^W", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_30 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 30, [4 x i8] c"'[^O", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_31 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 31, [4 x i8] c"'[^f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_32 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 32, [4 x i8] c"'[^f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_33 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 33, [4 x i8] c"'[^W", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_34 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 34, [4 x i8] c"'\03fs", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_35 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 35, [4 x i8] c"'Wfs", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_36 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 36, [4 x i8] c"'Wfs", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_37 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 37, [4 x i8] c"'W\03s", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_38 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 38, [4 x i8] c"'\03fs", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_39 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 39, [4 x i8] c"'_fs", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_40 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 40, [4 x i8] c"'_fs", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_41 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 41, [4 x i8] c"'_fs", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_42 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 42, [4 x i8] c"'_fs", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_43 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 43, [4 x i8] c"'_fs", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_44 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 44, [4 x i8] c"'^Ws", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_45 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 45, [4 x i8] c"'^Ws", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_46 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 46, [4 x i8] c"'\03Ws", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_47 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 47, [4 x i8] c"'\03Ws", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_48 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 48, [4 x i8] c"'e^W", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_49 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 49, [4 x i8] c"'e\03W", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_50 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 50, [4 x i8] c"'W\03f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_51 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 51, [4 x i8] c"'W^f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_52 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 52, [4 x i8] c"'W8f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_53 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 53, [4 x i8] c"'W8f", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_54 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 54, [4 x i8] c"'WFf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_55 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 55, [4 x i8] c"'WGB", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_56 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 56, [4 x i8] c"'8Wf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_57 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 57, [4 x i8] c"'8Wf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_58 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 58, [4 x i8] c"'8Wf", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_59 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 59, [4 x i8] c"'8W\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_60 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 60, [4 x i8] c"'U\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_61 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 61, [4 x i8] c"'U\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_62 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 62, [4 x i8] c"'Ur\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@sparx5_pin_63 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 63, [4 x i8] c"'U\03\03", [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lan966x-pinctrl\00", [16 x i8] zeroinitializer }, align 32
@lan966x_pins = internal constant { [78 x %struct.pinctrl_pin_desc], [248 x i8] } { [78 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.24, ptr @lan966x_pin_0 }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.25, ptr @lan966x_pin_1 }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.26, ptr @lan966x_pin_2 }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.27, ptr @lan966x_pin_3 }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.28, ptr @lan966x_pin_4 }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.29, ptr @lan966x_pin_5 }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.30, ptr @lan966x_pin_6 }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.31, ptr @lan966x_pin_7 }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.32, ptr @lan966x_pin_8 }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.33, ptr @lan966x_pin_9 }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.34, ptr @lan966x_pin_10 }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.35, ptr @lan966x_pin_11 }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.36, ptr @lan966x_pin_12 }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.37, ptr @lan966x_pin_13 }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.38, ptr @lan966x_pin_14 }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.39, ptr @lan966x_pin_15 }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.40, ptr @lan966x_pin_16 }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.41, ptr @lan966x_pin_17 }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.42, ptr @lan966x_pin_18 }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.43, ptr @lan966x_pin_19 }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.44, ptr @lan966x_pin_20 }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.45, ptr @lan966x_pin_21 }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.46, ptr @lan966x_pin_22 }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.47, ptr @lan966x_pin_23 }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.48, ptr @lan966x_pin_24 }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.49, ptr @lan966x_pin_25 }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.50, ptr @lan966x_pin_26 }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.51, ptr @lan966x_pin_27 }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.52, ptr @lan966x_pin_28 }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.53, ptr @lan966x_pin_29 }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.54, ptr @lan966x_pin_30 }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.55, ptr @lan966x_pin_31 }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.177, ptr @lan966x_pin_32 }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.178, ptr @lan966x_pin_33 }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.179, ptr @lan966x_pin_34 }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.180, ptr @lan966x_pin_35 }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.181, ptr @lan966x_pin_36 }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.182, ptr @lan966x_pin_37 }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.183, ptr @lan966x_pin_38 }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.184, ptr @lan966x_pin_39 }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.185, ptr @lan966x_pin_40 }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.186, ptr @lan966x_pin_41 }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.187, ptr @lan966x_pin_42 }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.188, ptr @lan966x_pin_43 }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.189, ptr @lan966x_pin_44 }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.190, ptr @lan966x_pin_45 }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.191, ptr @lan966x_pin_46 }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.192, ptr @lan966x_pin_47 }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.193, ptr @lan966x_pin_48 }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.194, ptr @lan966x_pin_49 }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.195, ptr @lan966x_pin_50 }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.196, ptr @lan966x_pin_51 }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.197, ptr @lan966x_pin_52 }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.198, ptr @lan966x_pin_53 }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.199, ptr @lan966x_pin_54 }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.200, ptr @lan966x_pin_55 }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.201, ptr @lan966x_pin_56 }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.202, ptr @lan966x_pin_57 }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.203, ptr @lan966x_pin_58 }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.204, ptr @lan966x_pin_59 }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.205, ptr @lan966x_pin_60 }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.206, ptr @lan966x_pin_61 }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.207, ptr @lan966x_pin_62 }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.208, ptr @lan966x_pin_63 }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.211, ptr @lan966x_pin_64 }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.212, ptr @lan966x_pin_65 }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.213, ptr @lan966x_pin_66 }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.214, ptr @lan966x_pin_67 }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.215, ptr @lan966x_pin_68 }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.216, ptr @lan966x_pin_69 }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.217, ptr @lan966x_pin_70 }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.218, ptr @lan966x_pin_71 }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.219, ptr @lan966x_pin_72 }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.220, ptr @lan966x_pin_73 }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.221, ptr @lan966x_pin_74 }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.222, ptr @lan966x_pin_75 }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.223, ptr @lan966x_pin_76 }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.224, ptr @lan966x_pin_77 }], [248 x i8] zeroinitializer }, align 32
@lan966x_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @ocelot_get_functions_count, ptr @ocelot_get_function_name, ptr @ocelot_get_function_groups, ptr @lan966x_pinmux_set_mux, ptr @lan966x_gpio_request_enable, ptr null, ptr @ocelot_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@lan966x_pin_0 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 0, [4 x i8] c"'\03\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_1 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 1, [4 x i8] c"'\03\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_2 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 2, [4 x i8] c"'\03\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_3 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 3, [4 x i8] c"'\03\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_4 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 4, [4 x i8] c"'\03\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_5 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 5, [4 x i8] c"'\03\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_6 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 6, [4 x i8] c"'\03\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_7 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 7, [4 x i8] c"'\03\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_8 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 8, [4 x i8] c"'\04m\03", [4 x i8] c"p\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_9 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 9, [4 x i8] c"'\04m\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_10 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 10, [4 x i8] c"'\04\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_11 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 11, [4 x i8] c"'\07\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_12 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 12, [4 x i8] c"'\07\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_13 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 13, [4 x i8] c"'\07\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_14 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 14, [4 x i8] c"'\0A\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_15 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 15, [4 x i8] c"'\0A\03\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_16 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 16, [4 x i8] c"'\0A(\03", [4 x i8] c"?.2R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_17 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 17, [4 x i8] c"'\0C(\03", [4 x i8] c"?.2R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_18 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 18, [4 x i8] c"'\0C(\03", [4 x i8] c"?.2R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_19 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 19, [4 x i8] c"'\0C(\03", [4 x i8] c"?.2R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_20 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 20, [4 x i8] c"'\0F(\03", [4 x i8] c"?.\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_21 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 21, [4 x i8] c"'\0F\03\03", [4 x i8] c"?\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_22 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 22, [4 x i8] c"'\0F\03\03", [4 x i8] c"?\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_23 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 23, [4 x i8] c"'\03\03\03", [4 x i8] c"?\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_24 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 24, [4 x i8] c"'\05(n", [4 x i8] c"?.aR" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_25 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 25, [4 x i8] c"'\05(n", [4 x i8] c"?2XR" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_26 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 26, [4 x i8] c"'\05(q", [4 x i8] c"?\00XR" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_27 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 27, [4 x i8] c"'\03\03\03", [4 x i8] c"?\00\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_28 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 28, [4 x i8] c"'9\03\03", [4 x i8] c"?2XR" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_29 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 29, [4 x i8] c"'9\03\03", [4 x i8] c"?\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_30 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 30, [4 x i8] c"'\0E\02\03", [4 x i8] c">T\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_31 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 31, [4 x i8] c"'\0E\02\03", [4 x i8] c">T\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_32 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 32, [4 x i8] c"'\0E\03\\", [4 x i8] c"\03<\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_33 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 33, [4 x i8] c"'\08\03\\", [4 x i8] c"\03<:R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_34 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 34, [4 x i8] c"'\08\03\\", [4 x i8] c"\03<:R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_35 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 35, [4 x i8] c"'\08\03\\", [4 x i8] c"\01\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_36 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 36, [4 x i8] c"'\03H\03", [4 x i8] c"\01\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_37 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 37, [4 x i8] c"'\12Ih", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_38 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 38, [4 x i8] c"'\03J\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_39 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 39, [4 x i8] c"'\03K\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_40 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 40, [4 x i8] c"'\13L\03", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_41 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 41, [4 x i8] c"'\14Mh", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_42 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 42, [4 x i8] c"'\15Nh", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_43 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 43, [4 x i8] c"'\0B@)", [4 x i8] c"0S,R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_44 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 44, [4 x i8] c"'\0B@)", [4 x i8] c"0S,R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_45 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 45, [4 x i8] c"'\0B@)", [4 x i8] c"0\03,R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_46 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 46, [4 x i8] c"'\09@)", [4 x i8] c"0\16,R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_47 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 47, [4 x i8] c"'\09@)", [4 x i8] c"0\17,R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_48 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 48, [4 x i8] c"'\09@)", [4 x i8] c"0\18,R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_49 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 49, [4 x i8] c"'\19@)", [4 x i8] c"0g,R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_50 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 50, [4 x i8] c"'\22@)", [4 x i8] c"0g\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_51 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 51, [4 x i8] c"'\0D@*", [4 x i8] c"1\03-R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_52 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 52, [4 x i8] c"'\0D@*", [4 x i8] c"1b-R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_53 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 53, [4 x i8] c"'\0D@*", [4 x i8] c"1\03-R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_54 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 54, [4 x i8] c"'\1A@*", [4 x i8] c"1g-R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_55 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 55, [4 x i8] c"'\1B@*", [4 x i8] c"1g-R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_56 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 56, [4 x i8] c"'\10@*", [4 x i8] c"1\1C-R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_57 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 57, [4 x i8] c"'\10g*", [4 x i8] c"1\1D-R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_58 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 58, [4 x i8] c"'\10g*", [4 x i8] c"1\1E-R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_59 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 59, [4 x i8] c"'P;\03", [4 x i8] c"\03=\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_60 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 60, [4 x i8] c"'P;\03", [4 x i8] c"\03=\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_61 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 61, [4 x i8] c"'P\03]", [4 x i8] c"\06=\03R" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_62 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 62, [4 x i8] c"'P\1F]", [4 x i8] c"\06gXR" }, [20 x i8] zeroinitializer }, align 32
@lan966x_pin_63 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 63, [4 x i8] c"'P ]", [4 x i8] c"\06gXR" }, [20 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_64\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_64 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 64, [4 x i8] c"'P\11]", [4 x i8] c"!gXR" }, [20 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_65\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_65 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 65, [4 x i8] c"'l\11\03", [4 x i8] c"2h\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_66\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_66 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 66, [4 x i8] c"'l\11o", [4 x i8] c"2.\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_67\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_67 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 67, [4 x i8] c"'t\03Q", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_68\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_68 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 68, [4 x i8] c"'t\03Q", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_69\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_69 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 69, [4 x i8] c"'t\03Q", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_70\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_70 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 70, [4 x i8] c"'t\03Q", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_71\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_71 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 71, [4 x i8] c"'t\03Q", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_72\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_72 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 72, [4 x i8] c"'t\03Q", [4 x i8] c"\03\03\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_73\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_73 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 73, [4 x i8] c"'s\03\03", [4 x i8] c"V\03\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_74\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_74 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 74, [4 x i8] c"'s\03#", [4 x i8] c"Vg\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_75\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_75 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 75, [4 x i8] c"'s\03$", [4 x i8] c"Vg\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_76\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_76 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 76, [4 x i8] c"'s\03%", [4 x i8] c"Vg\03R" }, [20 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_77\00", [24 x i8] zeroinitializer }, align 32
@lan966x_pin_77 = internal global { %struct.ocelot_pin_caps, [20 x i8] } { %struct.ocelot_pin_caps { i32 77, [4 x i8] c"'t\03&", [4 x i8] c"\03g\03R" }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 14, i64 17, i64 18]
@__sancov_gen_cov_switch_values.225 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.226 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 14, i64 17, i64 18]
@___asan_gen_.227 = private unnamed_addr constant [22 x i8] c"ocelot_pinctrl_driver\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1860, i32 31 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1862, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant [24 x i8] c"ocelot_pinctrl_of_match\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1772, i32 34 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1830, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1832, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1842, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1855, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1795, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1799, i32 9 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1563, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1569, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [20 x i8] c"ocelot_gpiolib_chip\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1635, i32 31 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1751, i32 14 }
@___asan_gen_.308 = private unnamed_addr constant [15 x i8] c"ocelot_irqchip\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1687, i32 24 }
@___asan_gen_.311 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1769, i32 9 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1688, i32 11 }
@___asan_gen_.320 = private unnamed_addr constant [19 x i8] c"ocelot_eoi_irqchip\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1678, i32 24 }
@___asan_gen_.323 = private unnamed_addr constant [11 x i8] c"luton_desc\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1464, i32 28 }
@___asan_gen_.326 = private unnamed_addr constant [12 x i8] c"serval_desc\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1473, i32 28 }
@___asan_gen_.329 = private unnamed_addr constant [12 x i8] c"ocelot_desc\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1482, i32 28 }
@___asan_gen_.332 = private unnamed_addr constant [13 x i8] c"jaguar2_desc\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1491, i32 28 }
@___asan_gen_.335 = private unnamed_addr constant [12 x i8] c"sparx5_desc\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1500, i32 28 }
@___asan_gen_.338 = private unnamed_addr constant [13 x i8] c"lan966x_desc\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1510, i32 28 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1465, i32 10 }
@___asan_gen_.344 = private unnamed_addr constant [11 x i8] c"luton_pins\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 373, i32 38 }
@___asan_gen_.347 = private unnamed_addr constant [16 x i8] c"ocelot_pctl_ops\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1456, i32 33 }
@___asan_gen_.350 = private unnamed_addr constant [15 x i8] c"ocelot_pmx_ops\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1173, i32 32 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 374, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [12 x i8] c"luton_pin_0\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 334, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 375, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [12 x i8] c"luton_pin_1\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 335, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 376, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [12 x i8] c"luton_pin_2\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 336, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 377, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [12 x i8] c"luton_pin_3\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 337, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 378, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [12 x i8] c"luton_pin_4\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 338, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 379, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [12 x i8] c"luton_pin_5\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 339, i32 1 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 380, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [12 x i8] c"luton_pin_6\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 340, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 381, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [12 x i8] c"luton_pin_7\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 341, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 382, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [12 x i8] c"luton_pin_8\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 342, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 383, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [12 x i8] c"luton_pin_9\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 343, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 384, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [13 x i8] c"luton_pin_10\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 344, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 385, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [13 x i8] c"luton_pin_11\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 345, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 386, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [13 x i8] c"luton_pin_12\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 346, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 387, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant [13 x i8] c"luton_pin_13\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 347, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 388, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [13 x i8] c"luton_pin_14\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 348, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 389, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [13 x i8] c"luton_pin_15\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 349, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 390, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [13 x i8] c"luton_pin_16\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 350, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 391, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [13 x i8] c"luton_pin_17\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 351, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 392, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [13 x i8] c"luton_pin_18\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 352, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 393, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [13 x i8] c"luton_pin_19\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 353, i32 1 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 394, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [13 x i8] c"luton_pin_20\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 354, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 395, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [13 x i8] c"luton_pin_21\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 355, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 396, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [13 x i8] c"luton_pin_22\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 356, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 397, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [13 x i8] c"luton_pin_23\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 357, i32 1 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 398, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [13 x i8] c"luton_pin_24\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 358, i32 1 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 399, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [13 x i8] c"luton_pin_25\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 359, i32 1 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 400, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant [13 x i8] c"luton_pin_26\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 360, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 401, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [13 x i8] c"luton_pin_27\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 361, i32 1 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 402, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant [13 x i8] c"luton_pin_28\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 362, i32 1 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 403, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [13 x i8] c"luton_pin_29\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 363, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 404, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [13 x i8] c"luton_pin_30\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 364, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 405, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [13 x i8] c"luton_pin_31\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 365, i32 1 }
@___asan_gen_.545 = private unnamed_addr constant [22 x i8] c"ocelot_function_names\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 182, i32 26 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 183, i32 19 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 184, i32 19 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 185, i32 17 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 186, i32 17 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 187, i32 18 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 188, i32 18 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 189, i32 18 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 190, i32 18 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 191, i32 18 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 192, i32 18 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 193, i32 18 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 194, i32 18 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 195, i32 18 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 196, i32 18 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 197, i32 18 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 198, i32 18 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 199, i32 18 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 200, i32 18 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 201, i32 21 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 202, i32 21 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 203, i32 21 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 204, i32 21 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 205, i32 21 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 206, i32 21 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 207, i32 21 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 208, i32 21 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 209, i32 21 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 210, i32 21 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 211, i32 21 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 212, i32 21 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 213, i32 21 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 214, i32 21 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 215, i32 21 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 216, i32 21 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 217, i32 21 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 218, i32 21 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 219, i32 21 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 220, i32 21 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 221, i32 21 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 223, i32 21 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 224, i32 21 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 225, i32 21 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 226, i32 17 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 227, i32 21 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 228, i32 21 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 229, i32 21 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 230, i32 20 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 231, i32 21 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 232, i32 21 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 233, i32 21 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 234, i32 21 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 235, i32 17 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 236, i32 20 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 237, i32 21 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 238, i32 20 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 239, i32 17 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 240, i32 19 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 241, i32 19 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 242, i32 19 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 243, i32 20 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 244, i32 20 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 248, i32 19 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 249, i32 21 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 250, i32 21 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 245, i32 20 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 246, i32 21 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 247, i32 15 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 251, i32 17 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 252, i32 17 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 253, i32 17 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 254, i32 17 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 255, i32 21 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 256, i32 21 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 257, i32 21 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 258, i32 21 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 259, i32 21 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 260, i32 21 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 261, i32 21 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 262, i32 16 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 263, i32 18 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 264, i32 18 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 265, i32 14 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 266, i32 19 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 267, i32 19 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 268, i32 21 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 269, i32 15 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 270, i32 16 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 271, i32 19 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 272, i32 16 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 273, i32 16 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 274, i32 16 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 275, i32 20 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 276, i32 20 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 277, i32 15 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 278, i32 16 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 279, i32 18 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 280, i32 20 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 281, i32 20 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 282, i32 16 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 283, i32 17 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 284, i32 17 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 285, i32 21 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 286, i32 24 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 287, i32 27 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 294, i32 17 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 295, i32 18 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 296, i32 18 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 288, i32 20 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 289, i32 20 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 290, i32 20 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 291, i32 20 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 292, i32 20 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 293, i32 20 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 297, i32 21 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 298, i32 17 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 299, i32 20 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 300, i32 20 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 301, i32 21 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1474, i32 10 }
@___asan_gen_.905 = private unnamed_addr constant [12 x i8] c"serval_pins\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 455, i32 38 }
@___asan_gen_.908 = private unnamed_addr constant [13 x i8] c"serval_pin_0\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 416, i32 1 }
@___asan_gen_.911 = private unnamed_addr constant [13 x i8] c"serval_pin_1\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 417, i32 1 }
@___asan_gen_.914 = private unnamed_addr constant [13 x i8] c"serval_pin_2\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 418, i32 1 }
@___asan_gen_.917 = private unnamed_addr constant [13 x i8] c"serval_pin_3\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 419, i32 1 }
@___asan_gen_.920 = private unnamed_addr constant [13 x i8] c"serval_pin_4\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 420, i32 1 }
@___asan_gen_.923 = private unnamed_addr constant [13 x i8] c"serval_pin_5\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 421, i32 1 }
@___asan_gen_.926 = private unnamed_addr constant [13 x i8] c"serval_pin_6\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 422, i32 1 }
@___asan_gen_.929 = private unnamed_addr constant [13 x i8] c"serval_pin_7\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 423, i32 1 }
@___asan_gen_.932 = private unnamed_addr constant [13 x i8] c"serval_pin_8\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 424, i32 1 }
@___asan_gen_.935 = private unnamed_addr constant [13 x i8] c"serval_pin_9\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 425, i32 1 }
@___asan_gen_.938 = private unnamed_addr constant [14 x i8] c"serval_pin_10\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 426, i32 1 }
@___asan_gen_.941 = private unnamed_addr constant [14 x i8] c"serval_pin_11\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 427, i32 1 }
@___asan_gen_.944 = private unnamed_addr constant [14 x i8] c"serval_pin_12\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 428, i32 1 }
@___asan_gen_.947 = private unnamed_addr constant [14 x i8] c"serval_pin_13\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 429, i32 1 }
@___asan_gen_.950 = private unnamed_addr constant [14 x i8] c"serval_pin_14\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 430, i32 1 }
@___asan_gen_.953 = private unnamed_addr constant [14 x i8] c"serval_pin_15\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 431, i32 1 }
@___asan_gen_.956 = private unnamed_addr constant [14 x i8] c"serval_pin_16\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 432, i32 1 }
@___asan_gen_.959 = private unnamed_addr constant [14 x i8] c"serval_pin_17\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 433, i32 1 }
@___asan_gen_.962 = private unnamed_addr constant [14 x i8] c"serval_pin_18\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 434, i32 1 }
@___asan_gen_.965 = private unnamed_addr constant [14 x i8] c"serval_pin_19\00", align 1
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 435, i32 1 }
@___asan_gen_.968 = private unnamed_addr constant [14 x i8] c"serval_pin_20\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 436, i32 1 }
@___asan_gen_.971 = private unnamed_addr constant [14 x i8] c"serval_pin_21\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 437, i32 1 }
@___asan_gen_.974 = private unnamed_addr constant [14 x i8] c"serval_pin_22\00", align 1
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 438, i32 1 }
@___asan_gen_.977 = private unnamed_addr constant [14 x i8] c"serval_pin_23\00", align 1
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 439, i32 1 }
@___asan_gen_.980 = private unnamed_addr constant [14 x i8] c"serval_pin_24\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 440, i32 1 }
@___asan_gen_.983 = private unnamed_addr constant [14 x i8] c"serval_pin_25\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 441, i32 1 }
@___asan_gen_.986 = private unnamed_addr constant [14 x i8] c"serval_pin_26\00", align 1
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 442, i32 1 }
@___asan_gen_.989 = private unnamed_addr constant [14 x i8] c"serval_pin_27\00", align 1
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 443, i32 1 }
@___asan_gen_.992 = private unnamed_addr constant [14 x i8] c"serval_pin_28\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 444, i32 1 }
@___asan_gen_.995 = private unnamed_addr constant [14 x i8] c"serval_pin_29\00", align 1
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 445, i32 1 }
@___asan_gen_.998 = private unnamed_addr constant [14 x i8] c"serval_pin_30\00", align 1
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 446, i32 1 }
@___asan_gen_.1001 = private unnamed_addr constant [14 x i8] c"serval_pin_31\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 447, i32 1 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1483, i32 10 }
@___asan_gen_.1007 = private unnamed_addr constant [12 x i8] c"ocelot_pins\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 527, i32 38 }
@___asan_gen_.1010 = private unnamed_addr constant [13 x i8] c"ocelot_pin_0\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 498, i32 1 }
@___asan_gen_.1013 = private unnamed_addr constant [13 x i8] c"ocelot_pin_1\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 499, i32 1 }
@___asan_gen_.1016 = private unnamed_addr constant [13 x i8] c"ocelot_pin_2\00", align 1
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 500, i32 1 }
@___asan_gen_.1019 = private unnamed_addr constant [13 x i8] c"ocelot_pin_3\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 501, i32 1 }
@___asan_gen_.1022 = private unnamed_addr constant [13 x i8] c"ocelot_pin_4\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 502, i32 1 }
@___asan_gen_.1025 = private unnamed_addr constant [13 x i8] c"ocelot_pin_5\00", align 1
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 503, i32 1 }
@___asan_gen_.1028 = private unnamed_addr constant [13 x i8] c"ocelot_pin_6\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 504, i32 1 }
@___asan_gen_.1031 = private unnamed_addr constant [13 x i8] c"ocelot_pin_7\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 505, i32 1 }
@___asan_gen_.1034 = private unnamed_addr constant [13 x i8] c"ocelot_pin_8\00", align 1
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 506, i32 1 }
@___asan_gen_.1037 = private unnamed_addr constant [13 x i8] c"ocelot_pin_9\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 507, i32 1 }
@___asan_gen_.1040 = private unnamed_addr constant [14 x i8] c"ocelot_pin_10\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 508, i32 1 }
@___asan_gen_.1043 = private unnamed_addr constant [14 x i8] c"ocelot_pin_11\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 509, i32 1 }
@___asan_gen_.1046 = private unnamed_addr constant [14 x i8] c"ocelot_pin_12\00", align 1
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 510, i32 1 }
@___asan_gen_.1049 = private unnamed_addr constant [14 x i8] c"ocelot_pin_13\00", align 1
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 511, i32 1 }
@___asan_gen_.1052 = private unnamed_addr constant [14 x i8] c"ocelot_pin_14\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 512, i32 1 }
@___asan_gen_.1055 = private unnamed_addr constant [14 x i8] c"ocelot_pin_15\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 513, i32 1 }
@___asan_gen_.1058 = private unnamed_addr constant [14 x i8] c"ocelot_pin_16\00", align 1
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 514, i32 1 }
@___asan_gen_.1061 = private unnamed_addr constant [14 x i8] c"ocelot_pin_17\00", align 1
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 515, i32 1 }
@___asan_gen_.1064 = private unnamed_addr constant [14 x i8] c"ocelot_pin_18\00", align 1
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 516, i32 1 }
@___asan_gen_.1067 = private unnamed_addr constant [14 x i8] c"ocelot_pin_19\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 517, i32 1 }
@___asan_gen_.1070 = private unnamed_addr constant [14 x i8] c"ocelot_pin_20\00", align 1
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 518, i32 1 }
@___asan_gen_.1073 = private unnamed_addr constant [14 x i8] c"ocelot_pin_21\00", align 1
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 519, i32 1 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1492, i32 10 }
@___asan_gen_.1079 = private unnamed_addr constant [13 x i8] c"jaguar2_pins\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 631, i32 38 }
@___asan_gen_.1082 = private unnamed_addr constant [14 x i8] c"jaguar2_pin_0\00", align 1
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 560, i32 1 }
@___asan_gen_.1085 = private unnamed_addr constant [14 x i8] c"jaguar2_pin_1\00", align 1
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 561, i32 1 }
@___asan_gen_.1088 = private unnamed_addr constant [14 x i8] c"jaguar2_pin_2\00", align 1
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 562, i32 1 }
@___asan_gen_.1091 = private unnamed_addr constant [14 x i8] c"jaguar2_pin_3\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 563, i32 1 }
@___asan_gen_.1094 = private unnamed_addr constant [14 x i8] c"jaguar2_pin_4\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 564, i32 1 }
@___asan_gen_.1097 = private unnamed_addr constant [14 x i8] c"jaguar2_pin_5\00", align 1
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 565, i32 1 }
@___asan_gen_.1100 = private unnamed_addr constant [14 x i8] c"jaguar2_pin_6\00", align 1
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 566, i32 1 }
@___asan_gen_.1103 = private unnamed_addr constant [14 x i8] c"jaguar2_pin_7\00", align 1
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 567, i32 1 }
@___asan_gen_.1106 = private unnamed_addr constant [14 x i8] c"jaguar2_pin_8\00", align 1
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 568, i32 1 }
@___asan_gen_.1109 = private unnamed_addr constant [14 x i8] c"jaguar2_pin_9\00", align 1
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 569, i32 1 }
@___asan_gen_.1112 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_10\00", align 1
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 570, i32 1 }
@___asan_gen_.1115 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_11\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 571, i32 1 }
@___asan_gen_.1118 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_12\00", align 1
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 572, i32 1 }
@___asan_gen_.1121 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_13\00", align 1
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 573, i32 1 }
@___asan_gen_.1124 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_14\00", align 1
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 574, i32 1 }
@___asan_gen_.1127 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_15\00", align 1
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 575, i32 1 }
@___asan_gen_.1130 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_16\00", align 1
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 576, i32 1 }
@___asan_gen_.1133 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_17\00", align 1
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 577, i32 1 }
@___asan_gen_.1136 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_18\00", align 1
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 578, i32 1 }
@___asan_gen_.1139 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_19\00", align 1
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 579, i32 1 }
@___asan_gen_.1142 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_20\00", align 1
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 580, i32 1 }
@___asan_gen_.1145 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_21\00", align 1
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 581, i32 1 }
@___asan_gen_.1148 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_22\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 582, i32 1 }
@___asan_gen_.1151 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_23\00", align 1
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 583, i32 1 }
@___asan_gen_.1154 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_24\00", align 1
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 584, i32 1 }
@___asan_gen_.1157 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_25\00", align 1
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 585, i32 1 }
@___asan_gen_.1160 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_26\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 586, i32 1 }
@___asan_gen_.1163 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_27\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 587, i32 1 }
@___asan_gen_.1166 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_28\00", align 1
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 588, i32 1 }
@___asan_gen_.1169 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_29\00", align 1
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 589, i32 1 }
@___asan_gen_.1172 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_30\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 590, i32 1 }
@___asan_gen_.1175 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_31\00", align 1
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 591, i32 1 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 664, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_32\00", align 1
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 592, i32 1 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 665, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_33\00", align 1
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 593, i32 1 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 666, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_34\00", align 1
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 594, i32 1 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 667, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_35\00", align 1
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 595, i32 1 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 668, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_36\00", align 1
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 596, i32 1 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 669, i32 2 }
@___asan_gen_.1211 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_37\00", align 1
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 597, i32 1 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 670, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_38\00", align 1
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 598, i32 1 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 671, i32 2 }
@___asan_gen_.1223 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_39\00", align 1
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 599, i32 1 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 672, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_40\00", align 1
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 600, i32 1 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 673, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_41\00", align 1
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 601, i32 1 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 674, i32 2 }
@___asan_gen_.1241 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_42\00", align 1
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 602, i32 1 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 675, i32 2 }
@___asan_gen_.1247 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_43\00", align 1
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 603, i32 1 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 676, i32 2 }
@___asan_gen_.1253 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_44\00", align 1
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 604, i32 1 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 677, i32 2 }
@___asan_gen_.1259 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_45\00", align 1
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 605, i32 1 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 678, i32 2 }
@___asan_gen_.1265 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_46\00", align 1
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 606, i32 1 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 679, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_47\00", align 1
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 607, i32 1 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 680, i32 2 }
@___asan_gen_.1277 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_48\00", align 1
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 608, i32 1 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 681, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_49\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 609, i32 1 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 682, i32 2 }
@___asan_gen_.1289 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_50\00", align 1
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 610, i32 1 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 683, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_51\00", align 1
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 611, i32 1 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 684, i32 2 }
@___asan_gen_.1301 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_52\00", align 1
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 612, i32 1 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 685, i32 2 }
@___asan_gen_.1307 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_53\00", align 1
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 613, i32 1 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 686, i32 2 }
@___asan_gen_.1313 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_54\00", align 1
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 614, i32 1 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 687, i32 2 }
@___asan_gen_.1319 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_55\00", align 1
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 615, i32 1 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 688, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_56\00", align 1
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 616, i32 1 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 689, i32 2 }
@___asan_gen_.1331 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_57\00", align 1
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 617, i32 1 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 690, i32 2 }
@___asan_gen_.1337 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_58\00", align 1
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 618, i32 1 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 691, i32 2 }
@___asan_gen_.1343 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_59\00", align 1
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 619, i32 1 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 692, i32 2 }
@___asan_gen_.1349 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_60\00", align 1
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 620, i32 1 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 693, i32 2 }
@___asan_gen_.1355 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_61\00", align 1
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 621, i32 1 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 694, i32 2 }
@___asan_gen_.1361 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_62\00", align 1
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 622, i32 1 }
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 695, i32 2 }
@___asan_gen_.1367 = private unnamed_addr constant [15 x i8] c"jaguar2_pin_63\00", align 1
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 623, i32 1 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1501, i32 10 }
@___asan_gen_.1373 = private unnamed_addr constant [12 x i8] c"sparx5_pins\00", align 1
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 777, i32 38 }
@___asan_gen_.1376 = private unnamed_addr constant [15 x i8] c"ocelot_confops\00", align 1
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1449, i32 33 }
@___asan_gen_.1379 = private unnamed_addr constant [13 x i8] c"sparx5_pin_0\00", align 1
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 706, i32 1 }
@___asan_gen_.1382 = private unnamed_addr constant [13 x i8] c"sparx5_pin_1\00", align 1
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 707, i32 1 }
@___asan_gen_.1385 = private unnamed_addr constant [13 x i8] c"sparx5_pin_2\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 708, i32 1 }
@___asan_gen_.1388 = private unnamed_addr constant [13 x i8] c"sparx5_pin_3\00", align 1
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 709, i32 1 }
@___asan_gen_.1391 = private unnamed_addr constant [13 x i8] c"sparx5_pin_4\00", align 1
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 710, i32 1 }
@___asan_gen_.1394 = private unnamed_addr constant [13 x i8] c"sparx5_pin_5\00", align 1
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 711, i32 1 }
@___asan_gen_.1397 = private unnamed_addr constant [13 x i8] c"sparx5_pin_6\00", align 1
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 712, i32 1 }
@___asan_gen_.1400 = private unnamed_addr constant [13 x i8] c"sparx5_pin_7\00", align 1
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 713, i32 1 }
@___asan_gen_.1403 = private unnamed_addr constant [13 x i8] c"sparx5_pin_8\00", align 1
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 714, i32 1 }
@___asan_gen_.1406 = private unnamed_addr constant [13 x i8] c"sparx5_pin_9\00", align 1
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 715, i32 1 }
@___asan_gen_.1409 = private unnamed_addr constant [14 x i8] c"sparx5_pin_10\00", align 1
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 716, i32 1 }
@___asan_gen_.1412 = private unnamed_addr constant [14 x i8] c"sparx5_pin_11\00", align 1
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 717, i32 1 }
@___asan_gen_.1415 = private unnamed_addr constant [14 x i8] c"sparx5_pin_12\00", align 1
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 718, i32 1 }
@___asan_gen_.1418 = private unnamed_addr constant [14 x i8] c"sparx5_pin_13\00", align 1
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 719, i32 1 }
@___asan_gen_.1421 = private unnamed_addr constant [14 x i8] c"sparx5_pin_14\00", align 1
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 720, i32 1 }
@___asan_gen_.1424 = private unnamed_addr constant [14 x i8] c"sparx5_pin_15\00", align 1
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 721, i32 1 }
@___asan_gen_.1427 = private unnamed_addr constant [14 x i8] c"sparx5_pin_16\00", align 1
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 722, i32 1 }
@___asan_gen_.1430 = private unnamed_addr constant [14 x i8] c"sparx5_pin_17\00", align 1
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 723, i32 1 }
@___asan_gen_.1433 = private unnamed_addr constant [14 x i8] c"sparx5_pin_18\00", align 1
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 724, i32 1 }
@___asan_gen_.1436 = private unnamed_addr constant [14 x i8] c"sparx5_pin_19\00", align 1
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 725, i32 1 }
@___asan_gen_.1439 = private unnamed_addr constant [14 x i8] c"sparx5_pin_20\00", align 1
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 726, i32 1 }
@___asan_gen_.1442 = private unnamed_addr constant [14 x i8] c"sparx5_pin_21\00", align 1
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 727, i32 1 }
@___asan_gen_.1445 = private unnamed_addr constant [14 x i8] c"sparx5_pin_22\00", align 1
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 728, i32 1 }
@___asan_gen_.1448 = private unnamed_addr constant [14 x i8] c"sparx5_pin_23\00", align 1
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 729, i32 1 }
@___asan_gen_.1451 = private unnamed_addr constant [14 x i8] c"sparx5_pin_24\00", align 1
@___asan_gen_.1453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 730, i32 1 }
@___asan_gen_.1454 = private unnamed_addr constant [14 x i8] c"sparx5_pin_25\00", align 1
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 731, i32 1 }
@___asan_gen_.1457 = private unnamed_addr constant [14 x i8] c"sparx5_pin_26\00", align 1
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 732, i32 1 }
@___asan_gen_.1460 = private unnamed_addr constant [14 x i8] c"sparx5_pin_27\00", align 1
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 733, i32 1 }
@___asan_gen_.1463 = private unnamed_addr constant [14 x i8] c"sparx5_pin_28\00", align 1
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 734, i32 1 }
@___asan_gen_.1466 = private unnamed_addr constant [14 x i8] c"sparx5_pin_29\00", align 1
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 735, i32 1 }
@___asan_gen_.1469 = private unnamed_addr constant [14 x i8] c"sparx5_pin_30\00", align 1
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 736, i32 1 }
@___asan_gen_.1472 = private unnamed_addr constant [14 x i8] c"sparx5_pin_31\00", align 1
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 737, i32 1 }
@___asan_gen_.1475 = private unnamed_addr constant [14 x i8] c"sparx5_pin_32\00", align 1
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 738, i32 1 }
@___asan_gen_.1478 = private unnamed_addr constant [14 x i8] c"sparx5_pin_33\00", align 1
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 739, i32 1 }
@___asan_gen_.1481 = private unnamed_addr constant [14 x i8] c"sparx5_pin_34\00", align 1
@___asan_gen_.1483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 740, i32 1 }
@___asan_gen_.1484 = private unnamed_addr constant [14 x i8] c"sparx5_pin_35\00", align 1
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 741, i32 1 }
@___asan_gen_.1487 = private unnamed_addr constant [14 x i8] c"sparx5_pin_36\00", align 1
@___asan_gen_.1489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 742, i32 1 }
@___asan_gen_.1490 = private unnamed_addr constant [14 x i8] c"sparx5_pin_37\00", align 1
@___asan_gen_.1492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 743, i32 1 }
@___asan_gen_.1493 = private unnamed_addr constant [14 x i8] c"sparx5_pin_38\00", align 1
@___asan_gen_.1495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 744, i32 1 }
@___asan_gen_.1496 = private unnamed_addr constant [14 x i8] c"sparx5_pin_39\00", align 1
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 745, i32 1 }
@___asan_gen_.1499 = private unnamed_addr constant [14 x i8] c"sparx5_pin_40\00", align 1
@___asan_gen_.1501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 746, i32 1 }
@___asan_gen_.1502 = private unnamed_addr constant [14 x i8] c"sparx5_pin_41\00", align 1
@___asan_gen_.1504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 747, i32 1 }
@___asan_gen_.1505 = private unnamed_addr constant [14 x i8] c"sparx5_pin_42\00", align 1
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 748, i32 1 }
@___asan_gen_.1508 = private unnamed_addr constant [14 x i8] c"sparx5_pin_43\00", align 1
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 749, i32 1 }
@___asan_gen_.1511 = private unnamed_addr constant [14 x i8] c"sparx5_pin_44\00", align 1
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 750, i32 1 }
@___asan_gen_.1514 = private unnamed_addr constant [14 x i8] c"sparx5_pin_45\00", align 1
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 751, i32 1 }
@___asan_gen_.1517 = private unnamed_addr constant [14 x i8] c"sparx5_pin_46\00", align 1
@___asan_gen_.1519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 752, i32 1 }
@___asan_gen_.1520 = private unnamed_addr constant [14 x i8] c"sparx5_pin_47\00", align 1
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 753, i32 1 }
@___asan_gen_.1523 = private unnamed_addr constant [14 x i8] c"sparx5_pin_48\00", align 1
@___asan_gen_.1525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 754, i32 1 }
@___asan_gen_.1526 = private unnamed_addr constant [14 x i8] c"sparx5_pin_49\00", align 1
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 755, i32 1 }
@___asan_gen_.1529 = private unnamed_addr constant [14 x i8] c"sparx5_pin_50\00", align 1
@___asan_gen_.1531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 756, i32 1 }
@___asan_gen_.1532 = private unnamed_addr constant [14 x i8] c"sparx5_pin_51\00", align 1
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 757, i32 1 }
@___asan_gen_.1535 = private unnamed_addr constant [14 x i8] c"sparx5_pin_52\00", align 1
@___asan_gen_.1537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 758, i32 1 }
@___asan_gen_.1538 = private unnamed_addr constant [14 x i8] c"sparx5_pin_53\00", align 1
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 759, i32 1 }
@___asan_gen_.1541 = private unnamed_addr constant [14 x i8] c"sparx5_pin_54\00", align 1
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 760, i32 1 }
@___asan_gen_.1544 = private unnamed_addr constant [14 x i8] c"sparx5_pin_55\00", align 1
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 761, i32 1 }
@___asan_gen_.1547 = private unnamed_addr constant [14 x i8] c"sparx5_pin_56\00", align 1
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 762, i32 1 }
@___asan_gen_.1550 = private unnamed_addr constant [14 x i8] c"sparx5_pin_57\00", align 1
@___asan_gen_.1552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 763, i32 1 }
@___asan_gen_.1553 = private unnamed_addr constant [14 x i8] c"sparx5_pin_58\00", align 1
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 764, i32 1 }
@___asan_gen_.1556 = private unnamed_addr constant [14 x i8] c"sparx5_pin_59\00", align 1
@___asan_gen_.1558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 765, i32 1 }
@___asan_gen_.1559 = private unnamed_addr constant [14 x i8] c"sparx5_pin_60\00", align 1
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 766, i32 1 }
@___asan_gen_.1562 = private unnamed_addr constant [14 x i8] c"sparx5_pin_61\00", align 1
@___asan_gen_.1564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 767, i32 1 }
@___asan_gen_.1565 = private unnamed_addr constant [14 x i8] c"sparx5_pin_62\00", align 1
@___asan_gen_.1567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 768, i32 1 }
@___asan_gen_.1568 = private unnamed_addr constant [14 x i8] c"sparx5_pin_63\00", align 1
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 769, i32 1 }
@___asan_gen_.1573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1511, i32 10 }
@___asan_gen_.1574 = private unnamed_addr constant [13 x i8] c"lan966x_pins\00", align 1
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 944, i32 38 }
@___asan_gen_.1577 = private unnamed_addr constant [16 x i8] c"lan966x_pmx_ops\00", align 1
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1182, i32 32 }
@___asan_gen_.1580 = private unnamed_addr constant [14 x i8] c"lan966x_pin_0\00", align 1
@___asan_gen_.1582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 859, i32 1 }
@___asan_gen_.1583 = private unnamed_addr constant [14 x i8] c"lan966x_pin_1\00", align 1
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 860, i32 1 }
@___asan_gen_.1586 = private unnamed_addr constant [14 x i8] c"lan966x_pin_2\00", align 1
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 861, i32 1 }
@___asan_gen_.1589 = private unnamed_addr constant [14 x i8] c"lan966x_pin_3\00", align 1
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 862, i32 1 }
@___asan_gen_.1592 = private unnamed_addr constant [14 x i8] c"lan966x_pin_4\00", align 1
@___asan_gen_.1594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 863, i32 1 }
@___asan_gen_.1595 = private unnamed_addr constant [14 x i8] c"lan966x_pin_5\00", align 1
@___asan_gen_.1597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 864, i32 1 }
@___asan_gen_.1598 = private unnamed_addr constant [14 x i8] c"lan966x_pin_6\00", align 1
@___asan_gen_.1600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 865, i32 1 }
@___asan_gen_.1601 = private unnamed_addr constant [14 x i8] c"lan966x_pin_7\00", align 1
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 866, i32 1 }
@___asan_gen_.1604 = private unnamed_addr constant [14 x i8] c"lan966x_pin_8\00", align 1
@___asan_gen_.1606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 867, i32 1 }
@___asan_gen_.1607 = private unnamed_addr constant [14 x i8] c"lan966x_pin_9\00", align 1
@___asan_gen_.1609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 868, i32 1 }
@___asan_gen_.1610 = private unnamed_addr constant [15 x i8] c"lan966x_pin_10\00", align 1
@___asan_gen_.1612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 869, i32 1 }
@___asan_gen_.1613 = private unnamed_addr constant [15 x i8] c"lan966x_pin_11\00", align 1
@___asan_gen_.1615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 870, i32 1 }
@___asan_gen_.1616 = private unnamed_addr constant [15 x i8] c"lan966x_pin_12\00", align 1
@___asan_gen_.1618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 871, i32 1 }
@___asan_gen_.1619 = private unnamed_addr constant [15 x i8] c"lan966x_pin_13\00", align 1
@___asan_gen_.1621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 872, i32 1 }
@___asan_gen_.1622 = private unnamed_addr constant [15 x i8] c"lan966x_pin_14\00", align 1
@___asan_gen_.1624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 873, i32 1 }
@___asan_gen_.1625 = private unnamed_addr constant [15 x i8] c"lan966x_pin_15\00", align 1
@___asan_gen_.1627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 874, i32 1 }
@___asan_gen_.1628 = private unnamed_addr constant [15 x i8] c"lan966x_pin_16\00", align 1
@___asan_gen_.1630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 875, i32 1 }
@___asan_gen_.1631 = private unnamed_addr constant [15 x i8] c"lan966x_pin_17\00", align 1
@___asan_gen_.1633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 876, i32 1 }
@___asan_gen_.1634 = private unnamed_addr constant [15 x i8] c"lan966x_pin_18\00", align 1
@___asan_gen_.1636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 877, i32 1 }
@___asan_gen_.1637 = private unnamed_addr constant [15 x i8] c"lan966x_pin_19\00", align 1
@___asan_gen_.1639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 878, i32 1 }
@___asan_gen_.1640 = private unnamed_addr constant [15 x i8] c"lan966x_pin_20\00", align 1
@___asan_gen_.1642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 879, i32 1 }
@___asan_gen_.1643 = private unnamed_addr constant [15 x i8] c"lan966x_pin_21\00", align 1
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 880, i32 1 }
@___asan_gen_.1646 = private unnamed_addr constant [15 x i8] c"lan966x_pin_22\00", align 1
@___asan_gen_.1648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 881, i32 1 }
@___asan_gen_.1649 = private unnamed_addr constant [15 x i8] c"lan966x_pin_23\00", align 1
@___asan_gen_.1651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 882, i32 1 }
@___asan_gen_.1652 = private unnamed_addr constant [15 x i8] c"lan966x_pin_24\00", align 1
@___asan_gen_.1654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 883, i32 1 }
@___asan_gen_.1655 = private unnamed_addr constant [15 x i8] c"lan966x_pin_25\00", align 1
@___asan_gen_.1657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 884, i32 1 }
@___asan_gen_.1658 = private unnamed_addr constant [15 x i8] c"lan966x_pin_26\00", align 1
@___asan_gen_.1660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 885, i32 1 }
@___asan_gen_.1661 = private unnamed_addr constant [15 x i8] c"lan966x_pin_27\00", align 1
@___asan_gen_.1663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 886, i32 1 }
@___asan_gen_.1664 = private unnamed_addr constant [15 x i8] c"lan966x_pin_28\00", align 1
@___asan_gen_.1666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 887, i32 1 }
@___asan_gen_.1667 = private unnamed_addr constant [15 x i8] c"lan966x_pin_29\00", align 1
@___asan_gen_.1669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 888, i32 1 }
@___asan_gen_.1670 = private unnamed_addr constant [15 x i8] c"lan966x_pin_30\00", align 1
@___asan_gen_.1672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 889, i32 1 }
@___asan_gen_.1673 = private unnamed_addr constant [15 x i8] c"lan966x_pin_31\00", align 1
@___asan_gen_.1675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 890, i32 1 }
@___asan_gen_.1676 = private unnamed_addr constant [15 x i8] c"lan966x_pin_32\00", align 1
@___asan_gen_.1678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 891, i32 1 }
@___asan_gen_.1679 = private unnamed_addr constant [15 x i8] c"lan966x_pin_33\00", align 1
@___asan_gen_.1681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 892, i32 1 }
@___asan_gen_.1682 = private unnamed_addr constant [15 x i8] c"lan966x_pin_34\00", align 1
@___asan_gen_.1684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 893, i32 1 }
@___asan_gen_.1685 = private unnamed_addr constant [15 x i8] c"lan966x_pin_35\00", align 1
@___asan_gen_.1687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 894, i32 1 }
@___asan_gen_.1688 = private unnamed_addr constant [15 x i8] c"lan966x_pin_36\00", align 1
@___asan_gen_.1690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 895, i32 1 }
@___asan_gen_.1691 = private unnamed_addr constant [15 x i8] c"lan966x_pin_37\00", align 1
@___asan_gen_.1693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 896, i32 1 }
@___asan_gen_.1694 = private unnamed_addr constant [15 x i8] c"lan966x_pin_38\00", align 1
@___asan_gen_.1696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 897, i32 1 }
@___asan_gen_.1697 = private unnamed_addr constant [15 x i8] c"lan966x_pin_39\00", align 1
@___asan_gen_.1699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 898, i32 1 }
@___asan_gen_.1700 = private unnamed_addr constant [15 x i8] c"lan966x_pin_40\00", align 1
@___asan_gen_.1702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 899, i32 1 }
@___asan_gen_.1703 = private unnamed_addr constant [15 x i8] c"lan966x_pin_41\00", align 1
@___asan_gen_.1705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 900, i32 1 }
@___asan_gen_.1706 = private unnamed_addr constant [15 x i8] c"lan966x_pin_42\00", align 1
@___asan_gen_.1708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 901, i32 1 }
@___asan_gen_.1709 = private unnamed_addr constant [15 x i8] c"lan966x_pin_43\00", align 1
@___asan_gen_.1711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 902, i32 1 }
@___asan_gen_.1712 = private unnamed_addr constant [15 x i8] c"lan966x_pin_44\00", align 1
@___asan_gen_.1714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 903, i32 1 }
@___asan_gen_.1715 = private unnamed_addr constant [15 x i8] c"lan966x_pin_45\00", align 1
@___asan_gen_.1717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 904, i32 1 }
@___asan_gen_.1718 = private unnamed_addr constant [15 x i8] c"lan966x_pin_46\00", align 1
@___asan_gen_.1720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 905, i32 1 }
@___asan_gen_.1721 = private unnamed_addr constant [15 x i8] c"lan966x_pin_47\00", align 1
@___asan_gen_.1723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 906, i32 1 }
@___asan_gen_.1724 = private unnamed_addr constant [15 x i8] c"lan966x_pin_48\00", align 1
@___asan_gen_.1726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 907, i32 1 }
@___asan_gen_.1727 = private unnamed_addr constant [15 x i8] c"lan966x_pin_49\00", align 1
@___asan_gen_.1729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 908, i32 1 }
@___asan_gen_.1730 = private unnamed_addr constant [15 x i8] c"lan966x_pin_50\00", align 1
@___asan_gen_.1732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 909, i32 1 }
@___asan_gen_.1733 = private unnamed_addr constant [15 x i8] c"lan966x_pin_51\00", align 1
@___asan_gen_.1735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 910, i32 1 }
@___asan_gen_.1736 = private unnamed_addr constant [15 x i8] c"lan966x_pin_52\00", align 1
@___asan_gen_.1738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 911, i32 1 }
@___asan_gen_.1739 = private unnamed_addr constant [15 x i8] c"lan966x_pin_53\00", align 1
@___asan_gen_.1741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 912, i32 1 }
@___asan_gen_.1742 = private unnamed_addr constant [15 x i8] c"lan966x_pin_54\00", align 1
@___asan_gen_.1744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 913, i32 1 }
@___asan_gen_.1745 = private unnamed_addr constant [15 x i8] c"lan966x_pin_55\00", align 1
@___asan_gen_.1747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 914, i32 1 }
@___asan_gen_.1748 = private unnamed_addr constant [15 x i8] c"lan966x_pin_56\00", align 1
@___asan_gen_.1750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 915, i32 1 }
@___asan_gen_.1751 = private unnamed_addr constant [15 x i8] c"lan966x_pin_57\00", align 1
@___asan_gen_.1753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 916, i32 1 }
@___asan_gen_.1754 = private unnamed_addr constant [15 x i8] c"lan966x_pin_58\00", align 1
@___asan_gen_.1756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 917, i32 1 }
@___asan_gen_.1757 = private unnamed_addr constant [15 x i8] c"lan966x_pin_59\00", align 1
@___asan_gen_.1759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 918, i32 1 }
@___asan_gen_.1760 = private unnamed_addr constant [15 x i8] c"lan966x_pin_60\00", align 1
@___asan_gen_.1762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 919, i32 1 }
@___asan_gen_.1763 = private unnamed_addr constant [15 x i8] c"lan966x_pin_61\00", align 1
@___asan_gen_.1765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 920, i32 1 }
@___asan_gen_.1766 = private unnamed_addr constant [15 x i8] c"lan966x_pin_62\00", align 1
@___asan_gen_.1768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 921, i32 1 }
@___asan_gen_.1769 = private unnamed_addr constant [15 x i8] c"lan966x_pin_63\00", align 1
@___asan_gen_.1771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 922, i32 1 }
@___asan_gen_.1774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1009, i32 2 }
@___asan_gen_.1775 = private unnamed_addr constant [15 x i8] c"lan966x_pin_64\00", align 1
@___asan_gen_.1777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 923, i32 1 }
@___asan_gen_.1780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1010, i32 2 }
@___asan_gen_.1781 = private unnamed_addr constant [15 x i8] c"lan966x_pin_65\00", align 1
@___asan_gen_.1783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 924, i32 1 }
@___asan_gen_.1786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1011, i32 2 }
@___asan_gen_.1787 = private unnamed_addr constant [15 x i8] c"lan966x_pin_66\00", align 1
@___asan_gen_.1789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 925, i32 1 }
@___asan_gen_.1792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1012, i32 2 }
@___asan_gen_.1793 = private unnamed_addr constant [15 x i8] c"lan966x_pin_67\00", align 1
@___asan_gen_.1795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 926, i32 1 }
@___asan_gen_.1798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1013, i32 2 }
@___asan_gen_.1799 = private unnamed_addr constant [15 x i8] c"lan966x_pin_68\00", align 1
@___asan_gen_.1801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 927, i32 1 }
@___asan_gen_.1804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1014, i32 2 }
@___asan_gen_.1805 = private unnamed_addr constant [15 x i8] c"lan966x_pin_69\00", align 1
@___asan_gen_.1807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 928, i32 1 }
@___asan_gen_.1810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1015, i32 2 }
@___asan_gen_.1811 = private unnamed_addr constant [15 x i8] c"lan966x_pin_70\00", align 1
@___asan_gen_.1813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 929, i32 1 }
@___asan_gen_.1816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1016, i32 2 }
@___asan_gen_.1817 = private unnamed_addr constant [15 x i8] c"lan966x_pin_71\00", align 1
@___asan_gen_.1819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 930, i32 1 }
@___asan_gen_.1822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1017, i32 2 }
@___asan_gen_.1823 = private unnamed_addr constant [15 x i8] c"lan966x_pin_72\00", align 1
@___asan_gen_.1825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 931, i32 1 }
@___asan_gen_.1828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1018, i32 2 }
@___asan_gen_.1829 = private unnamed_addr constant [15 x i8] c"lan966x_pin_73\00", align 1
@___asan_gen_.1831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 932, i32 1 }
@___asan_gen_.1834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1019, i32 2 }
@___asan_gen_.1835 = private unnamed_addr constant [15 x i8] c"lan966x_pin_74\00", align 1
@___asan_gen_.1837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 933, i32 1 }
@___asan_gen_.1840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1020, i32 2 }
@___asan_gen_.1841 = private unnamed_addr constant [15 x i8] c"lan966x_pin_75\00", align 1
@___asan_gen_.1843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 934, i32 1 }
@___asan_gen_.1846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1021, i32 2 }
@___asan_gen_.1847 = private unnamed_addr constant [15 x i8] c"lan966x_pin_76\00", align 1
@___asan_gen_.1849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 935, i32 1 }
@___asan_gen_.1850 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 1022, i32 2 }
@___asan_gen_.1853 = private unnamed_addr constant [15 x i8] c"lan966x_pin_77\00", align 1
@___asan_gen_.1854 = private constant [36 x i8] c"../drivers/pinctrl/pinctrl-ocelot.c\00", align 1
@___asan_gen_.1855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1854, i32 936, i32 1 }
@llvm.compiler.used = appending global [548 x ptr] [ptr @__initcall__kmod_pinctrl_ocelot__231_1868_ocelot_pinctrl_driver_init6, ptr @ocelot_pinctrl_probe._entry, ptr @ocelot_pinctrl_probe._entry.9, ptr @ocelot_pinctrl_probe._entry_ptr, ptr @ocelot_pinctrl_probe._entry_ptr.12, ptr @ocelot_pinctrl_register._entry, ptr @ocelot_pinctrl_register._entry.18, ptr @ocelot_pinctrl_register._entry_ptr, ptr @ocelot_pinctrl_register._entry_ptr.20, ptr @ocelot_pinctrl_driver, ptr @.str, ptr @ocelot_pinctrl_of_match, ptr @ocelot_pinctrl_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @ocelot_pinctrl_create_pincfg._key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @ocelot_gpiolib_chip, ptr @.str.21, ptr @ocelot_irqchip, ptr @ocelot_gpiochip_register.lock_key, ptr @ocelot_gpiochip_register.request_key, ptr @.str.22, ptr @ocelot_eoi_irqchip, ptr @luton_desc, ptr @serval_desc, ptr @ocelot_desc, ptr @jaguar2_desc, ptr @sparx5_desc, ptr @lan966x_desc, ptr @.str.23, ptr @luton_pins, ptr @ocelot_pctl_ops, ptr @ocelot_pmx_ops, ptr @.str.24, ptr @luton_pin_0, ptr @.str.25, ptr @luton_pin_1, ptr @.str.26, ptr @luton_pin_2, ptr @.str.27, ptr @luton_pin_3, ptr @.str.28, ptr @luton_pin_4, ptr @.str.29, ptr @luton_pin_5, ptr @.str.30, ptr @luton_pin_6, ptr @.str.31, ptr @luton_pin_7, ptr @.str.32, ptr @luton_pin_8, ptr @.str.33, ptr @luton_pin_9, ptr @.str.34, ptr @luton_pin_10, ptr @.str.35, ptr @luton_pin_11, ptr @.str.36, ptr @luton_pin_12, ptr @.str.37, ptr @luton_pin_13, ptr @.str.38, ptr @luton_pin_14, ptr @.str.39, ptr @luton_pin_15, ptr @.str.40, ptr @luton_pin_16, ptr @.str.41, ptr @luton_pin_17, ptr @.str.42, ptr @luton_pin_18, ptr @.str.43, ptr @luton_pin_19, ptr @.str.44, ptr @luton_pin_20, ptr @.str.45, ptr @luton_pin_21, ptr @.str.46, ptr @luton_pin_22, ptr @.str.47, ptr @luton_pin_23, ptr @.str.48, ptr @luton_pin_24, ptr @.str.49, ptr @luton_pin_25, ptr @.str.50, ptr @luton_pin_26, ptr @.str.51, ptr @luton_pin_27, ptr @.str.52, ptr @luton_pin_28, ptr @.str.53, ptr @luton_pin_29, ptr @.str.54, ptr @luton_pin_30, ptr @.str.55, ptr @luton_pin_31, ptr @ocelot_function_names, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @serval_pins, ptr @serval_pin_0, ptr @serval_pin_1, ptr @serval_pin_2, ptr @serval_pin_3, ptr @serval_pin_4, ptr @serval_pin_5, ptr @serval_pin_6, ptr @serval_pin_7, ptr @serval_pin_8, ptr @serval_pin_9, ptr @serval_pin_10, ptr @serval_pin_11, ptr @serval_pin_12, ptr @serval_pin_13, ptr @serval_pin_14, ptr @serval_pin_15, ptr @serval_pin_16, ptr @serval_pin_17, ptr @serval_pin_18, ptr @serval_pin_19, ptr @serval_pin_20, ptr @serval_pin_21, ptr @serval_pin_22, ptr @serval_pin_23, ptr @serval_pin_24, ptr @serval_pin_25, ptr @serval_pin_26, ptr @serval_pin_27, ptr @serval_pin_28, ptr @serval_pin_29, ptr @serval_pin_30, ptr @serval_pin_31, ptr @.str.175, ptr @ocelot_pins, ptr @ocelot_pin_0, ptr @ocelot_pin_1, ptr @ocelot_pin_2, ptr @ocelot_pin_3, ptr @ocelot_pin_4, ptr @ocelot_pin_5, ptr @ocelot_pin_6, ptr @ocelot_pin_7, ptr @ocelot_pin_8, ptr @ocelot_pin_9, ptr @ocelot_pin_10, ptr @ocelot_pin_11, ptr @ocelot_pin_12, ptr @ocelot_pin_13, ptr @ocelot_pin_14, ptr @ocelot_pin_15, ptr @ocelot_pin_16, ptr @ocelot_pin_17, ptr @ocelot_pin_18, ptr @ocelot_pin_19, ptr @ocelot_pin_20, ptr @ocelot_pin_21, ptr @.str.176, ptr @jaguar2_pins, ptr @jaguar2_pin_0, ptr @jaguar2_pin_1, ptr @jaguar2_pin_2, ptr @jaguar2_pin_3, ptr @jaguar2_pin_4, ptr @jaguar2_pin_5, ptr @jaguar2_pin_6, ptr @jaguar2_pin_7, ptr @jaguar2_pin_8, ptr @jaguar2_pin_9, ptr @jaguar2_pin_10, ptr @jaguar2_pin_11, ptr @jaguar2_pin_12, ptr @jaguar2_pin_13, ptr @jaguar2_pin_14, ptr @jaguar2_pin_15, ptr @jaguar2_pin_16, ptr @jaguar2_pin_17, ptr @jaguar2_pin_18, ptr @jaguar2_pin_19, ptr @jaguar2_pin_20, ptr @jaguar2_pin_21, ptr @jaguar2_pin_22, ptr @jaguar2_pin_23, ptr @jaguar2_pin_24, ptr @jaguar2_pin_25, ptr @jaguar2_pin_26, ptr @jaguar2_pin_27, ptr @jaguar2_pin_28, ptr @jaguar2_pin_29, ptr @jaguar2_pin_30, ptr @jaguar2_pin_31, ptr @.str.177, ptr @jaguar2_pin_32, ptr @.str.178, ptr @jaguar2_pin_33, ptr @.str.179, ptr @jaguar2_pin_34, ptr @.str.180, ptr @jaguar2_pin_35, ptr @.str.181, ptr @jaguar2_pin_36, ptr @.str.182, ptr @jaguar2_pin_37, ptr @.str.183, ptr @jaguar2_pin_38, ptr @.str.184, ptr @jaguar2_pin_39, ptr @.str.185, ptr @jaguar2_pin_40, ptr @.str.186, ptr @jaguar2_pin_41, ptr @.str.187, ptr @jaguar2_pin_42, ptr @.str.188, ptr @jaguar2_pin_43, ptr @.str.189, ptr @jaguar2_pin_44, ptr @.str.190, ptr @jaguar2_pin_45, ptr @.str.191, ptr @jaguar2_pin_46, ptr @.str.192, ptr @jaguar2_pin_47, ptr @.str.193, ptr @jaguar2_pin_48, ptr @.str.194, ptr @jaguar2_pin_49, ptr @.str.195, ptr @jaguar2_pin_50, ptr @.str.196, ptr @jaguar2_pin_51, ptr @.str.197, ptr @jaguar2_pin_52, ptr @.str.198, ptr @jaguar2_pin_53, ptr @.str.199, ptr @jaguar2_pin_54, ptr @.str.200, ptr @jaguar2_pin_55, ptr @.str.201, ptr @jaguar2_pin_56, ptr @.str.202, ptr @jaguar2_pin_57, ptr @.str.203, ptr @jaguar2_pin_58, ptr @.str.204, ptr @jaguar2_pin_59, ptr @.str.205, ptr @jaguar2_pin_60, ptr @.str.206, ptr @jaguar2_pin_61, ptr @.str.207, ptr @jaguar2_pin_62, ptr @.str.208, ptr @jaguar2_pin_63, ptr @.str.209, ptr @sparx5_pins, ptr @ocelot_confops, ptr @sparx5_pin_0, ptr @sparx5_pin_1, ptr @sparx5_pin_2, ptr @sparx5_pin_3, ptr @sparx5_pin_4, ptr @sparx5_pin_5, ptr @sparx5_pin_6, ptr @sparx5_pin_7, ptr @sparx5_pin_8, ptr @sparx5_pin_9, ptr @sparx5_pin_10, ptr @sparx5_pin_11, ptr @sparx5_pin_12, ptr @sparx5_pin_13, ptr @sparx5_pin_14, ptr @sparx5_pin_15, ptr @sparx5_pin_16, ptr @sparx5_pin_17, ptr @sparx5_pin_18, ptr @sparx5_pin_19, ptr @sparx5_pin_20, ptr @sparx5_pin_21, ptr @sparx5_pin_22, ptr @sparx5_pin_23, ptr @sparx5_pin_24, ptr @sparx5_pin_25, ptr @sparx5_pin_26, ptr @sparx5_pin_27, ptr @sparx5_pin_28, ptr @sparx5_pin_29, ptr @sparx5_pin_30, ptr @sparx5_pin_31, ptr @sparx5_pin_32, ptr @sparx5_pin_33, ptr @sparx5_pin_34, ptr @sparx5_pin_35, ptr @sparx5_pin_36, ptr @sparx5_pin_37, ptr @sparx5_pin_38, ptr @sparx5_pin_39, ptr @sparx5_pin_40, ptr @sparx5_pin_41, ptr @sparx5_pin_42, ptr @sparx5_pin_43, ptr @sparx5_pin_44, ptr @sparx5_pin_45, ptr @sparx5_pin_46, ptr @sparx5_pin_47, ptr @sparx5_pin_48, ptr @sparx5_pin_49, ptr @sparx5_pin_50, ptr @sparx5_pin_51, ptr @sparx5_pin_52, ptr @sparx5_pin_53, ptr @sparx5_pin_54, ptr @sparx5_pin_55, ptr @sparx5_pin_56, ptr @sparx5_pin_57, ptr @sparx5_pin_58, ptr @sparx5_pin_59, ptr @sparx5_pin_60, ptr @sparx5_pin_61, ptr @sparx5_pin_62, ptr @sparx5_pin_63, ptr @.str.210, ptr @lan966x_pins, ptr @lan966x_pmx_ops, ptr @lan966x_pin_0, ptr @lan966x_pin_1, ptr @lan966x_pin_2, ptr @lan966x_pin_3, ptr @lan966x_pin_4, ptr @lan966x_pin_5, ptr @lan966x_pin_6, ptr @lan966x_pin_7, ptr @lan966x_pin_8, ptr @lan966x_pin_9, ptr @lan966x_pin_10, ptr @lan966x_pin_11, ptr @lan966x_pin_12, ptr @lan966x_pin_13, ptr @lan966x_pin_14, ptr @lan966x_pin_15, ptr @lan966x_pin_16, ptr @lan966x_pin_17, ptr @lan966x_pin_18, ptr @lan966x_pin_19, ptr @lan966x_pin_20, ptr @lan966x_pin_21, ptr @lan966x_pin_22, ptr @lan966x_pin_23, ptr @lan966x_pin_24, ptr @lan966x_pin_25, ptr @lan966x_pin_26, ptr @lan966x_pin_27, ptr @lan966x_pin_28, ptr @lan966x_pin_29, ptr @lan966x_pin_30, ptr @lan966x_pin_31, ptr @lan966x_pin_32, ptr @lan966x_pin_33, ptr @lan966x_pin_34, ptr @lan966x_pin_35, ptr @lan966x_pin_36, ptr @lan966x_pin_37, ptr @lan966x_pin_38, ptr @lan966x_pin_39, ptr @lan966x_pin_40, ptr @lan966x_pin_41, ptr @lan966x_pin_42, ptr @lan966x_pin_43, ptr @lan966x_pin_44, ptr @lan966x_pin_45, ptr @lan966x_pin_46, ptr @lan966x_pin_47, ptr @lan966x_pin_48, ptr @lan966x_pin_49, ptr @lan966x_pin_50, ptr @lan966x_pin_51, ptr @lan966x_pin_52, ptr @lan966x_pin_53, ptr @lan966x_pin_54, ptr @lan966x_pin_55, ptr @lan966x_pin_56, ptr @lan966x_pin_57, ptr @lan966x_pin_58, ptr @lan966x_pin_59, ptr @lan966x_pin_60, ptr @lan966x_pin_61, ptr @lan966x_pin_62, ptr @lan966x_pin_63, ptr @.str.211, ptr @lan966x_pin_64, ptr @.str.212, ptr @lan966x_pin_65, ptr @.str.213, ptr @lan966x_pin_66, ptr @.str.214, ptr @lan966x_pin_67, ptr @.str.215, ptr @lan966x_pin_68, ptr @.str.216, ptr @lan966x_pin_69, ptr @.str.217, ptr @lan966x_pin_70, ptr @.str.218, ptr @lan966x_pin_71, ptr @.str.219, ptr @lan966x_pin_72, ptr @.str.220, ptr @lan966x_pin_73, ptr @.str.221, ptr @lan966x_pin_74, ptr @.str.222, ptr @lan966x_pin_75, ptr @.str.223, ptr @lan966x_pin_76, ptr @.str.224, ptr @lan966x_pin_77], section "llvm.metadata"
@0 = internal global [543 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pinctrl_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pinctrl_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pinctrl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pinctrl_create_pincfg._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pinctrl_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pinctrl_register._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_gpiolib_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_gpiochip_register.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_gpiochip_register.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_eoi_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pins to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luton_pin_31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_function_names to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pins to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serval_pin_31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pins to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_pin_21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pins to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jaguar2_pin_63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pins to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_confops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_pin_63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pins to i32), i32 936, i32 1184, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1580 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1586 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1592 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1598 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1640 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1676 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1682 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1688 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1691 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1694 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1697 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1709 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1712 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1718 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1724 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1730 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1742 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1748 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1757 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1760 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1763 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1787 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1793 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1805 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1811 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1817 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1829 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1835 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1841 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_pin_77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1853 to i32), i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ocelot_pinctrl_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regmap_config.i = alloca %struct.regmap_config, align 4
  %regmap_config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_config) #10
  %0 = call ptr @memset(ptr %regmap_config, i32 0, i32 172)
  %1 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %1, align 4
  %3 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %3, align 4
  %5 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %5, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1324, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev1) #10
  %desc = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %desc, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #10
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %npins, align 4
  %sub = add i32 %12, 8191
  %div89 = lshr i32 %sub, 5
  %13 = trunc i32 %div89 to i8
  %conv = add i8 %13, 1
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %stride to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %stride, align 4
  %conv11 = zext i8 %conv to i32
  %mul = mul nuw nsw i32 %conv11, 40
  %add12 = add nuw nsw i32 %mul, 60
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 19
  %15 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add12, ptr %max_register, align 4
  %call13 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call4, ptr noundef nonnull %regmap_config, ptr noundef nonnull @ocelot_pinctrl_probe._key, ptr noundef nonnull @.str.1) #10
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %map, align 4
  %cmp.i90 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call13, ptr %driver_data.i, align 4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev1, ptr %call.i, align 4
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %confops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %confops, align 4
  %tobool23.not = icmp eq ptr %25, null
  br i1 %tobool23.not, label %if.end19.if.end7.i.i.i.i_crit_edge, label %if.then24

if.end19.if.end7.i.i.i.i_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i.i.i

if.then24:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_config.i) #10
  %26 = call ptr @memset(ptr %regmap_config.i, i32 0, i32 172)
  %27 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 32, ptr %27, align 4
  %29 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config.i, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %29, align 4
  %31 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config.i, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 32, ptr %31, align 4
  %33 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config.i, i32 0, i32 21
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %33, align 4
  %call.i91 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %cmp.i.i = icmp ugt ptr %call.i91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ocelot_pinctrl_create_pincfg.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ocelot_pinctrl_probe, %ocelot_pinctrl_create_pincfg.exit)) #10
          to label %ocelot_pinctrl_create_pincfg.exit.thread [label %ocelot_pinctrl_create_pincfg.exit], !srcloc !1088

ocelot_pinctrl_create_pincfg.exit.thread:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ocelot_pinctrl_create_pincfg.__UNIQUE_ID_ddebug229, ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config.i) #10
  br label %if.else

if.end7.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call.i91, ptr noundef nonnull %regmap_config.i, ptr noundef nonnull @ocelot_pinctrl_create_pincfg._key, ptr noundef nonnull @.str.15) #10
  br label %ocelot_pinctrl_create_pincfg.exit

ocelot_pinctrl_create_pincfg.exit:                ; preds = %if.end7.i, %do.body.i
  %retval.0.i92 = phi ptr [ %call10.i, %if.end7.i ], [ null, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config.i) #10
  %cmp.i93 = icmp ugt ptr %retval.0.i92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %do.body28, label %ocelot_pinctrl_create_pincfg.exit.if.else_crit_edge

ocelot_pinctrl_create_pincfg.exit.if.else_crit_edge: ; preds = %ocelot_pinctrl_create_pincfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.body28:                                        ; preds = %ocelot_pinctrl_create_pincfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ocelot_pinctrl_probe.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ocelot_pinctrl_probe, %if.end7.i.i.i.i)) #10
          to label %if.then35 [label %if.end7.i.i.i.i], !srcloc !1088

if.then35:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ocelot_pinctrl_probe.__UNIQUE_ID_ddebug230, ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %if.end7.i.i.i.i

if.else:                                          ; preds = %ocelot_pinctrl_create_pincfg.exit.if.else_crit_edge, %ocelot_pinctrl_create_pincfg.exit.thread
  %retval.0.i92103 = phi ptr [ null, %ocelot_pinctrl_create_pincfg.exit.thread ], [ %retval.0.i92, %ocelot_pinctrl_create_pincfg.exit.if.else_crit_edge ]
  %pincfg39 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %pincfg39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i92103, ptr %pincfg39, align 4
  br label %if.end7.i.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.else, %if.then35, %do.body28, %if.end19.if.end7.i.i.i.i_crit_edge
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc, align 4
  %npins1.i.i = getelementptr inbounds %struct.pinctrl_desc, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %npins1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %npins1.i.i, align 4
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #14
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.ocelot_pinctrl_register.exit.thread107_crit_edge, label %if.end7.i.i.i.i.for.cond2.preheader.i.i_crit_edge

if.end7.i.i.i.i.for.cond2.preheader.i.i_crit_edge: ; preds = %if.end7.i.i.i.i
  br label %for.cond2.preheader.i.i

if.end7.i.i.i.i.ocelot_pinctrl_register.exit.thread107_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocelot_pinctrl_register.exit.thread107

for.cond2.preheader.i.i:                          ; preds = %for.inc40.i.i.for.cond2.preheader.i.i_crit_edge, %if.end7.i.i.i.i.for.cond2.preheader.i.i_crit_edge
  %f.092.i.i = phi i32 [ %inc41.i.i, %for.inc40.i.i.for.cond2.preheader.i.i_crit_edge ], [ 0, %if.end7.i.i.i.i.for.cond2.preheader.i.i_crit_edge ]
  %40 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc, align 4
  %npins484.i.i = getelementptr inbounds %struct.pinctrl_desc, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %npins484.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %npins484.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp585.not.i.i = icmp eq i32 %43, 0
  br i1 %cmp585.not.i.i, label %for.cond2.preheader.i.i.for.inc40.i.i_crit_edge, label %for.body6.i.i.preheader

for.cond2.preheader.i.i.for.inc40.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc40.i.i

for.body6.i.i.preheader:                          ; preds = %for.cond2.preheader.i.i
  %44 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc, align 4
  %npins4.i.i = getelementptr inbounds %struct.pinctrl_desc, ptr %45, i32 0, i32 2
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %for.inc.i.i.for.body6.i.i_crit_edge, %for.body6.i.i.preheader
  %46 = phi ptr [ %45, %for.inc.i.i.for.body6.i.i_crit_edge ], [ %41, %for.body6.i.i.preheader ]
  %i.088.i.i = phi i32 [ %inc11.i.i, %for.inc.i.i.for.body6.i.i_crit_edge ], [ 0, %for.body6.i.i.preheader ]
  %npins.086.i.i = phi i32 [ %npins.1.i.i, %for.inc.i.i.for.body6.i.i_crit_edge ], [ 0, %for.body6.i.i.preheader ]
  %pins.i.i.i = getelementptr inbounds %struct.pinctrl_desc, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %pins.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pins.i.i.i, align 4
  %drv_data.i.i.i = getelementptr %struct.pinctrl_pin_desc, ptr %48, i32 %i.088.i.i, i32 2
  %49 = ptrtoint ptr %drv_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %drv_data.i.i.i, align 4
  %arrayidx1.i.i.i = getelementptr %struct.ocelot_pin_caps, ptr %50, i32 0, i32 1, i32 0
  %51 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv.i.i.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %f.092.i.i, i32 %conv.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %f.092.i.i, %conv.i.i.i
  br i1 %cmp2.i.i.i, label %for.body6.i.i.if.then9.i.i_crit_edge, label %if.end.i.i.i

for.body6.i.i.if.then9.i.i_crit_edge:             ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i.i

if.end.i.i.i:                                     ; preds = %for.body6.i.i
  %arrayidx4.i.i.i = getelementptr %struct.ocelot_pin_caps, ptr %50, i32 0, i32 2, i32 0
  %53 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %f.092.i.i, i32 %conv5.i.i.i)
  %cmp6.i.i.i = icmp eq i32 %f.092.i.i, %conv5.i.i.i
  br i1 %cmp6.i.i.i, label %if.end.i.i.i.if.then9.i.i_crit_edge, label %for.inc.i.i.i

if.end.i.i.i.if.then9.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i
  %arrayidx1.1.i.i.i = getelementptr %struct.ocelot_pin_caps, ptr %50, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx1.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx1.1.i.i.i, align 1
  %conv.1.i.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %f.092.i.i, i32 %conv.1.i.i.i)
  %cmp2.1.i.i.i = icmp eq i32 %f.092.i.i, %conv.1.i.i.i
  br i1 %cmp2.1.i.i.i, label %for.inc.i.i.i.if.then9.i.i_crit_edge, label %if.end.1.i.i.i

for.inc.i.i.i.if.then9.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i.i

if.end.1.i.i.i:                                   ; preds = %for.inc.i.i.i
  %arrayidx4.1.i.i.i = getelementptr %struct.ocelot_pin_caps, ptr %50, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %arrayidx4.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx4.1.i.i.i, align 1
  %conv5.1.i.i.i = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %f.092.i.i, i32 %conv5.1.i.i.i)
  %cmp6.1.i.i.i = icmp eq i32 %f.092.i.i, %conv5.1.i.i.i
  br i1 %cmp6.1.i.i.i, label %if.end.1.i.i.i.if.then9.i.i_crit_edge, label %for.inc.1.i.i.i

if.end.1.i.i.i.if.then9.i.i_crit_edge:            ; preds = %if.end.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i.i

for.inc.1.i.i.i:                                  ; preds = %if.end.1.i.i.i
  %arrayidx1.2.i.i.i = getelementptr %struct.ocelot_pin_caps, ptr %50, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx1.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx1.2.i.i.i, align 1
  %conv.2.i.i.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %f.092.i.i, i32 %conv.2.i.i.i)
  %cmp2.2.i.i.i = icmp eq i32 %f.092.i.i, %conv.2.i.i.i
  br i1 %cmp2.2.i.i.i, label %for.inc.1.i.i.i.if.then9.i.i_crit_edge, label %if.end.2.i.i.i

for.inc.1.i.i.i.if.then9.i.i_crit_edge:           ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i.i

if.end.2.i.i.i:                                   ; preds = %for.inc.1.i.i.i
  %arrayidx4.2.i.i.i = getelementptr %struct.ocelot_pin_caps, ptr %50, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %arrayidx4.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx4.2.i.i.i, align 1
  %conv5.2.i.i.i = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %f.092.i.i, i32 %conv5.2.i.i.i)
  %cmp6.2.i.i.i = icmp eq i32 %f.092.i.i, %conv5.2.i.i.i
  br i1 %cmp6.2.i.i.i, label %if.end.2.i.i.i.if.then9.i.i_crit_edge, label %for.inc.2.i.i.i

if.end.2.i.i.i.if.then9.i.i_crit_edge:            ; preds = %if.end.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i.i

for.inc.2.i.i.i:                                  ; preds = %if.end.2.i.i.i
  %arrayidx1.3.i.i.i = getelementptr %struct.ocelot_pin_caps, ptr %50, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %arrayidx1.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx1.3.i.i.i, align 1
  %conv.3.i.i.i = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %f.092.i.i, i32 %conv.3.i.i.i)
  %cmp2.3.i.i.i = icmp eq i32 %f.092.i.i, %conv.3.i.i.i
  br i1 %cmp2.3.i.i.i, label %for.inc.2.i.i.i.if.then9.i.i_crit_edge, label %if.end.3.i.i.i

for.inc.2.i.i.i.if.then9.i.i_crit_edge:           ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i.i

if.end.3.i.i.i:                                   ; preds = %for.inc.2.i.i.i
  %arrayidx4.3.i.i.i = getelementptr %struct.ocelot_pin_caps, ptr %50, i32 0, i32 2, i32 3
  %65 = ptrtoint ptr %arrayidx4.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx4.3.i.i.i, align 1
  %conv5.3.i.i.i = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %f.092.i.i, i32 %conv5.3.i.i.i)
  %cmp6.3.i.i.i = icmp eq i32 %f.092.i.i, %conv5.3.i.i.i
  br i1 %cmp6.3.i.i.i, label %if.end.3.i.i.i.if.then9.i.i_crit_edge, label %if.end.3.i.i.i.for.inc.i.i_crit_edge

if.end.3.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.3.i.i.i.if.then9.i.i_crit_edge:            ; preds = %if.end.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.3.i.i.i.if.then9.i.i_crit_edge, %for.inc.2.i.i.i.if.then9.i.i_crit_edge, %if.end.2.i.i.i.if.then9.i.i_crit_edge, %for.inc.1.i.i.i.if.then9.i.i_crit_edge, %if.end.1.i.i.i.if.then9.i.i_crit_edge, %for.inc.i.i.i.if.then9.i.i_crit_edge, %if.end.i.i.i.if.then9.i.i_crit_edge, %for.body6.i.i.if.then9.i.i_crit_edge
  %conv.i.i = trunc i32 %i.088.i.i to i8
  %inc.i.i = add i32 %npins.086.i.i, 1
  %arrayidx.i.i = getelementptr i8, ptr %call8.i.i.i.i, i32 %npins.086.i.i
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then9.i.i, %if.end.3.i.i.i.for.inc.i.i_crit_edge
  %npins.1.i.i = phi i32 [ %inc.i.i, %if.then9.i.i ], [ %npins.086.i.i, %if.end.3.i.i.i.for.inc.i.i_crit_edge ]
  %inc11.i.i = add nuw i32 %i.088.i.i, 1
  %68 = ptrtoint ptr %npins4.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %npins4.i.i, align 4
  %cmp5.i.i = icmp ult i32 %inc11.i.i, %69
  br i1 %cmp5.i.i, label %for.inc.i.i.for.body6.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body6.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npins.1.i.i)
  %tobool12.not.i.i = icmp eq i32 %npins.1.i.i, 0
  br i1 %tobool12.not.i.i, label %for.end.i.i.for.inc40.i.i_crit_edge, label %if.end14.i.i

for.end.i.i.for.inc40.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc40.i.i

if.end14.i.i:                                     ; preds = %for.end.i.i
  %arrayidx15.i.i = getelementptr %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 6, i32 %f.092.i.i
  %ngroups.i.i = getelementptr %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 6, i32 %f.092.i.i, i32 1
  %70 = ptrtoint ptr %ngroups.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %npins.1.i.i, ptr %ngroups.i.i, align 4
  %71 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %npins.1.i.i, i32 4) #10
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !1089

devm_kcalloc.exit.thread.i.i:                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %arrayidx15.i.i, align 4
  br label %ocelot_create_group_func_map.exit.thread26.i

devm_kcalloc.exit.i.i:                            ; preds = %if.end14.i.i
  %74 = extractvalue { i32, i1 } %71, 0
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %74, i32 noundef 3520) #10
  %75 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call5.i.i.i.i, ptr %arrayidx15.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool22.not.i.i, label %devm_kcalloc.exit.i.i.ocelot_create_group_func_map.exit.thread26.i_crit_edge, label %devm_kcalloc.exit.i.i.for.body28.i.i_crit_edge

devm_kcalloc.exit.i.i.for.body28.i.i_crit_edge:   ; preds = %devm_kcalloc.exit.i.i
  br label %for.body28.i.i

devm_kcalloc.exit.i.i.ocelot_create_group_func_map.exit.thread26.i_crit_edge: ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocelot_create_group_func_map.exit.thread26.i

for.body28.i.i:                                   ; preds = %for.body28.i.i.for.body28.i.i_crit_edge, %devm_kcalloc.exit.i.i.for.body28.i.i_crit_edge
  %i.191.i.i = phi i32 [ %inc38.i.i, %for.body28.i.i.for.body28.i.i_crit_edge ], [ 0, %devm_kcalloc.exit.i.i.for.body28.i.i_crit_edge ]
  %76 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %desc, align 4
  %pins30.i.i = getelementptr inbounds %struct.pinctrl_desc, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %pins30.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pins30.i.i, align 4
  %arrayidx31.i.i = getelementptr i8, ptr %call8.i.i.i.i, i32 %i.191.i.i
  %80 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx31.i.i, align 1
  %idxprom.i.i = zext i8 %81 to i32
  %name.i.i = getelementptr %struct.pinctrl_pin_desc, ptr %79, i32 %idxprom.i.i, i32 1
  %82 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name.i.i, align 4
  %84 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx15.i.i, align 4
  %arrayidx36.i.i = getelementptr ptr, ptr %85, i32 %i.191.i.i
  %86 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %arrayidx36.i.i, align 4
  %inc38.i.i = add nuw nsw i32 %i.191.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc38.i.i, %npins.1.i.i
  br i1 %exitcond.not.i.i, label %for.body28.i.i.for.inc40.i.i_crit_edge, label %for.body28.i.i.for.body28.i.i_crit_edge

for.body28.i.i.for.body28.i.i_crit_edge:          ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.i.i

for.body28.i.i.for.inc40.i.i_crit_edge:           ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc40.i.i

for.inc40.i.i:                                    ; preds = %for.body28.i.i.for.inc40.i.i_crit_edge, %for.end.i.i.for.inc40.i.i_crit_edge, %for.cond2.preheader.i.i.for.inc40.i.i_crit_edge
  %inc41.i.i = add nuw nsw i32 %f.092.i.i, 1
  %exitcond96.not.i.i = icmp eq i32 %inc41.i.i, 119
  br i1 %exitcond96.not.i.i, label %if.end.i, label %for.inc40.i.i.for.cond2.preheader.i.i_crit_edge

for.inc40.i.i.for.cond2.preheader.i.i_crit_edge:  ; preds = %for.inc40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader.i.i

ocelot_create_group_func_map.exit.thread26.i:     ; preds = %devm_kcalloc.exit.i.i.ocelot_create_group_func_map.exit.thread26.i_crit_edge, %devm_kcalloc.exit.thread.i.i
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #10
  br label %ocelot_pinctrl_register.exit.thread107

ocelot_pinctrl_register.exit.thread107:           ; preds = %ocelot_create_group_func_map.exit.thread26.i, %if.end7.i.i.i.i.ocelot_pinctrl_register.exit.thread107_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end.i:                                         ; preds = %for.inc40.i.i
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #10
  %87 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %desc, align 4
  %call3.i = call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef %88, ptr noundef %call.i) #10
  %pctl.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 1
  %89 = ptrtoint ptr %pctl.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call3.i, ptr %pctl.i, align 4
  %cmp.i.i95 = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i95, label %ocelot_pinctrl_register.exit, label %if.end.i.if.end45_crit_edge

if.end.i.if.end45_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

ocelot_pinctrl_register.exit:                     ; preds = %if.end.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #13
  %90 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pctl.i, align 4
  %92 = ptrtoint ptr %91 to i32
  %tobool43.not = icmp eq ptr %91, null
  br i1 %tobool43.not, label %ocelot_pinctrl_register.exit.if.end45_crit_edge, label %ocelot_pinctrl_register.exit.cleanup_crit_edge

ocelot_pinctrl_register.exit.cleanup_crit_edge:   ; preds = %ocelot_pinctrl_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ocelot_pinctrl_register.exit.if.end45_crit_edge:  ; preds = %ocelot_pinctrl_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.end45:                                         ; preds = %ocelot_pinctrl_register.exit.if.end45_crit_edge, %if.end.i.if.end45_crit_edge
  %gpio_chip.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 2
  %93 = call ptr @memcpy(ptr %gpio_chip.i, ptr @ocelot_gpiolib_chip, i32 348)
  %94 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %desc, align 4
  %npins.i = getelementptr inbounds %struct.pinctrl_desc, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %npins.i, align 4
  %conv.i = trunc i32 %97 to i16
  %ngpio.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 2, i32 20
  %98 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %parent.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 2, i32 2
  %99 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %dev1, ptr %parent.i, align 4
  %base.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 2, i32 19
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %base.i, align 4
  %101 = ptrtoint ptr %gpio_chip.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.21, ptr %gpio_chip.i, align 4
  %call.i98 = call i32 @irq_of_parse_and_map(ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i, label %if.end45.ocelot_gpiochip_register.exit_crit_edge, label %if.then.i

if.end45.ocelot_gpiochip_register.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocelot_gpiochip_register.exit

if.then.i:                                        ; preds = %if.end45
  %irq2.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 2, i32 37
  %102 = ptrtoint ptr %irq2.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @ocelot_irqchip, ptr %irq2.i, align 4
  %parent_handler.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 13
  %103 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @ocelot_irq_handler, ptr %parent_handler.i, align 4
  %num_parents.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 15
  %104 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %num_parents.i, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #10
  %parents.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 16
  %105 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call5.i.i.i, ptr %parents.i, align 4
  %tobool6.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool6.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i99

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i99:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call.i98, ptr %call5.i.i.i, align 4
  %default_type.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 10
  %107 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %default_type.i, align 4
  %handler.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 9
  %108 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @handle_edge_irq, ptr %handler.i, align 4
  br label %ocelot_gpiochip_register.exit

ocelot_gpiochip_register.exit:                    ; preds = %if.end.i99, %if.end45.ocelot_gpiochip_register.exit_crit_edge
  %call11.i = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %gpio_chip.i, ptr noundef %call.i, ptr noundef nonnull @ocelot_gpiochip_register.lock_key, ptr noundef nonnull @ocelot_gpiochip_register.request_key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool47.not = icmp eq i32 %call11.i, 0
  br i1 %tobool47.not, label %do.end52, label %ocelot_gpiochip_register.exit.cleanup_crit_edge

ocelot_gpiochip_register.exit.cleanup_crit_edge:  ; preds = %ocelot_gpiochip_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end52:                                         ; preds = %ocelot_gpiochip_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %ocelot_gpiochip_register.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %ocelot_pinctrl_register.exit.cleanup_crit_edge, %ocelot_pinctrl_register.exit.thread107, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then6 ], [ %19, %do.end ], [ 0, %do.end52 ], [ -12, %entry.cleanup_crit_edge ], [ %92, %ocelot_pinctrl_register.exit.cleanup_crit_edge ], [ %call11.i, %ocelot_gpiochip_register.exit.cleanup_crit_edge ], [ -12, %ocelot_pinctrl_register.exit.thread107 ], [ -12, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocelot_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %irqs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %call2 = tail call ptr @gpiochip_get_data(ptr noundef %3) #10
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call2, i32 0, i32 7
  %4 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stride, align 4
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqs) #10
  %7 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irqs, align 4, !annotation !1090
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp84.not = icmp eq i8 %5, 0
  br i1 %cmp84.not, label %entry.for.end50_crit_edge, label %for.body.lr.ph

entry.for.end50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end50

for.body.lr.ph:                                   ; preds = %entry
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call2, i32 0, i32 3
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %desc8 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call2, i32 0, i32 5
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 1
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc49.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc49.for.body_crit_edge ]
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %mul6 = shl i32 %i.085, 2
  %add = add nuw nsw i32 %mul6, %mul
  %call7 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add, ptr noundef nonnull %reg) #10
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.body.for.inc49_crit_edge, label %if.end

for.body.for.inc49_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.chained_irq_enter.exit_crit_edge

if.end.chained_irq_enter.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i.chained_irq_enter.exit.sink.split_crit_edge

if.end.i.chained_irq_enter.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit.sink.split

if.else.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_mask.i, align 4
  call void %17(ptr noundef %irq_data.i) #10
  %18 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %19, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.else.i.chained_irq_enter.exit.sink.split_crit_edge

if.else.i.chained_irq_enter.exit.sink.split_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit.sink.split

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit

chained_irq_enter.exit.sink.split:                ; preds = %if.else.i.chained_irq_enter.exit.sink.split_crit_edge, %if.end.i.chained_irq_enter.exit.sink.split_crit_edge
  %.sink = phi ptr [ %15, %if.end.i.chained_irq_enter.exit.sink.split_crit_edge ], [ %19, %if.else.i.chained_irq_enter.exit.sink.split_crit_edge ]
  call void %.sink(ptr noundef %irq_data.i) #10
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %chained_irq_enter.exit.sink.split, %if.else.i.chained_irq_enter.exit_crit_edge, %if.end.chained_irq_enter.exit_crit_edge
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg, align 4
  %22 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %irqs, align 4
  %23 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc8, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %npins, align 4
  %mul9 = shl i32 %i.085, 5
  %sub = sub i32 %26, %mul9
  %27 = call i32 @llvm.umin.i32(i32 %sub, i32 32)
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %irqs, i32 noundef %27, i32 noundef 0) #10
  %28 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc8, align 4
  %npins1779 = getelementptr inbounds %struct.pinctrl_desc, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %npins1779 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %npins1779, align 4
  %sub1980 = sub i32 %31, %mul9
  %32 = call i32 @llvm.umin.i32(i32 %sub1980, i32 32)
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %32)
  %cmp2781 = icmp ult i32 %call12, %32
  br i1 %cmp2781, label %chained_irq_enter.exit.for.body29_crit_edge, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

chained_irq_enter.exit.for.body29_crit_edge:      ; preds = %chained_irq_enter.exit
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %chained_irq_enter.exit.for.body29_crit_edge
  %irq.082 = phi i32 [ %call48, %for.body29.for.body29_crit_edge ], [ %call12, %chained_irq_enter.exit.for.body29_crit_edge ]
  %33 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %domain, align 4
  %add32 = add i32 %irq.082, %mul9
  %call33 = call i32 @generic_handle_domain_irq(ptr noundef %34, i32 noundef %add32) #10
  %35 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc8, align 4
  %npins37 = getelementptr inbounds %struct.pinctrl_desc, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %npins37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %npins37, align 4
  %sub39 = sub i32 %38, %mul9
  %39 = call i32 @llvm.umin.i32(i32 %sub39, i32 32)
  %add47 = add nuw i32 %irq.082, 1
  %call48 = call i32 @_find_next_bit_be(ptr noundef nonnull %irqs, i32 noundef %39, i32 noundef %add47) #10
  %40 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc8, align 4
  %npins17 = getelementptr inbounds %struct.pinctrl_desc, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %npins17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %npins17, align 4
  %sub19 = sub i32 %43, %mul9
  %44 = call i32 @llvm.umin.i32(i32 %sub19, i32 32)
  %cmp27 = icmp ult i32 %call48, %44
  br i1 %cmp27, label %for.body29.for.body29_crit_edge, label %for.body29.for.end_crit_edge

for.body29.for.end_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

for.end:                                          ; preds = %for.body29.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %45 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i76 = icmp eq ptr %46, null
  br i1 %tobool.not.i76, label %if.else.i77, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_exit.exit

if.else.i77:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i77, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %48, %if.else.i77 ], [ %46, %for.end.chained_irq_exit.exit_crit_edge ]
  call void %.sink.i(ptr noundef %irq_data.i) #10
  br label %for.inc49

for.inc49:                                        ; preds = %chained_irq_exit.exit, %for.body.for.inc49_crit_edge
  %inc = add nuw nsw i32 %i.085, 1
  %49 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %stride, align 4
  %conv4 = zext i8 %50 to i32
  %cmp = icmp ult i32 %inc, %conv4
  br i1 %cmp, label %for.inc49.for.body_crit_edge, label %for.inc49.for.end50_crit_edge

for.inc49.for.end50_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end50

for.inc49.for.body_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end50:                                        ; preds = %for.inc49.for.end50_crit_edge, %entry.for.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqs) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !1090
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stride, align 4
  %conv = zext i8 %4 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %5 = lshr i32 %offset, 3
  %mul1 = and i32 %5, 536870908
  %add = add nuw nsw i32 %mul, %mul1
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %rem = and i32 %offset, 31
  %8 = xor i32 %7, -1
  %9 = lshr i32 %8, %rem
  %10 = and i32 %9, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_gpio_direction_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %map3 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %map3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = lshr i32 %offset, 3
  %mul1 = and i32 %2, 536870908
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stride4 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %stride4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stride4, align 4
  %conv5 = zext i8 %4 to i32
  %mul6 = shl nuw nsw i32 %conv5, 2
  %5 = lshr i32 %offset, 3
  %mul8 = and i32 %5, 536870908
  %add9 = add nuw nsw i32 %mul6, %mul8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add9.sink = phi i32 [ %add9, %if.else ], [ %mul1, %if.then ]
  %rem = and i32 %offset, 31
  %shl = shl nuw i32 1, %rem
  %call10 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add9.sink, i32 noundef %shl) #10
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %add11 = add i32 %7, %offset
  %call12 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add11) #10
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !1090
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stride, align 4
  %conv = zext i8 %4 to i32
  %mul = mul nuw nsw i32 %conv, 12
  %5 = lshr i32 %offset, 3
  %mul1 = and i32 %5, 536870908
  %add = add nuw nsw i32 %mul, %mul1
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %rem = and i32 %offset, 31
  %8 = lshr i32 %7, %rem
  %9 = and i32 %8, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocelot_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %map3 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %map3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = lshr i32 %offset, 3
  %mul1 = and i32 %2, 536870908
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stride4 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %stride4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stride4, align 4
  %conv5 = zext i8 %4 to i32
  %mul6 = shl nuw nsw i32 %conv5, 2
  %5 = lshr i32 %offset, 3
  %mul8 = and i32 %5, 536870908
  %add9 = add nuw nsw i32 %mul6, %mul8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add9.sink = phi i32 [ %add9, %if.else ], [ %mul1, %if.then ]
  %rem10 = and i32 %offset, 31
  %shl11 = shl nuw i32 1, %rem10
  %call12 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add9.sink, i32 noundef %shl11) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocelot_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #10
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stride, align 4
  %conv = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv, 20
  %8 = lshr i32 %3, 3
  %mul3 = and i32 %8, 536870908
  %add = add nuw nsw i32 %mul, %mul3
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocelot_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #10
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stride, align 4
  %conv = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv, 24
  %8 = lshr i32 %3, 3
  %mul3 = and i32 %8, 536870908
  %add = add nuw nsw i32 %mul, %mul3
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocelot_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #10
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stride, align 4
  %conv = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv, 24
  %8 = lshr i32 %3, 3
  %mul3 = and i32 %8, 536870908
  %add = add nuw nsw i32 %mul, %mul3
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ocelot_irq_set_type(ptr nocapture noundef %data, i32 noundef %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %type, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %and2 = and i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @handle_fasteoi_irq, ptr %handle_irq.i, align 4
  %name1.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 35
  %3 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %name1.i, align 4
  %chip2.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %chip2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ocelot_eoi_irqchip, ptr %chip2.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and6 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.return_crit_edge, label %if.then8

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %common.i.i14 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %common.i.i14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common.i.i14, align 4
  %handle_irq.i15 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %handle_irq.i15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @handle_edge_irq, ptr %handle_irq.i15, align 4
  %name1.i16 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 35
  %8 = ptrtoint ptr %name1.i16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %name1.i16, align 4
  %chip2.i17 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %chip2.i17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ocelot_irqchip, ptr %chip2.i17, align 4
  br label %return

return:                                           ; preds = %if.then8, %if.end5.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_pctl_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %desc = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ocelot_pctl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %desc = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %group, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_pctl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %desc = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins1 = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %group
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %pins, align 4
  %5 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ocelot_get_functions_count(ptr nocapture noundef readnone %pctldev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ocelot_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %function) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [119 x ptr], ptr @ocelot_function_names, i32 0, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_get_function_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %arrayidx = getelementptr %struct.ocelot_pinctrl, ptr %call, i32 0, i32 6, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %ngroups = getelementptr %struct.ocelot_pinctrl, ptr %call, i32 0, i32 6, i32 %function, i32 1
  %3 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ngroups, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %desc = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %group, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %arrayidx1.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i, align 1
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %selector)
  %cmp2.i = icmp eq i32 %conv.i, %selector
  br i1 %cmp2.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %arrayidx4.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %selector)
  %cmp6.i = icmp eq i32 %conv5.i, %selector
  br i1 %cmp6.i, label %if.end.i.if.end_crit_edge, label %for.inc.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.i:                                        ; preds = %if.end.i
  %arrayidx1.1.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.1.i, align 1
  %conv.1.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1.i, i32 %selector)
  %cmp2.1.i = icmp eq i32 %conv.1.i, %selector
  br i1 %cmp2.1.i, label %for.inc.i.if.end_crit_edge, label %if.end.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.1.i:                                       ; preds = %for.inc.i
  %arrayidx4.1.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.1.i, align 1
  %conv5.1.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.1.i, i32 %selector)
  %cmp6.1.i = icmp eq i32 %conv5.1.i, %selector
  br i1 %cmp6.1.i, label %if.end.1.i.if.end_crit_edge, label %for.inc.1.i

if.end.1.i.if.end_crit_edge:                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.1.i:                                      ; preds = %if.end.1.i
  %arrayidx1.2.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.2.i, align 1
  %conv.2.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2.i, i32 %selector)
  %cmp2.2.i = icmp eq i32 %conv.2.i, %selector
  br i1 %cmp2.2.i, label %for.inc.1.i.if.end_crit_edge, label %if.end.2.i

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.2.i:                                       ; preds = %for.inc.1.i
  %arrayidx4.2.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx4.2.i, align 1
  %conv5.2.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.2.i, i32 %selector)
  %cmp6.2.i = icmp eq i32 %conv5.2.i, %selector
  br i1 %cmp6.2.i, label %if.end.2.i.if.end_crit_edge, label %for.inc.2.i

if.end.2.i.if.end_crit_edge:                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.2.i:                                      ; preds = %if.end.2.i
  %arrayidx1.3.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.3.i, align 1
  %conv.3.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.3.i, i32 %selector)
  %cmp2.3.i = icmp eq i32 %conv.3.i, %selector
  br i1 %cmp2.3.i, label %for.inc.2.i.if.end_crit_edge, label %if.end.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.3.i:                                       ; preds = %for.inc.2.i
  %arrayidx4.3.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.3.i, align 1
  %conv5.3.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.3.i, i32 %selector)
  %cmp6.3.i = icmp eq i32 %conv5.3.i, %selector
  br i1 %cmp6.3.i, label %if.end.3.i.if.end_crit_edge, label %if.end.3.i.cleanup_crit_edge

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.3.i.if.end_crit_edge:                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.end.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %if.end.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %if.end.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i49 = phi i32 [ 7, %if.end.3.i.if.end_crit_edge ], [ 6, %if.end.2.i.if.end_crit_edge ], [ 5, %if.end.1.i.if.end_crit_edge ], [ 4, %if.end.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %rem = and i32 %7, 31
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %26 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %stride, align 4
  %conv = zext i8 %27 to i32
  %28 = lshr i32 %7, 3
  %mul7 = and i32 %28, 536870908
  %reass.add = add nuw nsw i32 %mul7, 32
  %reass.mul = mul i32 %reass.add, %conv
  %shl = shl nuw i32 1, %rem
  %shl9 = shl i32 %retval.0.i49, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %reass.mul, i32 noundef %shl, i32 noundef %shl9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %31 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stride, align 4
  %conv13 = zext i8 %32 to i32
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %5, align 4
  %35 = lshr i32 %34, 3
  %add20 = and i32 %35, 536870908
  %reass.add54 = add nuw nsw i32 %add20, 32
  %reass.mul55 = mul i32 %reass.add54, %conv13
  %add22 = add i32 %reass.mul55, 4
  %sub = add nsw i32 %rem, -1
  %shl24 = shl i32 %retval.0.i49, %sub
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %add22, i32 noundef %shl, i32 noundef %shl24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.3.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end.3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %rem = and i32 %offset, 31
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stride, align 4
  %conv = zext i8 %3 to i32
  %4 = lshr i32 %offset, 3
  %mul4 = and i32 %4, 536870908
  %reass.add = add nuw nsw i32 %mul4, 32
  %reass.mul = mul i32 %reass.add, %conv
  %shl = shl nuw i32 1, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %reass.mul, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %7 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stride, align 4
  %conv9 = zext i8 %8 to i32
  %reass.mul31 = mul i32 %reass.add, %conv9
  %add17 = add i32 %reass.mul31, 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add17, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %pin, i1 noundef zeroext %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %rem = and i32 %pin, 31
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stride, align 4
  %shl = shl nuw i32 1, %rem
  %spec.select = select i1 %input, i32 0, i32 %shl
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %4 = lshr i32 %pin, 3
  %mul1 = and i32 %4, 536870908
  %add = add nuw nsw i32 %mul, %mul1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %regcfg.i109 = alloca i32, align 4
  %regcfg.i99 = alloca i32, align 4
  %regcfg.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !1090
  %trunc = trunc i32 %1 to i8
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %entry.sw.bb_crit_edge
    i8 5, label %entry.sw.bb_crit_edge126
    i8 3, label %entry.sw.bb_crit_edge127
    i8 14, label %sw.bb15
    i8 9, label %sw.bb23
    i8 17, label %sw.bb28
    i8 12, label %entry.sw.bb38_crit_edge
    i8 18, label %entry.sw.bb38_crit_edge128
  ]

entry.sw.bb38_crit_edge128:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38

entry.sw.bb38_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38

entry.sw.bb_crit_edge127:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge126:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge126, %entry.sw.bb_crit_edge127
  %pincfg.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %pincfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pincfg.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.then.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regcfg.i) #10
  %6 = ptrtoint ptr %regcfg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %regcfg.i, align 4, !annotation !1090
  %call.i = call i32 @regmap_read(ptr noundef nonnull %5, i32 noundef %pin, ptr noundef nonnull %regcfg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end, label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regcfg.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.then.i
  %7 = ptrtoint ptr %regcfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regcfg.i, align 4
  %and.i98 = and i32 %8, 24
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i98, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regcfg.i) #10
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.225)
  switch i8 %trunc, label %if.else9 [
    i8 1, label %if.then3
    i8 3, label %if.then7
  ]

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4 = icmp eq i32 %12, 0
  %conv = zext i1 %cmp4 to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %val, align 4
  br label %sw.epilog

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and = lshr i32 %15, 4
  %and.lobit = and i32 %and, 1
  store i32 %and.lobit, ptr %val, align 4
  br label %sw.epilog

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and10 = lshr i32 %17, 3
  %and10.lobit = and i32 %and10, 1
  store i32 %and10.lobit, ptr %val, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %pincfg.i100 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 4
  %18 = ptrtoint ptr %pincfg.i100 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pincfg.i100, align 4
  %tobool.not.i101 = icmp eq ptr %19, null
  br i1 %tobool.not.i101, label %sw.bb15.cleanup_crit_edge, label %if.then.i104

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i104:                                     ; preds = %sw.bb15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regcfg.i99) #10
  %20 = ptrtoint ptr %regcfg.i99 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %regcfg.i99, align 4, !annotation !1090
  %call.i102 = call i32 @regmap_read(ptr noundef nonnull %19, i32 noundef %pin, ptr noundef nonnull %regcfg.i99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool2.not.i103 = icmp eq i32 %call.i102, 0
  br i1 %tobool2.not.i103, label %if.end19, label %cleanup.i106

cleanup.i106:                                     ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regcfg.i99) #10
  br label %cleanup

if.end19:                                         ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %regcfg.i99 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regcfg.i99, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regcfg.i99) #10
  %and5.i = lshr i32 %22, 2
  %and20 = and i32 %and5.i, 1
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and20, ptr %val, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %pincfg.i110 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 4
  %24 = ptrtoint ptr %pincfg.i110 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pincfg.i110, align 4
  %tobool.not.i111 = icmp eq ptr %25, null
  br i1 %tobool.not.i111, label %sw.bb23.cleanup_crit_edge, label %if.then.i114

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i114:                                     ; preds = %sw.bb23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regcfg.i109) #10
  %26 = ptrtoint ptr %regcfg.i109 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %regcfg.i109, align 4, !annotation !1090
  %call.i112 = call i32 @regmap_read(ptr noundef nonnull %25, i32 noundef %pin, ptr noundef nonnull %regcfg.i109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool2.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool2.not.i113, label %ocelot_hw_get_value.exit118, label %cleanup.i116

cleanup.i116:                                     ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regcfg.i109) #10
  br label %cleanup

ocelot_hw_get_value.exit118:                      ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %regcfg.i109 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regcfg.i109, align 4
  %and7.i = and i32 %28, 3
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and7.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regcfg.i109) #10
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %32 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %stride, align 4
  %conv29 = zext i8 %33 to i32
  %mul = shl nuw nsw i32 %conv29, 3
  %34 = lshr i32 %pin, 3
  %mul30 = and i32 %34, 536870908
  %add = add nuw nsw i32 %mul, %mul30
  %call31 = call i32 @regmap_read(ptr noundef %31, i32 noundef %add, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %rem = and i32 %pin, 31
  %37 = lshr i32 %36, %rem
  %38 = and i32 %37, 1
  store i32 %38, ptr %val, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry.sw.bb38_crit_edge, %entry.sw.bb38_crit_edge128
  %map39 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %39 = ptrtoint ptr %map39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map39, align 4
  %stride40 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %41 = ptrtoint ptr %stride40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %stride40, align 4
  %conv41 = zext i8 %42 to i32
  %mul42 = shl nuw nsw i32 %conv41, 4
  %43 = lshr i32 %pin, 3
  %mul44 = and i32 %43, 536870908
  %add45 = add nuw nsw i32 %mul42, %mul44
  %call46 = call i32 @regmap_read(ptr noundef %40, i32 noundef %add45, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %sw.bb38.cleanup_crit_edge

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %sw.bb38
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  %rem50 = and i32 %pin, 31
  %shl51 = shl nuw i32 1, %rem50
  %and52 = and i32 %45, %shl51
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and.i)
  %cmp53 = icmp eq i32 %and.i, 18
  br i1 %cmp53, label %if.then55, label %if.else61

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool56 = icmp ne i32 %and52, 0
  %lnot.ext60 = zext i1 %tobool56 to i32
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %lnot.ext60, ptr %val, align 4
  br label %sw.epilog

if.else61:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool62.not = icmp eq i32 %and52, 0
  %lnot.ext64 = zext i1 %tobool62.not to i32
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %lnot.ext64, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else61, %if.then55, %if.end34, %ocelot_hw_get_value.exit118, %if.end19, %if.else9, %if.then7, %if.then3
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  %shl.i = shl i32 %49, 8
  %or.i = or i32 %shl.i, %and.i
  %50 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb38.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %cleanup.i116, %sw.bb23.cleanup_crit_edge, %cleanup.i106, %sw.bb15.cleanup_crit_edge, %cleanup.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call31, %sw.bb28.cleanup_crit_edge ], [ %call46, %sw.bb38.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ %call.i, %cleanup.i ], [ -95, %sw.bb15.cleanup_crit_edge ], [ %call.i102, %cleanup.i106 ], [ -95, %sw.bb23.cleanup_crit_edge ], [ %call.i112, %cleanup.i116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  %val.i25.i = alloca i32, align 4
  %val.i15.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp114.not = icmp eq i32 %num_configs, 0
  br i1 %cmp114.not, label %entry.err51_crit_edge, label %for.body.lr.ph

entry.err51_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err51

for.body.lr.ph:                                   ; preds = %entry
  %pincfg.i = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 4
  %rem = and i32 %pin, 31
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %0 = lshr i32 %pin, 3
  %mul23 = and i32 %0, 536870908
  %shl = shl nuw i32 1, %rem
  %stride26 = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %err.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %cfg.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %cfg.0115
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %2, 255
  %shr.i = lshr i32 %2, 8
  %trunc = trunc i32 %2 to i8
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.226)
  switch i8 %trunc, label %for.body.for.inc_crit_edge [
    i8 17, label %for.body.sw.bb20_crit_edge
    i8 12, label %for.body.sw.bb20_crit_edge124
    i8 18, label %for.body.sw.bb20_crit_edge125
    i8 14, label %sw.bb8
    i8 9, label %sw.bb15
    i8 1, label %for.body.cond.end_crit_edge
    i8 3, label %for.body.cond.false_crit_edge
    i8 5, label %for.body.cond.false_crit_edge126
  ]

for.body.cond.false_crit_edge126:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

for.body.cond.false_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

for.body.sw.bb20_crit_edge125:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

for.body.sw.bb20_crit_edge124:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

for.body.sw.bb20_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cond.false:                                       ; preds = %for.body.cond.false_crit_edge, %for.body.cond.false_crit_edge126
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp5 = icmp eq i32 %and.i, 5
  %cond = select i1 %cmp5, i32 8, i32 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond6 = phi i32 [ %cond, %cond.false ], [ 0, %for.body.cond.end_crit_edge ]
  %4 = ptrtoint ptr %pincfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pincfg.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end.err51_crit_edge, label %if.then.i

cond.end.err51_crit_edge:                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err51

if.then.i:                                        ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i, align 4, !annotation !1090
  %call.i.i = call i32 @regmap_read(ptr noundef nonnull %5, i32 noundef %pin, ptr noundef nonnull %val.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ocelot_hw_set_value.exit, label %ocelot_hw_set_value.exit.thread101

ocelot_hw_set_value.exit.thread101:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  br label %err51

ocelot_hw_set_value.exit:                         ; preds = %if.then.i
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %8, -25
  %or.i.i = or i32 %and.i.i, %cond6
  store i32 %or.i.i, ptr %val.i.i, align 4
  %9 = ptrtoint ptr %pincfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pincfg.i, align 4
  %call2.i.i = call i32 @regmap_write(ptr noundef %10, i32 noundef %pin, i32 noundef %or.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not, label %ocelot_hw_set_value.exit.for.inc_crit_edge, label %ocelot_hw_set_value.exit.err51_crit_edge

ocelot_hw_set_value.exit.err51_crit_edge:         ; preds = %ocelot_hw_set_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err51

ocelot_hw_set_value.exit.for.inc_crit_edge:       ; preds = %ocelot_hw_set_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %2)
  %tobool9.not = icmp ult i32 %2, 256
  %cond10 = select i1 %tobool9.not, i32 0, i32 4
  %11 = ptrtoint ptr %pincfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pincfg.i, align 4
  %tobool.not.i88 = icmp eq ptr %12, null
  br i1 %tobool.not.i88, label %sw.bb8.err51_crit_edge, label %if.then.i89

sw.bb8.err51_crit_edge:                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %err51

if.then.i89:                                      ; preds = %sw.bb8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i15.i) #10
  %13 = ptrtoint ptr %val.i15.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i15.i, align 4, !annotation !1090
  %call.i17.i = call i32 @regmap_read(ptr noundef nonnull %12, i32 noundef %pin, ptr noundef nonnull %val.i15.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call.i17.i, 0
  br i1 %tobool.not.i18.i, label %ocelot_hw_set_value.exit91, label %ocelot_hw_set_value.exit91.thread106

ocelot_hw_set_value.exit91.thread106:             ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i15.i) #10
  br label %err51

ocelot_hw_set_value.exit91:                       ; preds = %if.then.i89
  %14 = ptrtoint ptr %val.i15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i15.i, align 4
  %and.i19.i = and i32 %15, -5
  %or.i20.i = or i32 %and.i19.i, %cond10
  store i32 %or.i20.i, ptr %val.i15.i, align 4
  %16 = ptrtoint ptr %pincfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pincfg.i, align 4
  %call2.i21.i = call i32 @regmap_write(ptr noundef %17, i32 noundef %pin, i32 noundef %or.i20.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i15.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i21.i)
  %tobool12.not = icmp eq i32 %call2.i21.i, 0
  br i1 %tobool12.not, label %ocelot_hw_set_value.exit91.for.inc_crit_edge, label %ocelot_hw_set_value.exit91.err51_crit_edge

ocelot_hw_set_value.exit91.err51_crit_edge:       ; preds = %ocelot_hw_set_value.exit91
  call void @__sanitizer_cov_trace_pc() #12
  br label %err51

ocelot_hw_set_value.exit91.for.inc_crit_edge:     ; preds = %ocelot_hw_set_value.exit91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb15:                                          ; preds = %for.body
  %18 = ptrtoint ptr %pincfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pincfg.i, align 4
  %tobool.not.i95 = icmp eq ptr %19, null
  br i1 %tobool.not.i95, label %sw.bb15.err51_crit_edge, label %if.then.i96

sw.bb15.err51_crit_edge:                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err51

if.then.i96:                                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %2)
  %cmp.i = icmp ult i32 %2, 1024
  br i1 %cmp.i, label %if.then4.i, label %if.then.i96.err51_crit_edge

if.then.i96.err51_crit_edge:                      ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %err51

if.then4.i:                                       ; preds = %if.then.i96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i25.i) #10
  %20 = ptrtoint ptr %val.i25.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i25.i, align 4, !annotation !1090
  %call.i27.i = call i32 @regmap_read(ptr noundef nonnull %19, i32 noundef %pin, ptr noundef nonnull %val.i25.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool.not.i28.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool.not.i28.i, label %ocelot_hw_set_value.exit98, label %ocelot_hw_set_value.exit98.thread111

ocelot_hw_set_value.exit98.thread111:             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i25.i) #10
  br label %err51

ocelot_hw_set_value.exit98:                       ; preds = %if.then4.i
  %21 = ptrtoint ptr %val.i25.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i25.i, align 4
  %and.i29.i = and i32 %22, -4
  %or.i30.i = or i32 %and.i29.i, %shr.i
  store i32 %or.i30.i, ptr %val.i25.i, align 4
  %23 = ptrtoint ptr %pincfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pincfg.i, align 4
  %call2.i31.i = call i32 @regmap_write(ptr noundef %24, i32 noundef %pin, i32 noundef %or.i30.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i25.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i31.i)
  %tobool17.not = icmp eq i32 %call2.i31.i, 0
  br i1 %tobool17.not, label %ocelot_hw_set_value.exit98.for.inc_crit_edge, label %ocelot_hw_set_value.exit98.err51_crit_edge

ocelot_hw_set_value.exit98.err51_crit_edge:       ; preds = %ocelot_hw_set_value.exit98
  call void @__sanitizer_cov_trace_pc() #12
  br label %err51

ocelot_hw_set_value.exit98.for.inc_crit_edge:     ; preds = %ocelot_hw_set_value.exit98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb20:                                          ; preds = %for.body.sw.bb20_crit_edge, %for.body.sw.bb20_crit_edge124, %for.body.sw.bb20_crit_edge125
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %2)
  %tobool21.not = icmp ult i32 %2, 256
  %25 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map, align 4
  br i1 %tobool21.not, label %if.else, label %sw.bb20.if.end34_crit_edge

sw.bb20.if.end34_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %stride26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %stride26, align 4
  %conv27 = zext i8 %28 to i32
  %mul28 = shl nuw nsw i32 %conv27, 2
  %add31 = add nuw nsw i32 %mul28, %mul23
  br label %if.end34

if.end34:                                         ; preds = %if.else, %sw.bb20.if.end34_crit_edge
  %add31.sink = phi i32 [ %add31, %if.else ], [ %mul23, %sw.bb20.if.end34_crit_edge ]
  %call33 = call i32 @regmap_write(ptr noundef %26, i32 noundef %add31.sink, i32 noundef %shl) #10
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %31 = ptrtoint ptr %stride26 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stride26, align 4
  %conv37 = zext i8 %32 to i32
  %mul38 = shl nuw nsw i32 %conv37, 4
  %add41 = add nuw nsw i32 %mul38, %mul23
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and.i)
  %cmp43 = icmp eq i32 %and.i, 12
  %spec.select = select i1 %cmp43, i32 0, i32 %shl
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %add41, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %ocelot_hw_set_value.exit98.for.inc_crit_edge, %ocelot_hw_set_value.exit91.for.inc_crit_edge, %ocelot_hw_set_value.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %err.0116, %if.end34 ], [ 0, %ocelot_hw_set_value.exit98.for.inc_crit_edge ], [ 0, %ocelot_hw_set_value.exit91.for.inc_crit_edge ], [ 0, %ocelot_hw_set_value.exit.for.inc_crit_edge ], [ -95, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %cfg.0115, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.err51_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.err51_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %err51

err51:                                            ; preds = %for.inc.err51_crit_edge, %ocelot_hw_set_value.exit98.err51_crit_edge, %ocelot_hw_set_value.exit98.thread111, %if.then.i96.err51_crit_edge, %sw.bb15.err51_crit_edge, %ocelot_hw_set_value.exit91.err51_crit_edge, %ocelot_hw_set_value.exit91.thread106, %sw.bb8.err51_crit_edge, %ocelot_hw_set_value.exit.err51_crit_edge, %ocelot_hw_set_value.exit.thread101, %cond.end.err51_crit_edge, %entry.err51_crit_edge
  %err.2 = phi i32 [ %call.i.i, %ocelot_hw_set_value.exit.thread101 ], [ %call.i17.i, %ocelot_hw_set_value.exit91.thread106 ], [ %call.i27.i, %ocelot_hw_set_value.exit98.thread111 ], [ 0, %entry.err51_crit_edge ], [ %call2.i.i, %ocelot_hw_set_value.exit.err51_crit_edge ], [ %call2.i21.i, %ocelot_hw_set_value.exit91.err51_crit_edge ], [ %call2.i31.i, %ocelot_hw_set_value.exit98.err51_crit_edge ], [ %err.1, %for.inc.err51_crit_edge ], [ -95, %cond.end.err51_crit_edge ], [ -95, %sw.bb8.err51_crit_edge ], [ -95, %sw.bb15.err51_crit_edge ], [ -22, %if.then.i96.err51_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_config(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %desc = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %group, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %arrayidx1.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i, align 1
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %selector)
  %cmp2.i = icmp eq i32 %conv.i, %selector
  br i1 %cmp2.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %arrayidx4.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %selector)
  %cmp6.i = icmp eq i32 %conv5.i, %selector
  br i1 %cmp6.i, label %if.end.i.if.end_crit_edge, label %for.inc.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.i:                                        ; preds = %if.end.i
  %arrayidx1.1.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.1.i, align 1
  %conv.1.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1.i, i32 %selector)
  %cmp2.1.i = icmp eq i32 %conv.1.i, %selector
  br i1 %cmp2.1.i, label %for.inc.i.if.end_crit_edge, label %if.end.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.1.i:                                       ; preds = %for.inc.i
  %arrayidx4.1.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.1.i, align 1
  %conv5.1.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.1.i, i32 %selector)
  %cmp6.1.i = icmp eq i32 %conv5.1.i, %selector
  br i1 %cmp6.1.i, label %if.end.1.i.if.end_crit_edge, label %for.inc.1.i

if.end.1.i.if.end_crit_edge:                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.1.i:                                      ; preds = %if.end.1.i
  %arrayidx1.2.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.2.i, align 1
  %conv.2.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2.i, i32 %selector)
  %cmp2.2.i = icmp eq i32 %conv.2.i, %selector
  br i1 %cmp2.2.i, label %for.inc.1.i.if.end_crit_edge, label %if.end.2.i

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.2.i:                                       ; preds = %for.inc.1.i
  %arrayidx4.2.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx4.2.i, align 1
  %conv5.2.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.2.i, i32 %selector)
  %cmp6.2.i = icmp eq i32 %conv5.2.i, %selector
  br i1 %cmp6.2.i, label %if.end.2.i.if.end_crit_edge, label %for.inc.2.i

if.end.2.i.if.end_crit_edge:                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.2.i:                                      ; preds = %if.end.2.i
  %arrayidx1.3.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.3.i, align 1
  %conv.3.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.3.i, i32 %selector)
  %cmp2.3.i = icmp eq i32 %conv.3.i, %selector
  br i1 %cmp2.3.i, label %for.inc.2.i.if.end_crit_edge, label %if.end.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.3.i:                                       ; preds = %for.inc.2.i
  %arrayidx4.3.i = getelementptr %struct.ocelot_pin_caps, ptr %5, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.3.i, align 1
  %conv5.3.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.3.i, i32 %selector)
  %cmp6.3.i = icmp eq i32 %conv5.3.i, %selector
  br i1 %cmp6.3.i, label %if.end.3.i.if.end_crit_edge, label %if.end.3.i.cleanup_crit_edge

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.3.i.if.end_crit_edge:                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.end.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %if.end.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %if.end.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i74 = phi i32 [ 7, %if.end.3.i.if.end_crit_edge ], [ 6, %if.end.2.i.if.end_crit_edge ], [ 5, %if.end.1.i.if.end_crit_edge ], [ 4, %if.end.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %rem = and i32 %7, 31
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %26 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %stride, align 4
  %conv = zext i8 %27 to i32
  %28 = lshr i32 %7, 3
  %mul7 = and i32 %28, 536870908
  %reass.add = add nuw nsw i32 %mul7, 32
  %reass.mul = mul i32 %reass.add, %conv
  %shl = shl nuw i32 1, %rem
  %shl9 = shl i32 %retval.0.i74, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %reass.mul, i32 noundef %shl, i32 noundef %shl9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %31 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stride, align 4
  %conv13 = zext i8 %32 to i32
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %5, align 4
  %35 = lshr i32 %34, 3
  %add20 = and i32 %35, 536870908
  %reass.add81 = add nuw nsw i32 %add20, 32
  %reass.mul82 = mul i32 %reass.add81, %conv13
  %add22 = add i32 %reass.mul82, 4
  %shr79 = lshr i32 %retval.0.i74, 1
  %shl24 = shl i32 %shr79, %rem
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %add22, i32 noundef %shl, i32 noundef %shl24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 4
  %38 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %stride, align 4
  %conv28 = zext i8 %39 to i32
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %5, align 4
  %42 = lshr i32 %41, 3
  %add35 = and i32 %42, 536870908
  %reass.add83 = add nuw nsw i32 %add35, 32
  %reass.mul84 = mul i32 %reass.add83, %conv28
  %add37 = add i32 %reass.mul84, 8
  %shr3980 = lshr i32 %retval.0.i74, 2
  %shl40 = shl nuw i32 %shr3980, %rem
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %add37, i32 noundef %shl, i32 noundef %shl40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.3.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end.3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %rem = and i32 %offset, 31
  %map = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %stride = getelementptr inbounds %struct.ocelot_pinctrl, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stride, align 4
  %conv = zext i8 %3 to i32
  %4 = lshr i32 %offset, 3
  %mul4 = and i32 %4, 536870908
  %reass.add = add nuw nsw i32 %mul4, 32
  %reass.mul = mul i32 %reass.add, %conv
  %shl = shl nuw i32 1, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %reass.mul, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %7 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stride, align 4
  %conv9 = zext i8 %8 to i32
  %reass.mul50 = mul i32 %reass.add, %conv9
  %add17 = add i32 %reass.mul50, 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add17, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 4
  %11 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %stride, align 4
  %conv22 = zext i8 %12 to i32
  %reass.mul52 = mul i32 %reass.add, %conv22
  %add30 = add i32 %reass.mul52, 8
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %add30, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 543)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 543)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !843, !845, !847, !849, !851, !853, !855, !857, !859, !861, !863, !865, !867, !869, !871, !873, !875, !877, !879, !881, !883, !885, !887, !889, !891, !893, !895, !897, !899, !901, !903, !905, !907, !909, !911, !913, !915, !917, !919, !921, !923, !925, !927, !929, !931, !933, !935, !937, !939, !941, !943, !945, !947, !949, !951, !953, !955, !957, !959, !961, !963, !965, !967, !969, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1011, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1037, !1039, !1041, !1043, !1045, !1047, !1049, !1051, !1053, !1055, !1057, !1059, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077}
!llvm.module.flags = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086}
!llvm.ident = !{!1087}

!0 = !{ptr @__initcall__kmod_pinctrl_ocelot__231_1868_ocelot_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_ocelot__231_1868_ocelot_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1868, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1862, i32 11}
!4 = !{ptr @ocelot_pinctrl_driver, !5, !"ocelot_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1860, i32 31}
!6 = !{ptr @ocelot_pinctrl_probe._key, !7, !"_key", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1830, i32 14}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1832, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ocelot_pinctrl_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @ocelot_pinctrl_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1842, i32 4}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ocelot_pinctrl_probe.__UNIQUE_ID_ddebug230, !18, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1855, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ocelot_pinctrl_probe._entry.9, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @ocelot_pinctrl_probe._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1795, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ocelot_pinctrl_create_pincfg.__UNIQUE_ID_ddebug229, !27, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!30 = !{ptr @ocelot_pinctrl_create_pincfg._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1799, i32 9}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1563, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ocelot_pinctrl_register._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ocelot_pinctrl_register._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1569, i32 3}
!40 = !{ptr @ocelot_pinctrl_register._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ocelot_pinctrl_register._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1751, i32 14}
!44 = !{ptr @ocelot_gpiochip_register.lock_key, !45, !"lock_key", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1769, i32 9}
!46 = !{ptr @ocelot_gpiochip_register.request_key, !45, !"request_key", i1 false, i1 false}
!47 = !{ptr @ocelot_gpiolib_chip, !48, !"ocelot_gpiolib_chip", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1635, i32 31}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1688, i32 11}
!51 = !{ptr @ocelot_irqchip, !52, !"ocelot_irqchip", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1687, i32 24}
!53 = !{ptr @ocelot_eoi_irqchip, !54, !"ocelot_eoi_irqchip", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1678, i32 24}
!55 = !{ptr @ocelot_pinctrl_of_match, !56, !"ocelot_pinctrl_of_match", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1772, i32 34}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1465, i32 10}
!59 = !{ptr @luton_desc, !60, !"luton_desc", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1464, i32 28}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 374, i32 2}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 375, i32 2}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 376, i32 2}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 377, i32 2}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 378, i32 2}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 379, i32 2}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 380, i32 2}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 381, i32 2}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 382, i32 2}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 383, i32 2}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 384, i32 2}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 385, i32 2}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 386, i32 2}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 387, i32 2}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 388, i32 2}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 389, i32 2}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 390, i32 2}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 391, i32 2}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 392, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 393, i32 2}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 394, i32 2}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 395, i32 2}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 396, i32 2}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 397, i32 2}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 398, i32 2}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 399, i32 2}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 400, i32 2}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 401, i32 2}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 402, i32 2}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 403, i32 2}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 404, i32 2}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 405, i32 2}
!125 = !{ptr @luton_pins, !126, !"luton_pins", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 373, i32 38}
!127 = !{ptr @luton_pin_0, !128, !"luton_pin_0", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 334, i32 1}
!129 = !{ptr @luton_pin_1, !130, !"luton_pin_1", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 335, i32 1}
!131 = !{ptr @luton_pin_2, !132, !"luton_pin_2", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 336, i32 1}
!133 = !{ptr @luton_pin_3, !134, !"luton_pin_3", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 337, i32 1}
!135 = !{ptr @luton_pin_4, !136, !"luton_pin_4", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 338, i32 1}
!137 = !{ptr @luton_pin_5, !138, !"luton_pin_5", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 339, i32 1}
!139 = !{ptr @luton_pin_6, !140, !"luton_pin_6", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 340, i32 1}
!141 = !{ptr @luton_pin_7, !142, !"luton_pin_7", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 341, i32 1}
!143 = !{ptr @luton_pin_8, !144, !"luton_pin_8", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 342, i32 1}
!145 = !{ptr @luton_pin_9, !146, !"luton_pin_9", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 343, i32 1}
!147 = !{ptr @luton_pin_10, !148, !"luton_pin_10", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 344, i32 1}
!149 = !{ptr @luton_pin_11, !150, !"luton_pin_11", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 345, i32 1}
!151 = !{ptr @luton_pin_12, !152, !"luton_pin_12", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 346, i32 1}
!153 = !{ptr @luton_pin_13, !154, !"luton_pin_13", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 347, i32 1}
!155 = !{ptr @luton_pin_14, !156, !"luton_pin_14", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 348, i32 1}
!157 = !{ptr @luton_pin_15, !158, !"luton_pin_15", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 349, i32 1}
!159 = !{ptr @luton_pin_16, !160, !"luton_pin_16", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 350, i32 1}
!161 = !{ptr @luton_pin_17, !162, !"luton_pin_17", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 351, i32 1}
!163 = !{ptr @luton_pin_18, !164, !"luton_pin_18", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 352, i32 1}
!165 = !{ptr @luton_pin_19, !166, !"luton_pin_19", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 353, i32 1}
!167 = !{ptr @luton_pin_20, !168, !"luton_pin_20", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 354, i32 1}
!169 = !{ptr @luton_pin_21, !170, !"luton_pin_21", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 355, i32 1}
!171 = !{ptr @luton_pin_22, !172, !"luton_pin_22", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 356, i32 1}
!173 = !{ptr @luton_pin_23, !174, !"luton_pin_23", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 357, i32 1}
!175 = !{ptr @luton_pin_24, !176, !"luton_pin_24", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 358, i32 1}
!177 = !{ptr @luton_pin_25, !178, !"luton_pin_25", i1 false, i1 false}
!178 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 359, i32 1}
!179 = !{ptr @luton_pin_26, !180, !"luton_pin_26", i1 false, i1 false}
!180 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 360, i32 1}
!181 = !{ptr @luton_pin_27, !182, !"luton_pin_27", i1 false, i1 false}
!182 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 361, i32 1}
!183 = !{ptr @luton_pin_28, !184, !"luton_pin_28", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 362, i32 1}
!185 = !{ptr @luton_pin_29, !186, !"luton_pin_29", i1 false, i1 false}
!186 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 363, i32 1}
!187 = !{ptr @luton_pin_30, !188, !"luton_pin_30", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 364, i32 1}
!189 = !{ptr @luton_pin_31, !190, !"luton_pin_31", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 365, i32 1}
!191 = !{ptr @ocelot_pctl_ops, !192, !"ocelot_pctl_ops", i1 false, i1 false}
!192 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1456, i32 33}
!193 = !{ptr @ocelot_pmx_ops, !194, !"ocelot_pmx_ops", i1 false, i1 false}
!194 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1173, i32 32}
!195 = !{ptr @.str.56, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 183, i32 19}
!197 = !{ptr @.str.57, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 184, i32 19}
!199 = !{ptr @.str.58, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 185, i32 17}
!201 = !{ptr @.str.59, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 186, i32 17}
!203 = !{ptr @.str.60, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 187, i32 18}
!205 = !{ptr @.str.61, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 188, i32 18}
!207 = !{ptr @.str.62, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 189, i32 18}
!209 = !{ptr @.str.63, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 190, i32 18}
!211 = !{ptr @.str.64, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 191, i32 18}
!213 = !{ptr @.str.65, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 192, i32 18}
!215 = !{ptr @.str.66, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 193, i32 18}
!217 = !{ptr @.str.67, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 194, i32 18}
!219 = !{ptr @.str.68, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 195, i32 18}
!221 = !{ptr @.str.69, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 196, i32 18}
!223 = !{ptr @.str.70, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 197, i32 18}
!225 = !{ptr @.str.71, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 198, i32 18}
!227 = !{ptr @.str.72, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 199, i32 18}
!229 = !{ptr @.str.73, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 200, i32 18}
!231 = !{ptr @.str.74, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 201, i32 21}
!233 = !{ptr @.str.75, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 202, i32 21}
!235 = !{ptr @.str.76, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 203, i32 21}
!237 = !{ptr @.str.77, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 204, i32 21}
!239 = !{ptr @.str.78, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 205, i32 21}
!241 = !{ptr @.str.79, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 206, i32 21}
!243 = !{ptr @.str.80, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 207, i32 21}
!245 = !{ptr @.str.81, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 208, i32 21}
!247 = !{ptr @.str.82, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 209, i32 21}
!249 = !{ptr @.str.83, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 210, i32 21}
!251 = !{ptr @.str.84, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 211, i32 21}
!253 = !{ptr @.str.85, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 212, i32 21}
!255 = !{ptr @.str.86, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 213, i32 21}
!257 = !{ptr @.str.87, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 214, i32 21}
!259 = !{ptr @.str.88, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 215, i32 21}
!261 = !{ptr @.str.89, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 216, i32 21}
!263 = !{ptr @.str.90, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 217, i32 21}
!265 = !{ptr @.str.91, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 218, i32 21}
!267 = !{ptr @.str.92, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 219, i32 21}
!269 = !{ptr @.str.93, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 220, i32 21}
!271 = !{ptr @.str.94, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 221, i32 21}
!273 = !{ptr @.str.95, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 223, i32 21}
!275 = !{ptr @.str.96, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 224, i32 21}
!277 = !{ptr @.str.97, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 225, i32 21}
!279 = !{ptr @.str.98, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 226, i32 17}
!281 = !{ptr @.str.99, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 227, i32 21}
!283 = !{ptr @.str.100, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 228, i32 21}
!285 = !{ptr @.str.101, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 229, i32 21}
!287 = !{ptr @.str.102, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 230, i32 20}
!289 = !{ptr @.str.103, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 231, i32 21}
!291 = !{ptr @.str.104, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 232, i32 21}
!293 = !{ptr @.str.105, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 233, i32 21}
!295 = !{ptr @.str.106, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 234, i32 21}
!297 = !{ptr @.str.107, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 235, i32 17}
!299 = !{ptr @.str.108, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 236, i32 20}
!301 = !{ptr @.str.109, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 237, i32 21}
!303 = !{ptr @.str.110, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 238, i32 20}
!305 = !{ptr @.str.111, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 239, i32 17}
!307 = !{ptr @.str.112, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 240, i32 19}
!309 = !{ptr @.str.113, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 241, i32 19}
!311 = !{ptr @.str.114, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 242, i32 19}
!313 = !{ptr @.str.115, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 243, i32 20}
!315 = !{ptr @.str.116, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 244, i32 20}
!317 = !{ptr @.str.117, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 248, i32 19}
!319 = !{ptr @.str.118, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 249, i32 21}
!321 = !{ptr @.str.119, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 250, i32 21}
!323 = !{ptr @.str.120, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 245, i32 20}
!325 = !{ptr @.str.121, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 246, i32 21}
!327 = !{ptr @.str.122, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 247, i32 15}
!329 = !{ptr @.str.123, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 251, i32 17}
!331 = !{ptr @.str.124, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 252, i32 17}
!333 = !{ptr @.str.125, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 253, i32 17}
!335 = !{ptr @.str.126, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 254, i32 17}
!337 = !{ptr @.str.127, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 255, i32 21}
!339 = !{ptr @.str.128, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 256, i32 21}
!341 = !{ptr @.str.129, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 257, i32 21}
!343 = !{ptr @.str.130, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 258, i32 21}
!345 = !{ptr @.str.131, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 259, i32 21}
!347 = !{ptr @.str.132, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 260, i32 21}
!349 = !{ptr @.str.133, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 261, i32 21}
!351 = !{ptr @.str.134, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 262, i32 16}
!353 = !{ptr @.str.135, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 263, i32 18}
!355 = !{ptr @.str.136, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 264, i32 18}
!357 = !{ptr @.str.137, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 265, i32 14}
!359 = !{ptr @.str.138, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 266, i32 19}
!361 = !{ptr @.str.139, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 267, i32 19}
!363 = !{ptr @.str.140, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 268, i32 21}
!365 = !{ptr @.str.141, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 269, i32 15}
!367 = !{ptr @.str.142, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 270, i32 16}
!369 = !{ptr @.str.143, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 271, i32 19}
!371 = !{ptr @.str.144, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 272, i32 16}
!373 = !{ptr @.str.145, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 273, i32 16}
!375 = !{ptr @.str.146, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 274, i32 16}
!377 = !{ptr @.str.147, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 275, i32 20}
!379 = !{ptr @.str.148, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 276, i32 20}
!381 = !{ptr @.str.149, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 277, i32 15}
!383 = !{ptr @.str.150, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 278, i32 16}
!385 = !{ptr @.str.151, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 279, i32 18}
!387 = !{ptr @.str.152, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 280, i32 20}
!389 = !{ptr @.str.153, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 281, i32 20}
!391 = !{ptr @.str.154, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 282, i32 16}
!393 = !{ptr @.str.155, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 283, i32 17}
!395 = !{ptr @.str.156, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 284, i32 17}
!397 = !{ptr @.str.157, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 285, i32 21}
!399 = !{ptr @.str.158, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 286, i32 24}
!401 = !{ptr @.str.159, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 287, i32 27}
!403 = !{ptr @.str.160, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 294, i32 17}
!405 = !{ptr @.str.161, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 295, i32 18}
!407 = !{ptr @.str.162, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 296, i32 18}
!409 = !{ptr @.str.163, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 288, i32 20}
!411 = !{ptr @.str.164, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 289, i32 20}
!413 = !{ptr @.str.165, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 290, i32 20}
!415 = !{ptr @.str.166, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 291, i32 20}
!417 = !{ptr @.str.167, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 292, i32 20}
!419 = !{ptr @.str.168, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 293, i32 20}
!421 = !{ptr @.str.169, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 297, i32 21}
!423 = !{ptr @.str.170, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 298, i32 17}
!425 = !{ptr @.str.171, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 299, i32 20}
!427 = !{ptr @.str.172, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 300, i32 20}
!429 = !{ptr @.str.173, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 301, i32 21}
!431 = !{ptr @ocelot_function_names, !432, !"ocelot_function_names", i1 false, i1 false}
!432 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 182, i32 26}
!433 = !{ptr @.str.174, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1474, i32 10}
!435 = !{ptr @serval_desc, !436, !"serval_desc", i1 false, i1 false}
!436 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1473, i32 28}
!437 = !{ptr @serval_pins, !438, !"serval_pins", i1 false, i1 false}
!438 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 455, i32 38}
!439 = !{ptr @serval_pin_0, !440, !"serval_pin_0", i1 false, i1 false}
!440 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 416, i32 1}
!441 = !{ptr @serval_pin_1, !442, !"serval_pin_1", i1 false, i1 false}
!442 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 417, i32 1}
!443 = !{ptr @serval_pin_2, !444, !"serval_pin_2", i1 false, i1 false}
!444 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 418, i32 1}
!445 = !{ptr @serval_pin_3, !446, !"serval_pin_3", i1 false, i1 false}
!446 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 419, i32 1}
!447 = !{ptr @serval_pin_4, !448, !"serval_pin_4", i1 false, i1 false}
!448 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 420, i32 1}
!449 = !{ptr @serval_pin_5, !450, !"serval_pin_5", i1 false, i1 false}
!450 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 421, i32 1}
!451 = !{ptr @serval_pin_6, !452, !"serval_pin_6", i1 false, i1 false}
!452 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 422, i32 1}
!453 = !{ptr @serval_pin_7, !454, !"serval_pin_7", i1 false, i1 false}
!454 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 423, i32 1}
!455 = !{ptr @serval_pin_8, !456, !"serval_pin_8", i1 false, i1 false}
!456 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 424, i32 1}
!457 = !{ptr @serval_pin_9, !458, !"serval_pin_9", i1 false, i1 false}
!458 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 425, i32 1}
!459 = !{ptr @serval_pin_10, !460, !"serval_pin_10", i1 false, i1 false}
!460 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 426, i32 1}
!461 = !{ptr @serval_pin_11, !462, !"serval_pin_11", i1 false, i1 false}
!462 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 427, i32 1}
!463 = !{ptr @serval_pin_12, !464, !"serval_pin_12", i1 false, i1 false}
!464 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 428, i32 1}
!465 = !{ptr @serval_pin_13, !466, !"serval_pin_13", i1 false, i1 false}
!466 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 429, i32 1}
!467 = !{ptr @serval_pin_14, !468, !"serval_pin_14", i1 false, i1 false}
!468 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 430, i32 1}
!469 = !{ptr @serval_pin_15, !470, !"serval_pin_15", i1 false, i1 false}
!470 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 431, i32 1}
!471 = !{ptr @serval_pin_16, !472, !"serval_pin_16", i1 false, i1 false}
!472 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 432, i32 1}
!473 = !{ptr @serval_pin_17, !474, !"serval_pin_17", i1 false, i1 false}
!474 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 433, i32 1}
!475 = !{ptr @serval_pin_18, !476, !"serval_pin_18", i1 false, i1 false}
!476 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 434, i32 1}
!477 = !{ptr @serval_pin_19, !478, !"serval_pin_19", i1 false, i1 false}
!478 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 435, i32 1}
!479 = !{ptr @serval_pin_20, !480, !"serval_pin_20", i1 false, i1 false}
!480 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 436, i32 1}
!481 = !{ptr @serval_pin_21, !482, !"serval_pin_21", i1 false, i1 false}
!482 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 437, i32 1}
!483 = !{ptr @serval_pin_22, !484, !"serval_pin_22", i1 false, i1 false}
!484 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 438, i32 1}
!485 = !{ptr @serval_pin_23, !486, !"serval_pin_23", i1 false, i1 false}
!486 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 439, i32 1}
!487 = !{ptr @serval_pin_24, !488, !"serval_pin_24", i1 false, i1 false}
!488 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 440, i32 1}
!489 = !{ptr @serval_pin_25, !490, !"serval_pin_25", i1 false, i1 false}
!490 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 441, i32 1}
!491 = !{ptr @serval_pin_26, !492, !"serval_pin_26", i1 false, i1 false}
!492 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 442, i32 1}
!493 = !{ptr @serval_pin_27, !494, !"serval_pin_27", i1 false, i1 false}
!494 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 443, i32 1}
!495 = !{ptr @serval_pin_28, !496, !"serval_pin_28", i1 false, i1 false}
!496 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 444, i32 1}
!497 = !{ptr @serval_pin_29, !498, !"serval_pin_29", i1 false, i1 false}
!498 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 445, i32 1}
!499 = !{ptr @serval_pin_30, !500, !"serval_pin_30", i1 false, i1 false}
!500 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 446, i32 1}
!501 = !{ptr @serval_pin_31, !502, !"serval_pin_31", i1 false, i1 false}
!502 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 447, i32 1}
!503 = !{ptr @.str.175, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1483, i32 10}
!505 = !{ptr @ocelot_desc, !506, !"ocelot_desc", i1 false, i1 false}
!506 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1482, i32 28}
!507 = !{ptr @ocelot_pins, !508, !"ocelot_pins", i1 false, i1 false}
!508 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 527, i32 38}
!509 = !{ptr @ocelot_pin_0, !510, !"ocelot_pin_0", i1 false, i1 false}
!510 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 498, i32 1}
!511 = !{ptr @ocelot_pin_1, !512, !"ocelot_pin_1", i1 false, i1 false}
!512 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 499, i32 1}
!513 = !{ptr @ocelot_pin_2, !514, !"ocelot_pin_2", i1 false, i1 false}
!514 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 500, i32 1}
!515 = !{ptr @ocelot_pin_3, !516, !"ocelot_pin_3", i1 false, i1 false}
!516 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 501, i32 1}
!517 = !{ptr @ocelot_pin_4, !518, !"ocelot_pin_4", i1 false, i1 false}
!518 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 502, i32 1}
!519 = !{ptr @ocelot_pin_5, !520, !"ocelot_pin_5", i1 false, i1 false}
!520 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 503, i32 1}
!521 = !{ptr @ocelot_pin_6, !522, !"ocelot_pin_6", i1 false, i1 false}
!522 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 504, i32 1}
!523 = !{ptr @ocelot_pin_7, !524, !"ocelot_pin_7", i1 false, i1 false}
!524 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 505, i32 1}
!525 = !{ptr @ocelot_pin_8, !526, !"ocelot_pin_8", i1 false, i1 false}
!526 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 506, i32 1}
!527 = !{ptr @ocelot_pin_9, !528, !"ocelot_pin_9", i1 false, i1 false}
!528 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 507, i32 1}
!529 = !{ptr @ocelot_pin_10, !530, !"ocelot_pin_10", i1 false, i1 false}
!530 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 508, i32 1}
!531 = !{ptr @ocelot_pin_11, !532, !"ocelot_pin_11", i1 false, i1 false}
!532 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 509, i32 1}
!533 = !{ptr @ocelot_pin_12, !534, !"ocelot_pin_12", i1 false, i1 false}
!534 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 510, i32 1}
!535 = !{ptr @ocelot_pin_13, !536, !"ocelot_pin_13", i1 false, i1 false}
!536 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 511, i32 1}
!537 = !{ptr @ocelot_pin_14, !538, !"ocelot_pin_14", i1 false, i1 false}
!538 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 512, i32 1}
!539 = !{ptr @ocelot_pin_15, !540, !"ocelot_pin_15", i1 false, i1 false}
!540 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 513, i32 1}
!541 = !{ptr @ocelot_pin_16, !542, !"ocelot_pin_16", i1 false, i1 false}
!542 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 514, i32 1}
!543 = !{ptr @ocelot_pin_17, !544, !"ocelot_pin_17", i1 false, i1 false}
!544 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 515, i32 1}
!545 = !{ptr @ocelot_pin_18, !546, !"ocelot_pin_18", i1 false, i1 false}
!546 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 516, i32 1}
!547 = !{ptr @ocelot_pin_19, !548, !"ocelot_pin_19", i1 false, i1 false}
!548 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 517, i32 1}
!549 = !{ptr @ocelot_pin_20, !550, !"ocelot_pin_20", i1 false, i1 false}
!550 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 518, i32 1}
!551 = !{ptr @ocelot_pin_21, !552, !"ocelot_pin_21", i1 false, i1 false}
!552 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 519, i32 1}
!553 = !{ptr @.str.176, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1492, i32 10}
!555 = !{ptr @jaguar2_desc, !556, !"jaguar2_desc", i1 false, i1 false}
!556 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1491, i32 28}
!557 = !{ptr @.str.177, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 664, i32 2}
!559 = !{ptr @.str.178, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 665, i32 2}
!561 = !{ptr @.str.179, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 666, i32 2}
!563 = !{ptr @.str.180, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 667, i32 2}
!565 = !{ptr @.str.181, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 668, i32 2}
!567 = !{ptr @.str.182, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 669, i32 2}
!569 = !{ptr @.str.183, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 670, i32 2}
!571 = !{ptr @.str.184, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 671, i32 2}
!573 = !{ptr @.str.185, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 672, i32 2}
!575 = !{ptr @.str.186, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 673, i32 2}
!577 = !{ptr @.str.187, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 674, i32 2}
!579 = !{ptr @.str.188, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 675, i32 2}
!581 = !{ptr @.str.189, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 676, i32 2}
!583 = !{ptr @.str.190, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 677, i32 2}
!585 = !{ptr @.str.191, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 678, i32 2}
!587 = !{ptr @.str.192, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 679, i32 2}
!589 = !{ptr @.str.193, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 680, i32 2}
!591 = !{ptr @.str.194, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 681, i32 2}
!593 = !{ptr @.str.195, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 682, i32 2}
!595 = !{ptr @.str.196, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 683, i32 2}
!597 = !{ptr @.str.197, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 684, i32 2}
!599 = !{ptr @.str.198, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 685, i32 2}
!601 = !{ptr @.str.199, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 686, i32 2}
!603 = !{ptr @.str.200, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 687, i32 2}
!605 = !{ptr @.str.201, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 688, i32 2}
!607 = !{ptr @.str.202, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 689, i32 2}
!609 = !{ptr @.str.203, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 690, i32 2}
!611 = !{ptr @.str.204, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 691, i32 2}
!613 = !{ptr @.str.205, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 692, i32 2}
!615 = !{ptr @.str.206, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 693, i32 2}
!617 = !{ptr @.str.207, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 694, i32 2}
!619 = !{ptr @.str.208, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 695, i32 2}
!621 = !{ptr @jaguar2_pins, !622, !"jaguar2_pins", i1 false, i1 false}
!622 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 631, i32 38}
!623 = !{ptr @jaguar2_pin_0, !624, !"jaguar2_pin_0", i1 false, i1 false}
!624 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 560, i32 1}
!625 = !{ptr @jaguar2_pin_1, !626, !"jaguar2_pin_1", i1 false, i1 false}
!626 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 561, i32 1}
!627 = !{ptr @jaguar2_pin_2, !628, !"jaguar2_pin_2", i1 false, i1 false}
!628 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 562, i32 1}
!629 = !{ptr @jaguar2_pin_3, !630, !"jaguar2_pin_3", i1 false, i1 false}
!630 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 563, i32 1}
!631 = !{ptr @jaguar2_pin_4, !632, !"jaguar2_pin_4", i1 false, i1 false}
!632 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 564, i32 1}
!633 = !{ptr @jaguar2_pin_5, !634, !"jaguar2_pin_5", i1 false, i1 false}
!634 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 565, i32 1}
!635 = !{ptr @jaguar2_pin_6, !636, !"jaguar2_pin_6", i1 false, i1 false}
!636 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 566, i32 1}
!637 = !{ptr @jaguar2_pin_7, !638, !"jaguar2_pin_7", i1 false, i1 false}
!638 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 567, i32 1}
!639 = !{ptr @jaguar2_pin_8, !640, !"jaguar2_pin_8", i1 false, i1 false}
!640 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 568, i32 1}
!641 = !{ptr @jaguar2_pin_9, !642, !"jaguar2_pin_9", i1 false, i1 false}
!642 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 569, i32 1}
!643 = !{ptr @jaguar2_pin_10, !644, !"jaguar2_pin_10", i1 false, i1 false}
!644 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 570, i32 1}
!645 = !{ptr @jaguar2_pin_11, !646, !"jaguar2_pin_11", i1 false, i1 false}
!646 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 571, i32 1}
!647 = !{ptr @jaguar2_pin_12, !648, !"jaguar2_pin_12", i1 false, i1 false}
!648 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 572, i32 1}
!649 = !{ptr @jaguar2_pin_13, !650, !"jaguar2_pin_13", i1 false, i1 false}
!650 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 573, i32 1}
!651 = !{ptr @jaguar2_pin_14, !652, !"jaguar2_pin_14", i1 false, i1 false}
!652 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 574, i32 1}
!653 = !{ptr @jaguar2_pin_15, !654, !"jaguar2_pin_15", i1 false, i1 false}
!654 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 575, i32 1}
!655 = !{ptr @jaguar2_pin_16, !656, !"jaguar2_pin_16", i1 false, i1 false}
!656 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 576, i32 1}
!657 = !{ptr @jaguar2_pin_17, !658, !"jaguar2_pin_17", i1 false, i1 false}
!658 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 577, i32 1}
!659 = !{ptr @jaguar2_pin_18, !660, !"jaguar2_pin_18", i1 false, i1 false}
!660 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 578, i32 1}
!661 = !{ptr @jaguar2_pin_19, !662, !"jaguar2_pin_19", i1 false, i1 false}
!662 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 579, i32 1}
!663 = !{ptr @jaguar2_pin_20, !664, !"jaguar2_pin_20", i1 false, i1 false}
!664 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 580, i32 1}
!665 = !{ptr @jaguar2_pin_21, !666, !"jaguar2_pin_21", i1 false, i1 false}
!666 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 581, i32 1}
!667 = !{ptr @jaguar2_pin_22, !668, !"jaguar2_pin_22", i1 false, i1 false}
!668 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 582, i32 1}
!669 = !{ptr @jaguar2_pin_23, !670, !"jaguar2_pin_23", i1 false, i1 false}
!670 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 583, i32 1}
!671 = !{ptr @jaguar2_pin_24, !672, !"jaguar2_pin_24", i1 false, i1 false}
!672 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 584, i32 1}
!673 = !{ptr @jaguar2_pin_25, !674, !"jaguar2_pin_25", i1 false, i1 false}
!674 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 585, i32 1}
!675 = !{ptr @jaguar2_pin_26, !676, !"jaguar2_pin_26", i1 false, i1 false}
!676 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 586, i32 1}
!677 = !{ptr @jaguar2_pin_27, !678, !"jaguar2_pin_27", i1 false, i1 false}
!678 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 587, i32 1}
!679 = !{ptr @jaguar2_pin_28, !680, !"jaguar2_pin_28", i1 false, i1 false}
!680 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 588, i32 1}
!681 = !{ptr @jaguar2_pin_29, !682, !"jaguar2_pin_29", i1 false, i1 false}
!682 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 589, i32 1}
!683 = !{ptr @jaguar2_pin_30, !684, !"jaguar2_pin_30", i1 false, i1 false}
!684 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 590, i32 1}
!685 = !{ptr @jaguar2_pin_31, !686, !"jaguar2_pin_31", i1 false, i1 false}
!686 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 591, i32 1}
!687 = !{ptr @jaguar2_pin_32, !688, !"jaguar2_pin_32", i1 false, i1 false}
!688 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 592, i32 1}
!689 = !{ptr @jaguar2_pin_33, !690, !"jaguar2_pin_33", i1 false, i1 false}
!690 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 593, i32 1}
!691 = !{ptr @jaguar2_pin_34, !692, !"jaguar2_pin_34", i1 false, i1 false}
!692 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 594, i32 1}
!693 = !{ptr @jaguar2_pin_35, !694, !"jaguar2_pin_35", i1 false, i1 false}
!694 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 595, i32 1}
!695 = !{ptr @jaguar2_pin_36, !696, !"jaguar2_pin_36", i1 false, i1 false}
!696 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 596, i32 1}
!697 = !{ptr @jaguar2_pin_37, !698, !"jaguar2_pin_37", i1 false, i1 false}
!698 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 597, i32 1}
!699 = !{ptr @jaguar2_pin_38, !700, !"jaguar2_pin_38", i1 false, i1 false}
!700 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 598, i32 1}
!701 = !{ptr @jaguar2_pin_39, !702, !"jaguar2_pin_39", i1 false, i1 false}
!702 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 599, i32 1}
!703 = !{ptr @jaguar2_pin_40, !704, !"jaguar2_pin_40", i1 false, i1 false}
!704 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 600, i32 1}
!705 = !{ptr @jaguar2_pin_41, !706, !"jaguar2_pin_41", i1 false, i1 false}
!706 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 601, i32 1}
!707 = !{ptr @jaguar2_pin_42, !708, !"jaguar2_pin_42", i1 false, i1 false}
!708 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 602, i32 1}
!709 = !{ptr @jaguar2_pin_43, !710, !"jaguar2_pin_43", i1 false, i1 false}
!710 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 603, i32 1}
!711 = !{ptr @jaguar2_pin_44, !712, !"jaguar2_pin_44", i1 false, i1 false}
!712 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 604, i32 1}
!713 = !{ptr @jaguar2_pin_45, !714, !"jaguar2_pin_45", i1 false, i1 false}
!714 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 605, i32 1}
!715 = !{ptr @jaguar2_pin_46, !716, !"jaguar2_pin_46", i1 false, i1 false}
!716 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 606, i32 1}
!717 = !{ptr @jaguar2_pin_47, !718, !"jaguar2_pin_47", i1 false, i1 false}
!718 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 607, i32 1}
!719 = !{ptr @jaguar2_pin_48, !720, !"jaguar2_pin_48", i1 false, i1 false}
!720 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 608, i32 1}
!721 = !{ptr @jaguar2_pin_49, !722, !"jaguar2_pin_49", i1 false, i1 false}
!722 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 609, i32 1}
!723 = !{ptr @jaguar2_pin_50, !724, !"jaguar2_pin_50", i1 false, i1 false}
!724 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 610, i32 1}
!725 = !{ptr @jaguar2_pin_51, !726, !"jaguar2_pin_51", i1 false, i1 false}
!726 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 611, i32 1}
!727 = !{ptr @jaguar2_pin_52, !728, !"jaguar2_pin_52", i1 false, i1 false}
!728 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 612, i32 1}
!729 = !{ptr @jaguar2_pin_53, !730, !"jaguar2_pin_53", i1 false, i1 false}
!730 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 613, i32 1}
!731 = !{ptr @jaguar2_pin_54, !732, !"jaguar2_pin_54", i1 false, i1 false}
!732 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 614, i32 1}
!733 = !{ptr @jaguar2_pin_55, !734, !"jaguar2_pin_55", i1 false, i1 false}
!734 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 615, i32 1}
!735 = !{ptr @jaguar2_pin_56, !736, !"jaguar2_pin_56", i1 false, i1 false}
!736 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 616, i32 1}
!737 = !{ptr @jaguar2_pin_57, !738, !"jaguar2_pin_57", i1 false, i1 false}
!738 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 617, i32 1}
!739 = !{ptr @jaguar2_pin_58, !740, !"jaguar2_pin_58", i1 false, i1 false}
!740 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 618, i32 1}
!741 = !{ptr @jaguar2_pin_59, !742, !"jaguar2_pin_59", i1 false, i1 false}
!742 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 619, i32 1}
!743 = !{ptr @jaguar2_pin_60, !744, !"jaguar2_pin_60", i1 false, i1 false}
!744 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 620, i32 1}
!745 = !{ptr @jaguar2_pin_61, !746, !"jaguar2_pin_61", i1 false, i1 false}
!746 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 621, i32 1}
!747 = !{ptr @jaguar2_pin_62, !748, !"jaguar2_pin_62", i1 false, i1 false}
!748 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 622, i32 1}
!749 = !{ptr @jaguar2_pin_63, !750, !"jaguar2_pin_63", i1 false, i1 false}
!750 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 623, i32 1}
!751 = !{ptr @.str.209, !752, !"<string literal>", i1 false, i1 false}
!752 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1501, i32 10}
!753 = !{ptr @sparx5_desc, !754, !"sparx5_desc", i1 false, i1 false}
!754 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1500, i32 28}
!755 = !{ptr @sparx5_pins, !756, !"sparx5_pins", i1 false, i1 false}
!756 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 777, i32 38}
!757 = !{ptr @sparx5_pin_0, !758, !"sparx5_pin_0", i1 false, i1 false}
!758 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 706, i32 1}
!759 = !{ptr @sparx5_pin_1, !760, !"sparx5_pin_1", i1 false, i1 false}
!760 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 707, i32 1}
!761 = !{ptr @sparx5_pin_2, !762, !"sparx5_pin_2", i1 false, i1 false}
!762 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 708, i32 1}
!763 = !{ptr @sparx5_pin_3, !764, !"sparx5_pin_3", i1 false, i1 false}
!764 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 709, i32 1}
!765 = !{ptr @sparx5_pin_4, !766, !"sparx5_pin_4", i1 false, i1 false}
!766 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 710, i32 1}
!767 = !{ptr @sparx5_pin_5, !768, !"sparx5_pin_5", i1 false, i1 false}
!768 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 711, i32 1}
!769 = !{ptr @sparx5_pin_6, !770, !"sparx5_pin_6", i1 false, i1 false}
!770 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 712, i32 1}
!771 = !{ptr @sparx5_pin_7, !772, !"sparx5_pin_7", i1 false, i1 false}
!772 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 713, i32 1}
!773 = !{ptr @sparx5_pin_8, !774, !"sparx5_pin_8", i1 false, i1 false}
!774 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 714, i32 1}
!775 = !{ptr @sparx5_pin_9, !776, !"sparx5_pin_9", i1 false, i1 false}
!776 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 715, i32 1}
!777 = !{ptr @sparx5_pin_10, !778, !"sparx5_pin_10", i1 false, i1 false}
!778 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 716, i32 1}
!779 = !{ptr @sparx5_pin_11, !780, !"sparx5_pin_11", i1 false, i1 false}
!780 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 717, i32 1}
!781 = !{ptr @sparx5_pin_12, !782, !"sparx5_pin_12", i1 false, i1 false}
!782 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 718, i32 1}
!783 = !{ptr @sparx5_pin_13, !784, !"sparx5_pin_13", i1 false, i1 false}
!784 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 719, i32 1}
!785 = !{ptr @sparx5_pin_14, !786, !"sparx5_pin_14", i1 false, i1 false}
!786 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 720, i32 1}
!787 = !{ptr @sparx5_pin_15, !788, !"sparx5_pin_15", i1 false, i1 false}
!788 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 721, i32 1}
!789 = !{ptr @sparx5_pin_16, !790, !"sparx5_pin_16", i1 false, i1 false}
!790 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 722, i32 1}
!791 = !{ptr @sparx5_pin_17, !792, !"sparx5_pin_17", i1 false, i1 false}
!792 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 723, i32 1}
!793 = !{ptr @sparx5_pin_18, !794, !"sparx5_pin_18", i1 false, i1 false}
!794 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 724, i32 1}
!795 = !{ptr @sparx5_pin_19, !796, !"sparx5_pin_19", i1 false, i1 false}
!796 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 725, i32 1}
!797 = !{ptr @sparx5_pin_20, !798, !"sparx5_pin_20", i1 false, i1 false}
!798 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 726, i32 1}
!799 = !{ptr @sparx5_pin_21, !800, !"sparx5_pin_21", i1 false, i1 false}
!800 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 727, i32 1}
!801 = !{ptr @sparx5_pin_22, !802, !"sparx5_pin_22", i1 false, i1 false}
!802 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 728, i32 1}
!803 = !{ptr @sparx5_pin_23, !804, !"sparx5_pin_23", i1 false, i1 false}
!804 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 729, i32 1}
!805 = !{ptr @sparx5_pin_24, !806, !"sparx5_pin_24", i1 false, i1 false}
!806 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 730, i32 1}
!807 = !{ptr @sparx5_pin_25, !808, !"sparx5_pin_25", i1 false, i1 false}
!808 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 731, i32 1}
!809 = !{ptr @sparx5_pin_26, !810, !"sparx5_pin_26", i1 false, i1 false}
!810 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 732, i32 1}
!811 = !{ptr @sparx5_pin_27, !812, !"sparx5_pin_27", i1 false, i1 false}
!812 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 733, i32 1}
!813 = !{ptr @sparx5_pin_28, !814, !"sparx5_pin_28", i1 false, i1 false}
!814 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 734, i32 1}
!815 = !{ptr @sparx5_pin_29, !816, !"sparx5_pin_29", i1 false, i1 false}
!816 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 735, i32 1}
!817 = !{ptr @sparx5_pin_30, !818, !"sparx5_pin_30", i1 false, i1 false}
!818 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 736, i32 1}
!819 = !{ptr @sparx5_pin_31, !820, !"sparx5_pin_31", i1 false, i1 false}
!820 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 737, i32 1}
!821 = !{ptr @sparx5_pin_32, !822, !"sparx5_pin_32", i1 false, i1 false}
!822 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 738, i32 1}
!823 = !{ptr @sparx5_pin_33, !824, !"sparx5_pin_33", i1 false, i1 false}
!824 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 739, i32 1}
!825 = !{ptr @sparx5_pin_34, !826, !"sparx5_pin_34", i1 false, i1 false}
!826 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 740, i32 1}
!827 = !{ptr @sparx5_pin_35, !828, !"sparx5_pin_35", i1 false, i1 false}
!828 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 741, i32 1}
!829 = !{ptr @sparx5_pin_36, !830, !"sparx5_pin_36", i1 false, i1 false}
!830 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 742, i32 1}
!831 = !{ptr @sparx5_pin_37, !832, !"sparx5_pin_37", i1 false, i1 false}
!832 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 743, i32 1}
!833 = !{ptr @sparx5_pin_38, !834, !"sparx5_pin_38", i1 false, i1 false}
!834 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 744, i32 1}
!835 = !{ptr @sparx5_pin_39, !836, !"sparx5_pin_39", i1 false, i1 false}
!836 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 745, i32 1}
!837 = !{ptr @sparx5_pin_40, !838, !"sparx5_pin_40", i1 false, i1 false}
!838 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 746, i32 1}
!839 = !{ptr @sparx5_pin_41, !840, !"sparx5_pin_41", i1 false, i1 false}
!840 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 747, i32 1}
!841 = !{ptr @sparx5_pin_42, !842, !"sparx5_pin_42", i1 false, i1 false}
!842 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 748, i32 1}
!843 = !{ptr @sparx5_pin_43, !844, !"sparx5_pin_43", i1 false, i1 false}
!844 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 749, i32 1}
!845 = !{ptr @sparx5_pin_44, !846, !"sparx5_pin_44", i1 false, i1 false}
!846 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 750, i32 1}
!847 = !{ptr @sparx5_pin_45, !848, !"sparx5_pin_45", i1 false, i1 false}
!848 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 751, i32 1}
!849 = !{ptr @sparx5_pin_46, !850, !"sparx5_pin_46", i1 false, i1 false}
!850 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 752, i32 1}
!851 = !{ptr @sparx5_pin_47, !852, !"sparx5_pin_47", i1 false, i1 false}
!852 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 753, i32 1}
!853 = !{ptr @sparx5_pin_48, !854, !"sparx5_pin_48", i1 false, i1 false}
!854 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 754, i32 1}
!855 = !{ptr @sparx5_pin_49, !856, !"sparx5_pin_49", i1 false, i1 false}
!856 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 755, i32 1}
!857 = !{ptr @sparx5_pin_50, !858, !"sparx5_pin_50", i1 false, i1 false}
!858 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 756, i32 1}
!859 = !{ptr @sparx5_pin_51, !860, !"sparx5_pin_51", i1 false, i1 false}
!860 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 757, i32 1}
!861 = !{ptr @sparx5_pin_52, !862, !"sparx5_pin_52", i1 false, i1 false}
!862 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 758, i32 1}
!863 = !{ptr @sparx5_pin_53, !864, !"sparx5_pin_53", i1 false, i1 false}
!864 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 759, i32 1}
!865 = !{ptr @sparx5_pin_54, !866, !"sparx5_pin_54", i1 false, i1 false}
!866 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 760, i32 1}
!867 = !{ptr @sparx5_pin_55, !868, !"sparx5_pin_55", i1 false, i1 false}
!868 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 761, i32 1}
!869 = !{ptr @sparx5_pin_56, !870, !"sparx5_pin_56", i1 false, i1 false}
!870 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 762, i32 1}
!871 = !{ptr @sparx5_pin_57, !872, !"sparx5_pin_57", i1 false, i1 false}
!872 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 763, i32 1}
!873 = !{ptr @sparx5_pin_58, !874, !"sparx5_pin_58", i1 false, i1 false}
!874 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 764, i32 1}
!875 = !{ptr @sparx5_pin_59, !876, !"sparx5_pin_59", i1 false, i1 false}
!876 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 765, i32 1}
!877 = !{ptr @sparx5_pin_60, !878, !"sparx5_pin_60", i1 false, i1 false}
!878 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 766, i32 1}
!879 = !{ptr @sparx5_pin_61, !880, !"sparx5_pin_61", i1 false, i1 false}
!880 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 767, i32 1}
!881 = !{ptr @sparx5_pin_62, !882, !"sparx5_pin_62", i1 false, i1 false}
!882 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 768, i32 1}
!883 = !{ptr @sparx5_pin_63, !884, !"sparx5_pin_63", i1 false, i1 false}
!884 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 769, i32 1}
!885 = !{ptr @ocelot_confops, !886, !"ocelot_confops", i1 false, i1 false}
!886 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1449, i32 33}
!887 = !{ptr @.str.210, !888, !"<string literal>", i1 false, i1 false}
!888 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1511, i32 10}
!889 = !{ptr @lan966x_desc, !890, !"lan966x_desc", i1 false, i1 false}
!890 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1510, i32 28}
!891 = !{ptr @.str.211, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1009, i32 2}
!893 = !{ptr @.str.212, !894, !"<string literal>", i1 false, i1 false}
!894 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1010, i32 2}
!895 = !{ptr @.str.213, !896, !"<string literal>", i1 false, i1 false}
!896 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1011, i32 2}
!897 = !{ptr @.str.214, !898, !"<string literal>", i1 false, i1 false}
!898 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1012, i32 2}
!899 = !{ptr @.str.215, !900, !"<string literal>", i1 false, i1 false}
!900 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1013, i32 2}
!901 = !{ptr @.str.216, !902, !"<string literal>", i1 false, i1 false}
!902 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1014, i32 2}
!903 = !{ptr @.str.217, !904, !"<string literal>", i1 false, i1 false}
!904 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1015, i32 2}
!905 = !{ptr @.str.218, !906, !"<string literal>", i1 false, i1 false}
!906 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1016, i32 2}
!907 = !{ptr @.str.219, !908, !"<string literal>", i1 false, i1 false}
!908 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1017, i32 2}
!909 = !{ptr @.str.220, !910, !"<string literal>", i1 false, i1 false}
!910 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1018, i32 2}
!911 = !{ptr @.str.221, !912, !"<string literal>", i1 false, i1 false}
!912 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1019, i32 2}
!913 = !{ptr @.str.222, !914, !"<string literal>", i1 false, i1 false}
!914 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1020, i32 2}
!915 = !{ptr @.str.223, !916, !"<string literal>", i1 false, i1 false}
!916 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1021, i32 2}
!917 = !{ptr @.str.224, !918, !"<string literal>", i1 false, i1 false}
!918 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1022, i32 2}
!919 = !{ptr @lan966x_pins, !920, !"lan966x_pins", i1 false, i1 false}
!920 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 944, i32 38}
!921 = !{ptr @lan966x_pin_0, !922, !"lan966x_pin_0", i1 false, i1 false}
!922 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 859, i32 1}
!923 = !{ptr @lan966x_pin_1, !924, !"lan966x_pin_1", i1 false, i1 false}
!924 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 860, i32 1}
!925 = !{ptr @lan966x_pin_2, !926, !"lan966x_pin_2", i1 false, i1 false}
!926 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 861, i32 1}
!927 = !{ptr @lan966x_pin_3, !928, !"lan966x_pin_3", i1 false, i1 false}
!928 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 862, i32 1}
!929 = !{ptr @lan966x_pin_4, !930, !"lan966x_pin_4", i1 false, i1 false}
!930 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 863, i32 1}
!931 = !{ptr @lan966x_pin_5, !932, !"lan966x_pin_5", i1 false, i1 false}
!932 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 864, i32 1}
!933 = !{ptr @lan966x_pin_6, !934, !"lan966x_pin_6", i1 false, i1 false}
!934 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 865, i32 1}
!935 = !{ptr @lan966x_pin_7, !936, !"lan966x_pin_7", i1 false, i1 false}
!936 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 866, i32 1}
!937 = !{ptr @lan966x_pin_8, !938, !"lan966x_pin_8", i1 false, i1 false}
!938 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 867, i32 1}
!939 = !{ptr @lan966x_pin_9, !940, !"lan966x_pin_9", i1 false, i1 false}
!940 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 868, i32 1}
!941 = !{ptr @lan966x_pin_10, !942, !"lan966x_pin_10", i1 false, i1 false}
!942 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 869, i32 1}
!943 = !{ptr @lan966x_pin_11, !944, !"lan966x_pin_11", i1 false, i1 false}
!944 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 870, i32 1}
!945 = !{ptr @lan966x_pin_12, !946, !"lan966x_pin_12", i1 false, i1 false}
!946 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 871, i32 1}
!947 = !{ptr @lan966x_pin_13, !948, !"lan966x_pin_13", i1 false, i1 false}
!948 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 872, i32 1}
!949 = !{ptr @lan966x_pin_14, !950, !"lan966x_pin_14", i1 false, i1 false}
!950 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 873, i32 1}
!951 = !{ptr @lan966x_pin_15, !952, !"lan966x_pin_15", i1 false, i1 false}
!952 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 874, i32 1}
!953 = !{ptr @lan966x_pin_16, !954, !"lan966x_pin_16", i1 false, i1 false}
!954 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 875, i32 1}
!955 = !{ptr @lan966x_pin_17, !956, !"lan966x_pin_17", i1 false, i1 false}
!956 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 876, i32 1}
!957 = !{ptr @lan966x_pin_18, !958, !"lan966x_pin_18", i1 false, i1 false}
!958 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 877, i32 1}
!959 = !{ptr @lan966x_pin_19, !960, !"lan966x_pin_19", i1 false, i1 false}
!960 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 878, i32 1}
!961 = !{ptr @lan966x_pin_20, !962, !"lan966x_pin_20", i1 false, i1 false}
!962 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 879, i32 1}
!963 = !{ptr @lan966x_pin_21, !964, !"lan966x_pin_21", i1 false, i1 false}
!964 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 880, i32 1}
!965 = !{ptr @lan966x_pin_22, !966, !"lan966x_pin_22", i1 false, i1 false}
!966 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 881, i32 1}
!967 = !{ptr @lan966x_pin_23, !968, !"lan966x_pin_23", i1 false, i1 false}
!968 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 882, i32 1}
!969 = !{ptr @lan966x_pin_24, !970, !"lan966x_pin_24", i1 false, i1 false}
!970 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 883, i32 1}
!971 = !{ptr @lan966x_pin_25, !972, !"lan966x_pin_25", i1 false, i1 false}
!972 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 884, i32 1}
!973 = !{ptr @lan966x_pin_26, !974, !"lan966x_pin_26", i1 false, i1 false}
!974 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 885, i32 1}
!975 = !{ptr @lan966x_pin_27, !976, !"lan966x_pin_27", i1 false, i1 false}
!976 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 886, i32 1}
!977 = !{ptr @lan966x_pin_28, !978, !"lan966x_pin_28", i1 false, i1 false}
!978 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 887, i32 1}
!979 = !{ptr @lan966x_pin_29, !980, !"lan966x_pin_29", i1 false, i1 false}
!980 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 888, i32 1}
!981 = !{ptr @lan966x_pin_30, !982, !"lan966x_pin_30", i1 false, i1 false}
!982 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 889, i32 1}
!983 = !{ptr @lan966x_pin_31, !984, !"lan966x_pin_31", i1 false, i1 false}
!984 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 890, i32 1}
!985 = !{ptr @lan966x_pin_32, !986, !"lan966x_pin_32", i1 false, i1 false}
!986 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 891, i32 1}
!987 = !{ptr @lan966x_pin_33, !988, !"lan966x_pin_33", i1 false, i1 false}
!988 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 892, i32 1}
!989 = !{ptr @lan966x_pin_34, !990, !"lan966x_pin_34", i1 false, i1 false}
!990 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 893, i32 1}
!991 = !{ptr @lan966x_pin_35, !992, !"lan966x_pin_35", i1 false, i1 false}
!992 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 894, i32 1}
!993 = !{ptr @lan966x_pin_36, !994, !"lan966x_pin_36", i1 false, i1 false}
!994 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 895, i32 1}
!995 = !{ptr @lan966x_pin_37, !996, !"lan966x_pin_37", i1 false, i1 false}
!996 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 896, i32 1}
!997 = !{ptr @lan966x_pin_38, !998, !"lan966x_pin_38", i1 false, i1 false}
!998 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 897, i32 1}
!999 = !{ptr @lan966x_pin_39, !1000, !"lan966x_pin_39", i1 false, i1 false}
!1000 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 898, i32 1}
!1001 = !{ptr @lan966x_pin_40, !1002, !"lan966x_pin_40", i1 false, i1 false}
!1002 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 899, i32 1}
!1003 = !{ptr @lan966x_pin_41, !1004, !"lan966x_pin_41", i1 false, i1 false}
!1004 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 900, i32 1}
!1005 = !{ptr @lan966x_pin_42, !1006, !"lan966x_pin_42", i1 false, i1 false}
!1006 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 901, i32 1}
!1007 = !{ptr @lan966x_pin_43, !1008, !"lan966x_pin_43", i1 false, i1 false}
!1008 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 902, i32 1}
!1009 = !{ptr @lan966x_pin_44, !1010, !"lan966x_pin_44", i1 false, i1 false}
!1010 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 903, i32 1}
!1011 = !{ptr @lan966x_pin_45, !1012, !"lan966x_pin_45", i1 false, i1 false}
!1012 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 904, i32 1}
!1013 = !{ptr @lan966x_pin_46, !1014, !"lan966x_pin_46", i1 false, i1 false}
!1014 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 905, i32 1}
!1015 = !{ptr @lan966x_pin_47, !1016, !"lan966x_pin_47", i1 false, i1 false}
!1016 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 906, i32 1}
!1017 = !{ptr @lan966x_pin_48, !1018, !"lan966x_pin_48", i1 false, i1 false}
!1018 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 907, i32 1}
!1019 = !{ptr @lan966x_pin_49, !1020, !"lan966x_pin_49", i1 false, i1 false}
!1020 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 908, i32 1}
!1021 = !{ptr @lan966x_pin_50, !1022, !"lan966x_pin_50", i1 false, i1 false}
!1022 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 909, i32 1}
!1023 = !{ptr @lan966x_pin_51, !1024, !"lan966x_pin_51", i1 false, i1 false}
!1024 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 910, i32 1}
!1025 = !{ptr @lan966x_pin_52, !1026, !"lan966x_pin_52", i1 false, i1 false}
!1026 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 911, i32 1}
!1027 = !{ptr @lan966x_pin_53, !1028, !"lan966x_pin_53", i1 false, i1 false}
!1028 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 912, i32 1}
!1029 = !{ptr @lan966x_pin_54, !1030, !"lan966x_pin_54", i1 false, i1 false}
!1030 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 913, i32 1}
!1031 = !{ptr @lan966x_pin_55, !1032, !"lan966x_pin_55", i1 false, i1 false}
!1032 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 914, i32 1}
!1033 = !{ptr @lan966x_pin_56, !1034, !"lan966x_pin_56", i1 false, i1 false}
!1034 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 915, i32 1}
!1035 = !{ptr @lan966x_pin_57, !1036, !"lan966x_pin_57", i1 false, i1 false}
!1036 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 916, i32 1}
!1037 = !{ptr @lan966x_pin_58, !1038, !"lan966x_pin_58", i1 false, i1 false}
!1038 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 917, i32 1}
!1039 = !{ptr @lan966x_pin_59, !1040, !"lan966x_pin_59", i1 false, i1 false}
!1040 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 918, i32 1}
!1041 = !{ptr @lan966x_pin_60, !1042, !"lan966x_pin_60", i1 false, i1 false}
!1042 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 919, i32 1}
!1043 = !{ptr @lan966x_pin_61, !1044, !"lan966x_pin_61", i1 false, i1 false}
!1044 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 920, i32 1}
!1045 = !{ptr @lan966x_pin_62, !1046, !"lan966x_pin_62", i1 false, i1 false}
!1046 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 921, i32 1}
!1047 = !{ptr @lan966x_pin_63, !1048, !"lan966x_pin_63", i1 false, i1 false}
!1048 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 922, i32 1}
!1049 = !{ptr @lan966x_pin_64, !1050, !"lan966x_pin_64", i1 false, i1 false}
!1050 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 923, i32 1}
!1051 = !{ptr @lan966x_pin_65, !1052, !"lan966x_pin_65", i1 false, i1 false}
!1052 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 924, i32 1}
!1053 = !{ptr @lan966x_pin_66, !1054, !"lan966x_pin_66", i1 false, i1 false}
!1054 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 925, i32 1}
!1055 = !{ptr @lan966x_pin_67, !1056, !"lan966x_pin_67", i1 false, i1 false}
!1056 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 926, i32 1}
!1057 = !{ptr @lan966x_pin_68, !1058, !"lan966x_pin_68", i1 false, i1 false}
!1058 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 927, i32 1}
!1059 = !{ptr @lan966x_pin_69, !1060, !"lan966x_pin_69", i1 false, i1 false}
!1060 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 928, i32 1}
!1061 = !{ptr @lan966x_pin_70, !1062, !"lan966x_pin_70", i1 false, i1 false}
!1062 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 929, i32 1}
!1063 = !{ptr @lan966x_pin_71, !1064, !"lan966x_pin_71", i1 false, i1 false}
!1064 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 930, i32 1}
!1065 = !{ptr @lan966x_pin_72, !1066, !"lan966x_pin_72", i1 false, i1 false}
!1066 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 931, i32 1}
!1067 = !{ptr @lan966x_pin_73, !1068, !"lan966x_pin_73", i1 false, i1 false}
!1068 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 932, i32 1}
!1069 = !{ptr @lan966x_pin_74, !1070, !"lan966x_pin_74", i1 false, i1 false}
!1070 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 933, i32 1}
!1071 = !{ptr @lan966x_pin_75, !1072, !"lan966x_pin_75", i1 false, i1 false}
!1072 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 934, i32 1}
!1073 = !{ptr @lan966x_pin_76, !1074, !"lan966x_pin_76", i1 false, i1 false}
!1074 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 935, i32 1}
!1075 = !{ptr @lan966x_pin_77, !1076, !"lan966x_pin_77", i1 false, i1 false}
!1076 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 936, i32 1}
!1077 = !{ptr @lan966x_pmx_ops, !1078, !"lan966x_pmx_ops", i1 false, i1 false}
!1078 = !{!"../drivers/pinctrl/pinctrl-ocelot.c", i32 1182, i32 32}
!1079 = !{i32 1, !"wchar_size", i32 2}
!1080 = !{i32 1, !"min_enum_size", i32 4}
!1081 = !{i32 8, !"branch-target-enforcement", i32 0}
!1082 = !{i32 8, !"sign-return-address", i32 0}
!1083 = !{i32 8, !"sign-return-address-all", i32 0}
!1084 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1085 = !{i32 7, !"uwtable", i32 1}
!1086 = !{i32 7, !"frame-pointer", i32 2}
!1087 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1088 = !{i64 2148351462, i64 2148351467, i64 2148351480, i64 2148351524, i64 2148351558, i64 2148351579}
!1089 = !{!"branch_weights", i32 1, i32 2000}
!1090 = !{!"auto-init"}
