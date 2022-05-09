; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c_pt.bc'
source_filename = "../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.npcm7xx_group = type { ptr, ptr, i32 }
%struct.npcm7xx_func = type { ptr, i32, ptr }
%struct.npcm7xx_pincfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.npcm7xx_pinctrl = type { ptr, ptr, [8 x %struct.npcm7xx_gpio], ptr, ptr, ptr, i32 }
%struct.npcm7xx_gpio = type { ptr, %struct.gpio_chip, i32, i32, ptr, %struct.irq_chip, i32, ptr, ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_pinctrl_npcm7xx__250_2063_npcm7xx_pinctrl_register3 = internal global ptr @npcm7xx_pinctrl_register, section ".initcall3.init", align 4
@__UNIQUE_ID_file251 = internal constant [61 x i8] c"pinctrl_npcm7xx.file=drivers/pinctrl/nuvoton/pinctrl-npcm7xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [31 x i8] c"pinctrl_npcm7xx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [48 x i8] c"pinctrl_npcm7xx.author=jordan_hargrave@dell.com\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [48 x i8] c"pinctrl_npcm7xx.author=tomer.maimon@nuvoton.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [68 x i8] c"pinctrl_npcm7xx.description=Nuvoton NPCM7XX Pinctrl and GPIO driver\00", section ".modinfo", align 1
@npcm7xx_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @npcm7xx_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @npcm7xx_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"npcm7xx-pinctrl\00", [16 x i8] zeroinitializer }, align 32
@npcm7xx_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nuvoton,npcm750-gcr\00", [44 x i8] zeroinitializer }, align 32
@npcm7xx_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2017, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"didn't find nuvoton,npcm750-gcr\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"npcm7xx_pinctrl_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@npcm7xx_pinctrl_probe._entry_ptr = internal global ptr @npcm7xx_pinctrl_probe._entry, section ".printk_index", align 4
@npcm7xx_pinctrl_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2023, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to gpio dt-binding %u\0A\00", [34 x i8] zeroinitializer }, align 32
@npcm7xx_pinctrl_probe._entry_ptr.9 = internal global ptr @npcm7xx_pinctrl_probe._entry.7, section ".printk_index", align 4
@npcm7xx_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr @npcm7xx_pins, i32 231, ptr @npcm7xx_pinctrl_ops, ptr @npcm7xx_pinmux_ops, ptr @npcm7xx_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@npcm7xx_pinctrl_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 2030, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register pinctrl device\0A\00", [61 x i8] zeroinitializer }, align 32
@npcm7xx_pinctrl_probe._entry_ptr.12 = internal global ptr @npcm7xx_pinctrl_probe._entry.10, section ".printk_index", align 4
@npcm7xx_pinctrl_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 2036, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register gpio %u\0A\00", [36 x i8] zeroinitializer }, align 32
@npcm7xx_pinctrl_probe._entry_ptr.15 = internal global ptr @npcm7xx_pinctrl_probe._entry.13, section ".printk_index", align 4
@npcm7xx_pinctrl_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 2040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016NPCM7xx Pinctrl driver probed\0A\00", [63 x i8] zeroinitializer }, align 32
@npcm7xx_pinctrl_probe._entry_ptr.18 = internal global ptr @npcm7xx_pinctrl_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 1875, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Resource fail for GPIO bank %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"npcm7xx_gpio_of\00", [16 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_of._entry_ptr = internal global ptr @npcm7xx_gpio_of._entry, section ".printk_index", align 4
@npcm7xx_gpio_of._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 1885, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No IRQ for GPIO bank %u\0A\00", [39 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_of._entry_ptr.24 = internal global ptr @npcm7xx_gpio_of._entry.22, section ".printk_index", align 4
@npcm7xx_gpio_of._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 1902, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bgpio_init() failed\0A\00", [43 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_of._entry_ptr.27 = internal global ptr @npcm7xx_gpio_of._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_of._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.21, ptr @.str.4, i32 1912, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"gpio-ranges fail for GPIO bank %u\0A\00", [61 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_of._entry_ptr.31 = internal global ptr @npcm7xx_gpio_of._entry.29, section ".printk_index", align 4
@npcmgpio_irqchip = internal constant { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.33, ptr @npcmgpio_irq_startup, ptr null, ptr null, ptr null, ptr @npcmgpio_irq_ack, ptr @npcmgpio_irq_mask, ptr null, ptr @npcmgpio_irq_unmask, ptr null, ptr null, ptr null, ptr @npcmgpio_set_irq_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pOF\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NPCM7XX-GPIO-IRQ\00", [47 x i8] zeroinitializer }, align 32
@npcmgpio_irq_startup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl_npcm7xx\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"npcmgpio_irq_startup\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"startup: %u.%u\0A\00", [16 x i8] zeroinitializer }, align 32
@npcmgpio_irq_ack.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 0, i8 73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"npcmgpio_irq_ack\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq_ack: %u.%u\0A\00", [16 x i8] zeroinitializer }, align 32
@npcmgpio_irq_mask.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"npcmgpio_irq_mask\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq_mask: %u.%u\0A\00", [47 x i8] zeroinitializer }, align 32
@npcmgpio_irq_unmask.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"npcmgpio_irq_unmask\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irq_unmask: %u.%u\0A\00", [45 x i8] zeroinitializer }, align 32
@npcmgpio_set_irq_type.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 61, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"npcmgpio_set_irq_type\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"setirqtype: %u.%u = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@npcmgpio_set_irq_type.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.43, ptr @.str.4, ptr @.str.45, i8 0, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"edge.rising\0A\00", [19 x i8] zeroinitializer }, align 32
@npcmgpio_set_irq_type.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.43, ptr @.str.4, ptr @.str.46, i8 0, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edge.falling\0A\00", [18 x i8] zeroinitializer }, align 32
@npcmgpio_set_irq_type.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.43, ptr @.str.4, ptr @.str.47, i8 0, i8 64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edge.both\0A\00", [21 x i8] zeroinitializer }, align 32
@npcmgpio_set_irq_type.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.43, ptr @.str.4, ptr @.str.48, i8 0, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"level.low\0A\00", [21 x i8] zeroinitializer }, align 32
@npcmgpio_set_irq_type.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.43, ptr @.str.4, ptr @.str.49, i8 0, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"level.high\0A\00", [20 x i8] zeroinitializer }, align 32
@npcmgpio_set_irq_type.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.43, ptr @.str.4, ptr @.str.50, i8 0, i8 67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid irq type\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"-- module %d [gpio%d - %d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DIN :%.8x DOUT:%.8x IE  :%.8x OE\09 :%.8x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PU  :%.8x PD  :%.8x DB  :%.8x POL :%.8x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ETYP:%.8x EVBE:%.8x EVEN:%.8x EVST:%.8x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"OTYP:%.8x OSRC:%.8x ODSC:%.8x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"OBL0:%.8x OBL1:%.8x OBL2:%.8x OBL3:%.8x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SLCK:%.8x MLCK:%.8x\0A\00", [43 x i8] zeroinitializer }, align 32
@npcmgpio_direction_output.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 0, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"npcmgpio_direction_output\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"gpio_direction_output: offset%d = %x\0A\00", [58 x i8] zeroinitializer }, align 32
@npcmgpio_gpio_request.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"npcmgpio_gpio_request\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gpio_request: offset%d\0A\00", [40 x i8] zeroinitializer }, align 32
@npcmgpio_gpio_free.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 0, i8 52, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"npcmgpio_gpio_free\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpio_free: offset%d\0A\00", [43 x i8] zeroinitializer }, align 32
@npcm7xx_pins = internal constant { [231 x %struct.pinctrl_pin_desc], [684 x i8] } { [231 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.88, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.89, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.90, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.91, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.92, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.93, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.94, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.95, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.96, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.97, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.98, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.99, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.100, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.101, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.102, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.103, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.104, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.105, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.106, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.107, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.108, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.109, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.110, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.111, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.112, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.113, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.114, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.115, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.120, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.123, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.124, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.125, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.126, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.127, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.129, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.130, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.132, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.133, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.134, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.135, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.136, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.137, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.138, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.139, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.140, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.141, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.142, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.143, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.144, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.145, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.146, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.147, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.148, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.149, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.150, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.151, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.152, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.153, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.154, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.155, ptr null }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.156, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.157, ptr null }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.158, ptr null }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.159, ptr null }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.160, ptr null }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.161, ptr null }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.162, ptr null }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.163, ptr null }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.164, ptr null }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.165, ptr null }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.166, ptr null }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.167, ptr null }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.168, ptr null }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.169, ptr null }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.170, ptr null }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.171, ptr null }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.172, ptr null }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.173, ptr null }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.174, ptr null }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.175, ptr null }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.176, ptr null }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.177, ptr null }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.178, ptr null }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.179, ptr null }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.180, ptr null }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.181, ptr null }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.182, ptr null }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.183, ptr null }, %struct.pinctrl_pin_desc { i32 122, ptr @.str.184, ptr null }, %struct.pinctrl_pin_desc { i32 123, ptr @.str.185, ptr null }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.186, ptr null }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.187, ptr null }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.188, ptr null }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.189, ptr null }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.190, ptr null }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.191, ptr null }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.192, ptr null }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.193, ptr null }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.194, ptr null }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.195, ptr null }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.196, ptr null }, %struct.pinctrl_pin_desc { i32 135, ptr @.str.197, ptr null }, %struct.pinctrl_pin_desc { i32 136, ptr @.str.198, ptr null }, %struct.pinctrl_pin_desc { i32 137, ptr @.str.199, ptr null }, %struct.pinctrl_pin_desc { i32 138, ptr @.str.200, ptr null }, %struct.pinctrl_pin_desc { i32 139, ptr @.str.201, ptr null }, %struct.pinctrl_pin_desc { i32 140, ptr @.str.202, ptr null }, %struct.pinctrl_pin_desc { i32 141, ptr @.str.203, ptr null }, %struct.pinctrl_pin_desc { i32 142, ptr @.str.204, ptr null }, %struct.pinctrl_pin_desc { i32 143, ptr @.str.205, ptr null }, %struct.pinctrl_pin_desc { i32 144, ptr @.str.206, ptr null }, %struct.pinctrl_pin_desc { i32 145, ptr @.str.207, ptr null }, %struct.pinctrl_pin_desc { i32 146, ptr @.str.208, ptr null }, %struct.pinctrl_pin_desc { i32 147, ptr @.str.209, ptr null }, %struct.pinctrl_pin_desc { i32 148, ptr @.str.210, ptr null }, %struct.pinctrl_pin_desc { i32 149, ptr @.str.211, ptr null }, %struct.pinctrl_pin_desc { i32 150, ptr @.str.212, ptr null }, %struct.pinctrl_pin_desc { i32 151, ptr @.str.213, ptr null }, %struct.pinctrl_pin_desc { i32 152, ptr @.str.214, ptr null }, %struct.pinctrl_pin_desc { i32 153, ptr @.str.215, ptr null }, %struct.pinctrl_pin_desc { i32 154, ptr @.str.216, ptr null }, %struct.pinctrl_pin_desc { i32 155, ptr @.str.217, ptr null }, %struct.pinctrl_pin_desc { i32 156, ptr @.str.218, ptr null }, %struct.pinctrl_pin_desc { i32 157, ptr @.str.219, ptr null }, %struct.pinctrl_pin_desc { i32 158, ptr @.str.220, ptr null }, %struct.pinctrl_pin_desc { i32 159, ptr @.str.221, ptr null }, %struct.pinctrl_pin_desc { i32 160, ptr @.str.222, ptr null }, %struct.pinctrl_pin_desc { i32 161, ptr @.str.223, ptr null }, %struct.pinctrl_pin_desc { i32 162, ptr @.str.224, ptr null }, %struct.pinctrl_pin_desc { i32 163, ptr @.str.225, ptr null }, %struct.pinctrl_pin_desc { i32 164, ptr @.str.226, ptr null }, %struct.pinctrl_pin_desc { i32 165, ptr @.str.227, ptr null }, %struct.pinctrl_pin_desc { i32 166, ptr @.str.228, ptr null }, %struct.pinctrl_pin_desc { i32 167, ptr @.str.229, ptr null }, %struct.pinctrl_pin_desc { i32 168, ptr @.str.230, ptr null }, %struct.pinctrl_pin_desc { i32 169, ptr @.str.231, ptr null }, %struct.pinctrl_pin_desc { i32 170, ptr @.str.232, ptr null }, %struct.pinctrl_pin_desc { i32 171, ptr @.str.233, ptr null }, %struct.pinctrl_pin_desc { i32 172, ptr @.str.234, ptr null }, %struct.pinctrl_pin_desc { i32 173, ptr @.str.235, ptr null }, %struct.pinctrl_pin_desc { i32 174, ptr @.str.236, ptr null }, %struct.pinctrl_pin_desc { i32 175, ptr @.str.237, ptr null }, %struct.pinctrl_pin_desc { i32 176, ptr @.str.238, ptr null }, %struct.pinctrl_pin_desc { i32 177, ptr @.str.239, ptr null }, %struct.pinctrl_pin_desc { i32 178, ptr @.str.240, ptr null }, %struct.pinctrl_pin_desc { i32 179, ptr @.str.241, ptr null }, %struct.pinctrl_pin_desc { i32 180, ptr @.str.242, ptr null }, %struct.pinctrl_pin_desc { i32 181, ptr @.str.243, ptr null }, %struct.pinctrl_pin_desc { i32 182, ptr @.str.244, ptr null }, %struct.pinctrl_pin_desc { i32 183, ptr @.str.245, ptr null }, %struct.pinctrl_pin_desc { i32 184, ptr @.str.246, ptr null }, %struct.pinctrl_pin_desc { i32 185, ptr @.str.247, ptr null }, %struct.pinctrl_pin_desc { i32 186, ptr @.str.248, ptr null }, %struct.pinctrl_pin_desc { i32 187, ptr @.str.249, ptr null }, %struct.pinctrl_pin_desc { i32 188, ptr @.str.250, ptr null }, %struct.pinctrl_pin_desc { i32 189, ptr @.str.251, ptr null }, %struct.pinctrl_pin_desc { i32 190, ptr @.str.252, ptr null }, %struct.pinctrl_pin_desc { i32 191, ptr @.str.253, ptr null }, %struct.pinctrl_pin_desc { i32 192, ptr @.str.254, ptr null }, %struct.pinctrl_pin_desc { i32 193, ptr @.str.255, ptr null }, %struct.pinctrl_pin_desc { i32 194, ptr @.str.256, ptr null }, %struct.pinctrl_pin_desc { i32 195, ptr @.str.257, ptr null }, %struct.pinctrl_pin_desc { i32 196, ptr @.str.258, ptr null }, %struct.pinctrl_pin_desc { i32 197, ptr @.str.259, ptr null }, %struct.pinctrl_pin_desc { i32 198, ptr @.str.260, ptr null }, %struct.pinctrl_pin_desc { i32 199, ptr @.str.261, ptr null }, %struct.pinctrl_pin_desc { i32 200, ptr @.str.262, ptr null }, %struct.pinctrl_pin_desc { i32 201, ptr @.str.263, ptr null }, %struct.pinctrl_pin_desc { i32 202, ptr @.str.264, ptr null }, %struct.pinctrl_pin_desc { i32 203, ptr @.str.265, ptr null }, %struct.pinctrl_pin_desc { i32 204, ptr @.str.266, ptr null }, %struct.pinctrl_pin_desc { i32 205, ptr @.str.267, ptr null }, %struct.pinctrl_pin_desc { i32 206, ptr @.str.268, ptr null }, %struct.pinctrl_pin_desc { i32 207, ptr @.str.269, ptr null }, %struct.pinctrl_pin_desc { i32 208, ptr @.str.270, ptr null }, %struct.pinctrl_pin_desc { i32 209, ptr @.str.271, ptr null }, %struct.pinctrl_pin_desc { i32 210, ptr @.str.272, ptr null }, %struct.pinctrl_pin_desc { i32 211, ptr @.str.273, ptr null }, %struct.pinctrl_pin_desc { i32 212, ptr @.str.274, ptr null }, %struct.pinctrl_pin_desc { i32 213, ptr @.str.275, ptr null }, %struct.pinctrl_pin_desc { i32 214, ptr @.str.276, ptr null }, %struct.pinctrl_pin_desc { i32 215, ptr @.str.277, ptr null }, %struct.pinctrl_pin_desc { i32 216, ptr @.str.278, ptr null }, %struct.pinctrl_pin_desc { i32 217, ptr @.str.279, ptr null }, %struct.pinctrl_pin_desc { i32 218, ptr @.str.280, ptr null }, %struct.pinctrl_pin_desc { i32 219, ptr @.str.281, ptr null }, %struct.pinctrl_pin_desc { i32 220, ptr @.str.282, ptr null }, %struct.pinctrl_pin_desc { i32 221, ptr @.str.283, ptr null }, %struct.pinctrl_pin_desc { i32 222, ptr @.str.284, ptr null }, %struct.pinctrl_pin_desc { i32 223, ptr @.str.285, ptr null }, %struct.pinctrl_pin_desc { i32 224, ptr @.str.286, ptr null }, %struct.pinctrl_pin_desc { i32 225, ptr @.str.287, ptr null }, %struct.pinctrl_pin_desc { i32 226, ptr @.str.288, ptr null }, %struct.pinctrl_pin_desc { i32 227, ptr @.str.289, ptr null }, %struct.pinctrl_pin_desc { i32 228, ptr @.str.290, ptr null }, %struct.pinctrl_pin_desc { i32 229, ptr @.str.291, ptr null }, %struct.pinctrl_pin_desc { i32 230, ptr @.str.292, ptr null }, %struct.pinctrl_pin_desc { i32 231, ptr @.str.293, ptr null }, %struct.pinctrl_pin_desc { i32 255, ptr @.str.294, ptr null }], [684 x i8] zeroinitializer }, align 32
@npcm7xx_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @npcm7xx_get_groups_count, ptr @npcm7xx_get_group_name, ptr @npcm7xx_get_group_pins, ptr @npcm7xx_pin_dbg_show, ptr @npcm7xx_dt_node_to_map, ptr @npcm7xx_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@npcm7xx_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @npcm7xx_get_functions_count, ptr @npcm7xx_get_function_name, ptr @npcm7xx_get_function_groups, ptr @npcm7xx_pinmux_set_mux, ptr @npcm7xx_gpio_request_enable, ptr @npcm7xx_gpio_request_free, ptr @npcm_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@npcm7xx_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @npcm7xx_config_get, ptr @npcm7xx_config_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO0/IOX1DI\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO1/IOX1LD\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO2/IOX1CK\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO3/IOX1D0\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO4/IOX2DI/SMB1DSDA\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO5/IOX2LD/SMB1DSCL\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO6/IOX2CK/SMB2DSDA\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO7/IOX2D0/SMB2DSCL\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO8/LKGPO1\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO9/LKGPO2\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO10/IOXHLD\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO11/IOXHCK\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPIO12/GSPICK/SMB5BSCL\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPIO13/GSPIDO/SMB5BSDA\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPIO14/GSPIDI/SMB5CSCL\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPIO15/GSPICS/SMB5CSDA\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO16/LKGPO0\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPIO17/PSPI2DI/SMB4DEN\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO18/PSPI2D0/SMB4BSDA\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO19/PSPI2CK/SMB4BSCL\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GPIO20/SMB4CSDA/SMB15SDA\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GPIO21/SMB4CSCL/SMB15SCL\00", [39 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GPIO22/SMB4DSDA/SMB14SDA\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GPIO23/SMB4DSCL/SMB14SCL\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO24/IOXHDO\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO25/IOXHDI\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO26/SMB5SDA\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO27/SMB5SCL\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO28/SMB4SDA\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO29/SMB4SCL\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO30/SMB3SDA\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO31/SMB3SCL\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO32/nSPI0CS1\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPI0D2\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPI0D3\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO37/SMB3CSDA\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO38/SMB3CSCL\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO39/SMB3BSDA\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO40/SMB3BSCL\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO41/BSPRXD\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GPO42/BSPTXD/STRAP11\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GPIO43/RXD1/JTMS2/BU1RXD\00", [39 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GPIO44/nCTS1/JTDI2/BU1CTS\00", [38 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GPIO45/nDCD1/JTDO2\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GPIO46/nDSR1/JTCK2\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GPIO47/nRI1/JCP_RDY2\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GPIO48/TXD2/BSPTXD\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GPIO49/RXD2/BSPRXD\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO50/nCTS2\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GPO51/nRTS2/STRAP2\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO52/nDCD2\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GPO53/nDTR2_BOUT2/STRAP1\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO54/nDSR2\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GPIO55/nRI2\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO56/R1RXERR\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO57/R1MDC\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO58/R1MDIO\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO59/SMB3DSDA\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO60/SMB3DSCL\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GPO61/nDTR1_BOUT1/STRAP6\00", [39 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GPO62/nRTST1/STRAP5\00", [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GPO63/TXD1/STRAP4\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO64/FANIN0\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO65/FANIN1\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO66/FANIN2\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO67/FANIN3\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO68/FANIN4\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO69/FANIN5\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO70/FANIN6\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO71/FANIN7\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO72/FANIN8\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO73/FANIN9\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO74/FANIN10\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO75/FANIN11\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO76/FANIN12\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO77/FANIN13\00", [17 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO78/FANIN14\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO79/FANIN15\00", [17 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GPIO80/PWM0\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GPIO81/PWM1\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GPIO82/PWM2\00", [20 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GPIO83/PWM3\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO84/R2TXD0\00", [18 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO85/R2TXD1\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO86/R2TXEN\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO87/R2RXD0\00", [18 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO88/R2RXD1\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO89/R2CRSDV\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO90/R2RXERR\00", [17 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO91/R2MDC\00", [19 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO92/R2MDIO\00", [18 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GPIO93/GA20/SMB5DSCL\00", [43 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPIO94/nKBRST/SMB5DSDA\00", [41 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO95/nLRESET/nESPIRST\00", [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO96/RG1TXD0\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO97/RG1TXD1\00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO98/RG1TXD2\00", [17 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO99/RG1TXD3\00", [17 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO100/RG1TXC\00", [17 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO101/RG1TXCTL\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO102/RG1RXD0\00", [16 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO103/RG1RXD1\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO104/RG1RXD2\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO105/RG1RXD3\00", [16 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO106/RG1RXC\00", [17 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO107/RG1RXCTL\00", [47 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO108/RG1MDC\00", [17 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO109/RG1MDIO\00", [16 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO110/RG2TXD0/DDRV0\00", [42 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO111/RG2TXD1/DDRV1\00", [42 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO112/RG2TXD2/DDRV2\00", [42 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO113/RG2TXD3/DDRV3\00", [42 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO114/SMB0SCL\00", [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO115/SMB0SDA\00", [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO116/SMB1SCL\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO117/SMB1SDA\00", [16 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO118/SMB2SCL\00", [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO119/SMB2SDA\00", [16 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO120/SMB2CSDA\00", [47 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO121/SMB2CSCL\00", [47 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO122/SMB2BSDA\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO123/SMB2BSCL\00", [47 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO124/SMB1CSDA\00", [47 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO125/SMB1CSCL\00", [47 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO126/SMB1BSDA\00", [47 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO127/SMB1BSCL\00", [47 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO128/SMB8SCL\00", [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO129/SMB8SDA\00", [16 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO130/SMB9SCL\00", [16 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO131/SMB9SDA\00", [16 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO132/SMB10SCL\00", [47 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO133/SMB10SDA\00", [47 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO134/SMB11SCL\00", [47 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO135/SMB11SDA\00", [47 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO136/SD1DT0\00", [17 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO137/SD1DT1\00", [17 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO138/SD1DT2\00", [17 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO139/SD1DT3\00", [17 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO140/SD1CLK\00", [17 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO141/SD1WP\00", [18 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO142/SD1CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GPIO143/SD1CD/SD1PWR\00", [43 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO144/PWM4\00", [19 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO145/PWM5\00", [19 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO146/PWM6\00", [19 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO147/PWM7\00", [19 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO148/MMCDT4\00", [17 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO149/MMCDT5\00", [17 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO150/MMCDT6\00", [17 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO151/MMCDT7\00", [17 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO152/MMCCLK\00", [17 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO153/MMCWP\00", [18 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO154/MMCCMD\00", [17 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPIO155/nMMCCD/nMMCRST\00", [41 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO156/MMCDT0\00", [17 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO157/MMCDT1\00", [17 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO158/MMCDT2\00", [17 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO159/MMCDT3\00", [17 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GPIO160/CLKOUT/RNGOSCOUT\00", [39 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO161/nLFRAME/nESPICS\00", [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO162/SERIRQ\00", [17 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GPIO163/LCLK/ESPICLK\00", [43 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO164/LAD0/ESPI_IO0\00", [42 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO165/LAD1/ESPI_IO1\00", [42 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO166/LAD2/ESPI_IO2\00", [42 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO167/LAD3/ESPI_IO3\00", [42 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GPIO168/nCLKRUN/nESPIALERT\00", [37 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO169/nSCIPME\00", [16 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO170/nSMI\00", [19 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO171/SMB6SCL\00", [16 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO172/SMB6SDA\00", [16 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO173/SMB7SCL\00", [16 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO174/SMB7SDA\00", [16 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO175/PSPI1CK/FANIN19\00", [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO176/PSPI1DO/FANIN18\00", [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO177/PSPI1DI/FANIN17\00", [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO178/R1TXD0\00", [17 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO179/R1TXD1\00", [17 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO180/R1TXEN\00", [17 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO181/R1RXD0\00", [17 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO182/R1RXD1\00", [17 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO183/SPI3CK\00", [17 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GPO184/SPI3D0/STRAP9\00", [43 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPO185/SPI3D1/STRAP10\00", [42 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO186/nSPI3CS0\00", [47 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO187/nSPI3CS1\00", [47 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO188/SPI3D2/nSPI3CS2\00", [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO189/SPI3D3/nSPI3CS3\00", [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO190/nPRD_SMI\00", [47 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO191\00", [24 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO192\00", [24 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO193/R1CRSDV\00", [16 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO194/SMB0BSCL\00", [47 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO195/SMB0BSDA\00", [47 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO196/SMB0CSCL\00", [47 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO197/SMB0DEN\00", [16 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO198/SMB0DSDA\00", [47 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO199/SMB0DSCL\00", [47 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO200/R2CK\00", [19 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO201/R1CK\00", [19 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO202/SMB0CSDA\00", [47 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO203/FANIN16\00", [16 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO204/DDC2SCL\00", [16 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO205/DDC2SDA\00", [16 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO206/HSYNC2\00", [17 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO207/VSYNC2\00", [17 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GPIO208/RG2TXC/DVCK\00", [44 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPIO209/RG2TXCTL/DDRV4\00", [41 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO210/RG2RXD0/DDRV5\00", [42 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO211/RG2RXD1/DDRV6\00", [42 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO212/RG2RXD2/DDRV7\00", [42 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO213/RG2RXD3/DDRV8\00", [42 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GPIO214/RG2RXC/DDRV9\00", [43 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO215/RG2RXCTL/DDRV10\00", [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO216/RG2MDC/DDRV11\00", [42 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO217/RG2MDIO/DVHSYNC\00", [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO218/nWDO1\00", [18 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO219/nWDO2\00", [18 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO220/SMB12SCL\00", [47 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO221/SMB12SDA\00", [47 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO222/SMB13SCL\00", [47 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO223/SMB13SDA\00", [47 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO224/SPIXCK\00", [17 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPO225/SPIXD0/STRAP12\00", [42 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPO226/SPIXD1/STRAP13\00", [42 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO227/nSPIXCS0\00", [47 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO228/nSPIXCS1\00", [47 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GPO229/SPIXD2/STRAP3\00", [43 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO230/SPIXD3\00", [17 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO231/nCLKREQ\00", [16 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPI255/DACOSEL\00", [17 x i8] zeroinitializer }, align 32
@npcm7xx_get_groups_count.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.295, ptr @.str.4, ptr @.str.296, i8 1, i8 -121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.295 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"npcm7xx_get_groups_count\00", [39 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"group size: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@npcm7xx_groups = internal constant { [115 x %struct.npcm7xx_group], [348 x i8] } { [115 x %struct.npcm7xx_group] [%struct.npcm7xx_group { ptr @.str.297, ptr @smb0_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.298, ptr @smb0b_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.299, ptr @smb0c_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.300, ptr @smb0d_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.301, ptr @smb0den_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.302, ptr @smb1_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.303, ptr @smb1b_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.304, ptr @smb1c_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.305, ptr @smb1d_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.306, ptr @smb2_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.307, ptr @smb2b_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.308, ptr @smb2c_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.309, ptr @smb2d_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.310, ptr @smb3_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.311, ptr @smb3b_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.312, ptr @smb3c_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.313, ptr @smb3d_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.314, ptr @smb4_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.315, ptr @smb4b_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.316, ptr @smb4c_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.317, ptr @smb4d_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.318, ptr @smb4den_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.319, ptr @smb5_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.320, ptr @smb5b_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.321, ptr @smb5c_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.322, ptr @smb5d_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.323, ptr @ga20kbc_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.324, ptr @smb6_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.325, ptr @smb7_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.326, ptr @smb8_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.327, ptr @smb9_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.328, ptr @smb10_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.329, ptr @smb11_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.330, ptr @smb12_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.331, ptr @smb13_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.332, ptr @smb14_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.333, ptr @smb15_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.334, ptr @fanin0_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.335, ptr @fanin1_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.336, ptr @fanin2_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.337, ptr @fanin3_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.338, ptr @fanin4_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.339, ptr @fanin5_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.340, ptr @fanin6_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.341, ptr @fanin7_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.342, ptr @fanin8_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.343, ptr @fanin9_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.344, ptr @fanin10_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.345, ptr @fanin11_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.346, ptr @fanin12_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.347, ptr @fanin13_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.348, ptr @fanin14_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.349, ptr @fanin15_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.350, ptr @faninx_pins, i32 4 }, %struct.npcm7xx_group { ptr @.str.351, ptr @pwm0_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.352, ptr @pwm1_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.353, ptr @pwm2_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.354, ptr @pwm3_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.355, ptr @pwm4_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.356, ptr @pwm5_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.357, ptr @pwm6_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.358, ptr @pwm7_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.359, ptr @rg1_pins, i32 12 }, %struct.npcm7xx_group { ptr @.str.360, ptr @rg1mdio_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.361, ptr @rg2_pins, i32 12 }, %struct.npcm7xx_group { ptr @.str.362, ptr @rg2mdio_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.363, ptr @ddr_pins, i32 14 }, %struct.npcm7xx_group { ptr @.str.364, ptr @uart1_pins, i32 8 }, %struct.npcm7xx_group { ptr @.str.365, ptr @uart2_pins, i32 8 }, %struct.npcm7xx_group { ptr @.str.366, ptr @bmcuart0a_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.367, ptr @bmcuart0b_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.368, ptr @bmcuart1_pins, i32 4 }, %struct.npcm7xx_group { ptr @.str.369, ptr @iox1_pins, i32 4 }, %struct.npcm7xx_group { ptr @.str.370, ptr @iox2_pins, i32 4 }, %struct.npcm7xx_group { ptr @.str.371, ptr @ioxh_pins, i32 4 }, %struct.npcm7xx_group { ptr @.str.372, ptr @gspi_pins, i32 4 }, %struct.npcm7xx_group { ptr @.str.373, ptr @mmc_pins, i32 6 }, %struct.npcm7xx_group { ptr @.str.374, ptr @mmcwp_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.375, ptr @mmccd_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.376, ptr @mmcrst_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.377, ptr @mmc8_pins, i32 4 }, %struct.npcm7xx_group { ptr @.str.378, ptr @r1_pins, i32 7 }, %struct.npcm7xx_group { ptr @.str.379, ptr @r1err_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.380, ptr @r1md_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.381, ptr @r2_pins, i32 7 }, %struct.npcm7xx_group { ptr @.str.382, ptr @r2err_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.383, ptr @r2md_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.384, ptr @sd1_pins, i32 8 }, %struct.npcm7xx_group { ptr @.str.385, ptr @sd1pwr_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.386, ptr @wdog1_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.387, ptr @wdog2_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.388, ptr @scipme_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.389, ptr @sci_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.390, ptr @serirq_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.391, ptr @jtag2_pins, i32 5 }, %struct.npcm7xx_group { ptr @.str.392, ptr @spix_pins, i32 6 }, %struct.npcm7xx_group { ptr @.str.393, ptr @spixcs1_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.394, ptr @pspi1_pins, i32 3 }, %struct.npcm7xx_group { ptr @.str.395, ptr @pspi2_pins, i32 3 }, %struct.npcm7xx_group { ptr @.str.396, ptr @ddc_pins, i32 4 }, %struct.npcm7xx_group { ptr @.str.397, ptr @clkreq_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.398, ptr @clkout_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.399, ptr @spi3_pins, i32 4 }, %struct.npcm7xx_group { ptr @.str.400, ptr @spi3cs1_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.401, ptr @spi3quad_pins, i32 2 }, %struct.npcm7xx_group { ptr @.str.402, ptr @spi3cs2_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.403, ptr @spi3cs3_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.404, ptr @spi0cs1_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.405, ptr @lpc_pins, i32 7 }, %struct.npcm7xx_group { ptr @.str.406, ptr @lpcclk_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.407, ptr @espi_pins, i32 8 }, %struct.npcm7xx_group { ptr @.str.408, ptr @lkgpo0_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.409, ptr @lkgpo1_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.410, ptr @lkgpo2_pins, i32 1 }, %struct.npcm7xx_group { ptr @.str.411, ptr @nprd_smi_pins, i32 1 }], [348 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb0\00", [27 x i8] zeroinitializer }, align 32
@smb0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 115, i32 114], [24 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb0b\00", [26 x i8] zeroinitializer }, align 32
@smb0b_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 195, i32 194], [24 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb0c\00", [26 x i8] zeroinitializer }, align 32
@smb0c_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 202, i32 196], [24 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb0d\00", [26 x i8] zeroinitializer }, align 32
@smb0d_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 198, i32 199], [24 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smb0den\00", [24 x i8] zeroinitializer }, align 32
@smb0den_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 197], [28 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb1\00", [27 x i8] zeroinitializer }, align 32
@smb1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 117, i32 116], [24 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb1b\00", [26 x i8] zeroinitializer }, align 32
@smb1b_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 126, i32 127], [24 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb1c\00", [26 x i8] zeroinitializer }, align 32
@smb1c_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 124, i32 125], [24 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb1d\00", [26 x i8] zeroinitializer }, align 32
@smb1d_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 5], [24 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb2\00", [27 x i8] zeroinitializer }, align 32
@smb2_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 119, i32 118], [24 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb2b\00", [26 x i8] zeroinitializer }, align 32
@smb2b_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 122, i32 123], [24 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb2c\00", [26 x i8] zeroinitializer }, align 32
@smb2c_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 120, i32 121], [24 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb2d\00", [26 x i8] zeroinitializer }, align 32
@smb2d_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 6, i32 7], [24 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb3\00", [27 x i8] zeroinitializer }, align 32
@smb3_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 30, i32 31], [24 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb3b\00", [26 x i8] zeroinitializer }, align 32
@smb3b_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 39, i32 40], [24 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb3c\00", [26 x i8] zeroinitializer }, align 32
@smb3c_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 37, i32 38], [24 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb3d\00", [26 x i8] zeroinitializer }, align 32
@smb3d_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 59, i32 60], [24 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb4\00", [27 x i8] zeroinitializer }, align 32
@smb4_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 28, i32 29], [24 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb4b\00", [26 x i8] zeroinitializer }, align 32
@smb4b_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 18, i32 19], [24 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb4c\00", [26 x i8] zeroinitializer }, align 32
@smb4c_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 20, i32 21], [24 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb4d\00", [26 x i8] zeroinitializer }, align 32
@smb4d_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 22, i32 23], [24 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smb4den\00", [24 x i8] zeroinitializer }, align 32
@smb4den_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 17], [28 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb5\00", [27 x i8] zeroinitializer }, align 32
@smb5_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 26, i32 27], [24 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb5b\00", [26 x i8] zeroinitializer }, align 32
@smb5b_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 13, i32 12], [24 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb5c\00", [26 x i8] zeroinitializer }, align 32
@smb5c_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 15, i32 14], [24 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb5d\00", [26 x i8] zeroinitializer }, align 32
@smb5d_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 94, i32 93], [24 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ga20kbc\00", [24 x i8] zeroinitializer }, align 32
@ga20kbc_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 94, i32 93], [24 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb6\00", [27 x i8] zeroinitializer }, align 32
@smb6_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 172, i32 171], [24 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb7\00", [27 x i8] zeroinitializer }, align 32
@smb7_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 174, i32 173], [24 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb8\00", [27 x i8] zeroinitializer }, align 32
@smb8_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 129, i32 128], [24 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb9\00", [27 x i8] zeroinitializer }, align 32
@smb9_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 131, i32 130], [24 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb10\00", [26 x i8] zeroinitializer }, align 32
@smb10_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 133, i32 132], [24 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb11\00", [26 x i8] zeroinitializer }, align 32
@smb11_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 135, i32 134], [24 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb12\00", [26 x i8] zeroinitializer }, align 32
@smb12_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 221, i32 220], [24 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb13\00", [26 x i8] zeroinitializer }, align 32
@smb13_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 223, i32 222], [24 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb14\00", [26 x i8] zeroinitializer }, align 32
@smb14_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 22, i32 23], [24 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smb15\00", [26 x i8] zeroinitializer }, align 32
@smb15_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 20, i32 21], [24 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanin0\00", [25 x i8] zeroinitializer }, align 32
@fanin0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 64], [28 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanin1\00", [25 x i8] zeroinitializer }, align 32
@fanin1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 65], [28 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanin2\00", [25 x i8] zeroinitializer }, align 32
@fanin2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 66], [28 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanin3\00", [25 x i8] zeroinitializer }, align 32
@fanin3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 67], [28 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanin4\00", [25 x i8] zeroinitializer }, align 32
@fanin4_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 68], [28 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanin5\00", [25 x i8] zeroinitializer }, align 32
@fanin5_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 69], [28 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanin6\00", [25 x i8] zeroinitializer }, align 32
@fanin6_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 70], [28 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanin7\00", [25 x i8] zeroinitializer }, align 32
@fanin7_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 71], [28 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanin8\00", [25 x i8] zeroinitializer }, align 32
@fanin8_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 72], [28 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanin9\00", [25 x i8] zeroinitializer }, align 32
@fanin9_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 73], [28 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fanin10\00", [24 x i8] zeroinitializer }, align 32
@fanin10_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 74], [28 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fanin11\00", [24 x i8] zeroinitializer }, align 32
@fanin11_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 75], [28 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fanin12\00", [24 x i8] zeroinitializer }, align 32
@fanin12_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 76], [28 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fanin13\00", [24 x i8] zeroinitializer }, align 32
@fanin13_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 77], [28 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fanin14\00", [24 x i8] zeroinitializer }, align 32
@fanin14_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 78], [28 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fanin15\00", [24 x i8] zeroinitializer }, align 32
@fanin15_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 79], [28 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"faninx\00", [25 x i8] zeroinitializer }, align 32
@faninx_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 175, i32 176, i32 177, i32 203], [16 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm0\00", [27 x i8] zeroinitializer }, align 32
@pwm0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 80], [28 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@pwm1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 81], [28 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@pwm2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 82], [28 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@pwm3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 83], [28 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@pwm4_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 144], [28 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@pwm5_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 145], [28 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm6\00", [27 x i8] zeroinitializer }, align 32
@pwm6_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 146], [28 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm7\00", [27 x i8] zeroinitializer }, align 32
@pwm7_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 147], [28 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rg1\00", [28 x i8] zeroinitializer }, align 32
@rg1_pins = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107], [48 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rg1mdio\00", [24 x i8] zeroinitializer }, align 32
@rg1mdio_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 108, i32 109], [24 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rg2\00", [28 x i8] zeroinitializer }, align 32
@rg2_pins = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 110, i32 111, i32 112, i32 113, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215], [48 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rg2mdio\00", [24 x i8] zeroinitializer }, align 32
@rg2mdio_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 216, i32 217], [24 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddr\00", [28 x i8] zeroinitializer }, align 32
@ddr_pins = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 110, i32 111, i32 112, i32 113, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217], [40 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1_pins = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 43, i32 44, i32 45, i32 46, i32 47, i32 61, i32 62, i32 63], [32 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@uart2_pins = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55], [32 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bmcuart0a\00", [22 x i8] zeroinitializer }, align 32
@bmcuart0a_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 41, i32 42], [24 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bmcuart0b\00", [22 x i8] zeroinitializer }, align 32
@bmcuart0b_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 48, i32 49], [24 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bmcuart1\00", [23 x i8] zeroinitializer }, align 32
@bmcuart1_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 43, i32 44, i32 62, i32 63], [16 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iox1\00", [27 x i8] zeroinitializer }, align 32
@iox1_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iox2\00", [27 x i8] zeroinitializer }, align 32
@iox2_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 5, i32 6, i32 7], [16 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ioxh\00", [27 x i8] zeroinitializer }, align 32
@ioxh_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 10, i32 11, i32 24, i32 25], [16 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gspi\00", [27 x i8] zeroinitializer }, align 32
@gspi_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 13, i32 14, i32 15], [16 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmc\00", [28 x i8] zeroinitializer }, align 32
@mmc_pins = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 152, i32 154, i32 156, i32 157, i32 158, i32 159], [40 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmcwp\00", [26 x i8] zeroinitializer }, align 32
@mmcwp_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 153], [28 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmccd\00", [26 x i8] zeroinitializer }, align 32
@mmccd_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 155], [28 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mmcrst\00", [25 x i8] zeroinitializer }, align 32
@mmcrst_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 155], [28 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmc8\00", [27 x i8] zeroinitializer }, align 32
@mmc8_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 148, i32 149, i32 150, i32 151], [16 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r1\00", [29 x i8] zeroinitializer }, align 32
@r1_pins = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 178, i32 179, i32 180, i32 181, i32 182, i32 193, i32 201], [36 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"r1err\00", [26 x i8] zeroinitializer }, align 32
@r1err_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 56], [28 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"r1md\00", [27 x i8] zeroinitializer }, align 32
@r1md_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 57, i32 58], [24 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r2\00", [29 x i8] zeroinitializer }, align 32
@r2_pins = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 200], [36 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"r2err\00", [26 x i8] zeroinitializer }, align 32
@r2err_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 90], [28 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"r2md\00", [27 x i8] zeroinitializer }, align 32
@r2md_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 91, i32 92], [24 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd1\00", [28 x i8] zeroinitializer }, align 32
@sd1_pins = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143], [32 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sd1pwr\00", [25 x i8] zeroinitializer }, align 32
@sd1pwr_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 143], [28 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wdog1\00", [26 x i8] zeroinitializer }, align 32
@wdog1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 218], [28 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wdog2\00", [26 x i8] zeroinitializer }, align 32
@wdog2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 219], [28 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scipme\00", [25 x i8] zeroinitializer }, align 32
@scipme_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 169], [28 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sci\00", [28 x i8] zeroinitializer }, align 32
@sci_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 170], [28 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serirq\00", [25 x i8] zeroinitializer }, align 32
@serirq_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 162], [28 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"jtag2\00", [26 x i8] zeroinitializer }, align 32
@jtag2_pins = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 43, i32 44, i32 45, i32 46, i32 47], [44 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spix\00", [27 x i8] zeroinitializer }, align 32
@spix_pins = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 224, i32 225, i32 226, i32 227, i32 229, i32 230], [40 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spixcs1\00", [24 x i8] zeroinitializer }, align 32
@spixcs1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 228], [28 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pspi1\00", [26 x i8] zeroinitializer }, align 32
@pspi1_pins = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 175, i32 176, i32 177], [20 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pspi2\00", [26 x i8] zeroinitializer }, align 32
@pspi2_pins = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 17, i32 18, i32 19], [20 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddc\00", [28 x i8] zeroinitializer }, align 32
@ddc_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 204, i32 205, i32 206, i32 207], [16 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkreq\00", [25 x i8] zeroinitializer }, align 32
@clkreq_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 231], [28 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkout\00", [25 x i8] zeroinitializer }, align 32
@clkout_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 160], [28 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi3\00", [27 x i8] zeroinitializer }, align 32
@spi3_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 183, i32 184, i32 185, i32 186], [16 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi3cs1\00", [24 x i8] zeroinitializer }, align 32
@spi3cs1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 187], [28 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi3quad\00", [23 x i8] zeroinitializer }, align 32
@spi3quad_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 188, i32 189], [24 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi3cs2\00", [24 x i8] zeroinitializer }, align 32
@spi3cs2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 188], [28 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi3cs3\00", [24 x i8] zeroinitializer }, align 32
@spi3cs3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 189], [28 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi0cs1\00", [24 x i8] zeroinitializer }, align 32
@spi0cs1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 32], [28 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lpc\00", [28 x i8] zeroinitializer }, align 32
@lpc_pins = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 95, i32 161, i32 163, i32 164, i32 165, i32 166, i32 167], [36 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpcclk\00", [25 x i8] zeroinitializer }, align 32
@lpcclk_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 168], [28 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"espi\00", [27 x i8] zeroinitializer }, align 32
@espi_pins = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 95, i32 161, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168], [32 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lkgpo0\00", [25 x i8] zeroinitializer }, align 32
@lkgpo0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 16], [28 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lkgpo1\00", [25 x i8] zeroinitializer }, align 32
@lkgpo1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 8], [28 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lkgpo2\00", [25 x i8] zeroinitializer }, align 32
@lkgpo2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 9], [28 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nprd_smi\00", [23 x i8] zeroinitializer }, align 32
@nprd_smi_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 190], [28 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pinctrl_ops.dbg: %d\00", [44 x i8] zeroinitializer }, align 32
@npcm7xx_dt_node_to_map.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.413, ptr @.str.4, ptr @.str.414, i8 1, i8 -114, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.413 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"npcm7xx_dt_node_to_map\00", [41 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dt_node_to_map: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@npcm7xx_funcs = internal constant { [115 x %struct.npcm7xx_func], [348 x i8] } { [115 x %struct.npcm7xx_func] [%struct.npcm7xx_func { ptr @.str.297, i32 1, ptr @smb0_grp }, %struct.npcm7xx_func { ptr @.str.298, i32 1, ptr @smb0b_grp }, %struct.npcm7xx_func { ptr @.str.299, i32 1, ptr @smb0c_grp }, %struct.npcm7xx_func { ptr @.str.300, i32 1, ptr @smb0d_grp }, %struct.npcm7xx_func { ptr @.str.301, i32 1, ptr @smb0den_grp }, %struct.npcm7xx_func { ptr @.str.302, i32 1, ptr @smb1_grp }, %struct.npcm7xx_func { ptr @.str.303, i32 1, ptr @smb1b_grp }, %struct.npcm7xx_func { ptr @.str.304, i32 1, ptr @smb1c_grp }, %struct.npcm7xx_func { ptr @.str.305, i32 1, ptr @smb1d_grp }, %struct.npcm7xx_func { ptr @.str.306, i32 1, ptr @smb2_grp }, %struct.npcm7xx_func { ptr @.str.307, i32 1, ptr @smb2b_grp }, %struct.npcm7xx_func { ptr @.str.308, i32 1, ptr @smb2c_grp }, %struct.npcm7xx_func { ptr @.str.309, i32 1, ptr @smb2d_grp }, %struct.npcm7xx_func { ptr @.str.310, i32 1, ptr @smb3_grp }, %struct.npcm7xx_func { ptr @.str.311, i32 1, ptr @smb3b_grp }, %struct.npcm7xx_func { ptr @.str.312, i32 1, ptr @smb3c_grp }, %struct.npcm7xx_func { ptr @.str.313, i32 1, ptr @smb3d_grp }, %struct.npcm7xx_func { ptr @.str.314, i32 1, ptr @smb4_grp }, %struct.npcm7xx_func { ptr @.str.315, i32 1, ptr @smb4b_grp }, %struct.npcm7xx_func { ptr @.str.316, i32 1, ptr @smb4c_grp }, %struct.npcm7xx_func { ptr @.str.317, i32 1, ptr @smb4d_grp }, %struct.npcm7xx_func { ptr @.str.318, i32 1, ptr @smb4den_grp }, %struct.npcm7xx_func { ptr @.str.319, i32 1, ptr @smb5_grp }, %struct.npcm7xx_func { ptr @.str.320, i32 1, ptr @smb5b_grp }, %struct.npcm7xx_func { ptr @.str.321, i32 1, ptr @smb5c_grp }, %struct.npcm7xx_func { ptr @.str.322, i32 1, ptr @smb5d_grp }, %struct.npcm7xx_func { ptr @.str.323, i32 1, ptr @ga20kbc_grp }, %struct.npcm7xx_func { ptr @.str.324, i32 1, ptr @smb6_grp }, %struct.npcm7xx_func { ptr @.str.325, i32 1, ptr @smb7_grp }, %struct.npcm7xx_func { ptr @.str.326, i32 1, ptr @smb8_grp }, %struct.npcm7xx_func { ptr @.str.327, i32 1, ptr @smb9_grp }, %struct.npcm7xx_func { ptr @.str.328, i32 1, ptr @smb10_grp }, %struct.npcm7xx_func { ptr @.str.329, i32 1, ptr @smb11_grp }, %struct.npcm7xx_func { ptr @.str.330, i32 1, ptr @smb12_grp }, %struct.npcm7xx_func { ptr @.str.331, i32 1, ptr @smb13_grp }, %struct.npcm7xx_func { ptr @.str.332, i32 1, ptr @smb14_grp }, %struct.npcm7xx_func { ptr @.str.333, i32 1, ptr @smb15_grp }, %struct.npcm7xx_func { ptr @.str.334, i32 1, ptr @fanin0_grp }, %struct.npcm7xx_func { ptr @.str.335, i32 1, ptr @fanin1_grp }, %struct.npcm7xx_func { ptr @.str.336, i32 1, ptr @fanin2_grp }, %struct.npcm7xx_func { ptr @.str.337, i32 1, ptr @fanin3_grp }, %struct.npcm7xx_func { ptr @.str.338, i32 1, ptr @fanin4_grp }, %struct.npcm7xx_func { ptr @.str.339, i32 1, ptr @fanin5_grp }, %struct.npcm7xx_func { ptr @.str.340, i32 1, ptr @fanin6_grp }, %struct.npcm7xx_func { ptr @.str.341, i32 1, ptr @fanin7_grp }, %struct.npcm7xx_func { ptr @.str.342, i32 1, ptr @fanin8_grp }, %struct.npcm7xx_func { ptr @.str.343, i32 1, ptr @fanin9_grp }, %struct.npcm7xx_func { ptr @.str.344, i32 1, ptr @fanin10_grp }, %struct.npcm7xx_func { ptr @.str.345, i32 1, ptr @fanin11_grp }, %struct.npcm7xx_func { ptr @.str.346, i32 1, ptr @fanin12_grp }, %struct.npcm7xx_func { ptr @.str.347, i32 1, ptr @fanin13_grp }, %struct.npcm7xx_func { ptr @.str.348, i32 1, ptr @fanin14_grp }, %struct.npcm7xx_func { ptr @.str.349, i32 1, ptr @fanin15_grp }, %struct.npcm7xx_func { ptr @.str.350, i32 1, ptr @faninx_grp }, %struct.npcm7xx_func { ptr @.str.351, i32 1, ptr @pwm0_grp }, %struct.npcm7xx_func { ptr @.str.352, i32 1, ptr @pwm1_grp }, %struct.npcm7xx_func { ptr @.str.353, i32 1, ptr @pwm2_grp }, %struct.npcm7xx_func { ptr @.str.354, i32 1, ptr @pwm3_grp }, %struct.npcm7xx_func { ptr @.str.355, i32 1, ptr @pwm4_grp }, %struct.npcm7xx_func { ptr @.str.356, i32 1, ptr @pwm5_grp }, %struct.npcm7xx_func { ptr @.str.357, i32 1, ptr @pwm6_grp }, %struct.npcm7xx_func { ptr @.str.358, i32 1, ptr @pwm7_grp }, %struct.npcm7xx_func { ptr @.str.359, i32 1, ptr @rg1_grp }, %struct.npcm7xx_func { ptr @.str.360, i32 1, ptr @rg1mdio_grp }, %struct.npcm7xx_func { ptr @.str.361, i32 1, ptr @rg2_grp }, %struct.npcm7xx_func { ptr @.str.362, i32 1, ptr @rg2mdio_grp }, %struct.npcm7xx_func { ptr @.str.363, i32 1, ptr @ddr_grp }, %struct.npcm7xx_func { ptr @.str.364, i32 1, ptr @uart1_grp }, %struct.npcm7xx_func { ptr @.str.365, i32 1, ptr @uart2_grp }, %struct.npcm7xx_func { ptr @.str.366, i32 1, ptr @bmcuart0a_grp }, %struct.npcm7xx_func { ptr @.str.367, i32 1, ptr @bmcuart0b_grp }, %struct.npcm7xx_func { ptr @.str.368, i32 1, ptr @bmcuart1_grp }, %struct.npcm7xx_func { ptr @.str.369, i32 1, ptr @iox1_grp }, %struct.npcm7xx_func { ptr @.str.370, i32 1, ptr @iox2_grp }, %struct.npcm7xx_func { ptr @.str.371, i32 1, ptr @ioxh_grp }, %struct.npcm7xx_func { ptr @.str.372, i32 1, ptr @gspi_grp }, %struct.npcm7xx_func { ptr @.str.373, i32 1, ptr @mmc_grp }, %struct.npcm7xx_func { ptr @.str.374, i32 1, ptr @mmcwp_grp }, %struct.npcm7xx_func { ptr @.str.375, i32 1, ptr @mmccd_grp }, %struct.npcm7xx_func { ptr @.str.376, i32 1, ptr @mmcrst_grp }, %struct.npcm7xx_func { ptr @.str.377, i32 1, ptr @mmc8_grp }, %struct.npcm7xx_func { ptr @.str.378, i32 1, ptr @r1_grp }, %struct.npcm7xx_func { ptr @.str.379, i32 1, ptr @r1err_grp }, %struct.npcm7xx_func { ptr @.str.380, i32 1, ptr @r1md_grp }, %struct.npcm7xx_func { ptr @.str.381, i32 1, ptr @r2_grp }, %struct.npcm7xx_func { ptr @.str.382, i32 1, ptr @r2err_grp }, %struct.npcm7xx_func { ptr @.str.383, i32 1, ptr @r2md_grp }, %struct.npcm7xx_func { ptr @.str.384, i32 1, ptr @sd1_grp }, %struct.npcm7xx_func { ptr @.str.385, i32 1, ptr @sd1pwr_grp }, %struct.npcm7xx_func { ptr @.str.386, i32 1, ptr @wdog1_grp }, %struct.npcm7xx_func { ptr @.str.387, i32 1, ptr @wdog2_grp }, %struct.npcm7xx_func { ptr @.str.388, i32 1, ptr @scipme_grp }, %struct.npcm7xx_func { ptr @.str.389, i32 1, ptr @sci_grp }, %struct.npcm7xx_func { ptr @.str.390, i32 1, ptr @serirq_grp }, %struct.npcm7xx_func { ptr @.str.391, i32 1, ptr @jtag2_grp }, %struct.npcm7xx_func { ptr @.str.392, i32 1, ptr @spix_grp }, %struct.npcm7xx_func { ptr @.str.393, i32 1, ptr @spixcs1_grp }, %struct.npcm7xx_func { ptr @.str.394, i32 1, ptr @pspi1_grp }, %struct.npcm7xx_func { ptr @.str.395, i32 1, ptr @pspi2_grp }, %struct.npcm7xx_func { ptr @.str.396, i32 1, ptr @ddc_grp }, %struct.npcm7xx_func { ptr @.str.397, i32 1, ptr @clkreq_grp }, %struct.npcm7xx_func { ptr @.str.398, i32 1, ptr @clkout_grp }, %struct.npcm7xx_func { ptr @.str.399, i32 1, ptr @spi3_grp }, %struct.npcm7xx_func { ptr @.str.400, i32 1, ptr @spi3cs1_grp }, %struct.npcm7xx_func { ptr @.str.401, i32 1, ptr @spi3quad_grp }, %struct.npcm7xx_func { ptr @.str.402, i32 1, ptr @spi3cs2_grp }, %struct.npcm7xx_func { ptr @.str.403, i32 1, ptr @spi3cs3_grp }, %struct.npcm7xx_func { ptr @.str.404, i32 1, ptr @spi0cs1_grp }, %struct.npcm7xx_func { ptr @.str.405, i32 1, ptr @lpc_grp }, %struct.npcm7xx_func { ptr @.str.406, i32 1, ptr @lpcclk_grp }, %struct.npcm7xx_func { ptr @.str.407, i32 1, ptr @espi_grp }, %struct.npcm7xx_func { ptr @.str.408, i32 1, ptr @lkgpo0_grp }, %struct.npcm7xx_func { ptr @.str.409, i32 1, ptr @lkgpo1_grp }, %struct.npcm7xx_func { ptr @.str.410, i32 1, ptr @lkgpo2_grp }, %struct.npcm7xx_func { ptr @.str.411, i32 1, ptr @nprd_smi_grp }], [348 x i8] zeroinitializer }, align 32
@smb0_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.297], [28 x i8] zeroinitializer }, align 32
@smb0b_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.298], [28 x i8] zeroinitializer }, align 32
@smb0c_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.299], [28 x i8] zeroinitializer }, align 32
@smb0d_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.300], [28 x i8] zeroinitializer }, align 32
@smb0den_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.301], [28 x i8] zeroinitializer }, align 32
@smb1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.302], [28 x i8] zeroinitializer }, align 32
@smb1b_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.303], [28 x i8] zeroinitializer }, align 32
@smb1c_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.304], [28 x i8] zeroinitializer }, align 32
@smb1d_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.305], [28 x i8] zeroinitializer }, align 32
@smb2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.306], [28 x i8] zeroinitializer }, align 32
@smb2b_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.307], [28 x i8] zeroinitializer }, align 32
@smb2c_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.308], [28 x i8] zeroinitializer }, align 32
@smb2d_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.309], [28 x i8] zeroinitializer }, align 32
@smb3_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.310], [28 x i8] zeroinitializer }, align 32
@smb3b_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.311], [28 x i8] zeroinitializer }, align 32
@smb3c_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.312], [28 x i8] zeroinitializer }, align 32
@smb3d_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.313], [28 x i8] zeroinitializer }, align 32
@smb4_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.314], [28 x i8] zeroinitializer }, align 32
@smb4b_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.315], [28 x i8] zeroinitializer }, align 32
@smb4c_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.316], [28 x i8] zeroinitializer }, align 32
@smb4d_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.317], [28 x i8] zeroinitializer }, align 32
@smb4den_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.318], [28 x i8] zeroinitializer }, align 32
@smb5_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.319], [28 x i8] zeroinitializer }, align 32
@smb5b_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.320], [28 x i8] zeroinitializer }, align 32
@smb5c_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.321], [28 x i8] zeroinitializer }, align 32
@smb5d_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.322], [28 x i8] zeroinitializer }, align 32
@ga20kbc_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.323], [28 x i8] zeroinitializer }, align 32
@smb6_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.324], [28 x i8] zeroinitializer }, align 32
@smb7_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.325], [28 x i8] zeroinitializer }, align 32
@smb8_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.326], [28 x i8] zeroinitializer }, align 32
@smb9_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.327], [28 x i8] zeroinitializer }, align 32
@smb10_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.328], [28 x i8] zeroinitializer }, align 32
@smb11_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.329], [28 x i8] zeroinitializer }, align 32
@smb12_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.330], [28 x i8] zeroinitializer }, align 32
@smb13_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.331], [28 x i8] zeroinitializer }, align 32
@smb14_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.332], [28 x i8] zeroinitializer }, align 32
@smb15_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.333], [28 x i8] zeroinitializer }, align 32
@fanin0_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.334], [28 x i8] zeroinitializer }, align 32
@fanin1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.335], [28 x i8] zeroinitializer }, align 32
@fanin2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.336], [28 x i8] zeroinitializer }, align 32
@fanin3_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.337], [28 x i8] zeroinitializer }, align 32
@fanin4_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.338], [28 x i8] zeroinitializer }, align 32
@fanin5_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.339], [28 x i8] zeroinitializer }, align 32
@fanin6_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.340], [28 x i8] zeroinitializer }, align 32
@fanin7_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.341], [28 x i8] zeroinitializer }, align 32
@fanin8_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.342], [28 x i8] zeroinitializer }, align 32
@fanin9_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.343], [28 x i8] zeroinitializer }, align 32
@fanin10_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.344], [28 x i8] zeroinitializer }, align 32
@fanin11_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.345], [28 x i8] zeroinitializer }, align 32
@fanin12_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.346], [28 x i8] zeroinitializer }, align 32
@fanin13_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.347], [28 x i8] zeroinitializer }, align 32
@fanin14_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.348], [28 x i8] zeroinitializer }, align 32
@fanin15_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.349], [28 x i8] zeroinitializer }, align 32
@faninx_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.350], [28 x i8] zeroinitializer }, align 32
@pwm0_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.351], [28 x i8] zeroinitializer }, align 32
@pwm1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.352], [28 x i8] zeroinitializer }, align 32
@pwm2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.353], [28 x i8] zeroinitializer }, align 32
@pwm3_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.354], [28 x i8] zeroinitializer }, align 32
@pwm4_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.355], [28 x i8] zeroinitializer }, align 32
@pwm5_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.356], [28 x i8] zeroinitializer }, align 32
@pwm6_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.357], [28 x i8] zeroinitializer }, align 32
@pwm7_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.358], [28 x i8] zeroinitializer }, align 32
@rg1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.359], [28 x i8] zeroinitializer }, align 32
@rg1mdio_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.360], [28 x i8] zeroinitializer }, align 32
@rg2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.361], [28 x i8] zeroinitializer }, align 32
@rg2mdio_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.362], [28 x i8] zeroinitializer }, align 32
@ddr_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.363], [28 x i8] zeroinitializer }, align 32
@uart1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.364], [28 x i8] zeroinitializer }, align 32
@uart2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.365], [28 x i8] zeroinitializer }, align 32
@bmcuart0a_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.366], [28 x i8] zeroinitializer }, align 32
@bmcuart0b_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.367], [28 x i8] zeroinitializer }, align 32
@bmcuart1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.368], [28 x i8] zeroinitializer }, align 32
@iox1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.369], [28 x i8] zeroinitializer }, align 32
@iox2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.370], [28 x i8] zeroinitializer }, align 32
@ioxh_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.371], [28 x i8] zeroinitializer }, align 32
@gspi_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.372], [28 x i8] zeroinitializer }, align 32
@mmc_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.373], [28 x i8] zeroinitializer }, align 32
@mmcwp_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.374], [28 x i8] zeroinitializer }, align 32
@mmccd_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.375], [28 x i8] zeroinitializer }, align 32
@mmcrst_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.376], [28 x i8] zeroinitializer }, align 32
@mmc8_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.377], [28 x i8] zeroinitializer }, align 32
@r1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.378], [28 x i8] zeroinitializer }, align 32
@r1err_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.379], [28 x i8] zeroinitializer }, align 32
@r1md_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.380], [28 x i8] zeroinitializer }, align 32
@r2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.381], [28 x i8] zeroinitializer }, align 32
@r2err_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.382], [28 x i8] zeroinitializer }, align 32
@r2md_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.383], [28 x i8] zeroinitializer }, align 32
@sd1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.384], [28 x i8] zeroinitializer }, align 32
@sd1pwr_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.385], [28 x i8] zeroinitializer }, align 32
@wdog1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.386], [28 x i8] zeroinitializer }, align 32
@wdog2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.387], [28 x i8] zeroinitializer }, align 32
@scipme_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.388], [28 x i8] zeroinitializer }, align 32
@sci_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.389], [28 x i8] zeroinitializer }, align 32
@serirq_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.390], [28 x i8] zeroinitializer }, align 32
@jtag2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.391], [28 x i8] zeroinitializer }, align 32
@spix_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.392], [28 x i8] zeroinitializer }, align 32
@spixcs1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.393], [28 x i8] zeroinitializer }, align 32
@pspi1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.394], [28 x i8] zeroinitializer }, align 32
@pspi2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.395], [28 x i8] zeroinitializer }, align 32
@ddc_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.396], [28 x i8] zeroinitializer }, align 32
@clkreq_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.397], [28 x i8] zeroinitializer }, align 32
@clkout_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.398], [28 x i8] zeroinitializer }, align 32
@spi3_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.399], [28 x i8] zeroinitializer }, align 32
@spi3cs1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.400], [28 x i8] zeroinitializer }, align 32
@spi3quad_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.401], [28 x i8] zeroinitializer }, align 32
@spi3cs2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.402], [28 x i8] zeroinitializer }, align 32
@spi3cs3_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.403], [28 x i8] zeroinitializer }, align 32
@spi0cs1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.404], [28 x i8] zeroinitializer }, align 32
@lpc_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.405], [28 x i8] zeroinitializer }, align 32
@lpcclk_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.406], [28 x i8] zeroinitializer }, align 32
@espi_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.407], [28 x i8] zeroinitializer }, align 32
@lkgpo0_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.408], [28 x i8] zeroinitializer }, align 32
@lkgpo1_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.409], [28 x i8] zeroinitializer }, align 32
@lkgpo2_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.410], [28 x i8] zeroinitializer }, align 32
@nprd_smi_grp = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.411], [28 x i8] zeroinitializer }, align 32
@npcm7xx_pinmux_set_mux.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.415, ptr @.str.4, ptr @.str.416, i8 1, i8 -102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.415 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"npcm7xx_pinmux_set_mux\00", [41 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_mux: %d, %d[%s]\0A\00", [43 x i8] zeroinitializer }, align 32
@pincfg = internal constant { [256 x %struct.npcm7xx_pincfg], [2560 x i8] } { [256 x %struct.npcm7xx_pincfg] [%struct.npcm7xx_pincfg { i32 0, i32 72, i32 12, i32 30, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 72, i32 12, i32 30, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 72, i32 12, i32 30, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 72, i32 12, i32 30, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 73, i32 100, i32 14, i32 8, i32 224, i32 7, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 73, i32 100, i32 14, i32 8, i32 224, i32 7, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 73, i32 100, i32 14, i32 12, i32 224, i32 10, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 73, i32 100, i32 14, i32 12, i32 224, i32 10, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 112, i32 116, i32 4, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 113, i32 116, i32 8, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 74, i32 100, i32 18, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 74, i32 100, i32 18, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 75, i32 12, i32 24, i32 23, i32 224, i32 19, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 75, i32 12, i32 24, i32 23, i32 224, i32 19, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 75, i32 12, i32 24, i32 24, i32 224, i32 20, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 75, i32 12, i32 24, i32 24, i32 224, i32 20, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 111, i32 116, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 98, i32 100, i32 13, i32 21, i32 224, i32 23, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 98, i32 100, i32 13, i32 18, i32 224, i32 14, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 98, i32 100, i32 13, i32 18, i32 224, i32 14, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 19, i32 224, i32 15, i32 36, i32 100, i32 8, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 19, i32 224, i32 15, i32 36, i32 100, i32 8, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 20, i32 224, i32 16, i32 35, i32 100, i32 7, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 20, i32 224, i32 16, i32 35, i32 100, i32 7, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 74, i32 100, i32 18, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 74, i32 100, i32 18, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 22, i32 12, i32 2, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 22, i32 12, i32 2, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 17, i32 12, i32 1, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 17, i32 12, i32 1, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 13, i32 12, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 13, i32 12, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 107, i32 12, i32 3, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg { i32 4, i32 15, i32 224, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 15, i32 224, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 14, i32 224, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 14, i32 224, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 69, i32 12, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 16898, i32 69, i32 12, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 67, i32 12, i32 10, i32 94, i32 176, i32 0, i32 71, i32 100, i32 24 }, %struct.npcm7xx_pincfg { i32 0, i32 67, i32 12, i32 10, i32 94, i32 176, i32 0, i32 71, i32 100, i32 24 }, %struct.npcm7xx_pincfg { i32 0, i32 67, i32 12, i32 10, i32 94, i32 176, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33280, i32 67, i32 12, i32 10, i32 94, i32 176, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33280, i32 67, i32 12, i32 10, i32 94, i32 176, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 2, i32 68, i32 12, i32 11, i32 70, i32 176, i32 1, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 68, i32 12, i32 11, i32 70, i32 176, i32 1, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 68, i32 12, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 2, i32 68, i32 12, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 68, i32 12, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 2, i32 68, i32 12, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 68, i32 12, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 68, i32 12, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 82, i32 12, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 16896, i32 83, i32 12, i32 13, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 16896, i32 83, i32 12, i32 13, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 16, i32 224, i32 13, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 16, i32 224, i32 13, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 2, i32 67, i32 12, i32 10, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 2, i32 67, i32 12, i32 10, i32 71, i32 100, i32 24, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 2, i32 67, i32 12, i32 10, i32 71, i32 100, i32 24, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 37, i32 16, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 38, i32 16, i32 1, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 39, i32 16, i32 2, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 40, i32 16, i32 3, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 41, i32 16, i32 4, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 42, i32 16, i32 5, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 43, i32 16, i32 6, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 44, i32 16, i32 7, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 45, i32 16, i32 8, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 46, i32 16, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 47, i32 16, i32 10, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 48, i32 16, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 49, i32 16, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 50, i32 16, i32 13, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 51, i32 16, i32 14, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 52, i32 16, i32 15, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 54, i32 16, i32 16, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 55, i32 16, i32 17, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 56, i32 16, i32 18, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 57, i32 16, i32 19, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 84, i32 12, i32 14, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 84, i32 12, i32 14, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 84, i32 12, i32 14, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 84, i32 12, i32 14, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 84, i32 12, i32 14, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 84, i32 12, i32 14, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 85, i32 12, i32 15, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 16896, i32 86, i32 12, i32 16, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 16896, i32 86, i32 12, i32 16, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 26, i32 12, i32 17, i32 25, i32 224, i32 21, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 26, i32 12, i32 17, i32 25, i32 224, i32 21, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 108, i32 0, i32 0, i32 110, i32 176, i32 8, i32 116, i32 12, i32 26 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 62, i32 176, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 63, i32 176, i32 21, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 63, i32 176, i32 21, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 0, i32 12, i32 6, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 0, i32 12, i32 6, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 5, i32 12, i32 7, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 5, i32 12, i32 7, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 9, i32 12, i32 8, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 9, i32 12, i32 8, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 11, i32 224, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 11, i32 224, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 10, i32 224, i32 8, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 10, i32 224, i32 8, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 7, i32 224, i32 6, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 7, i32 224, i32 6, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 6, i32 224, i32 5, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 6, i32 224, i32 5, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 29, i32 176, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 29, i32 176, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 30, i32 176, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 30, i32 176, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 31, i32 176, i32 13, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 31, i32 176, i32 13, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 32, i32 176, i32 14, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 32, i32 176, i32 14, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 87, i32 100, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 87, i32 100, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 87, i32 100, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 87, i32 100, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 87, i32 100, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 87, i32 100, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 87, i32 100, i32 12, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 87, i32 100, i32 12, i32 88, i32 176, i32 5, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 58, i32 16, i32 20, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 59, i32 16, i32 21, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 60, i32 16, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 61, i32 16, i32 23, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 80, i32 100, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 80, i32 100, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 80, i32 100, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 80, i32 100, i32 11, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 76, i32 100, i32 10, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 77, i32 116, i32 24, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 76, i32 100, i32 10, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 78, i32 100, i32 25, i32 79, i32 176, i32 6, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 76, i32 100, i32 10, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 76, i32 100, i32 10, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 76, i32 100, i32 10, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 76, i32 100, i32 10, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 101, i32 12, i32 21, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 108, i32 0, i32 0, i32 110, i32 176, i32 8, i32 116, i32 12, i32 26 }, %struct.npcm7xx_pincfg { i32 51200, i32 93, i32 0, i32 0, i32 116, i32 12, i32 31, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 108, i32 0, i32 0, i32 110, i32 176, i32 8, i32 116, i32 12, i32 26 }, %struct.npcm7xx_pincfg { i32 8, i32 108, i32 0, i32 0, i32 110, i32 176, i32 8, i32 116, i32 12, i32 26 }, %struct.npcm7xx_pincfg { i32 8, i32 108, i32 0, i32 0, i32 110, i32 176, i32 8, i32 116, i32 12, i32 26 }, %struct.npcm7xx_pincfg { i32 8, i32 108, i32 0, i32 0, i32 110, i32 176, i32 8, i32 116, i32 12, i32 26 }, %struct.npcm7xx_pincfg { i32 8, i32 108, i32 0, i32 0, i32 110, i32 176, i32 8, i32 116, i32 12, i32 26 }, %struct.npcm7xx_pincfg { i32 0, i32 109, i32 0, i32 0, i32 110, i32 176, i32 8, i32 116, i32 100, i32 16 }, %struct.npcm7xx_pincfg { i32 0, i32 91, i32 100, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 92, i32 12, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 27, i32 100, i32 1, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 27, i32 100, i32 1, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 28, i32 100, i32 2, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 28, i32 100, i32 2, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 97, i32 100, i32 4, i32 53, i32 100, i32 3, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 97, i32 100, i32 4, i32 53, i32 100, i32 3, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 97, i32 100, i32 4, i32 53, i32 100, i32 3, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 81, i32 100, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 81, i32 100, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 81, i32 100, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 81, i32 100, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 81, i32 100, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 102, i32 176, i32 16, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51206, i32 102, i32 176, i32 16, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51206, i32 102, i32 176, i32 16, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 102, i32 176, i32 16, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 103, i32 176, i32 17, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 104, i32 176, i32 20, i32 105, i32 176, i32 18, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 104, i32 176, i32 20, i32 106, i32 176, i32 19, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 16896, i32 116, i32 116, i32 20, i32 114, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 81, i32 100, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 1, i32 224, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 1, i32 224, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 2, i32 224, i32 1, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 4, i32 224, i32 22, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 3, i32 224, i32 2, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 3, i32 224, i32 2, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 84, i32 12, i32 14, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 81, i32 100, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 2, i32 224, i32 1, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 53, i32 100, i32 3, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 99, i32 0, i32 0, i32 116, i32 100, i32 22, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 99, i32 0, i32 0, i32 116, i32 100, i32 22, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 99, i32 0, i32 0, i32 116, i32 100, i32 22, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 99, i32 0, i32 0, i32 116, i32 100, i32 22, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 64, i32 176, i32 24, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 65, i32 176, i32 23, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 65, i32 176, i32 23, i32 66, i32 100, i32 26, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 89, i32 100, i32 19, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 33792, i32 90, i32 100, i32 20, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 33, i32 100, i32 5, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 33, i32 100, i32 5, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 34, i32 100, i32 6, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 0, i32 34, i32 100, i32 6, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 4, i32 95, i32 176, i32 27, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51206, i32 95, i32 176, i32 27, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51206, i32 95, i32 176, i32 27, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 95, i32 176, i32 27, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 96, i32 176, i32 28, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 95, i32 176, i32 27, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51204, i32 95, i32 176, i32 27, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 51200, i32 100, i32 176, i32 9, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg zeroinitializer, %struct.npcm7xx_pincfg { i32 1, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 1, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }, %struct.npcm7xx_pincfg { i32 1, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0, i32 115, i32 0, i32 0 }], [2560 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_request_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.417, ptr @.str.418, ptr @.str.4, i32 1658, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid range\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"npcm7xx_gpio_request_enable\00", [36 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_request_enable._entry_ptr = internal global ptr @npcm7xx_gpio_request_enable._entry, section ".printk_index", align 4
@npcm7xx_gpio_request_enable._entry.419 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.418, ptr @.str.4, i32 1662, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid gpiochip\0A\00", [46 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_request_enable._entry_ptr.421 = internal global ptr @npcm7xx_gpio_request_enable._entry.419, section ".printk_index", align 4
@npcm_gpio_set_direction.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.422, ptr @.str.4, ptr @.str.423, i8 1, i8 -89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.422 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"npcm_gpio_set_direction\00", [40 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GPIO Set Direction: %d = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@npcm7xx_get_drive_strength.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.424, ptr @.str.4, ptr @.str.425, i8 1, i8 123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.424 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"npcm7xx_get_drive_strength\00", [37 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pin %d strength %d = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@npcm7xx_config_set_one.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.426, ptr @.str.4, ptr @.str.427, i8 1, i8 -66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.426 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"npcm7xx_config_set_one\00", [41 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"param=%d %d[GPIO]\0A\00", [45 x i8] zeroinitializer }, align 32
@npcm7xx_set_drive_strength.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.428, ptr @.str.4, ptr @.str.429, i8 1, i8 -127, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.428 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"npcm7xx_set_drive_strength\00", [37 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"setting pin %d to low strength [%d]\0A\00", [59 x i8] zeroinitializer }, align 32
@npcm7xx_set_drive_strength.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.428, ptr @.str.4, ptr @.str.430, i8 1, i8 -126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.430 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"setting pin %d to high strength [%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_register.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@npcm7xx_gpio_register.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@npcm7xx_gpio_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.431, ptr @.str.432, ptr @.str.4, i32 1977, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add GPIO chip %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"npcm7xx_gpio_register\00", [42 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_register._entry_ptr = internal global ptr @npcm7xx_gpio_register._entry, section ".printk_index", align 4
@npcm7xx_gpio_register._entry.433 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.434, ptr @.str.432, ptr @.str.4, i32 1987, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add GPIO bank %u\0A\00", [36 x i8] zeroinitializer }, align 32
@npcm7xx_gpio_register._entry_ptr.435 = internal global ptr @npcm7xx_gpio_register._entry.433, section ".printk_index", align 4
@npcmgpio_irq_handler.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.436, ptr @.str.4, ptr @.str.437, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.436 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"npcmgpio_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"==> got irq sts %.8x %.8x\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.438 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 3, i64 5, i64 6, i64 8, i64 9, i64 11, i64 12, i64 17, i64 24]
@__sancov_gen_cov_switch_values.439 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.440 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 17]
@__sancov_gen_cov_switch_values.441 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 3, i64 5, i64 6, i64 8, i64 9, i64 11, i64 12, i64 17, i64 24]
@__sancov_gen_cov_switch_values.442 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.443 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.444 = private unnamed_addr constant [23 x i8] c"npcm7xx_pinctrl_driver\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 2050, i32 31 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 2053, i32 11 }
@___asan_gen_.450 = private unnamed_addr constant [22 x i8] c"npcm7xx_pinctrl_match\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 2044, i32 34 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 2015, i32 38 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 2017, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 2023, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant [21 x i8] c"npcm7xx_pinctrl_desc\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1852, i32 28 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 2030, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 2036, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 2040, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1871, i32 28 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1874, i32 5 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1884, i32 5 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1902, i32 5 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1907, i32 15 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1910, i32 5 }
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"npcmgpio_irqchip\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 334, i32 30 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1926, i32 44 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 335, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 326, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 292, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 304, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 316, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 244, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 248, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 253, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 258, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 262, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 266, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 270, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 134, i32 16 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 138, i32 16 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 143, i32 16 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 148, i32 16 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 153, i32 16 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 157, i32 16 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 162, i32 16 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 186, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 201, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 211, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant [13 x i8] c"npcm7xx_pins\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1170, i32 38 }
@___asan_gen_.636 = private unnamed_addr constant [20 x i8] c"npcm7xx_pinctrl_ops\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1604, i32 33 }
@___asan_gen_.639 = private unnamed_addr constant [19 x i8] c"npcm7xx_pinmux_ops\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1704, i32 32 }
@___asan_gen_.642 = private unnamed_addr constant [20 x i8] c"npcm7xx_pinconf_ops\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1845, i32 33 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1171, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1172, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1173, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1174, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1175, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1176, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1177, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1178, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1179, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1180, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1181, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1182, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1183, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1184, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1185, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1186, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1187, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1188, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1189, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1190, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1191, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1192, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1193, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1194, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1195, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1196, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1197, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1198, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1199, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1200, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1201, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1202, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1204, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1205, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1206, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1207, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1208, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1209, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1210, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1211, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1212, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1213, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1214, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1215, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1216, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1217, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1218, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1219, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1220, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1221, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1222, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1223, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1224, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1225, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1226, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1227, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1228, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1229, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1230, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1231, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1232, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1233, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1235, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1236, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1237, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1238, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1239, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1240, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1241, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1242, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1243, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1244, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1245, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1246, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1247, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1248, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1249, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1250, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1251, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1252, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1253, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1254, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1255, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1256, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1257, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1258, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1259, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1260, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1261, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1262, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1263, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1264, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1265, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1266, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1268, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1269, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1270, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1271, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1272, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1273, i32 2 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1274, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1275, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1276, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1277, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1278, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1279, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1280, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1281, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1282, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1283, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1284, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1285, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1286, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1287, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1288, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1289, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1290, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1291, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1292, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1293, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1294, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1295, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1296, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1297, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1298, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1299, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1301, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1302, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1303, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1304, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1305, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1306, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1307, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1308, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1309, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1310, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1311, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1312, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1313, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1314, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1315, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1316, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1317, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1318, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1319, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1320, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1321, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1322, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1323, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1324, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1325, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1326, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1327, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1328, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1329, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1330, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1331, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1332, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1334, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1335, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1336, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1337, i32 2 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1338, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1339, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1340, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1341, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1342, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1343, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1344, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1345, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1346, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1347, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1348, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1349, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1350, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1351, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1352, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1353, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1354, i32 2 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1355, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1356, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1357, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1358, i32 2 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1359, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1360, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1361, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1362, i32 2 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1363, i32 2 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1364, i32 2 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1365, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1367, i32 2 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1368, i32 2 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1369, i32 2 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1370, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1371, i32 2 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1372, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1373, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1374, i32 2 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1375, i32 2 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1376, i32 2 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1377, i32 2 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1378, i32 2 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1379, i32 2 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1380, i32 2 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1381, i32 2 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1382, i32 2 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1383, i32 2 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1384, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1385, i32 2 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1386, i32 2 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1387, i32 2 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1388, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1389, i32 2 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1390, i32 2 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1391, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1392, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1393, i32 2 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1394, i32 2 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1395, i32 2 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1396, i32 2 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1397, i32 2 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1398, i32 2 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1400, i32 2 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1401, i32 2 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1402, i32 2 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1403, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1404, i32 2 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1405, i32 2 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1406, i32 2 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1407, i32 2 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1408, i32 2 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1564, i32 2 }
@___asan_gen_.1344 = private unnamed_addr constant [15 x i8] c"npcm7xx_groups\00", align 1
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 645, i32 29 }
@___asan_gen_.1350 = private unnamed_addr constant [10 x i8] c"smb0_pins\00", align 1
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 344, i32 18 }
@___asan_gen_.1356 = private unnamed_addr constant [11 x i8] c"smb0b_pins\00", align 1
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 345, i32 18 }
@___asan_gen_.1362 = private unnamed_addr constant [11 x i8] c"smb0c_pins\00", align 1
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 346, i32 18 }
@___asan_gen_.1368 = private unnamed_addr constant [11 x i8] c"smb0d_pins\00", align 1
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 347, i32 18 }
@___asan_gen_.1374 = private unnamed_addr constant [13 x i8] c"smb0den_pins\00", align 1
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 348, i32 18 }
@___asan_gen_.1380 = private unnamed_addr constant [10 x i8] c"smb1_pins\00", align 1
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 350, i32 18 }
@___asan_gen_.1386 = private unnamed_addr constant [11 x i8] c"smb1b_pins\00", align 1
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 351, i32 18 }
@___asan_gen_.1392 = private unnamed_addr constant [11 x i8] c"smb1c_pins\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 352, i32 18 }
@___asan_gen_.1398 = private unnamed_addr constant [11 x i8] c"smb1d_pins\00", align 1
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 353, i32 18 }
@___asan_gen_.1404 = private unnamed_addr constant [10 x i8] c"smb2_pins\00", align 1
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 355, i32 18 }
@___asan_gen_.1410 = private unnamed_addr constant [11 x i8] c"smb2b_pins\00", align 1
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 356, i32 18 }
@___asan_gen_.1416 = private unnamed_addr constant [11 x i8] c"smb2c_pins\00", align 1
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 357, i32 18 }
@___asan_gen_.1422 = private unnamed_addr constant [11 x i8] c"smb2d_pins\00", align 1
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 358, i32 18 }
@___asan_gen_.1428 = private unnamed_addr constant [10 x i8] c"smb3_pins\00", align 1
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 360, i32 18 }
@___asan_gen_.1434 = private unnamed_addr constant [11 x i8] c"smb3b_pins\00", align 1
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 361, i32 18 }
@___asan_gen_.1440 = private unnamed_addr constant [11 x i8] c"smb3c_pins\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 362, i32 18 }
@___asan_gen_.1446 = private unnamed_addr constant [11 x i8] c"smb3d_pins\00", align 1
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 363, i32 18 }
@___asan_gen_.1452 = private unnamed_addr constant [10 x i8] c"smb4_pins\00", align 1
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 365, i32 18 }
@___asan_gen_.1458 = private unnamed_addr constant [11 x i8] c"smb4b_pins\00", align 1
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 366, i32 18 }
@___asan_gen_.1464 = private unnamed_addr constant [11 x i8] c"smb4c_pins\00", align 1
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 367, i32 18 }
@___asan_gen_.1470 = private unnamed_addr constant [11 x i8] c"smb4d_pins\00", align 1
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 368, i32 18 }
@___asan_gen_.1476 = private unnamed_addr constant [13 x i8] c"smb4den_pins\00", align 1
@___asan_gen_.1478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 369, i32 18 }
@___asan_gen_.1482 = private unnamed_addr constant [10 x i8] c"smb5_pins\00", align 1
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 371, i32 18 }
@___asan_gen_.1488 = private unnamed_addr constant [11 x i8] c"smb5b_pins\00", align 1
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 372, i32 18 }
@___asan_gen_.1494 = private unnamed_addr constant [11 x i8] c"smb5c_pins\00", align 1
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 373, i32 18 }
@___asan_gen_.1500 = private unnamed_addr constant [11 x i8] c"smb5d_pins\00", align 1
@___asan_gen_.1502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 374, i32 18 }
@___asan_gen_.1506 = private unnamed_addr constant [13 x i8] c"ga20kbc_pins\00", align 1
@___asan_gen_.1508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 375, i32 18 }
@___asan_gen_.1512 = private unnamed_addr constant [10 x i8] c"smb6_pins\00", align 1
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 377, i32 18 }
@___asan_gen_.1518 = private unnamed_addr constant [10 x i8] c"smb7_pins\00", align 1
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 378, i32 18 }
@___asan_gen_.1524 = private unnamed_addr constant [10 x i8] c"smb8_pins\00", align 1
@___asan_gen_.1526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 379, i32 18 }
@___asan_gen_.1530 = private unnamed_addr constant [10 x i8] c"smb9_pins\00", align 1
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 380, i32 18 }
@___asan_gen_.1536 = private unnamed_addr constant [11 x i8] c"smb10_pins\00", align 1
@___asan_gen_.1538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 381, i32 18 }
@___asan_gen_.1542 = private unnamed_addr constant [11 x i8] c"smb11_pins\00", align 1
@___asan_gen_.1544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 382, i32 18 }
@___asan_gen_.1548 = private unnamed_addr constant [11 x i8] c"smb12_pins\00", align 1
@___asan_gen_.1550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 383, i32 18 }
@___asan_gen_.1554 = private unnamed_addr constant [11 x i8] c"smb13_pins\00", align 1
@___asan_gen_.1556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 384, i32 18 }
@___asan_gen_.1560 = private unnamed_addr constant [11 x i8] c"smb14_pins\00", align 1
@___asan_gen_.1562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 385, i32 18 }
@___asan_gen_.1566 = private unnamed_addr constant [11 x i8] c"smb15_pins\00", align 1
@___asan_gen_.1568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 386, i32 18 }
@___asan_gen_.1572 = private unnamed_addr constant [12 x i8] c"fanin0_pins\00", align 1
@___asan_gen_.1574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 388, i32 18 }
@___asan_gen_.1578 = private unnamed_addr constant [12 x i8] c"fanin1_pins\00", align 1
@___asan_gen_.1580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 389, i32 18 }
@___asan_gen_.1584 = private unnamed_addr constant [12 x i8] c"fanin2_pins\00", align 1
@___asan_gen_.1586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 390, i32 18 }
@___asan_gen_.1590 = private unnamed_addr constant [12 x i8] c"fanin3_pins\00", align 1
@___asan_gen_.1592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 391, i32 18 }
@___asan_gen_.1596 = private unnamed_addr constant [12 x i8] c"fanin4_pins\00", align 1
@___asan_gen_.1598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 392, i32 18 }
@___asan_gen_.1602 = private unnamed_addr constant [12 x i8] c"fanin5_pins\00", align 1
@___asan_gen_.1604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 393, i32 18 }
@___asan_gen_.1608 = private unnamed_addr constant [12 x i8] c"fanin6_pins\00", align 1
@___asan_gen_.1610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 394, i32 18 }
@___asan_gen_.1614 = private unnamed_addr constant [12 x i8] c"fanin7_pins\00", align 1
@___asan_gen_.1616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 395, i32 18 }
@___asan_gen_.1620 = private unnamed_addr constant [12 x i8] c"fanin8_pins\00", align 1
@___asan_gen_.1622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 396, i32 18 }
@___asan_gen_.1626 = private unnamed_addr constant [12 x i8] c"fanin9_pins\00", align 1
@___asan_gen_.1628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 397, i32 18 }
@___asan_gen_.1632 = private unnamed_addr constant [13 x i8] c"fanin10_pins\00", align 1
@___asan_gen_.1634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 398, i32 18 }
@___asan_gen_.1638 = private unnamed_addr constant [13 x i8] c"fanin11_pins\00", align 1
@___asan_gen_.1640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 399, i32 18 }
@___asan_gen_.1644 = private unnamed_addr constant [13 x i8] c"fanin12_pins\00", align 1
@___asan_gen_.1646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 400, i32 18 }
@___asan_gen_.1650 = private unnamed_addr constant [13 x i8] c"fanin13_pins\00", align 1
@___asan_gen_.1652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 401, i32 18 }
@___asan_gen_.1656 = private unnamed_addr constant [13 x i8] c"fanin14_pins\00", align 1
@___asan_gen_.1658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 402, i32 18 }
@___asan_gen_.1662 = private unnamed_addr constant [13 x i8] c"fanin15_pins\00", align 1
@___asan_gen_.1664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 403, i32 18 }
@___asan_gen_.1668 = private unnamed_addr constant [12 x i8] c"faninx_pins\00", align 1
@___asan_gen_.1670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 404, i32 18 }
@___asan_gen_.1674 = private unnamed_addr constant [10 x i8] c"pwm0_pins\00", align 1
@___asan_gen_.1676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 406, i32 18 }
@___asan_gen_.1680 = private unnamed_addr constant [10 x i8] c"pwm1_pins\00", align 1
@___asan_gen_.1682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 407, i32 18 }
@___asan_gen_.1686 = private unnamed_addr constant [10 x i8] c"pwm2_pins\00", align 1
@___asan_gen_.1688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 408, i32 18 }
@___asan_gen_.1692 = private unnamed_addr constant [10 x i8] c"pwm3_pins\00", align 1
@___asan_gen_.1694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 409, i32 18 }
@___asan_gen_.1698 = private unnamed_addr constant [10 x i8] c"pwm4_pins\00", align 1
@___asan_gen_.1700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 410, i32 18 }
@___asan_gen_.1704 = private unnamed_addr constant [10 x i8] c"pwm5_pins\00", align 1
@___asan_gen_.1706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 411, i32 18 }
@___asan_gen_.1710 = private unnamed_addr constant [10 x i8] c"pwm6_pins\00", align 1
@___asan_gen_.1712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 412, i32 18 }
@___asan_gen_.1716 = private unnamed_addr constant [10 x i8] c"pwm7_pins\00", align 1
@___asan_gen_.1718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 413, i32 18 }
@___asan_gen_.1722 = private unnamed_addr constant [9 x i8] c"rg1_pins\00", align 1
@___asan_gen_.1724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 419, i32 18 }
@___asan_gen_.1728 = private unnamed_addr constant [13 x i8] c"rg1mdio_pins\00", align 1
@___asan_gen_.1730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 422, i32 18 }
@___asan_gen_.1734 = private unnamed_addr constant [9 x i8] c"rg2_pins\00", align 1
@___asan_gen_.1736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 425, i32 18 }
@___asan_gen_.1740 = private unnamed_addr constant [13 x i8] c"rg2mdio_pins\00", align 1
@___asan_gen_.1742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 428, i32 18 }
@___asan_gen_.1746 = private unnamed_addr constant [9 x i8] c"ddr_pins\00", align 1
@___asan_gen_.1748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 430, i32 18 }
@___asan_gen_.1752 = private unnamed_addr constant [11 x i8] c"uart1_pins\00", align 1
@___asan_gen_.1754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 415, i32 18 }
@___asan_gen_.1758 = private unnamed_addr constant [11 x i8] c"uart2_pins\00", align 1
@___asan_gen_.1760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 416, i32 18 }
@___asan_gen_.1764 = private unnamed_addr constant [15 x i8] c"bmcuart0a_pins\00", align 1
@___asan_gen_.1766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 462, i32 18 }
@___asan_gen_.1770 = private unnamed_addr constant [15 x i8] c"bmcuart0b_pins\00", align 1
@___asan_gen_.1772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 463, i32 18 }
@___asan_gen_.1776 = private unnamed_addr constant [14 x i8] c"bmcuart1_pins\00", align 1
@___asan_gen_.1778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 465, i32 18 }
@___asan_gen_.1782 = private unnamed_addr constant [10 x i8] c"iox1_pins\00", align 1
@___asan_gen_.1784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 433, i32 18 }
@___asan_gen_.1788 = private unnamed_addr constant [10 x i8] c"iox2_pins\00", align 1
@___asan_gen_.1790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 435, i32 18 }
@___asan_gen_.1794 = private unnamed_addr constant [10 x i8] c"ioxh_pins\00", align 1
@___asan_gen_.1796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 437, i32 18 }
@___asan_gen_.1800 = private unnamed_addr constant [10 x i8] c"gspi_pins\00", align 1
@___asan_gen_.1802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 479, i32 18 }
@___asan_gen_.1806 = private unnamed_addr constant [9 x i8] c"mmc_pins\00", align 1
@___asan_gen_.1808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 439, i32 18 }
@___asan_gen_.1812 = private unnamed_addr constant [11 x i8] c"mmcwp_pins\00", align 1
@___asan_gen_.1814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 440, i32 18 }
@___asan_gen_.1818 = private unnamed_addr constant [11 x i8] c"mmccd_pins\00", align 1
@___asan_gen_.1820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 441, i32 18 }
@___asan_gen_.1824 = private unnamed_addr constant [12 x i8] c"mmcrst_pins\00", align 1
@___asan_gen_.1826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 442, i32 18 }
@___asan_gen_.1830 = private unnamed_addr constant [10 x i8] c"mmc8_pins\00", align 1
@___asan_gen_.1832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 443, i32 18 }
@___asan_gen_.1836 = private unnamed_addr constant [8 x i8] c"r1_pins\00", align 1
@___asan_gen_.1838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 446, i32 18 }
@___asan_gen_.1842 = private unnamed_addr constant [11 x i8] c"r1err_pins\00", align 1
@___asan_gen_.1844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 447, i32 18 }
@___asan_gen_.1848 = private unnamed_addr constant [10 x i8] c"r1md_pins\00", align 1
@___asan_gen_.1850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 448, i32 18 }
@___asan_gen_.1854 = private unnamed_addr constant [8 x i8] c"r2_pins\00", align 1
@___asan_gen_.1856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 451, i32 18 }
@___asan_gen_.1860 = private unnamed_addr constant [11 x i8] c"r2err_pins\00", align 1
@___asan_gen_.1862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 452, i32 18 }
@___asan_gen_.1866 = private unnamed_addr constant [10 x i8] c"r2md_pins\00", align 1
@___asan_gen_.1868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 453, i32 18 }
@___asan_gen_.1872 = private unnamed_addr constant [9 x i8] c"sd1_pins\00", align 1
@___asan_gen_.1874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 455, i32 18 }
@___asan_gen_.1878 = private unnamed_addr constant [12 x i8] c"sd1pwr_pins\00", align 1
@___asan_gen_.1880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 456, i32 18 }
@___asan_gen_.1884 = private unnamed_addr constant [11 x i8] c"wdog1_pins\00", align 1
@___asan_gen_.1886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 458, i32 18 }
@___asan_gen_.1890 = private unnamed_addr constant [11 x i8] c"wdog2_pins\00", align 1
@___asan_gen_.1892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 459, i32 18 }
@___asan_gen_.1896 = private unnamed_addr constant [12 x i8] c"scipme_pins\00", align 1
@___asan_gen_.1898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 468, i32 18 }
@___asan_gen_.1902 = private unnamed_addr constant [9 x i8] c"sci_pins\00", align 1
@___asan_gen_.1904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 470, i32 18 }
@___asan_gen_.1908 = private unnamed_addr constant [12 x i8] c"serirq_pins\00", align 1
@___asan_gen_.1910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 472, i32 18 }
@___asan_gen_.1914 = private unnamed_addr constant [11 x i8] c"jtag2_pins\00", align 1
@___asan_gen_.1916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 477, i32 18 }
@___asan_gen_.1920 = private unnamed_addr constant [10 x i8] c"spix_pins\00", align 1
@___asan_gen_.1922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 481, i32 18 }
@___asan_gen_.1926 = private unnamed_addr constant [13 x i8] c"spixcs1_pins\00", align 1
@___asan_gen_.1928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 482, i32 18 }
@___asan_gen_.1932 = private unnamed_addr constant [11 x i8] c"pspi1_pins\00", align 1
@___asan_gen_.1934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 484, i32 18 }
@___asan_gen_.1938 = private unnamed_addr constant [11 x i8] c"pspi2_pins\00", align 1
@___asan_gen_.1940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 485, i32 18 }
@___asan_gen_.1944 = private unnamed_addr constant [9 x i8] c"ddc_pins\00", align 1
@___asan_gen_.1946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 495, i32 18 }
@___asan_gen_.1950 = private unnamed_addr constant [12 x i8] c"clkreq_pins\00", align 1
@___asan_gen_.1952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 475, i32 18 }
@___asan_gen_.1956 = private unnamed_addr constant [12 x i8] c"clkout_pins\00", align 1
@___asan_gen_.1958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 474, i32 18 }
@___asan_gen_.1962 = private unnamed_addr constant [10 x i8] c"spi3_pins\00", align 1
@___asan_gen_.1964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 489, i32 18 }
@___asan_gen_.1968 = private unnamed_addr constant [13 x i8] c"spi3cs1_pins\00", align 1
@___asan_gen_.1970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 490, i32 18 }
@___asan_gen_.1974 = private unnamed_addr constant [14 x i8] c"spi3quad_pins\00", align 1
@___asan_gen_.1976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 491, i32 18 }
@___asan_gen_.1980 = private unnamed_addr constant [13 x i8] c"spi3cs2_pins\00", align 1
@___asan_gen_.1982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 492, i32 18 }
@___asan_gen_.1986 = private unnamed_addr constant [13 x i8] c"spi3cs3_pins\00", align 1
@___asan_gen_.1988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 493, i32 18 }
@___asan_gen_.1992 = private unnamed_addr constant [13 x i8] c"spi0cs1_pins\00", align 1
@___asan_gen_.1994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 487, i32 18 }
@___asan_gen_.1998 = private unnamed_addr constant [9 x i8] c"lpc_pins\00", align 1
@___asan_gen_.2000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 497, i32 18 }
@___asan_gen_.2004 = private unnamed_addr constant [12 x i8] c"lpcclk_pins\00", align 1
@___asan_gen_.2006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 498, i32 18 }
@___asan_gen_.2010 = private unnamed_addr constant [10 x i8] c"espi_pins\00", align 1
@___asan_gen_.2012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 499, i32 18 }
@___asan_gen_.2016 = private unnamed_addr constant [12 x i8] c"lkgpo0_pins\00", align 1
@___asan_gen_.2018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 501, i32 18 }
@___asan_gen_.2022 = private unnamed_addr constant [12 x i8] c"lkgpo1_pins\00", align 1
@___asan_gen_.2024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 502, i32 18 }
@___asan_gen_.2028 = private unnamed_addr constant [12 x i8] c"lkgpo2_pins\00", align 1
@___asan_gen_.2030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 503, i32 18 }
@___asan_gen_.2033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 648, i32 2 }
@___asan_gen_.2034 = private unnamed_addr constant [14 x i8] c"nprd_smi_pins\00", align 1
@___asan_gen_.2036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 505, i32 18 }
@___asan_gen_.2039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1557, i32 16 }
@___asan_gen_.2045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1592, i32 2 }
@___asan_gen_.2046 = private unnamed_addr constant [14 x i8] c"npcm7xx_funcs\00", align 1
@___asan_gen_.2048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 779, i32 28 }
@___asan_gen_.2049 = private unnamed_addr constant [9 x i8] c"smb0_grp\00", align 1
@___asan_gen_.2051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 662, i32 1 }
@___asan_gen_.2052 = private unnamed_addr constant [10 x i8] c"smb0b_grp\00", align 1
@___asan_gen_.2054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 663, i32 1 }
@___asan_gen_.2055 = private unnamed_addr constant [10 x i8] c"smb0c_grp\00", align 1
@___asan_gen_.2057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 664, i32 1 }
@___asan_gen_.2058 = private unnamed_addr constant [10 x i8] c"smb0d_grp\00", align 1
@___asan_gen_.2060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 665, i32 1 }
@___asan_gen_.2061 = private unnamed_addr constant [12 x i8] c"smb0den_grp\00", align 1
@___asan_gen_.2063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 666, i32 1 }
@___asan_gen_.2064 = private unnamed_addr constant [9 x i8] c"smb1_grp\00", align 1
@___asan_gen_.2066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 667, i32 1 }
@___asan_gen_.2067 = private unnamed_addr constant [10 x i8] c"smb1b_grp\00", align 1
@___asan_gen_.2069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 668, i32 1 }
@___asan_gen_.2070 = private unnamed_addr constant [10 x i8] c"smb1c_grp\00", align 1
@___asan_gen_.2072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 669, i32 1 }
@___asan_gen_.2073 = private unnamed_addr constant [10 x i8] c"smb1d_grp\00", align 1
@___asan_gen_.2075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 670, i32 1 }
@___asan_gen_.2076 = private unnamed_addr constant [9 x i8] c"smb2_grp\00", align 1
@___asan_gen_.2078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 671, i32 1 }
@___asan_gen_.2079 = private unnamed_addr constant [10 x i8] c"smb2b_grp\00", align 1
@___asan_gen_.2081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 672, i32 1 }
@___asan_gen_.2082 = private unnamed_addr constant [10 x i8] c"smb2c_grp\00", align 1
@___asan_gen_.2084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 673, i32 1 }
@___asan_gen_.2085 = private unnamed_addr constant [10 x i8] c"smb2d_grp\00", align 1
@___asan_gen_.2087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 674, i32 1 }
@___asan_gen_.2088 = private unnamed_addr constant [9 x i8] c"smb3_grp\00", align 1
@___asan_gen_.2090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 675, i32 1 }
@___asan_gen_.2091 = private unnamed_addr constant [10 x i8] c"smb3b_grp\00", align 1
@___asan_gen_.2093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 676, i32 1 }
@___asan_gen_.2094 = private unnamed_addr constant [10 x i8] c"smb3c_grp\00", align 1
@___asan_gen_.2096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 677, i32 1 }
@___asan_gen_.2097 = private unnamed_addr constant [10 x i8] c"smb3d_grp\00", align 1
@___asan_gen_.2099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 678, i32 1 }
@___asan_gen_.2100 = private unnamed_addr constant [9 x i8] c"smb4_grp\00", align 1
@___asan_gen_.2102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 679, i32 1 }
@___asan_gen_.2103 = private unnamed_addr constant [10 x i8] c"smb4b_grp\00", align 1
@___asan_gen_.2105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 680, i32 1 }
@___asan_gen_.2106 = private unnamed_addr constant [10 x i8] c"smb4c_grp\00", align 1
@___asan_gen_.2108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 681, i32 1 }
@___asan_gen_.2109 = private unnamed_addr constant [10 x i8] c"smb4d_grp\00", align 1
@___asan_gen_.2111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 682, i32 1 }
@___asan_gen_.2112 = private unnamed_addr constant [12 x i8] c"smb4den_grp\00", align 1
@___asan_gen_.2114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 683, i32 1 }
@___asan_gen_.2115 = private unnamed_addr constant [9 x i8] c"smb5_grp\00", align 1
@___asan_gen_.2117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 684, i32 1 }
@___asan_gen_.2118 = private unnamed_addr constant [10 x i8] c"smb5b_grp\00", align 1
@___asan_gen_.2120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 685, i32 1 }
@___asan_gen_.2121 = private unnamed_addr constant [10 x i8] c"smb5c_grp\00", align 1
@___asan_gen_.2123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 686, i32 1 }
@___asan_gen_.2124 = private unnamed_addr constant [10 x i8] c"smb5d_grp\00", align 1
@___asan_gen_.2126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 687, i32 1 }
@___asan_gen_.2127 = private unnamed_addr constant [12 x i8] c"ga20kbc_grp\00", align 1
@___asan_gen_.2129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 688, i32 1 }
@___asan_gen_.2130 = private unnamed_addr constant [9 x i8] c"smb6_grp\00", align 1
@___asan_gen_.2132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 689, i32 1 }
@___asan_gen_.2133 = private unnamed_addr constant [9 x i8] c"smb7_grp\00", align 1
@___asan_gen_.2135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 690, i32 1 }
@___asan_gen_.2136 = private unnamed_addr constant [9 x i8] c"smb8_grp\00", align 1
@___asan_gen_.2138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 691, i32 1 }
@___asan_gen_.2139 = private unnamed_addr constant [9 x i8] c"smb9_grp\00", align 1
@___asan_gen_.2141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 692, i32 1 }
@___asan_gen_.2142 = private unnamed_addr constant [10 x i8] c"smb10_grp\00", align 1
@___asan_gen_.2144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 693, i32 1 }
@___asan_gen_.2145 = private unnamed_addr constant [10 x i8] c"smb11_grp\00", align 1
@___asan_gen_.2147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 694, i32 1 }
@___asan_gen_.2148 = private unnamed_addr constant [10 x i8] c"smb12_grp\00", align 1
@___asan_gen_.2150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 695, i32 1 }
@___asan_gen_.2151 = private unnamed_addr constant [10 x i8] c"smb13_grp\00", align 1
@___asan_gen_.2153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 696, i32 1 }
@___asan_gen_.2154 = private unnamed_addr constant [10 x i8] c"smb14_grp\00", align 1
@___asan_gen_.2156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 697, i32 1 }
@___asan_gen_.2157 = private unnamed_addr constant [10 x i8] c"smb15_grp\00", align 1
@___asan_gen_.2159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 698, i32 1 }
@___asan_gen_.2160 = private unnamed_addr constant [11 x i8] c"fanin0_grp\00", align 1
@___asan_gen_.2162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 699, i32 1 }
@___asan_gen_.2163 = private unnamed_addr constant [11 x i8] c"fanin1_grp\00", align 1
@___asan_gen_.2165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 700, i32 1 }
@___asan_gen_.2166 = private unnamed_addr constant [11 x i8] c"fanin2_grp\00", align 1
@___asan_gen_.2168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 701, i32 1 }
@___asan_gen_.2169 = private unnamed_addr constant [11 x i8] c"fanin3_grp\00", align 1
@___asan_gen_.2171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 702, i32 1 }
@___asan_gen_.2172 = private unnamed_addr constant [11 x i8] c"fanin4_grp\00", align 1
@___asan_gen_.2174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 703, i32 1 }
@___asan_gen_.2175 = private unnamed_addr constant [11 x i8] c"fanin5_grp\00", align 1
@___asan_gen_.2177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 704, i32 1 }
@___asan_gen_.2178 = private unnamed_addr constant [11 x i8] c"fanin6_grp\00", align 1
@___asan_gen_.2180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 705, i32 1 }
@___asan_gen_.2181 = private unnamed_addr constant [11 x i8] c"fanin7_grp\00", align 1
@___asan_gen_.2183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 706, i32 1 }
@___asan_gen_.2184 = private unnamed_addr constant [11 x i8] c"fanin8_grp\00", align 1
@___asan_gen_.2186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 707, i32 1 }
@___asan_gen_.2187 = private unnamed_addr constant [11 x i8] c"fanin9_grp\00", align 1
@___asan_gen_.2189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 708, i32 1 }
@___asan_gen_.2190 = private unnamed_addr constant [12 x i8] c"fanin10_grp\00", align 1
@___asan_gen_.2192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 709, i32 1 }
@___asan_gen_.2193 = private unnamed_addr constant [12 x i8] c"fanin11_grp\00", align 1
@___asan_gen_.2195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 710, i32 1 }
@___asan_gen_.2196 = private unnamed_addr constant [12 x i8] c"fanin12_grp\00", align 1
@___asan_gen_.2198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 711, i32 1 }
@___asan_gen_.2199 = private unnamed_addr constant [12 x i8] c"fanin13_grp\00", align 1
@___asan_gen_.2201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 712, i32 1 }
@___asan_gen_.2202 = private unnamed_addr constant [12 x i8] c"fanin14_grp\00", align 1
@___asan_gen_.2204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 713, i32 1 }
@___asan_gen_.2205 = private unnamed_addr constant [12 x i8] c"fanin15_grp\00", align 1
@___asan_gen_.2207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 714, i32 1 }
@___asan_gen_.2208 = private unnamed_addr constant [11 x i8] c"faninx_grp\00", align 1
@___asan_gen_.2210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 715, i32 1 }
@___asan_gen_.2211 = private unnamed_addr constant [9 x i8] c"pwm0_grp\00", align 1
@___asan_gen_.2213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 716, i32 1 }
@___asan_gen_.2214 = private unnamed_addr constant [9 x i8] c"pwm1_grp\00", align 1
@___asan_gen_.2216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 717, i32 1 }
@___asan_gen_.2217 = private unnamed_addr constant [9 x i8] c"pwm2_grp\00", align 1
@___asan_gen_.2219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 718, i32 1 }
@___asan_gen_.2220 = private unnamed_addr constant [9 x i8] c"pwm3_grp\00", align 1
@___asan_gen_.2222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 719, i32 1 }
@___asan_gen_.2223 = private unnamed_addr constant [9 x i8] c"pwm4_grp\00", align 1
@___asan_gen_.2225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 720, i32 1 }
@___asan_gen_.2226 = private unnamed_addr constant [9 x i8] c"pwm5_grp\00", align 1
@___asan_gen_.2228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 721, i32 1 }
@___asan_gen_.2229 = private unnamed_addr constant [9 x i8] c"pwm6_grp\00", align 1
@___asan_gen_.2231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 722, i32 1 }
@___asan_gen_.2232 = private unnamed_addr constant [9 x i8] c"pwm7_grp\00", align 1
@___asan_gen_.2234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 723, i32 1 }
@___asan_gen_.2235 = private unnamed_addr constant [8 x i8] c"rg1_grp\00", align 1
@___asan_gen_.2237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 724, i32 1 }
@___asan_gen_.2238 = private unnamed_addr constant [12 x i8] c"rg1mdio_grp\00", align 1
@___asan_gen_.2240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 725, i32 1 }
@___asan_gen_.2241 = private unnamed_addr constant [8 x i8] c"rg2_grp\00", align 1
@___asan_gen_.2243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 726, i32 1 }
@___asan_gen_.2244 = private unnamed_addr constant [12 x i8] c"rg2mdio_grp\00", align 1
@___asan_gen_.2246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 727, i32 1 }
@___asan_gen_.2247 = private unnamed_addr constant [8 x i8] c"ddr_grp\00", align 1
@___asan_gen_.2249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 728, i32 1 }
@___asan_gen_.2250 = private unnamed_addr constant [10 x i8] c"uart1_grp\00", align 1
@___asan_gen_.2252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 729, i32 1 }
@___asan_gen_.2253 = private unnamed_addr constant [10 x i8] c"uart2_grp\00", align 1
@___asan_gen_.2255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 730, i32 1 }
@___asan_gen_.2256 = private unnamed_addr constant [14 x i8] c"bmcuart0a_grp\00", align 1
@___asan_gen_.2258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 731, i32 1 }
@___asan_gen_.2259 = private unnamed_addr constant [14 x i8] c"bmcuart0b_grp\00", align 1
@___asan_gen_.2261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 732, i32 1 }
@___asan_gen_.2262 = private unnamed_addr constant [13 x i8] c"bmcuart1_grp\00", align 1
@___asan_gen_.2264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 733, i32 1 }
@___asan_gen_.2265 = private unnamed_addr constant [9 x i8] c"iox1_grp\00", align 1
@___asan_gen_.2267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 734, i32 1 }
@___asan_gen_.2268 = private unnamed_addr constant [9 x i8] c"iox2_grp\00", align 1
@___asan_gen_.2270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 735, i32 1 }
@___asan_gen_.2271 = private unnamed_addr constant [9 x i8] c"ioxh_grp\00", align 1
@___asan_gen_.2273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 736, i32 1 }
@___asan_gen_.2274 = private unnamed_addr constant [9 x i8] c"gspi_grp\00", align 1
@___asan_gen_.2276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 737, i32 1 }
@___asan_gen_.2277 = private unnamed_addr constant [8 x i8] c"mmc_grp\00", align 1
@___asan_gen_.2279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 738, i32 1 }
@___asan_gen_.2280 = private unnamed_addr constant [10 x i8] c"mmcwp_grp\00", align 1
@___asan_gen_.2282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 739, i32 1 }
@___asan_gen_.2283 = private unnamed_addr constant [10 x i8] c"mmccd_grp\00", align 1
@___asan_gen_.2285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 740, i32 1 }
@___asan_gen_.2286 = private unnamed_addr constant [11 x i8] c"mmcrst_grp\00", align 1
@___asan_gen_.2288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 741, i32 1 }
@___asan_gen_.2289 = private unnamed_addr constant [9 x i8] c"mmc8_grp\00", align 1
@___asan_gen_.2291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 742, i32 1 }
@___asan_gen_.2292 = private unnamed_addr constant [7 x i8] c"r1_grp\00", align 1
@___asan_gen_.2294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 743, i32 1 }
@___asan_gen_.2295 = private unnamed_addr constant [10 x i8] c"r1err_grp\00", align 1
@___asan_gen_.2297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 744, i32 1 }
@___asan_gen_.2298 = private unnamed_addr constant [9 x i8] c"r1md_grp\00", align 1
@___asan_gen_.2300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 745, i32 1 }
@___asan_gen_.2301 = private unnamed_addr constant [7 x i8] c"r2_grp\00", align 1
@___asan_gen_.2303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 746, i32 1 }
@___asan_gen_.2304 = private unnamed_addr constant [10 x i8] c"r2err_grp\00", align 1
@___asan_gen_.2306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 747, i32 1 }
@___asan_gen_.2307 = private unnamed_addr constant [9 x i8] c"r2md_grp\00", align 1
@___asan_gen_.2309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 748, i32 1 }
@___asan_gen_.2310 = private unnamed_addr constant [8 x i8] c"sd1_grp\00", align 1
@___asan_gen_.2312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 749, i32 1 }
@___asan_gen_.2313 = private unnamed_addr constant [11 x i8] c"sd1pwr_grp\00", align 1
@___asan_gen_.2315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 750, i32 1 }
@___asan_gen_.2316 = private unnamed_addr constant [10 x i8] c"wdog1_grp\00", align 1
@___asan_gen_.2318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 751, i32 1 }
@___asan_gen_.2319 = private unnamed_addr constant [10 x i8] c"wdog2_grp\00", align 1
@___asan_gen_.2321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 752, i32 1 }
@___asan_gen_.2322 = private unnamed_addr constant [11 x i8] c"scipme_grp\00", align 1
@___asan_gen_.2324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 753, i32 1 }
@___asan_gen_.2325 = private unnamed_addr constant [8 x i8] c"sci_grp\00", align 1
@___asan_gen_.2327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 754, i32 1 }
@___asan_gen_.2328 = private unnamed_addr constant [11 x i8] c"serirq_grp\00", align 1
@___asan_gen_.2330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 755, i32 1 }
@___asan_gen_.2331 = private unnamed_addr constant [10 x i8] c"jtag2_grp\00", align 1
@___asan_gen_.2333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 756, i32 1 }
@___asan_gen_.2334 = private unnamed_addr constant [9 x i8] c"spix_grp\00", align 1
@___asan_gen_.2336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 757, i32 1 }
@___asan_gen_.2337 = private unnamed_addr constant [12 x i8] c"spixcs1_grp\00", align 1
@___asan_gen_.2339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 758, i32 1 }
@___asan_gen_.2340 = private unnamed_addr constant [10 x i8] c"pspi1_grp\00", align 1
@___asan_gen_.2342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 759, i32 1 }
@___asan_gen_.2343 = private unnamed_addr constant [10 x i8] c"pspi2_grp\00", align 1
@___asan_gen_.2345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 760, i32 1 }
@___asan_gen_.2346 = private unnamed_addr constant [8 x i8] c"ddc_grp\00", align 1
@___asan_gen_.2348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 761, i32 1 }
@___asan_gen_.2349 = private unnamed_addr constant [11 x i8] c"clkreq_grp\00", align 1
@___asan_gen_.2351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 762, i32 1 }
@___asan_gen_.2352 = private unnamed_addr constant [11 x i8] c"clkout_grp\00", align 1
@___asan_gen_.2354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 763, i32 1 }
@___asan_gen_.2355 = private unnamed_addr constant [9 x i8] c"spi3_grp\00", align 1
@___asan_gen_.2357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 764, i32 1 }
@___asan_gen_.2358 = private unnamed_addr constant [12 x i8] c"spi3cs1_grp\00", align 1
@___asan_gen_.2360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 765, i32 1 }
@___asan_gen_.2361 = private unnamed_addr constant [13 x i8] c"spi3quad_grp\00", align 1
@___asan_gen_.2363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 766, i32 1 }
@___asan_gen_.2364 = private unnamed_addr constant [12 x i8] c"spi3cs2_grp\00", align 1
@___asan_gen_.2366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 767, i32 1 }
@___asan_gen_.2367 = private unnamed_addr constant [12 x i8] c"spi3cs3_grp\00", align 1
@___asan_gen_.2369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 768, i32 1 }
@___asan_gen_.2370 = private unnamed_addr constant [12 x i8] c"spi0cs1_grp\00", align 1
@___asan_gen_.2372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 769, i32 1 }
@___asan_gen_.2373 = private unnamed_addr constant [8 x i8] c"lpc_grp\00", align 1
@___asan_gen_.2375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 770, i32 1 }
@___asan_gen_.2376 = private unnamed_addr constant [11 x i8] c"lpcclk_grp\00", align 1
@___asan_gen_.2378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 771, i32 1 }
@___asan_gen_.2379 = private unnamed_addr constant [9 x i8] c"espi_grp\00", align 1
@___asan_gen_.2381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 772, i32 1 }
@___asan_gen_.2382 = private unnamed_addr constant [11 x i8] c"lkgpo0_grp\00", align 1
@___asan_gen_.2384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 773, i32 1 }
@___asan_gen_.2385 = private unnamed_addr constant [11 x i8] c"lkgpo1_grp\00", align 1
@___asan_gen_.2387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 774, i32 1 }
@___asan_gen_.2388 = private unnamed_addr constant [11 x i8] c"lkgpo2_grp\00", align 1
@___asan_gen_.2390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 775, i32 1 }
@___asan_gen_.2391 = private unnamed_addr constant [13 x i8] c"nprd_smi_grp\00", align 1
@___asan_gen_.2393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 776, i32 1 }
@___asan_gen_.2399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1642, i32 2 }
@___asan_gen_.2400 = private unnamed_addr constant [7 x i8] c"pincfg\00", align 1
@___asan_gen_.2402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 925, i32 36 }
@___asan_gen_.2411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1658, i32 3 }
@___asan_gen_.2417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1662, i32 3 }
@___asan_gen_.2423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1694, i32 2 }
@___asan_gen_.2429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1518, i32 3 }
@___asan_gen_.2435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1787, i32 2 }
@___asan_gen_.2441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1539, i32 3 }
@___asan_gen_.2444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1544, i32 3 }
@___asan_gen_.2445 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.2448 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.2450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1973, i32 9 }
@___asan_gen_.2459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1977, i32 4 }
@___asan_gen_.2460 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 1987, i32 4 }
@___asan_gen_.2469 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2470 = private constant [45 x i8] c"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c\00", align 1
@___asan_gen_.2471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2470, i32 229, i32 2 }
@llvm.compiler.used = appending global [695 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__initcall__kmod_pinctrl_npcm7xx__250_2063_npcm7xx_pinctrl_register3, ptr @npcm7xx_gpio_of._entry, ptr @npcm7xx_gpio_of._entry.22, ptr @npcm7xx_gpio_of._entry.25, ptr @npcm7xx_gpio_of._entry.29, ptr @npcm7xx_gpio_of._entry_ptr, ptr @npcm7xx_gpio_of._entry_ptr.24, ptr @npcm7xx_gpio_of._entry_ptr.27, ptr @npcm7xx_gpio_of._entry_ptr.31, ptr @npcm7xx_gpio_register._entry, ptr @npcm7xx_gpio_register._entry.433, ptr @npcm7xx_gpio_register._entry_ptr, ptr @npcm7xx_gpio_register._entry_ptr.435, ptr @npcm7xx_gpio_request_enable._entry, ptr @npcm7xx_gpio_request_enable._entry.419, ptr @npcm7xx_gpio_request_enable._entry_ptr, ptr @npcm7xx_gpio_request_enable._entry_ptr.421, ptr @npcm7xx_pinctrl_probe._entry, ptr @npcm7xx_pinctrl_probe._entry.10, ptr @npcm7xx_pinctrl_probe._entry.13, ptr @npcm7xx_pinctrl_probe._entry.16, ptr @npcm7xx_pinctrl_probe._entry.7, ptr @npcm7xx_pinctrl_probe._entry_ptr, ptr @npcm7xx_pinctrl_probe._entry_ptr.12, ptr @npcm7xx_pinctrl_probe._entry_ptr.15, ptr @npcm7xx_pinctrl_probe._entry_ptr.18, ptr @npcm7xx_pinctrl_probe._entry_ptr.9, ptr @npcm7xx_pinctrl_driver, ptr @.str, ptr @npcm7xx_pinctrl_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @npcm7xx_pinctrl_desc, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @npcmgpio_irqchip, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @npcm7xx_pins, ptr @npcm7xx_pinctrl_ops, ptr @npcm7xx_pinmux_ops, ptr @npcm7xx_pinconf_ops, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @npcm7xx_groups, ptr @.str.297, ptr @smb0_pins, ptr @.str.298, ptr @smb0b_pins, ptr @.str.299, ptr @smb0c_pins, ptr @.str.300, ptr @smb0d_pins, ptr @.str.301, ptr @smb0den_pins, ptr @.str.302, ptr @smb1_pins, ptr @.str.303, ptr @smb1b_pins, ptr @.str.304, ptr @smb1c_pins, ptr @.str.305, ptr @smb1d_pins, ptr @.str.306, ptr @smb2_pins, ptr @.str.307, ptr @smb2b_pins, ptr @.str.308, ptr @smb2c_pins, ptr @.str.309, ptr @smb2d_pins, ptr @.str.310, ptr @smb3_pins, ptr @.str.311, ptr @smb3b_pins, ptr @.str.312, ptr @smb3c_pins, ptr @.str.313, ptr @smb3d_pins, ptr @.str.314, ptr @smb4_pins, ptr @.str.315, ptr @smb4b_pins, ptr @.str.316, ptr @smb4c_pins, ptr @.str.317, ptr @smb4d_pins, ptr @.str.318, ptr @smb4den_pins, ptr @.str.319, ptr @smb5_pins, ptr @.str.320, ptr @smb5b_pins, ptr @.str.321, ptr @smb5c_pins, ptr @.str.322, ptr @smb5d_pins, ptr @.str.323, ptr @ga20kbc_pins, ptr @.str.324, ptr @smb6_pins, ptr @.str.325, ptr @smb7_pins, ptr @.str.326, ptr @smb8_pins, ptr @.str.327, ptr @smb9_pins, ptr @.str.328, ptr @smb10_pins, ptr @.str.329, ptr @smb11_pins, ptr @.str.330, ptr @smb12_pins, ptr @.str.331, ptr @smb13_pins, ptr @.str.332, ptr @smb14_pins, ptr @.str.333, ptr @smb15_pins, ptr @.str.334, ptr @fanin0_pins, ptr @.str.335, ptr @fanin1_pins, ptr @.str.336, ptr @fanin2_pins, ptr @.str.337, ptr @fanin3_pins, ptr @.str.338, ptr @fanin4_pins, ptr @.str.339, ptr @fanin5_pins, ptr @.str.340, ptr @fanin6_pins, ptr @.str.341, ptr @fanin7_pins, ptr @.str.342, ptr @fanin8_pins, ptr @.str.343, ptr @fanin9_pins, ptr @.str.344, ptr @fanin10_pins, ptr @.str.345, ptr @fanin11_pins, ptr @.str.346, ptr @fanin12_pins, ptr @.str.347, ptr @fanin13_pins, ptr @.str.348, ptr @fanin14_pins, ptr @.str.349, ptr @fanin15_pins, ptr @.str.350, ptr @faninx_pins, ptr @.str.351, ptr @pwm0_pins, ptr @.str.352, ptr @pwm1_pins, ptr @.str.353, ptr @pwm2_pins, ptr @.str.354, ptr @pwm3_pins, ptr @.str.355, ptr @pwm4_pins, ptr @.str.356, ptr @pwm5_pins, ptr @.str.357, ptr @pwm6_pins, ptr @.str.358, ptr @pwm7_pins, ptr @.str.359, ptr @rg1_pins, ptr @.str.360, ptr @rg1mdio_pins, ptr @.str.361, ptr @rg2_pins, ptr @.str.362, ptr @rg2mdio_pins, ptr @.str.363, ptr @ddr_pins, ptr @.str.364, ptr @uart1_pins, ptr @.str.365, ptr @uart2_pins, ptr @.str.366, ptr @bmcuart0a_pins, ptr @.str.367, ptr @bmcuart0b_pins, ptr @.str.368, ptr @bmcuart1_pins, ptr @.str.369, ptr @iox1_pins, ptr @.str.370, ptr @iox2_pins, ptr @.str.371, ptr @ioxh_pins, ptr @.str.372, ptr @gspi_pins, ptr @.str.373, ptr @mmc_pins, ptr @.str.374, ptr @mmcwp_pins, ptr @.str.375, ptr @mmccd_pins, ptr @.str.376, ptr @mmcrst_pins, ptr @.str.377, ptr @mmc8_pins, ptr @.str.378, ptr @r1_pins, ptr @.str.379, ptr @r1err_pins, ptr @.str.380, ptr @r1md_pins, ptr @.str.381, ptr @r2_pins, ptr @.str.382, ptr @r2err_pins, ptr @.str.383, ptr @r2md_pins, ptr @.str.384, ptr @sd1_pins, ptr @.str.385, ptr @sd1pwr_pins, ptr @.str.386, ptr @wdog1_pins, ptr @.str.387, ptr @wdog2_pins, ptr @.str.388, ptr @scipme_pins, ptr @.str.389, ptr @sci_pins, ptr @.str.390, ptr @serirq_pins, ptr @.str.391, ptr @jtag2_pins, ptr @.str.392, ptr @spix_pins, ptr @.str.393, ptr @spixcs1_pins, ptr @.str.394, ptr @pspi1_pins, ptr @.str.395, ptr @pspi2_pins, ptr @.str.396, ptr @ddc_pins, ptr @.str.397, ptr @clkreq_pins, ptr @.str.398, ptr @clkout_pins, ptr @.str.399, ptr @spi3_pins, ptr @.str.400, ptr @spi3cs1_pins, ptr @.str.401, ptr @spi3quad_pins, ptr @.str.402, ptr @spi3cs2_pins, ptr @.str.403, ptr @spi3cs3_pins, ptr @.str.404, ptr @spi0cs1_pins, ptr @.str.405, ptr @lpc_pins, ptr @.str.406, ptr @lpcclk_pins, ptr @.str.407, ptr @espi_pins, ptr @.str.408, ptr @lkgpo0_pins, ptr @.str.409, ptr @lkgpo1_pins, ptr @.str.410, ptr @lkgpo2_pins, ptr @.str.411, ptr @nprd_smi_pins, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @npcm7xx_funcs, ptr @smb0_grp, ptr @smb0b_grp, ptr @smb0c_grp, ptr @smb0d_grp, ptr @smb0den_grp, ptr @smb1_grp, ptr @smb1b_grp, ptr @smb1c_grp, ptr @smb1d_grp, ptr @smb2_grp, ptr @smb2b_grp, ptr @smb2c_grp, ptr @smb2d_grp, ptr @smb3_grp, ptr @smb3b_grp, ptr @smb3c_grp, ptr @smb3d_grp, ptr @smb4_grp, ptr @smb4b_grp, ptr @smb4c_grp, ptr @smb4d_grp, ptr @smb4den_grp, ptr @smb5_grp, ptr @smb5b_grp, ptr @smb5c_grp, ptr @smb5d_grp, ptr @ga20kbc_grp, ptr @smb6_grp, ptr @smb7_grp, ptr @smb8_grp, ptr @smb9_grp, ptr @smb10_grp, ptr @smb11_grp, ptr @smb12_grp, ptr @smb13_grp, ptr @smb14_grp, ptr @smb15_grp, ptr @fanin0_grp, ptr @fanin1_grp, ptr @fanin2_grp, ptr @fanin3_grp, ptr @fanin4_grp, ptr @fanin5_grp, ptr @fanin6_grp, ptr @fanin7_grp, ptr @fanin8_grp, ptr @fanin9_grp, ptr @fanin10_grp, ptr @fanin11_grp, ptr @fanin12_grp, ptr @fanin13_grp, ptr @fanin14_grp, ptr @fanin15_grp, ptr @faninx_grp, ptr @pwm0_grp, ptr @pwm1_grp, ptr @pwm2_grp, ptr @pwm3_grp, ptr @pwm4_grp, ptr @pwm5_grp, ptr @pwm6_grp, ptr @pwm7_grp, ptr @rg1_grp, ptr @rg1mdio_grp, ptr @rg2_grp, ptr @rg2mdio_grp, ptr @ddr_grp, ptr @uart1_grp, ptr @uart2_grp, ptr @bmcuart0a_grp, ptr @bmcuart0b_grp, ptr @bmcuart1_grp, ptr @iox1_grp, ptr @iox2_grp, ptr @ioxh_grp, ptr @gspi_grp, ptr @mmc_grp, ptr @mmcwp_grp, ptr @mmccd_grp, ptr @mmcrst_grp, ptr @mmc8_grp, ptr @r1_grp, ptr @r1err_grp, ptr @r1md_grp, ptr @r2_grp, ptr @r2err_grp, ptr @r2md_grp, ptr @sd1_grp, ptr @sd1pwr_grp, ptr @wdog1_grp, ptr @wdog2_grp, ptr @scipme_grp, ptr @sci_grp, ptr @serirq_grp, ptr @jtag2_grp, ptr @spix_grp, ptr @spixcs1_grp, ptr @pspi1_grp, ptr @pspi2_grp, ptr @ddc_grp, ptr @clkreq_grp, ptr @clkout_grp, ptr @spi3_grp, ptr @spi3cs1_grp, ptr @spi3quad_grp, ptr @spi3cs2_grp, ptr @spi3cs3_grp, ptr @spi0cs1_grp, ptr @lpc_grp, ptr @lpcclk_grp, ptr @espi_grp, ptr @lkgpo0_grp, ptr @lkgpo1_grp, ptr @lkgpo2_grp, ptr @nprd_smi_grp, ptr @.str.415, ptr @.str.416, ptr @pincfg, ptr @.str.417, ptr @.str.418, ptr @.str.420, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @npcm7xx_gpio_register.lock_key, ptr @npcm7xx_gpio_register.request_key, ptr @.str.431, ptr @.str.432, ptr @.str.434, ptr @.str.436, ptr @.str.437], section "llvm.metadata"
@0 = internal global [676 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinctrl_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinctrl_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinctrl_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinctrl_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_gpio_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_gpio_of._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_gpio_of._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_gpio_of._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcmgpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pins to i32), i32 2772, i32 3456, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_groups to i32), i32 1380, i32 1728, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb0b_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb0c_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb0d_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb0den_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1b_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1c_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1d_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2b_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2c_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2d_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3b_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3c_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3d_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb4_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb4b_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb4c_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb4d_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb4den_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb5_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb5b_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb5c_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb5d_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga20kbc_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb6_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb7_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb8_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb9_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb10_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb11_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb12_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb13_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb14_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb15_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin6_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin7_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin8_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin9_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin10_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin11_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin12_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin13_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin14_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin15_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faninx_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm6_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm7_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rg1_pins to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rg1mdio_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rg2_pins to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rg2mdio_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_pins to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_pins to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_pins to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmcuart0a_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1764 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmcuart0b_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmcuart1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iox1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iox2_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioxh_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1794 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gspi_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1800 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_pins to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcwp_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmccd_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcrst_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1824 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc8_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1830 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r1_pins to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1836 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r1err_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1842 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r1md_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2_pins to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2err_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1860 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2md_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd1_pins to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1872 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd1pwr_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1878 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdog1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1884 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdog2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1890 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scipme_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1896 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serirq_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jtag2_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1914 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spix_pins to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spixcs1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pspi1_pins to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pspi2_pins to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1938 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddc_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1944 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkreq_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1950 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkout_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1956 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3cs1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1968 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3quad_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3cs2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3cs3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1986 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0cs1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1992 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_pins to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1998 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpcclk_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2004 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @espi_pins to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkgpo0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2016 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkgpo1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2022 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkgpo2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2028 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nprd_smi_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2034 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_funcs to i32), i32 1380, i32 1728, i32 ptrtoint (ptr @___asan_gen_.2046 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb0_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2049 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb0b_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb0c_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2055 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb0d_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb0den_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2061 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1b_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2067 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1c_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2070 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1d_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2073 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2b_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2c_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2082 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2d_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2085 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2088 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3b_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3c_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3d_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2097 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb4_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2100 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb4b_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2103 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb4c_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2106 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb4d_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2109 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb4den_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb5_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2115 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb5b_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2118 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb5c_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2121 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb5d_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga20kbc_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2127 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb6_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2130 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb7_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2133 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb8_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2136 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb9_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb10_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2142 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb11_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2145 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb12_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2148 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb13_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2151 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb14_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2154 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb15_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2157 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin0_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2160 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2163 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2166 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin3_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2169 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin4_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2172 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin5_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2175 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin6_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2178 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin7_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2181 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin8_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2184 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin9_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2187 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin10_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2190 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin11_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2193 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin12_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2196 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin13_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2199 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin14_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2202 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanin15_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2205 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faninx_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2208 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm0_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2211 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2214 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2217 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm3_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2220 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm4_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2223 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm5_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2226 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm6_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm7_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2232 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rg1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2235 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rg1mdio_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2238 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rg2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2241 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rg2mdio_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2244 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2247 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2250 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2253 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmcuart0a_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2256 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmcuart0b_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2259 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmcuart1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2262 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iox1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2265 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iox2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2268 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioxh_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2271 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gspi_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2274 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2277 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcwp_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2280 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmccd_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2283 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcrst_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2286 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc8_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2289 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2292 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r1err_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2295 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r1md_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2298 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2301 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2err_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2304 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2md_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2307 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2310 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd1pwr_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2313 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdog1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdog2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2319 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scipme_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2322 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2325 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serirq_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2328 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jtag2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2331 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spix_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2334 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spixcs1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2337 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pspi1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2340 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pspi2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2343 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddc_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2346 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkreq_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2349 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkout_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2352 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2355 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3cs1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2358 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3quad_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2361 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3cs2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2364 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3cs3_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2367 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0cs1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2370 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2373 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpcclk_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2376 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @espi_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2379 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkgpo0_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2382 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkgpo1_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2385 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkgpo2_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2388 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nprd_smi_grp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2391 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pincfg to i32), i32 10240, i32 12800, i32 ptrtoint (ptr @___asan_gen_.2400 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_gpio_request_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_gpio_request_enable._entry.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_gpio_register.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2445 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_gpio_register.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2448 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_gpio_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_gpio_register._entry.433 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2470 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2471 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_pinctrl_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @npcm7xx_pinctrl_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %pinspec.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4184, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call4 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #8
  %gcr_regmap = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %gcr_regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %gcr_regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #11
  %5 = ptrtoint ptr %gcr_regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gcr_regmap, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #8
  %8 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %9 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pinspec.i) #8
  %10 = call ptr @memset(ptr %pinspec.i, i32 255, i32 72)
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %call.i67 = tail call ptr @of_get_next_available_child(ptr noundef %14, ptr noundef null) #8
  %cmp.not240.i = icmp eq ptr %call.i67, null
  br i1 %cmp.not240.i, label %if.end11.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end11.for.end.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end11
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %pinspec.i, i32 0, i32 2
  %arrayidx61.i = getelementptr inbounds %struct.of_phandle_args, ptr %pinspec.i, i32 0, i32 2, i32 1
  %arrayidx67.i = getelementptr inbounds %struct.of_phandle_args, ptr %pinspec.i, i32 0, i32 2, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %np.0243.i = phi ptr [ %call.i67, %for.body.lr.ph.i ], [ %call130.i, %for.inc.i.for.body.i_crit_edge ]
  %id.0242.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %id.1.i, %for.inc.i.for.body.i_crit_edge ]
  %ret.0241.i = phi i32 [ -6, %for.body.lr.ph.i ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %call1.i = call ptr @of_find_property(ptr noundef nonnull %np.0243.i, ptr noundef nonnull @.str.19, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call2.i = call i32 @of_address_to_resource(ptr noundef nonnull %np.0243.i, i32 noundef 0, ptr noundef nonnull %res.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge, label %if.end.i

if.then.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %npcm7xx_gpio_of.exit.thread.sink.split

if.end.i:                                         ; preds = %if.then.i
  %15 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %res.i, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  %sub.i.i = sub i32 1, %16
  %add.i.i = add i32 %sub.i.i, %18
  %call7.i = call ptr @ioremap(i32 noundef %16, i32 noundef %add.i.i) #8
  %arrayidx.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %arrayidx.i, align 4
  %call8.i = call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0243.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge, label %if.end15.i

if.end.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %npcm7xx_gpio_of.exit.thread.sink.split

if.end15.i:                                       ; preds = %if.end.i
  %gc.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  %add.ptr25.i = getelementptr i8, ptr %23, i32 12
  %add.ptr29.i = getelementptr i8, ptr %23, i32 88
  %call30.i = call i32 @bgpio_init(ptr noundef %gc.i, ptr noundef %21, i32 noundef 4, ptr noundef %add.ptr.i, ptr noundef %add.ptr25.i, ptr noundef null, ptr noundef null, ptr noundef %add.ptr29.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end37.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.26) #11
  br label %npcm7xx_gpio_of.exit

if.end37.i:                                       ; preds = %if.end15.i
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np.0243.i, ptr noundef nonnull @.str.28, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %pinspec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp39.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp39.i, label %if.end37.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge, label %if.end45.i

if.end37.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %npcm7xx_gpio_of.exit.thread.sink.split

if.end45.i:                                       ; preds = %if.end37.i
  %irq48.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 3
  %26 = ptrtoint ptr %irq48.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call8.i, ptr %irq48.i, align 4
  %irq_chip.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 5
  %27 = call ptr @memcpy(ptr %irq_chip.i, ptr @npcmgpio_irqchip, i32 136)
  %28 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev2, align 4
  %parent.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1, i32 2
  %30 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %parent.i, align 4
  %mul.i = shl i32 %id.0242.i, 5
  %irqbase.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 2
  %31 = ptrtoint ptr %irqbase.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.i, ptr %irqbase.i, align 4
  %32 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %args.i, align 4
  %pinctrl_id.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 6
  %34 = ptrtoint ptr %pinctrl_id.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %pinctrl_id.i, align 4
  %35 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx61.i, align 4
  %base65.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1, i32 19
  %37 = ptrtoint ptr %base65.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %base65.i, align 4
  %38 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx67.i, align 4
  %conv.i = trunc i32 %39 to i16
  %ngpio.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1, i32 20
  %40 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %owner.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1, i32 4
  %41 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %owner.i, align 4
  %42 = load ptr, ptr %dev2, align 4
  %call75.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %42, i32 noundef 3264, ptr noundef nonnull @.str.32, ptr noundef nonnull %np.0243.i) #8
  %43 = ptrtoint ptr %gc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call75.i, ptr %gc.i, align 4
  %cmp83.i = icmp eq ptr %call75.i, null
  br i1 %cmp83.i, label %if.end45.i.npcm7xx_gpio_of.exit.thread_crit_edge, label %if.end86.i

if.end45.i.npcm7xx_gpio_of.exit.thread_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %npcm7xx_gpio_of.exit.thread

if.end86.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %dbg_show.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1, i32 16
  %44 = ptrtoint ptr %dbg_show.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @npcmgpio_dbg_show, ptr %dbg_show.i, align 4
  %direction_input.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1, i32 8
  %45 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %direction_input.i, align 4
  %direction_input95.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 7
  %47 = ptrtoint ptr %direction_input95.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %direction_input95.i, align 4
  store ptr @npcmgpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1, i32 9
  %48 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %direction_output.i, align 4
  %direction_output105.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 8
  %50 = ptrtoint ptr %direction_output105.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %direction_output105.i, align 4
  store ptr @npcmgpio_direction_output, ptr %direction_output.i, align 4
  %request.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1, i32 5
  %51 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %request.i, align 4
  %request115.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 9
  %53 = ptrtoint ptr %request115.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %request115.i, align 4
  store ptr @npcmgpio_gpio_request, ptr %request.i, align 4
  %free.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1, i32 6
  %54 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @npcmgpio_gpio_free, ptr %free.i, align 4
  %of_node126.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %id.0242.i, i32 1, i32 39
  %55 = ptrtoint ptr %of_node126.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %np.0243.i, ptr %of_node126.i, align 4
  %inc.i = add i32 %id.0242.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end86.i, %for.body.i.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ %call.i.i, %if.end86.i ], [ %ret.0241.i, %for.body.i.for.inc.i_crit_edge ]
  %id.1.i = phi i32 [ %inc.i, %if.end86.i ], [ %id.0242.i, %for.body.i.for.inc.i_crit_edge ]
  %56 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev2, align 4
  %of_node129.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %of_node129.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node129.i, align 8
  %call130.i = call ptr @of_get_next_available_child(ptr noundef %59, ptr noundef nonnull %np.0243.i) #8
  %cmp.not.i = icmp eq ptr %call130.i, null
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end11.for.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ -6, %if.end11.for.end.i_crit_edge ], [ %ret.1.i, %for.inc.i.for.end.i_crit_edge ]
  %id.0.lcssa.i = phi i32 [ 0, %if.end11.for.end.i_crit_edge ], [ %id.1.i, %for.inc.i.for.end.i_crit_edge ]
  %bank_num.i = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 6
  %60 = ptrtoint ptr %bank_num.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %id.0.lcssa.i, ptr %bank_num.i, align 4
  br label %npcm7xx_gpio_of.exit

npcm7xx_gpio_of.exit.thread.sink.split:           ; preds = %if.end37.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge, %if.end.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge, %if.then.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.20, %if.then.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge ], [ @.str.23, %if.end.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge ], [ @.str.30, %if.end37.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ %call2.i, %if.then.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge ], [ %call8.i, %if.end.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge ], [ %call.i.i, %if.end37.i.npcm7xx_gpio_of.exit.thread.sink.split_crit_edge ]
  %61 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull %.str.20.sink, i32 noundef %id.0242.i) #11
  br label %npcm7xx_gpio_of.exit.thread

npcm7xx_gpio_of.exit.thread:                      ; preds = %npcm7xx_gpio_of.exit.thread.sink.split, %if.end45.i.npcm7xx_gpio_of.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.ph, %npcm7xx_gpio_of.exit.thread.sink.split ], [ -12, %if.end45.i.npcm7xx_gpio_of.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinspec.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  br label %do.end16

npcm7xx_gpio_of.exit:                             ; preds = %for.end.i, %do.end35.i
  %retval.0.i = phi i32 [ %call30.i, %do.end35.i ], [ %ret.0.lcssa.i, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinspec.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %npcm7xx_gpio_of.exit.do.end16_crit_edge, label %if.end18

npcm7xx_gpio_of.exit.do.end16_crit_edge:          ; preds = %npcm7xx_gpio_of.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end16:                                         ; preds = %npcm7xx_gpio_of.exit.do.end16_crit_edge, %npcm7xx_gpio_of.exit.thread
  %retval.0.i71 = phi i32 [ %retval.0.i.ph, %npcm7xx_gpio_of.exit.thread ], [ %retval.0.i, %npcm7xx_gpio_of.exit.do.end16_crit_edge ]
  %63 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i71) #11
  br label %cleanup

if.end18:                                         ; preds = %npcm7xx_gpio_of.exit
  %call20 = call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @npcm7xx_pinctrl_desc, ptr noundef nonnull %call.i) #8
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call20, ptr %call.i, align 4
  %cmp.i68 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %call31 = call fastcc i32 @npcm7xx_gpio_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %do.end41

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.14, i32 noundef %call31) #11
  br label %cleanup

do.end41:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end36, %do.end26, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ %retval.0.i71, %do.end16 ], [ %68, %do.end26 ], [ %call31, %do.end36 ], [ 0, %do.end41 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @npcm7xx_gpio_register(ptr noundef %pctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bank_num = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 6
  %0 = ptrtoint ptr %bank_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp109.not = icmp eq i32 %1, 0
  br i1 %cmp109.not, label %entry.cleanup54_crit_edge, label %for.body.lr.ph

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %gc = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 1
  %irq = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 1, i32 37
  %irq_chip = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %irq_chip, ptr %irq, align 4
  %parent_handler = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 1, i32 37, i32 13
  %3 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @npcmgpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 1, i32 37, i32 15
  %4 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_parents, align 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 4, i32 noundef 3520) #8
  %parents = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 1, i32 37, i32 16
  %7 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110
  %irq6 = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 3
  %8 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq6, align 4
  %10 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call5.i.i, align 4
  %default_type = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 1, i32 37, i32 10
  %11 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 1, i32 37, i32 9
  %12 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @handle_level_irq, ptr %handler, align 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call15 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %14, ptr noundef %gc, ptr noundef %arrayidx, ptr noundef nonnull @npcm7xx_gpio_register.lock_key, ptr noundef nonnull @npcm7xx_gpio_register.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  br i1 %tobool16.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.431, i32 noundef %id.0110) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %if.end19.dev_name.exit_crit_edge ]
  %pinctrl_id = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 6
  %21 = ptrtoint ptr %pinctrl_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pinctrl_id, align 4
  %base = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 1, i32 19
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base, align 4
  %ngpio = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %id.0110, i32 1, i32 20
  %25 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %26 to i32
  %call33 = tail call i32 @gpiochip_add_pin_range(ptr noundef %gc, ptr noundef %retval.0.i, i32 noundef %22, i32 noundef %24, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end39, label %for.inc

do.end39:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.434, i32 noundef %id.0110) #11
  tail call void @gpiochip_remove(ptr noundef %gc) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %do.end, %for.body.cleanup_crit_edge
  %ret.0 = phi i32 [ %call15, %do.end ], [ %call33, %do.end39 ], [ -12, %for.body.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id.0110)
  %cmp46111 = icmp sgt i32 %id.0110, 0
  br i1 %cmp46111, label %cleanup.for.body48_crit_edge, label %cleanup.cleanup54_crit_edge

cleanup.cleanup54_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

cleanup.for.body48_crit_edge:                     ; preds = %cleanup
  br label %for.body48

for.inc:                                          ; preds = %dev_name.exit
  %inc = add nuw i32 %id.0110, 1
  %29 = ptrtoint ptr %bank_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bank_num, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup54_crit_edge

for.inc.cleanup54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %cleanup.for.body48_crit_edge
  %id.1112 = phi i32 [ %sub, %for.body48.for.body48_crit_edge ], [ %id.0110, %cleanup.for.body48_crit_edge ]
  %sub = add nsw i32 %id.1112, -1
  %gc51 = getelementptr %struct.npcm7xx_pinctrl, ptr %pctrl, i32 0, i32 2, i32 %sub, i32 1
  tail call void @gpiochip_remove(ptr noundef %gc51) #8
  %cmp46 = icmp ugt i32 %id.1112, 1
  br i1 %cmp46, label %for.body48.for.body48_crit_edge, label %for.body48.cleanup54_crit_edge

for.body48.cleanup54_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body48

cleanup54:                                        ; preds = %for.body48.cleanup54_crit_edge, %for.inc.cleanup54_crit_edge, %cleanup.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup.cleanup54_crit_edge ], [ 0, %entry.cleanup54_crit_edge ], [ %ret.0, %for.body48.cleanup54_crit_edge ], [ 0, %for.inc.cleanup54_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcmgpio_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %base = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call, i32 0, i32 1, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call, i32 0, i32 1, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %3 to i32
  %div = sdiv i32 %1, %conv
  %add = add i32 %1, %conv
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, i32 noundef %div, i32 noundef %1, i32 noundef %add) #8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !1256
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !1256
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %add.ptr15 = getelementptr i8, ptr %13, i32 88
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !1256
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %add.ptr18 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #8, !srcloc !1256
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, i32 noundef %7, i32 noundef %11, i32 noundef %15, i32 noundef %19) #8
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 28
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !1256
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  %add.ptr24 = getelementptr i8, ptr %25, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #8, !srcloc !1256
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  %add.ptr27 = getelementptr i8, ptr %29, i32 36
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #8, !srcloc !1256
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call, align 4
  %add.ptr30 = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #8, !srcloc !1256
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, i32 noundef %23, i32 noundef %27, i32 noundef %31, i32 noundef %35) #8
  %36 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call, align 4
  %add.ptr33 = getelementptr i8, ptr %37, i32 40
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !1256
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call, align 4
  %add.ptr36 = getelementptr i8, ptr %41, i32 44
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #8, !srcloc !1256
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %44 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call, align 4
  %add.ptr39 = getelementptr i8, ptr %45, i32 64
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #8, !srcloc !1256
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %48 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call, align 4
  %add.ptr42 = getelementptr i8, ptr %49, i32 76
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #8, !srcloc !1256
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, i32 noundef %39, i32 noundef %43, i32 noundef %47, i32 noundef %51) #8
  %52 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call, align 4
  %add.ptr45 = getelementptr i8, ptr %53, i32 20
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #8, !srcloc !1256
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %56 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call, align 4
  %add.ptr48 = getelementptr i8, ptr %57, i32 92
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #8, !srcloc !1256
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %60 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call, align 4
  %add.ptr51 = getelementptr i8, ptr %61, i32 96
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #8, !srcloc !1256
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %55, i32 noundef %59, i32 noundef %63) #8
  %64 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call, align 4
  %add.ptr54 = getelementptr i8, ptr %65, i32 48
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #8, !srcloc !1256
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %68 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call, align 4
  %add.ptr57 = getelementptr i8, ptr %69, i32 52
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #8, !srcloc !1256
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %72 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call, align 4
  %add.ptr60 = getelementptr i8, ptr %73, i32 56
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #8, !srcloc !1256
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %76 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call, align 4
  %add.ptr63 = getelementptr i8, ptr %77, i32 60
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #8, !srcloc !1256
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, i32 noundef %67, i32 noundef %71, i32 noundef %75, i32 noundef %79) #8
  %80 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call, align 4
  %add.ptr66 = getelementptr i8, ptr %81, i32 80
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #8, !srcloc !1256
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %84 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call, align 4
  %add.ptr69 = getelementptr i8, ptr %85, i32 84
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #8, !srcloc !1256
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef %83, i32 noundef %87) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcmgpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call1 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %direction_input = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %direction_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %direction_input, align 4
  %call2 = tail call i32 %3(ptr noundef %chip, i32 noundef %offset) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcmgpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_direction_output.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_direction_output, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_direction_output.__UNIQUE_ID_ddebug227, ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %offset, i32 noundef %value) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, %offset
  %call5 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %direction_output = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %direction_output, align 4
  %call9 = tail call i32 %5(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcmgpio_gpio_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_gpio_request.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_gpio_request, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_gpio_request.__UNIQUE_ID_ddebug228, ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %offset) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, %offset
  %call5 = tail call i32 @pinctrl_gpio_request(i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %request = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request, align 4
  %call9 = tail call i32 %5(ptr noundef %chip, i32 noundef %offset) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcmgpio_gpio_free(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_gpio_free.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_gpio_free, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_gpio_free.__UNIQUE_ID_ddebug229, ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %offset) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, %offset
  tail call void @pinctrl_gpio_free(i32 noundef %add) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcmgpio_irq_startup(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_irq_startup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_irq_startup, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_irq_startup.__UNIQUE_ID_ddebug241, ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef %3, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i, align 4
  %add.i = add i32 %11, %3
  %call1.i = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.npcmgpio_direction_input.exit_crit_edge

do.end.npcmgpio_direction_input.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %npcmgpio_direction_input.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %direction_input.i = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %direction_input.i, align 4
  %call2.i = tail call i32 %13(ptr noundef %1, i32 noundef %3) #8
  br label %npcmgpio_direction_input.exit

npcmgpio_direction_input.exit:                    ; preds = %if.end.i, %do.end.npcmgpio_direction_input.exit_crit_edge
  %14 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip_data.i, align 4
  %call1.i13 = tail call ptr @gpiochip_get_data(ptr noundef %15) #8
  %16 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_irq_ack.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_irq_startup, %npcmgpio_irq_ack.exit)) #8
          to label %if.then.i [label %npcmgpio_irq_ack.exit], !srcloc !1258

if.then.i:                                        ; preds = %npcmgpio_direction_input.exit
  call void @__sanitizer_cov_trace_pc() #10
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %18 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %irq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_irq_ack.__UNIQUE_ID_ddebug238, ptr noundef %21, ptr noundef nonnull @.str.38, i32 noundef %17, i32 noundef %23) #8
  br label %npcmgpio_irq_ack.exit

npcmgpio_irq_ack.exit:                            ; preds = %if.then.i, %npcmgpio_direction_input.exit
  %shl.i = shl nuw i32 1, %17
  %24 = ptrtoint ptr %call1.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call1.i13, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #8, !srcloc !1260
  %27 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip_data.i, align 4
  %call1.i15 = tail call ptr @gpiochip_get_data(ptr noundef %28) #8
  %29 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hwirq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_irq_unmask.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_irq_startup, %npcmgpio_irq_unmask.exit)) #8
          to label %if.then.i19 [label %npcmgpio_irq_unmask.exit], !srcloc !1258

if.then.i19:                                      ; preds = %npcmgpio_irq_ack.exit
  call void @__sanitizer_cov_trace_pc() #10
  %chip.i17 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %31 = ptrtoint ptr %chip.i17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip.i17, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %irq.i18 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %35 = ptrtoint ptr %irq.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_irq_unmask.__UNIQUE_ID_ddebug240, ptr noundef %34, ptr noundef nonnull @.str.42, i32 noundef %30, i32 noundef %36) #8
  br label %npcmgpio_irq_unmask.exit

npcmgpio_irq_unmask.exit:                         ; preds = %if.then.i19, %npcmgpio_irq_ack.exit
  %shl.i20 = shl nuw i32 1, %30
  %37 = ptrtoint ptr %call1.i15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call1.i15, align 4
  %add.ptr.i21 = getelementptr i8, ptr %38, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %shl.i20) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %39) #8, !srcloc !1260
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcmgpio_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_irq_ack.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_irq_ack, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_irq_ack.__UNIQUE_ID_ddebug238, ptr noundef %7, ptr noundef nonnull @.str.38, i32 noundef %3, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shl = shl nuw i32 1, %3
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #8, !srcloc !1260
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcmgpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_irq_mask.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_irq_mask, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_irq_mask.__UNIQUE_ID_ddebug239, ptr noundef %7, ptr noundef nonnull @.str.40, i32 noundef %3, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shl = shl nuw i32 1, %3
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #8, !srcloc !1260
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcmgpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_irq_unmask.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_irq_unmask, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_irq_unmask.__UNIQUE_ID_ddebug240, ptr noundef %7, ptr noundef nonnull @.str.42, i32 noundef %3, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shl = shl nuw i32 1, %3
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #8, !srcloc !1260
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcmgpio_set_irq_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_set_irq_type, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug231, ptr noundef %7, ptr noundef nonnull @.str.44, i32 noundef %shl, i32 noundef %9, i32 noundef %type) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.body128 [
    i32 1, label %do.body6
    i32 2, label %do.body30
    i32 3, label %do.body57
    i32 8, label %do.body81
    i32 4, label %do.body105
  ]

do.body6:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_set_irq_type, %do.end25)) #8
          to label %if.then20 [label %do.end25], !srcloc !1258

if.then20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %chip21 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %11 = ptrtoint ptr %chip21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip21, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug232, ptr noundef %14, ptr noundef nonnull @.str.45) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %do.body6
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 44
  %bgpio_lock.i = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call1, i32 0, i32 1, i32 34
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !1256
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %18, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call2.i) #8
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call1, align 4
  %add.ptr28 = getelementptr i8, ptr %21, i32 8
  %call2.i221 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #8, !srcloc !1256
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and.i223 = and i32 %23, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i223) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %24) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call2.i221) #8
  br label %if.then155

do.body30:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_set_irq_type, %do.end49)) #8
          to label %if.then44 [label %do.end49], !srcloc !1258

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %chip45 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %25 = ptrtoint ptr %chip45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip45, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug233, ptr noundef %28, ptr noundef nonnull @.str.46) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body30
  %29 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call1, align 4
  %add.ptr52 = getelementptr i8, ptr %30, i32 44
  %bgpio_lock.i224 = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call1, i32 0, i32 1, i32 34
  %call2.i225 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i224) #8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #8, !srcloc !1256
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %neg.i226 = xor i32 %shl, -1
  %and.i227 = and i32 %32, %neg.i226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i227) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %33) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i224, i32 noundef %call2.i225) #8
  %34 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call1, align 4
  %add.ptr55 = getelementptr i8, ptr %35, i32 8
  %call2.i229 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i224) #8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #8, !srcloc !1256
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %or.i = or i32 %37, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %38) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i224, i32 noundef %call2.i229) #8
  br label %if.then155

do.body57:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_set_irq_type, %do.end76)) #8
          to label %if.then71 [label %do.end76], !srcloc !1258

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %chip72 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %39 = ptrtoint ptr %chip72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip72, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug234, ptr noundef %42, ptr noundef nonnull @.str.47) #8
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %do.body57
  %43 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call1, align 4
  %add.ptr79 = getelementptr i8, ptr %44, i32 44
  %bgpio_lock.i230 = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call1, i32 0, i32 1, i32 34
  %call2.i231 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i230) #8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #8, !srcloc !1256
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %or.i232 = or i32 %46, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i232) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %47) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i230, i32 noundef %call2.i231) #8
  br label %if.then155

do.body81:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_set_irq_type, %do.end100)) #8
          to label %if.then95 [label %do.end100], !srcloc !1258

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  %chip96 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %48 = ptrtoint ptr %chip96 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip96, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug235, ptr noundef %51, ptr noundef nonnull @.str.48) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then95, %do.body81
  %52 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call1, align 4
  %add.ptr103 = getelementptr i8, ptr %53, i32 8
  %bgpio_lock.i233 = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call1, i32 0, i32 1, i32 34
  %call2.i234 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i233) #8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #8, !srcloc !1256
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %or.i235 = or i32 %55, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i235) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %56) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i233, i32 noundef %call2.i234) #8
  %.pre = xor i32 %shl, -1
  br label %if.then149

do.body105:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_set_irq_type, %do.end124)) #8
          to label %if.then119 [label %do.end124], !srcloc !1258

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  %chip120 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %57 = ptrtoint ptr %chip120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip120, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug236, ptr noundef %60, ptr noundef nonnull @.str.49) #8
  br label %do.end124

do.end124:                                        ; preds = %if.then119, %do.body105
  %61 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call1, align 4
  %add.ptr127 = getelementptr i8, ptr %62, i32 8
  %bgpio_lock.i236 = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call1, i32 0, i32 1, i32 34
  %call2.i237 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i236) #8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #8, !srcloc !1256
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %neg.i238 = xor i32 %shl, -1
  %and.i239 = and i32 %64, %neg.i238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %65 = tail call i32 @llvm.bswap.i32(i32 %and.i239) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %65) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i236, i32 noundef %call2.i237) #8
  br label %if.then149

do.body128:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_set_irq_type, %cleanup)) #8
          to label %if.then142 [label %cleanup], !srcloc !1258

if.then142:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  %chip143 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %66 = ptrtoint ptr %chip143 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip143, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug237, ptr noundef %69, ptr noundef nonnull @.str.50) #8
  br label %cleanup

if.then149:                                       ; preds = %do.end124, %do.end100
  %neg.i242.pre-phi = phi i32 [ %.pre, %do.end100 ], [ %neg.i238, %do.end124 ]
  %70 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call1, align 4
  %add.ptr152 = getelementptr i8, ptr %71, i32 40
  %bgpio_lock.i240 = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call1, i32 0, i32 1, i32 34
  %call2.i241 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i240) #8
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr152) #8, !srcloc !1256
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and.i243 = and i32 %73, %neg.i242.pre-phi
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %74 = tail call i32 @llvm.bswap.i32(i32 %and.i243) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %74) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i240, i32 noundef %call2.i241) #8
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %75 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @handle_level_irq, ptr %handle_irq.i, align 4
  br label %cleanup

if.then155:                                       ; preds = %do.end76, %do.end49, %do.end25
  %78 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call1, align 4
  %add.ptr158 = getelementptr i8, ptr %79, i32 40
  %bgpio_lock.i244 = getelementptr inbounds %struct.npcm7xx_gpio, ptr %call1, i32 0, i32 1, i32 34
  %call2.i245 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i244) #8
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158) #8, !srcloc !1256
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %or.i246 = or i32 %81, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %82 = tail call i32 @llvm.bswap.i32(i32 %or.i246) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %82) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i244, i32 noundef %call2.i245) #8
  %common.i.i247 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %83 = ptrtoint ptr %common.i.i247 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %common.i.i247, align 4
  %handle_irq.i248 = getelementptr inbounds %struct.irq_desc, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %handle_irq.i248 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @handle_edge_irq, ptr %handle_irq.i248, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then155, %if.then149, %if.then142, %do.body128
  %retval.0 = phi i32 [ -22, %if.then142 ], [ 0, %if.then155 ], [ 0, %if.then149 ], [ -22, %do.body128 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_get_groups_count.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm7xx_get_groups_count, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm7xx_get_groups_count.__UNIQUE_ID_ddebug245, ptr noundef %1, ptr noundef nonnull @.str.296, i32 noundef 115) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 115
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @npcm7xx_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [115 x %struct.npcm7xx_group], ptr @npcm7xx_groups, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @npcm7xx_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %npins) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %npins1 = getelementptr [115 x %struct.npcm7xx_group], ptr @npcm7xx_groups, i32 0, i32 %selector, i32 2
  %0 = ptrtoint ptr %npins1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npins1, align 4
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %npins, align 4
  %pins3 = getelementptr [115 x %struct.npcm7xx_group], ptr @npcm7xx_groups, i32 0, i32 %selector, i32 1
  %3 = ptrtoint ptr %pins3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pins3, align 4
  %5 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcm7xx_pin_dbg_show(ptr nocapture noundef readnone %pctldev, ptr noundef %s, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.412, i32 noundef %offset) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_dt_node_to_map.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm7xx_dt_node_to_map, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %np_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np_config, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm7xx_dt_node_to_map.__UNIQUE_ID_ddebug246, ptr noundef %1, ptr noundef nonnull @.str.414, ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcm7xx_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %map, i32 noundef %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @npcm7xx_get_functions_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 115
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @npcm7xx_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %function) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [115 x %struct.npcm7xx_func], ptr @npcm7xx_funcs, i32 0, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @npcm7xx_get_function_groups(ptr nocapture noundef readnone %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %ngroups) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ngroups1 = getelementptr [115 x %struct.npcm7xx_func], ptr @npcm7xx_funcs, i32 0, i32 %function, i32 1
  %0 = ptrtoint ptr %ngroups1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups1, align 4
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ngroups, align 4
  %groups3 = getelementptr [115 x %struct.npcm7xx_func], ptr @npcm7xx_funcs, i32 0, i32 %function, i32 2
  %3 = ptrtoint ptr %groups3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %groups3, align 4
  %5 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_pinmux_set_mux.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm7xx_pinmux_set_mux, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr [115 x %struct.npcm7xx_group], ptr @npcm7xx_groups, i32 0, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm7xx_pinmux_set_mux.__UNIQUE_ID_ddebug247, ptr noundef %1, ptr noundef nonnull @.str.416, i32 noundef %function, i32 noundef %group, ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gcr_regmap = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %gcr_regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gcr_regmap, align 4
  %pins = getelementptr [115 x %struct.npcm7xx_group], ptr @npcm7xx_groups, i32 0, i32 %group, i32 1
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %npins = getelementptr [115 x %struct.npcm7xx_group], ptr @npcm7xx_groups, i32 0, i32 %group, i32 2
  %8 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins, align 4
  tail call fastcc void @npcm7xx_setfunc(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %group)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_gpio_request_enable(ptr noundef %pctldev, ptr noundef readonly %range, i32 noundef %offset) #2 align 64 {
entry:
  %offset.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %offset, ptr %offset.addr, align 4
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %tobool.not = icmp eq ptr %range, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.417) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 7
  %3 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gc, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.420) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %gcr_regmap = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %gcr_regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gcr_regmap, align 4
  call fastcc void @npcm7xx_setfunc(ptr noundef %8, ptr noundef nonnull %offset.addr, i32 noundef 1, i32 noundef 116)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end5, %do.end
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %do.end5 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcm7xx_gpio_request_free(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %domain = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !1261
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef %offset, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  br label %if.end

irq_find_mapping.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %irq_find_mapping.exit.if.end_crit_edge, label %if.then

irq_find_mapping.exit.if.end_crit_edge:           ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @irq_dispose_mapping(i32 noundef %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %irq_find_mapping.exit.if.end_crit_edge, %irq_find_mapping.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %div21 = lshr i32 %offset, 5
  %arrayidx = getelementptr %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 2, i32 %div21
  %ngpio = getelementptr %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 2, i32 %div21, i32 1, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  %rem = urem i32 %offset, %conv
  %shl = shl nuw i32 1, %rem
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm_gpio_set_direction.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm_gpio_set_direction, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr %struct.npcm7xx_pinctrl, ptr %call, i32 0, i32 2, i32 %div21, i32 1, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %conv8 = zext i1 %input to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm_gpio_set_direction.__UNIQUE_ID_ddebug248, ptr noundef %3, ptr noundef nonnull @.str.423, i32 noundef %offset, i32 noundef %conv8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br i1 %input, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %5, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !1260
  br label %if.end13

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr12 = getelementptr i8, ptr %5, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %7) #8, !srcloc !1260
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm7xx_setfunc(ptr noundef %gcr_regmap, ptr nocapture noundef readonly %pin, i32 noundef %pin_number, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pin_number)
  %cmp76 = icmp sgt i32 %pin_number, 0
  br i1 %cmp76, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %mode)
  %cmp2 = icmp eq i32 %mode, 116
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %pin, i32 %i.077
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  br i1 %cmp2, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %fn0 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 1
  %2 = ptrtoint ptr %fn0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fn0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mode)
  %cmp3 = icmp eq i32 %3, %mode
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false4

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %fn1 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 4
  %4 = ptrtoint ptr %fn1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mode)
  %cmp5 = icmp eq i32 %5, %mode
  br i1 %cmp5, label %lor.lhs.false4.if.then_crit_edge, label %lor.lhs.false6

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %fn2 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 7
  %6 = ptrtoint ptr %fn2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fn2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mode)
  %cmp7 = icmp eq i32 %7, %mode
  br i1 %cmp7, label %lor.lhs.false6.if.then_crit_edge, label %lor.lhs.false6.for.inc_crit_edge

lor.lhs.false6.for.inc_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %reg0 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 2
  %8 = ptrtoint ptr %reg0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %bit0 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 3
  %10 = ptrtoint ptr %bit0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit0, align 4
  %shl = shl nuw i32 1, %11
  %fn010 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 1
  %12 = ptrtoint ptr %fn010 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fn010, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mode)
  %cmp11 = icmp eq i32 %13, %mode
  %spec.select = select i1 %cmp11, i32 %shl, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %gcr_regmap, i32 noundef %9, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %reg1 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 5
  %14 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %if.end.if.end27_crit_edge, label %if.then15

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bit1 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 6
  %16 = ptrtoint ptr %bit1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bit1, align 4
  %shl17 = shl nuw i32 1, %17
  %fn118 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 4
  %18 = ptrtoint ptr %fn118 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fn118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %mode)
  %cmp19 = icmp eq i32 %19, %mode
  %spec.select72 = select i1 %cmp19, i32 %shl17, i32 0
  %call.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %gcr_regmap, i32 noundef %15, i32 noundef %shl17, i32 noundef %spec.select72, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then15, %if.end.if.end27_crit_edge
  %reg2 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 8
  %20 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28.not = icmp eq i32 %21, 0
  br i1 %tobool28.not, label %if.end27.for.inc_crit_edge, label %if.then29

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %bit2 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 9
  %22 = ptrtoint ptr %bit2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bit2, align 4
  %shl31 = shl nuw i32 1, %23
  %fn232 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %1, i32 7
  %24 = ptrtoint ptr %fn232 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fn232, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %mode)
  %cmp33 = icmp eq i32 %25, %mode
  %spec.select73 = select i1 %cmp33, i32 %shl31, i32 0
  %call.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %gcr_regmap, i32 noundef %21, i32 noundef %shl31, i32 noundef %spec.select73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.end27.for.inc_crit_edge, %lor.lhs.false6.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %pin_number
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_config_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %call1 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %div138 = lshr i32 %pin, 5
  %arrayidx = getelementptr %struct.npcm7xx_pinctrl, ptr %call1, i32 0, i32 2, i32 %div138
  %ngpio = getelementptr %struct.npcm7xx_pinctrl, ptr %call1, i32 0, i32 2, i32 %div138, i32 1, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %3 to i32
  %rem = urem i32 %pin, %conv
  %shl = shl nuw i32 1, %rem
  %trunc = trunc i32 %1 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.438)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %entry.sw.bb_crit_edge
    i8 5, label %entry.sw.bb_crit_edge178
    i8 3, label %entry.sw.bb_crit_edge179
    i8 17, label %entry.sw.bb29_crit_edge
    i8 12, label %entry.sw.bb29_crit_edge180
    i8 8, label %sw.bb58
    i8 6, label %sw.bb65
    i8 11, label %sw.bb70
    i8 9, label %sw.bb75
    i8 24, label %sw.bb81
  ]

entry.sw.bb29_crit_edge180:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb29

entry.sw.bb29_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb29

entry.sw.bb_crit_edge179:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge178:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge178, %entry.sw.bb_crit_edge179
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !1256
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and = and i32 %8, %shl
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 32
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !1256
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and6 = and i32 %12, %shl
  %13 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.439)
  switch i8 %trunc, label %sw.bb.sw.epilog.thread_crit_edge [
    i8 1, label %if.then
    i8 5, label %if.then11
    i8 3, label %if.then21
  ]

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool8.not = icmp eq i32 %and6, 0
  %phi.cast142 = zext i1 %tobool8.not to i32
  br i1 %tobool.not, label %if.then.sw.epilog_crit_edge, label %if.then.sw.epilog.thread_crit_edge

if.then.sw.epilog.thread_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool14.not = icmp eq i32 %and6, 0
  %phi.cast141 = zext i1 %tobool14.not to i32
  br i1 %tobool12.not, label %if.then11.sw.epilog.thread_crit_edge, label %if.then11.sw.epilog_crit_edge

if.then11.sw.epilog_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then11.sw.epilog.thread_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.then21:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool24 = icmp ne i32 %and6, 0
  %phi.cast140 = zext i1 %tobool24 to i32
  br i1 %tobool22.not, label %if.then21.sw.epilog_crit_edge, label %if.then21.sw.epilog.thread_crit_edge

if.then21.sw.epilog.thread_crit_edge:             ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.then21.sw.epilog_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry.sw.bb29_crit_edge, %entry.sw.bb29_crit_edge180
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %add.ptr31 = getelementptr i8, ptr %15, i32 88
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #8, !srcloc !1256
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and33 = and i32 %17, %shl
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %add.ptr35 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #8, !srcloc !1256
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and37 = and i32 %21, %shl
  %22 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.440)
  switch i8 %trunc, label %sw.bb29.sw.epilog.thread_crit_edge [
    i8 12, label %if.then40
    i8 17, label %if.then50
  ]

sw.bb29.sw.epilog.thread_crit_edge:               ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.then40:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool41.not = icmp eq i32 %and33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool43.not = icmp eq i32 %and37, 0
  %phi.cast139 = zext i1 %tobool43.not to i32
  br i1 %tobool41.not, label %if.then40.sw.epilog.thread_crit_edge, label %if.then40.sw.epilog_crit_edge

if.then40.sw.epilog_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then40.sw.epilog.thread_crit_edge:             ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.then50:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool51.not = icmp eq i32 %and33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool53 = icmp ne i32 %and37, 0
  %phi.cast = zext i1 %tobool53 to i32
  br i1 %tobool51.not, label %if.then50.sw.epilog_crit_edge, label %if.then50.sw.epilog.thread_crit_edge

if.then50.sw.epilog.thread_crit_edge:             ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.then50.sw.epilog_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %add.ptr60 = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #8, !srcloc !1256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %26 = xor i32 %25, -1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = lshr i32 %27, %rem
  %29 = and i32 %28, 1
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %add.ptr67 = getelementptr i8, ptr %31, i32 20
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #8, !srcloc !1256
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and69 = and i32 %33, %shl
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %add.ptr72 = getelementptr i8, ptr %35, i32 36
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #8, !srcloc !1256
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and74 = and i32 %37, %shl
  br label %sw.epilog

sw.bb75:                                          ; preds = %entry
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %arrayidx1.i = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %pin
  %38 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx1.i, align 4
  %and.i143 = and i32 %39, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i143)
  %tobool.not.i = icmp eq i32 %and.i143, 0
  br i1 %tobool.not.i, label %sw.bb75.if.then78_crit_edge, label %if.then.i

sw.bb75.if.then78_crit_edge:                      ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

if.then.i:                                        ; preds = %sw.bb75
  %ngpio.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %div138, i32 1, i32 20
  %40 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %41 to i32
  %rem.i = urem i32 %pin, %conv.i
  %shl.i = shl nuw i32 1, %rem.i
  %arrayidx.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %div138
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 96
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !1256
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and3.i = and i32 %45, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond.in.v.i = select i1 %tobool4.not.i, i32 8, i32 12
  %cond.in.i = lshr i32 %39, %cond.in.v.i
  %cond.i = and i32 %cond.in.i, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_get_drive_strength.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm7xx_config_get, %npcm7xx_get_drive_strength.exit)) #8
          to label %if.then13.i [label %npcm7xx_get_drive_strength.exit], !srcloc !1258

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %parent.i = getelementptr %struct.npcm7xx_pinctrl, ptr %call.i, i32 0, i32 2, i32 %div138, i32 1, i32 2
  %46 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm7xx_get_drive_strength.__UNIQUE_ID_ddebug242, ptr noundef %47, ptr noundef nonnull @.str.425, i32 noundef %pin, i32 noundef %and3.i, i32 noundef %cond.i) #8
  br label %npcm7xx_get_drive_strength.exit

npcm7xx_get_drive_strength.exit:                  ; preds = %if.then13.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool77.not = icmp eq i32 %cond.i, 0
  br i1 %tobool77.not, label %npcm7xx_get_drive_strength.exit.sw.epilog.thread_crit_edge, label %npcm7xx_get_drive_strength.exit.if.then78_crit_edge

npcm7xx_get_drive_strength.exit.if.then78_crit_edge: ; preds = %npcm7xx_get_drive_strength.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

npcm7xx_get_drive_strength.exit.sw.epilog.thread_crit_edge: ; preds = %npcm7xx_get_drive_strength.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.then78:                                        ; preds = %npcm7xx_get_drive_strength.exit.if.then78_crit_edge, %sw.bb75.if.then78_crit_edge
  %retval.0.i159 = phi i32 [ %cond.i, %npcm7xx_get_drive_strength.exit.if.then78_crit_edge ], [ -22, %sw.bb75.if.then78_crit_edge ]
  %shl.i144 = shl nsw i32 %retval.0.i159, 8
  %or.i = or i32 %shl.i144, 9
  %48 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

sw.bb81:                                          ; preds = %entry
  %gcr_regmap = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %call1, i32 0, i32 4
  %49 = ptrtoint ptr %gcr_regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gcr_regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %val.i, align 4, !annotation !1261
  %arrayidx.i145 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %pin
  %52 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i145, align 4
  %and.i146 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i147 = icmp eq i32 %and.i146, 0
  br i1 %tobool.not.i147, label %if.end.i, label %npcm7xx_get_slew_rate.exit

if.end.i:                                         ; preds = %sw.bb81
  %and4.i = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %npcm7xx_get_slew_rate.exit.thread163, label %npcm7xx_get_slew_rate.exit.thread

npcm7xx_get_slew_rate.exit.thread163:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

npcm7xx_get_slew_rate.exit.thread:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = call i32 @regmap_read(ptr noundef %50, i32 noundef 104, ptr noundef nonnull %val.i) #8
  %54 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i, align 4
  %and8.i = lshr i32 %55, 3
  %and8.lobit.i = and i32 %and8.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.then85

npcm7xx_get_slew_rate.exit:                       ; preds = %sw.bb81
  %56 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ngpio, align 4
  %conv.i149 = zext i16 %57 to i32
  %rem.i150 = urem i32 %pin, %conv.i149
  %shl.i151 = shl nuw i32 1, %rem.i150
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i152 = getelementptr i8, ptr %59, i32 92
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #8, !srcloc !1256
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and1.i = and i32 %61, %shl.i151
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and1.i)
  %cmp83 = icmp sgt i32 %and1.i, -1
  br i1 %cmp83, label %npcm7xx_get_slew_rate.exit.if.then85_crit_edge, label %npcm7xx_get_slew_rate.exit.cleanup_crit_edge

npcm7xx_get_slew_rate.exit.cleanup_crit_edge:     ; preds = %npcm7xx_get_slew_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

npcm7xx_get_slew_rate.exit.if.then85_crit_edge:   ; preds = %npcm7xx_get_slew_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

if.then85:                                        ; preds = %npcm7xx_get_slew_rate.exit.if.then85_crit_edge, %npcm7xx_get_slew_rate.exit.thread
  %retval.0.i154162 = phi i32 [ %and8.lobit.i, %npcm7xx_get_slew_rate.exit.thread ], [ %and1.i, %npcm7xx_get_slew_rate.exit.if.then85_crit_edge ]
  %shl.i155 = shl i32 %retval.0.i154162, 8
  %or.i156 = or i32 %shl.i155, 24
  %62 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.i156, ptr %config, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then85, %sw.bb70, %sw.bb65, %sw.bb58, %if.then50.sw.epilog_crit_edge, %if.then40.sw.epilog_crit_edge, %if.then21.sw.epilog_crit_edge, %if.then11.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %retval.0.i154162, %if.then85 ], [ %and74, %sw.bb70 ], [ %and69, %sw.bb65 ], [ %29, %sw.bb58 ], [ %phi.cast139, %if.then40.sw.epilog_crit_edge ], [ %phi.cast141, %if.then11.sw.epilog_crit_edge ], [ %phi.cast, %if.then50.sw.epilog_crit_edge ], [ %phi.cast142, %if.then.sw.epilog_crit_edge ], [ %phi.cast140, %if.then21.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool88.not = icmp eq i32 %rc.0, 0
  br i1 %tobool88.not, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %npcm7xx_get_drive_strength.exit.sw.epilog.thread_crit_edge, %if.then50.sw.epilog.thread_crit_edge, %if.then40.sw.epilog.thread_crit_edge, %sw.bb29.sw.epilog.thread_crit_edge, %if.then21.sw.epilog.thread_crit_edge, %if.then11.sw.epilog.thread_crit_edge, %if.then.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread, %sw.epilog.cleanup_crit_edge, %npcm7xx_get_slew_rate.exit.cleanup_crit_edge, %npcm7xx_get_slew_rate.exit.thread163, %if.then78, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.thread ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %npcm7xx_get_slew_rate.exit.cleanup_crit_edge ], [ 0, %if.then78 ], [ 0, %npcm7xx_get_slew_rate.exit.thread163 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_config_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %configs.addr.0 = phi ptr [ %configs, %entry ], [ %incdec.ptr, %while.body.while.cond_crit_edge ]
  %num_configs.addr.0 = phi i32 [ %num_configs, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs.addr.0)
  %tobool.not = icmp eq i32 %num_configs.addr.0, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %dec = add i32 %num_configs.addr.0, -1
  %incdec.ptr = getelementptr i32, ptr %configs.addr.0, i32 1
  %0 = ptrtoint ptr %configs.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %configs.addr.0, align 4
  %call1 = tail call fastcc i32 @npcm7xx_config_set_one(ptr noundef %call, i32 noundef %pin, i32 noundef %1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.body.while.cond_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %while.body.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @npcm7xx_config_set_one(ptr noundef %npcm, i32 noundef %pin, i32 noundef %config) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %config, 8
  %div116 = lshr i32 %pin, 5
  %arrayidx = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116
  %gc = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1
  %ngpio = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv2 = zext i16 %1 to i32
  %rem = urem i32 %pin, %conv2
  %shl = shl nuw i32 1, %rem
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_config_set_one.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm7xx_config_set_one, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %config, 255
  %parent = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm7xx_config_set_one.__UNIQUE_ID_ddebug249, ptr noundef %3, ptr noundef nonnull @.str.427, i32 noundef %and.i, i32 noundef %pin) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %trunc = trunc i32 %config to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.441)
  switch i8 %trunc, label %do.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb12
    i8 5, label %sw.bb19
    i8 12, label %sw.bb26
    i8 17, label %sw.bb35
    i8 8, label %sw.bb45
    i8 6, label %sw.bb49
    i8 11, label %sw.bb53
    i8 24, label %sw.bb57
    i8 9, label %sw.bb60
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 28
  %bgpio_lock.i = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1, i32 34
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !1256
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %neg.i = xor i32 %shl, -1
  %and.i117 = and i32 %8, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i117) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call2.i) #8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 32
  %call2.i119 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !1256
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %and.i121 = and i32 %13, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i121) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %14) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call2.i119) #8
  br label %cleanup

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %add.ptr15 = getelementptr i8, ptr %16, i32 28
  %bgpio_lock.i122 = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1, i32 34
  %call2.i123 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i122) #8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !1256
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %neg.i124 = xor i32 %shl, -1
  %and.i125 = and i32 %18, %neg.i124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i125) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %19) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i122, i32 noundef %call2.i123) #8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %add.ptr18 = getelementptr i8, ptr %21, i32 32
  %call2.i127 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i122) #8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #8, !srcloc !1256
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %or.i = or i32 %23, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %24) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i122, i32 noundef %call2.i127) #8
  br label %cleanup

sw.bb19:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %add.ptr22 = getelementptr i8, ptr %26, i32 32
  %bgpio_lock.i128 = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1, i32 34
  %call2.i129 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i128) #8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #8, !srcloc !1256
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %neg.i130 = xor i32 %shl, -1
  %and.i131 = and i32 %28, %neg.i130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i131) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %29) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i128, i32 noundef %call2.i129) #8
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %add.ptr25 = getelementptr i8, ptr %31, i32 28
  %call2.i133 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i128) #8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !1256
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %or.i134 = or i32 %33, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i134) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %34) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i128, i32 noundef %call2.i133) #8
  br label %cleanup

sw.bb26:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %add.ptr28 = getelementptr i8, ptr %36, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %37) #8, !srcloc !1260
  %direction_input = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 7
  %38 = ptrtoint ptr %direction_input to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %direction_input, align 4
  %40 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ngpio, align 4
  %conv32 = zext i16 %41 to i32
  %rem33 = urem i32 %pin, %conv32
  %call34 = tail call i32 %39(ptr noundef %gc, i32 noundef %rem33) #8
  br label %cleanup

sw.bb35:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %add.ptr37 = getelementptr i8, ptr %43, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %44 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %44) #8, !srcloc !1260
  %direction_output = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 8
  %45 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %direction_output, align 4
  %47 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ngpio, align 4
  %conv41 = zext i16 %48 to i32
  %rem42 = urem i32 %pin, %conv41
  %conv43 = and i32 %shr.i, 65535
  %call44 = tail call i32 %46(ptr noundef %gc, i32 noundef %rem42, i32 noundef %conv43) #8
  br label %cleanup

sw.bb45:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %add.ptr48 = getelementptr i8, ptr %50, i32 20
  %bgpio_lock.i135 = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1, i32 34
  %call2.i136 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i135) #8
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #8, !srcloc !1256
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %neg.i137 = xor i32 %shl, -1
  %and.i138 = and i32 %52, %neg.i137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %53 = tail call i32 @llvm.bswap.i32(i32 %and.i138) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %53) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i135, i32 noundef %call2.i136) #8
  br label %cleanup

sw.bb49:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %add.ptr52 = getelementptr i8, ptr %55, i32 20
  %bgpio_lock.i139 = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1, i32 34
  %call2.i140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i139) #8
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #8, !srcloc !1256
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %or.i141 = or i32 %57, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i141) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %58) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i139, i32 noundef %call2.i140) #8
  br label %cleanup

sw.bb53:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %add.ptr56 = getelementptr i8, ptr %60, i32 36
  %bgpio_lock.i142 = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1, i32 34
  %call2.i143 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i142) #8
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #8, !srcloc !1256
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %or.i144 = or i32 %62, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i144) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %63) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i142, i32 noundef %call2.i143) #8
  br label %cleanup

sw.bb57:                                          ; preds = %do.end
  %gcr_regmap = getelementptr inbounds %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 4
  %64 = ptrtoint ptr %gcr_regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gcr_regmap, align 4
  %66 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ngpio, align 4
  %conv.i = zext i16 %67 to i32
  %rem.i = urem i32 %pin, %conv.i
  %shl.i = shl nuw i32 1, %rem.i
  %arrayidx.i = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %pin
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %and.i145 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool.not.i = icmp eq i32 %and.i145, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb57
  %trunc148 = trunc i32 %shr.i to i16
  %70 = zext i16 %trunc148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.442)
  switch i16 %trunc148, label %if.then.i.cleanup_crit_edge [
    i16 0, label %sw.bb.i
    i16 1, label %sw.bb2.i
  ]

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %72, i32 92
  %bgpio_lock.i.i = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1, i32 34
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i.i) #8
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !1256
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %74, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %75 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %75) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i.i, i32 noundef %call2.i.i) #8
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx, align 4
  %add.ptr5.i = getelementptr i8, ptr %77, i32 92
  %bgpio_lock.i25.i = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div116, i32 1, i32 34
  %call2.i26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i25.i) #8
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !1256
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %or.i.i = or i32 %79, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %80) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i25.i, i32 noundef %call2.i26.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb57
  %and8.i = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.cleanup_crit_edge, label %if.then10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i:                                      ; preds = %if.end.i
  %trunc149 = trunc i32 %shr.i to i16
  %81 = zext i16 %trunc149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.443)
  switch i16 %trunc149, label %if.then10.i.cleanup_crit_edge [
    i16 0, label %sw.bb11.i
    i16 1, label %sw.bb12.i
  ]

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb11.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 104, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb12.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i27.i = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 104, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb60:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv61 = and i32 %shr.i, 65535
  %call62 = tail call fastcc i32 @npcm7xx_set_drive_strength(ptr noundef %npcm, i32 noundef %pin, i32 noundef %conv61)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb60, %sw.bb12.i, %sw.bb11.i, %if.then10.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb2.i, %sw.bb.i, %if.then.i.cleanup_crit_edge, %sw.bb53, %sw.bb49, %sw.bb45, %sw.bb35, %sw.bb26, %sw.bb19, %sw.bb12, %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call62, %sw.bb60 ], [ -524, %do.end.cleanup_crit_edge ], [ 0, %sw.bb53 ], [ 0, %sw.bb49 ], [ 0, %sw.bb45 ], [ 0, %sw.bb35 ], [ 0, %sw.bb26 ], [ 0, %sw.bb19 ], [ 0, %sw.bb12 ], [ 0, %sw.bb ], [ 0, %sw.bb2.i ], [ 0, %sw.bb.i ], [ 0, %sw.bb12.i ], [ 0, %sw.bb11.i ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.then10.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @npcm7xx_set_drive_strength(ptr noundef %npcm, i32 noundef %pin, i32 noundef %nval) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div63 = lshr i32 %pin, 5
  %arrayidx = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div63
  %ngpio = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div63, i32 1, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  %rem = urem i32 %pin, %conv
  %shl = shl nuw i32 1, %rem
  %arrayidx1 = getelementptr [256 x %struct.npcm7xx_pincfg], ptr @pincfg, i32 0, i32 %pin
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %and = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nval)
  %tobool.not = icmp eq i32 %nval, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = lshr exact i32 %and, 8
  %and3 = and i32 %4, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %nval)
  %cmp = icmp eq i32 %and3, %nval
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_set_drive_strength.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm7xx_set_drive_strength, %do.end)) #8
          to label %if.then10 [label %do.end], !srcloc !1258

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div63, i32 1, i32 2
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm7xx_set_drive_strength.__UNIQUE_ID_ddebug243, ptr noundef %6, ptr noundef nonnull @.str.429, i32 noundef %pin, i32 noundef %nval) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 96
  %bgpio_lock.i = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div63, i32 1, i32 34
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !1256
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %10, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call2.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %12 = lshr i32 %3, 12
  %and15 = and i32 %12, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and15, i32 %nval)
  %cmp16 = icmp eq i32 %and15, %nval
  br i1 %cmp16, label %do.body19, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body19:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_set_drive_strength.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm7xx_set_drive_strength, %do.end38)) #8
          to label %if.then33 [label %do.end38], !srcloc !1258

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %parent35 = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div63, i32 1, i32 2
  %13 = ptrtoint ptr %parent35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm7xx_set_drive_strength.__UNIQUE_ID_ddebug244, ptr noundef %14, ptr noundef nonnull @.str.430, i32 noundef %pin, i32 noundef %nval) #8
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.body19
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %add.ptr41 = getelementptr i8, ptr %16, i32 96
  %bgpio_lock.i67 = getelementptr %struct.npcm7xx_pinctrl, ptr %npcm, i32 0, i32 2, i32 %div63, i32 1, i32 34
  %call2.i68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i67) #8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #8, !srcloc !1256
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %or.i = or i32 %18, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1259
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %19) #8, !srcloc !1260
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i67, i32 noundef %call2.i68) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.else.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end38 ], [ -524, %entry.cleanup_crit_edge ], [ -524, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcmgpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %sts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts) #8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 76
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !1256
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  %16 = ptrtoint ptr %sts to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sts, align 4
  %17 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call1, align 4
  %add.ptr5 = getelementptr i8, ptr %18, i32 64
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !1256
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !1257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcmgpio_irq_handler.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcmgpio_irq_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !1258

if.then:                                          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %23 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sts, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcmgpio_irq_handler.__UNIQUE_ID_ddebug230, ptr noundef %22, ptr noundef nonnull @.str.437, i32 noundef %24, i32 noundef %20) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %chained_irq_enter.exit
  %25 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sts, align 4
  %and = and i32 %26, %20
  store i32 %and, ptr %sts, align 4
  %call11 = call i32 @_find_next_bit_be(ptr noundef nonnull %sts, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call11)
  %cmp29 = icmp ult i32 %call11, 32
  br i1 %cmp29, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.030 = phi i32 [ %call11, %for.body.lr.ph ], [ %call13, %for.body.for.body_crit_edge ]
  %27 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %domain, align 4
  %call12 = call i32 @generic_handle_domain_irq(ptr noundef %28, i32 noundef %bit.030) #8
  %add = add nuw nsw i32 %bit.030, 1
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %sts, i32 noundef 32, i32 noundef %add) #8
  %cmp = icmp ult i32 %call13, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %29 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i25 = icmp eq ptr %30, null
  br i1 %tobool.not.i25, label %if.else.i26, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i26:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %31 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i26, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %32, %if.else.i26 ], [ %30, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 676)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 676)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !604, !605, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !843, !845, !847, !849, !851, !853, !855, !857, !859, !861, !863, !865, !867, !869, !871, !873, !875, !877, !879, !881, !883, !885, !887, !889, !891, !893, !895, !897, !899, !901, !903, !905, !907, !909, !911, !913, !915, !917, !919, !921, !923, !925, !927, !929, !931, !933, !935, !937, !939, !941, !943, !945, !947, !949, !951, !953, !955, !957, !958, !959, !961, !963, !965, !967, !969, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1011, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1037, !1039, !1041, !1043, !1045, !1047, !1049, !1051, !1053, !1055, !1057, !1059, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1091, !1093, !1095, !1097, !1099, !1101, !1103, !1105, !1107, !1109, !1111, !1113, !1115, !1117, !1119, !1121, !1123, !1125, !1127, !1129, !1131, !1133, !1135, !1137, !1139, !1141, !1143, !1145, !1147, !1149, !1151, !1153, !1155, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1171, !1173, !1175, !1177, !1179, !1181, !1183, !1185, !1187, !1189, !1191, !1193, !1195, !1196, !1197, !1199, !1201, !1202, !1203, !1204, !1206, !1207, !1208, !1210, !1211, !1212, !1214, !1216, !1217, !1218, !1220, !1221, !1222, !1224, !1225, !1226, !1228, !1229, !1231, !1232, !1234, !1235, !1236, !1237, !1239, !1240, !1241, !1243, !1244, !1245}
!llvm.module.flags = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!llvm.ident = !{!1255}

!0 = !{ptr @__initcall__kmod_pinctrl_npcm7xx__250_2063_npcm7xx_pinctrl_register3, !1, !"__initcall__kmod_pinctrl_npcm7xx__250_2063_npcm7xx_pinctrl_register3", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2063, i32 1}
!2 = !{ptr @__UNIQUE_ID_file251, !3, !"__UNIQUE_ID_file251", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2065, i32 1}
!4 = !{ptr @__UNIQUE_ID_license252, !3, !"__UNIQUE_ID_license252", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author253, !6, !"__UNIQUE_ID_author253", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2066, i32 1}
!7 = !{ptr @__UNIQUE_ID_author254, !8, !"__UNIQUE_ID_author254", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2067, i32 1}
!9 = !{ptr @__UNIQUE_ID_description255, !10, !"__UNIQUE_ID_description255", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2068, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2053, i32 11}
!13 = !{ptr @npcm7xx_pinctrl_driver, !14, !"npcm7xx_pinctrl_driver", i1 false, i1 false}
!14 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2050, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2015, i32 38}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2017, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @npcm7xx_pinctrl_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @npcm7xx_pinctrl_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2023, i32 3}
!27 = !{ptr @npcm7xx_pinctrl_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @npcm7xx_pinctrl_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2030, i32 3}
!31 = !{ptr @npcm7xx_pinctrl_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @npcm7xx_pinctrl_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2036, i32 3}
!35 = !{ptr @npcm7xx_pinctrl_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @npcm7xx_pinctrl_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2040, i32 2}
!39 = !{ptr @npcm7xx_pinctrl_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @npcm7xx_pinctrl_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1871, i32 28}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1874, i32 5}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @npcm7xx_gpio_of._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @npcm7xx_gpio_of._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1884, i32 5}
!50 = !{ptr @npcm7xx_gpio_of._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @npcm7xx_gpio_of._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1902, i32 5}
!54 = !{ptr @npcm7xx_gpio_of._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @npcm7xx_gpio_of._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1907, i32 15}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1910, i32 5}
!60 = !{ptr @npcm7xx_gpio_of._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @npcm7xx_gpio_of._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1926, i32 44}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 335, i32 10}
!66 = !{ptr @npcmgpio_irqchip, !67, !"npcmgpio_irqchip", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 334, i32 30}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 326, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @npcmgpio_irq_startup.__UNIQUE_ID_ddebug241, !69, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 292, i32 2}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @npcmgpio_irq_ack.__UNIQUE_ID_ddebug238, !74, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 304, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @npcmgpio_irq_mask.__UNIQUE_ID_ddebug239, !78, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 316, i32 2}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @npcmgpio_irq_unmask.__UNIQUE_ID_ddebug240, !82, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 244, i32 2}
!87 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug231, !86, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 248, i32 3}
!91 = !{ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug232, !90, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 253, i32 3}
!94 = !{ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug233, !93, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 258, i32 3}
!97 = !{ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug234, !96, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 262, i32 3}
!100 = !{ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug235, !99, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 266, i32 3}
!103 = !{ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug236, !102, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 270, i32 3}
!106 = !{ptr @npcmgpio_set_irq_type.__UNIQUE_ID_ddebug237, !105, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 134, i32 16}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 138, i32 16}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 143, i32 16}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 148, i32 16}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 153, i32 16}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 157, i32 16}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 162, i32 16}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 186, i32 2}
!123 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @npcmgpio_direction_output.__UNIQUE_ID_ddebug227, !122, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 201, i32 2}
!127 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @npcmgpio_gpio_request.__UNIQUE_ID_ddebug228, !126, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 211, i32 2}
!131 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @npcmgpio_gpio_free.__UNIQUE_ID_ddebug229, !130, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!133 = !{ptr @npcm7xx_pinctrl_desc, !134, !"npcm7xx_pinctrl_desc", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1852, i32 28}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1171, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1172, i32 2}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1173, i32 2}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1174, i32 2}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1175, i32 2}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1176, i32 2}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1177, i32 2}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1178, i32 2}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1179, i32 2}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1180, i32 2}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1181, i32 2}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1182, i32 2}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1183, i32 2}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1184, i32 2}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1185, i32 2}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1186, i32 2}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1187, i32 2}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1188, i32 2}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1189, i32 2}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1190, i32 2}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1191, i32 2}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1192, i32 2}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1193, i32 2}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1194, i32 2}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1195, i32 2}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1196, i32 2}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1197, i32 2}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1198, i32 2}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1199, i32 2}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1200, i32 2}
!195 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1201, i32 2}
!197 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1202, i32 2}
!199 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1204, i32 2}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1205, i32 2}
!203 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1206, i32 2}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1207, i32 2}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1208, i32 2}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1209, i32 2}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1210, i32 2}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1211, i32 2}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1212, i32 2}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1213, i32 2}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1214, i32 2}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1215, i32 2}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1216, i32 2}
!225 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1217, i32 2}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1218, i32 2}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1219, i32 2}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1220, i32 2}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1221, i32 2}
!235 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1222, i32 2}
!237 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1223, i32 2}
!239 = !{ptr @.str.116, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1224, i32 2}
!241 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1225, i32 2}
!243 = !{ptr @.str.118, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1226, i32 2}
!245 = !{ptr @.str.119, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1227, i32 2}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1228, i32 2}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1229, i32 2}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1230, i32 2}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1231, i32 2}
!255 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1232, i32 2}
!257 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1233, i32 2}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1235, i32 2}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1236, i32 2}
!263 = !{ptr @.str.128, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1237, i32 2}
!265 = !{ptr @.str.129, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1238, i32 2}
!267 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1239, i32 2}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1240, i32 2}
!271 = !{ptr @.str.132, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1241, i32 2}
!273 = !{ptr @.str.133, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1242, i32 2}
!275 = !{ptr @.str.134, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1243, i32 2}
!277 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1244, i32 2}
!279 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1245, i32 2}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1246, i32 2}
!283 = !{ptr @.str.138, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1247, i32 2}
!285 = !{ptr @.str.139, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1248, i32 2}
!287 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1249, i32 2}
!289 = !{ptr @.str.141, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1250, i32 2}
!291 = !{ptr @.str.142, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1251, i32 2}
!293 = !{ptr @.str.143, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1252, i32 2}
!295 = !{ptr @.str.144, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1253, i32 2}
!297 = !{ptr @.str.145, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1254, i32 2}
!299 = !{ptr @.str.146, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1255, i32 2}
!301 = !{ptr @.str.147, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1256, i32 2}
!303 = !{ptr @.str.148, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1257, i32 2}
!305 = !{ptr @.str.149, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1258, i32 2}
!307 = !{ptr @.str.150, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1259, i32 2}
!309 = !{ptr @.str.151, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1260, i32 2}
!311 = !{ptr @.str.152, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1261, i32 2}
!313 = !{ptr @.str.153, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1262, i32 2}
!315 = !{ptr @.str.154, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1263, i32 2}
!317 = !{ptr @.str.155, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1264, i32 2}
!319 = !{ptr @.str.156, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1265, i32 2}
!321 = !{ptr @.str.157, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1266, i32 2}
!323 = !{ptr @.str.158, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1268, i32 2}
!325 = !{ptr @.str.159, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1269, i32 2}
!327 = !{ptr @.str.160, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1270, i32 2}
!329 = !{ptr @.str.161, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1271, i32 2}
!331 = !{ptr @.str.162, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1272, i32 2}
!333 = !{ptr @.str.163, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1273, i32 2}
!335 = !{ptr @.str.164, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1274, i32 2}
!337 = !{ptr @.str.165, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1275, i32 2}
!339 = !{ptr @.str.166, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1276, i32 2}
!341 = !{ptr @.str.167, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1277, i32 2}
!343 = !{ptr @.str.168, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1278, i32 2}
!345 = !{ptr @.str.169, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1279, i32 2}
!347 = !{ptr @.str.170, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1280, i32 2}
!349 = !{ptr @.str.171, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1281, i32 2}
!351 = !{ptr @.str.172, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1282, i32 2}
!353 = !{ptr @.str.173, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1283, i32 2}
!355 = !{ptr @.str.174, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1284, i32 2}
!357 = !{ptr @.str.175, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1285, i32 2}
!359 = !{ptr @.str.176, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1286, i32 2}
!361 = !{ptr @.str.177, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1287, i32 2}
!363 = !{ptr @.str.178, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1288, i32 2}
!365 = !{ptr @.str.179, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1289, i32 2}
!367 = !{ptr @.str.180, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1290, i32 2}
!369 = !{ptr @.str.181, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1291, i32 2}
!371 = !{ptr @.str.182, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1292, i32 2}
!373 = !{ptr @.str.183, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1293, i32 2}
!375 = !{ptr @.str.184, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1294, i32 2}
!377 = !{ptr @.str.185, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1295, i32 2}
!379 = !{ptr @.str.186, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1296, i32 2}
!381 = !{ptr @.str.187, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1297, i32 2}
!383 = !{ptr @.str.188, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1298, i32 2}
!385 = !{ptr @.str.189, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1299, i32 2}
!387 = !{ptr @.str.190, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1301, i32 2}
!389 = !{ptr @.str.191, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1302, i32 2}
!391 = !{ptr @.str.192, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1303, i32 2}
!393 = !{ptr @.str.193, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1304, i32 2}
!395 = !{ptr @.str.194, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1305, i32 2}
!397 = !{ptr @.str.195, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1306, i32 2}
!399 = !{ptr @.str.196, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1307, i32 2}
!401 = !{ptr @.str.197, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1308, i32 2}
!403 = !{ptr @.str.198, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1309, i32 2}
!405 = !{ptr @.str.199, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1310, i32 2}
!407 = !{ptr @.str.200, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1311, i32 2}
!409 = !{ptr @.str.201, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1312, i32 2}
!411 = !{ptr @.str.202, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1313, i32 2}
!413 = !{ptr @.str.203, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1314, i32 2}
!415 = !{ptr @.str.204, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1315, i32 2}
!417 = !{ptr @.str.205, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1316, i32 2}
!419 = !{ptr @.str.206, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1317, i32 2}
!421 = !{ptr @.str.207, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1318, i32 2}
!423 = !{ptr @.str.208, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1319, i32 2}
!425 = !{ptr @.str.209, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1320, i32 2}
!427 = !{ptr @.str.210, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1321, i32 2}
!429 = !{ptr @.str.211, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1322, i32 2}
!431 = !{ptr @.str.212, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1323, i32 2}
!433 = !{ptr @.str.213, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1324, i32 2}
!435 = !{ptr @.str.214, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1325, i32 2}
!437 = !{ptr @.str.215, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1326, i32 2}
!439 = !{ptr @.str.216, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1327, i32 2}
!441 = !{ptr @.str.217, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1328, i32 2}
!443 = !{ptr @.str.218, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1329, i32 2}
!445 = !{ptr @.str.219, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1330, i32 2}
!447 = !{ptr @.str.220, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1331, i32 2}
!449 = !{ptr @.str.221, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1332, i32 2}
!451 = !{ptr @.str.222, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1334, i32 2}
!453 = !{ptr @.str.223, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1335, i32 2}
!455 = !{ptr @.str.224, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1336, i32 2}
!457 = !{ptr @.str.225, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1337, i32 2}
!459 = !{ptr @.str.226, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1338, i32 2}
!461 = !{ptr @.str.227, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1339, i32 2}
!463 = !{ptr @.str.228, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1340, i32 2}
!465 = !{ptr @.str.229, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1341, i32 2}
!467 = !{ptr @.str.230, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1342, i32 2}
!469 = !{ptr @.str.231, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1343, i32 2}
!471 = !{ptr @.str.232, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1344, i32 2}
!473 = !{ptr @.str.233, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1345, i32 2}
!475 = !{ptr @.str.234, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1346, i32 2}
!477 = !{ptr @.str.235, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1347, i32 2}
!479 = !{ptr @.str.236, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1348, i32 2}
!481 = !{ptr @.str.237, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1349, i32 2}
!483 = !{ptr @.str.238, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1350, i32 2}
!485 = !{ptr @.str.239, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1351, i32 2}
!487 = !{ptr @.str.240, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1352, i32 2}
!489 = !{ptr @.str.241, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1353, i32 2}
!491 = !{ptr @.str.242, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1354, i32 2}
!493 = !{ptr @.str.243, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1355, i32 2}
!495 = !{ptr @.str.244, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1356, i32 2}
!497 = !{ptr @.str.245, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1357, i32 2}
!499 = !{ptr @.str.246, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1358, i32 2}
!501 = !{ptr @.str.247, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1359, i32 2}
!503 = !{ptr @.str.248, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1360, i32 2}
!505 = !{ptr @.str.249, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1361, i32 2}
!507 = !{ptr @.str.250, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1362, i32 2}
!509 = !{ptr @.str.251, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1363, i32 2}
!511 = !{ptr @.str.252, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1364, i32 2}
!513 = !{ptr @.str.253, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1365, i32 2}
!515 = !{ptr @.str.254, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1367, i32 2}
!517 = !{ptr @.str.255, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1368, i32 2}
!519 = !{ptr @.str.256, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1369, i32 2}
!521 = !{ptr @.str.257, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1370, i32 2}
!523 = !{ptr @.str.258, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1371, i32 2}
!525 = !{ptr @.str.259, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1372, i32 2}
!527 = !{ptr @.str.260, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1373, i32 2}
!529 = !{ptr @.str.261, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1374, i32 2}
!531 = !{ptr @.str.262, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1375, i32 2}
!533 = !{ptr @.str.263, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1376, i32 2}
!535 = !{ptr @.str.264, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1377, i32 2}
!537 = !{ptr @.str.265, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1378, i32 2}
!539 = !{ptr @.str.266, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1379, i32 2}
!541 = !{ptr @.str.267, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1380, i32 2}
!543 = !{ptr @.str.268, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1381, i32 2}
!545 = !{ptr @.str.269, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1382, i32 2}
!547 = !{ptr @.str.270, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1383, i32 2}
!549 = !{ptr @.str.271, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1384, i32 2}
!551 = !{ptr @.str.272, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1385, i32 2}
!553 = !{ptr @.str.273, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1386, i32 2}
!555 = !{ptr @.str.274, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1387, i32 2}
!557 = !{ptr @.str.275, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1388, i32 2}
!559 = !{ptr @.str.276, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1389, i32 2}
!561 = !{ptr @.str.277, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1390, i32 2}
!563 = !{ptr @.str.278, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1391, i32 2}
!565 = !{ptr @.str.279, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1392, i32 2}
!567 = !{ptr @.str.280, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1393, i32 2}
!569 = !{ptr @.str.281, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1394, i32 2}
!571 = !{ptr @.str.282, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1395, i32 2}
!573 = !{ptr @.str.283, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1396, i32 2}
!575 = !{ptr @.str.284, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1397, i32 2}
!577 = !{ptr @.str.285, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1398, i32 2}
!579 = !{ptr @.str.286, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1400, i32 2}
!581 = !{ptr @.str.287, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1401, i32 2}
!583 = !{ptr @.str.288, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1402, i32 2}
!585 = !{ptr @.str.289, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1403, i32 2}
!587 = !{ptr @.str.290, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1404, i32 2}
!589 = !{ptr @.str.291, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1405, i32 2}
!591 = !{ptr @.str.292, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1406, i32 2}
!593 = !{ptr @.str.293, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1407, i32 2}
!595 = !{ptr @.str.294, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1408, i32 2}
!597 = !{ptr @npcm7xx_pins, !598, !"npcm7xx_pins", i1 false, i1 false}
!598 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1170, i32 38}
!599 = !{ptr @npcm7xx_pinctrl_ops, !600, !"npcm7xx_pinctrl_ops", i1 false, i1 false}
!600 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1604, i32 33}
!601 = !{ptr @.str.295, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1564, i32 2}
!603 = !{ptr @.str.296, !602, !"<string literal>", i1 false, i1 false}
!604 = !{ptr @npcm7xx_get_groups_count.__UNIQUE_ID_ddebug245, !602, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!605 = !{ptr @.str.297, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 648, i32 2}
!607 = !{ptr @.str.298, !606, !"<string literal>", i1 false, i1 false}
!608 = !{ptr @.str.299, !606, !"<string literal>", i1 false, i1 false}
!609 = !{ptr @.str.300, !606, !"<string literal>", i1 false, i1 false}
!610 = !{ptr @.str.301, !606, !"<string literal>", i1 false, i1 false}
!611 = !{ptr @.str.302, !606, !"<string literal>", i1 false, i1 false}
!612 = !{ptr @.str.303, !606, !"<string literal>", i1 false, i1 false}
!613 = !{ptr @.str.304, !606, !"<string literal>", i1 false, i1 false}
!614 = !{ptr @.str.305, !606, !"<string literal>", i1 false, i1 false}
!615 = !{ptr @.str.306, !606, !"<string literal>", i1 false, i1 false}
!616 = !{ptr @.str.307, !606, !"<string literal>", i1 false, i1 false}
!617 = !{ptr @.str.308, !606, !"<string literal>", i1 false, i1 false}
!618 = !{ptr @.str.309, !606, !"<string literal>", i1 false, i1 false}
!619 = !{ptr @.str.310, !606, !"<string literal>", i1 false, i1 false}
!620 = !{ptr @.str.311, !606, !"<string literal>", i1 false, i1 false}
!621 = !{ptr @.str.312, !606, !"<string literal>", i1 false, i1 false}
!622 = !{ptr @.str.313, !606, !"<string literal>", i1 false, i1 false}
!623 = !{ptr @.str.314, !606, !"<string literal>", i1 false, i1 false}
!624 = !{ptr @.str.315, !606, !"<string literal>", i1 false, i1 false}
!625 = !{ptr @.str.316, !606, !"<string literal>", i1 false, i1 false}
!626 = !{ptr @.str.317, !606, !"<string literal>", i1 false, i1 false}
!627 = !{ptr @.str.318, !606, !"<string literal>", i1 false, i1 false}
!628 = !{ptr @.str.319, !606, !"<string literal>", i1 false, i1 false}
!629 = !{ptr @.str.320, !606, !"<string literal>", i1 false, i1 false}
!630 = !{ptr @.str.321, !606, !"<string literal>", i1 false, i1 false}
!631 = !{ptr @.str.322, !606, !"<string literal>", i1 false, i1 false}
!632 = !{ptr @.str.323, !606, !"<string literal>", i1 false, i1 false}
!633 = !{ptr @.str.324, !606, !"<string literal>", i1 false, i1 false}
!634 = !{ptr @.str.325, !606, !"<string literal>", i1 false, i1 false}
!635 = !{ptr @.str.326, !606, !"<string literal>", i1 false, i1 false}
!636 = !{ptr @.str.327, !606, !"<string literal>", i1 false, i1 false}
!637 = !{ptr @.str.328, !606, !"<string literal>", i1 false, i1 false}
!638 = !{ptr @.str.329, !606, !"<string literal>", i1 false, i1 false}
!639 = !{ptr @.str.330, !606, !"<string literal>", i1 false, i1 false}
!640 = !{ptr @.str.331, !606, !"<string literal>", i1 false, i1 false}
!641 = !{ptr @.str.332, !606, !"<string literal>", i1 false, i1 false}
!642 = !{ptr @.str.333, !606, !"<string literal>", i1 false, i1 false}
!643 = !{ptr @.str.334, !606, !"<string literal>", i1 false, i1 false}
!644 = !{ptr @.str.335, !606, !"<string literal>", i1 false, i1 false}
!645 = !{ptr @.str.336, !606, !"<string literal>", i1 false, i1 false}
!646 = !{ptr @.str.337, !606, !"<string literal>", i1 false, i1 false}
!647 = !{ptr @.str.338, !606, !"<string literal>", i1 false, i1 false}
!648 = !{ptr @.str.339, !606, !"<string literal>", i1 false, i1 false}
!649 = !{ptr @.str.340, !606, !"<string literal>", i1 false, i1 false}
!650 = !{ptr @.str.341, !606, !"<string literal>", i1 false, i1 false}
!651 = !{ptr @.str.342, !606, !"<string literal>", i1 false, i1 false}
!652 = !{ptr @.str.343, !606, !"<string literal>", i1 false, i1 false}
!653 = !{ptr @.str.344, !606, !"<string literal>", i1 false, i1 false}
!654 = !{ptr @.str.345, !606, !"<string literal>", i1 false, i1 false}
!655 = !{ptr @.str.346, !606, !"<string literal>", i1 false, i1 false}
!656 = !{ptr @.str.347, !606, !"<string literal>", i1 false, i1 false}
!657 = !{ptr @.str.348, !606, !"<string literal>", i1 false, i1 false}
!658 = !{ptr @.str.349, !606, !"<string literal>", i1 false, i1 false}
!659 = !{ptr @.str.350, !606, !"<string literal>", i1 false, i1 false}
!660 = !{ptr @.str.351, !606, !"<string literal>", i1 false, i1 false}
!661 = !{ptr @.str.352, !606, !"<string literal>", i1 false, i1 false}
!662 = !{ptr @.str.353, !606, !"<string literal>", i1 false, i1 false}
!663 = !{ptr @.str.354, !606, !"<string literal>", i1 false, i1 false}
!664 = !{ptr @.str.355, !606, !"<string literal>", i1 false, i1 false}
!665 = !{ptr @.str.356, !606, !"<string literal>", i1 false, i1 false}
!666 = !{ptr @.str.357, !606, !"<string literal>", i1 false, i1 false}
!667 = !{ptr @.str.358, !606, !"<string literal>", i1 false, i1 false}
!668 = !{ptr @.str.359, !606, !"<string literal>", i1 false, i1 false}
!669 = !{ptr @.str.360, !606, !"<string literal>", i1 false, i1 false}
!670 = !{ptr @.str.361, !606, !"<string literal>", i1 false, i1 false}
!671 = !{ptr @.str.362, !606, !"<string literal>", i1 false, i1 false}
!672 = !{ptr @.str.363, !606, !"<string literal>", i1 false, i1 false}
!673 = !{ptr @.str.364, !606, !"<string literal>", i1 false, i1 false}
!674 = !{ptr @.str.365, !606, !"<string literal>", i1 false, i1 false}
!675 = !{ptr @.str.366, !606, !"<string literal>", i1 false, i1 false}
!676 = !{ptr @.str.367, !606, !"<string literal>", i1 false, i1 false}
!677 = !{ptr @.str.368, !606, !"<string literal>", i1 false, i1 false}
!678 = !{ptr @.str.369, !606, !"<string literal>", i1 false, i1 false}
!679 = !{ptr @.str.370, !606, !"<string literal>", i1 false, i1 false}
!680 = !{ptr @.str.371, !606, !"<string literal>", i1 false, i1 false}
!681 = !{ptr @.str.372, !606, !"<string literal>", i1 false, i1 false}
!682 = !{ptr @.str.373, !606, !"<string literal>", i1 false, i1 false}
!683 = !{ptr @.str.374, !606, !"<string literal>", i1 false, i1 false}
!684 = !{ptr @.str.375, !606, !"<string literal>", i1 false, i1 false}
!685 = !{ptr @.str.376, !606, !"<string literal>", i1 false, i1 false}
!686 = !{ptr @.str.377, !606, !"<string literal>", i1 false, i1 false}
!687 = !{ptr @.str.378, !606, !"<string literal>", i1 false, i1 false}
!688 = !{ptr @.str.379, !606, !"<string literal>", i1 false, i1 false}
!689 = !{ptr @.str.380, !606, !"<string literal>", i1 false, i1 false}
!690 = !{ptr @.str.381, !606, !"<string literal>", i1 false, i1 false}
!691 = !{ptr @.str.382, !606, !"<string literal>", i1 false, i1 false}
!692 = !{ptr @.str.383, !606, !"<string literal>", i1 false, i1 false}
!693 = !{ptr @.str.384, !606, !"<string literal>", i1 false, i1 false}
!694 = !{ptr @.str.385, !606, !"<string literal>", i1 false, i1 false}
!695 = !{ptr @.str.386, !606, !"<string literal>", i1 false, i1 false}
!696 = !{ptr @.str.387, !606, !"<string literal>", i1 false, i1 false}
!697 = !{ptr @.str.388, !606, !"<string literal>", i1 false, i1 false}
!698 = !{ptr @.str.389, !606, !"<string literal>", i1 false, i1 false}
!699 = !{ptr @.str.390, !606, !"<string literal>", i1 false, i1 false}
!700 = !{ptr @.str.391, !606, !"<string literal>", i1 false, i1 false}
!701 = !{ptr @.str.392, !606, !"<string literal>", i1 false, i1 false}
!702 = !{ptr @.str.393, !606, !"<string literal>", i1 false, i1 false}
!703 = !{ptr @.str.394, !606, !"<string literal>", i1 false, i1 false}
!704 = !{ptr @.str.395, !606, !"<string literal>", i1 false, i1 false}
!705 = !{ptr @.str.396, !606, !"<string literal>", i1 false, i1 false}
!706 = !{ptr @.str.397, !606, !"<string literal>", i1 false, i1 false}
!707 = !{ptr @.str.398, !606, !"<string literal>", i1 false, i1 false}
!708 = !{ptr @.str.399, !606, !"<string literal>", i1 false, i1 false}
!709 = !{ptr @.str.400, !606, !"<string literal>", i1 false, i1 false}
!710 = !{ptr @.str.401, !606, !"<string literal>", i1 false, i1 false}
!711 = !{ptr @.str.402, !606, !"<string literal>", i1 false, i1 false}
!712 = !{ptr @.str.403, !606, !"<string literal>", i1 false, i1 false}
!713 = !{ptr @.str.404, !606, !"<string literal>", i1 false, i1 false}
!714 = !{ptr @.str.405, !606, !"<string literal>", i1 false, i1 false}
!715 = !{ptr @.str.406, !606, !"<string literal>", i1 false, i1 false}
!716 = !{ptr @.str.407, !606, !"<string literal>", i1 false, i1 false}
!717 = !{ptr @.str.408, !606, !"<string literal>", i1 false, i1 false}
!718 = !{ptr @.str.409, !606, !"<string literal>", i1 false, i1 false}
!719 = !{ptr @.str.410, !606, !"<string literal>", i1 false, i1 false}
!720 = !{ptr @.str.411, !606, !"<string literal>", i1 false, i1 false}
!721 = !{ptr @npcm7xx_groups, !722, !"npcm7xx_groups", i1 false, i1 false}
!722 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 645, i32 29}
!723 = !{ptr @smb0_pins, !724, !"smb0_pins", i1 false, i1 false}
!724 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 344, i32 18}
!725 = !{ptr @smb0b_pins, !726, !"smb0b_pins", i1 false, i1 false}
!726 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 345, i32 18}
!727 = !{ptr @smb0c_pins, !728, !"smb0c_pins", i1 false, i1 false}
!728 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 346, i32 18}
!729 = !{ptr @smb0d_pins, !730, !"smb0d_pins", i1 false, i1 false}
!730 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 347, i32 18}
!731 = !{ptr @smb0den_pins, !732, !"smb0den_pins", i1 false, i1 false}
!732 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 348, i32 18}
!733 = !{ptr @smb1_pins, !734, !"smb1_pins", i1 false, i1 false}
!734 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 350, i32 18}
!735 = !{ptr @smb1b_pins, !736, !"smb1b_pins", i1 false, i1 false}
!736 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 351, i32 18}
!737 = !{ptr @smb1c_pins, !738, !"smb1c_pins", i1 false, i1 false}
!738 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 352, i32 18}
!739 = !{ptr @smb1d_pins, !740, !"smb1d_pins", i1 false, i1 false}
!740 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 353, i32 18}
!741 = !{ptr @smb2_pins, !742, !"smb2_pins", i1 false, i1 false}
!742 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 355, i32 18}
!743 = !{ptr @smb2b_pins, !744, !"smb2b_pins", i1 false, i1 false}
!744 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 356, i32 18}
!745 = !{ptr @smb2c_pins, !746, !"smb2c_pins", i1 false, i1 false}
!746 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 357, i32 18}
!747 = !{ptr @smb2d_pins, !748, !"smb2d_pins", i1 false, i1 false}
!748 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 358, i32 18}
!749 = !{ptr @smb3_pins, !750, !"smb3_pins", i1 false, i1 false}
!750 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 360, i32 18}
!751 = !{ptr @smb3b_pins, !752, !"smb3b_pins", i1 false, i1 false}
!752 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 361, i32 18}
!753 = !{ptr @smb3c_pins, !754, !"smb3c_pins", i1 false, i1 false}
!754 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 362, i32 18}
!755 = !{ptr @smb3d_pins, !756, !"smb3d_pins", i1 false, i1 false}
!756 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 363, i32 18}
!757 = !{ptr @smb4_pins, !758, !"smb4_pins", i1 false, i1 false}
!758 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 365, i32 18}
!759 = !{ptr @smb4b_pins, !760, !"smb4b_pins", i1 false, i1 false}
!760 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 366, i32 18}
!761 = !{ptr @smb4c_pins, !762, !"smb4c_pins", i1 false, i1 false}
!762 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 367, i32 18}
!763 = !{ptr @smb4d_pins, !764, !"smb4d_pins", i1 false, i1 false}
!764 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 368, i32 18}
!765 = !{ptr @smb4den_pins, !766, !"smb4den_pins", i1 false, i1 false}
!766 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 369, i32 18}
!767 = !{ptr @smb5_pins, !768, !"smb5_pins", i1 false, i1 false}
!768 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 371, i32 18}
!769 = !{ptr @smb5b_pins, !770, !"smb5b_pins", i1 false, i1 false}
!770 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 372, i32 18}
!771 = !{ptr @smb5c_pins, !772, !"smb5c_pins", i1 false, i1 false}
!772 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 373, i32 18}
!773 = !{ptr @smb5d_pins, !774, !"smb5d_pins", i1 false, i1 false}
!774 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 374, i32 18}
!775 = !{ptr @ga20kbc_pins, !776, !"ga20kbc_pins", i1 false, i1 false}
!776 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 375, i32 18}
!777 = !{ptr @smb6_pins, !778, !"smb6_pins", i1 false, i1 false}
!778 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 377, i32 18}
!779 = !{ptr @smb7_pins, !780, !"smb7_pins", i1 false, i1 false}
!780 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 378, i32 18}
!781 = !{ptr @smb8_pins, !782, !"smb8_pins", i1 false, i1 false}
!782 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 379, i32 18}
!783 = !{ptr @smb9_pins, !784, !"smb9_pins", i1 false, i1 false}
!784 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 380, i32 18}
!785 = !{ptr @smb10_pins, !786, !"smb10_pins", i1 false, i1 false}
!786 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 381, i32 18}
!787 = !{ptr @smb11_pins, !788, !"smb11_pins", i1 false, i1 false}
!788 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 382, i32 18}
!789 = !{ptr @smb12_pins, !790, !"smb12_pins", i1 false, i1 false}
!790 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 383, i32 18}
!791 = !{ptr @smb13_pins, !792, !"smb13_pins", i1 false, i1 false}
!792 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 384, i32 18}
!793 = !{ptr @smb14_pins, !794, !"smb14_pins", i1 false, i1 false}
!794 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 385, i32 18}
!795 = !{ptr @smb15_pins, !796, !"smb15_pins", i1 false, i1 false}
!796 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 386, i32 18}
!797 = !{ptr @fanin0_pins, !798, !"fanin0_pins", i1 false, i1 false}
!798 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 388, i32 18}
!799 = !{ptr @fanin1_pins, !800, !"fanin1_pins", i1 false, i1 false}
!800 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 389, i32 18}
!801 = !{ptr @fanin2_pins, !802, !"fanin2_pins", i1 false, i1 false}
!802 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 390, i32 18}
!803 = !{ptr @fanin3_pins, !804, !"fanin3_pins", i1 false, i1 false}
!804 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 391, i32 18}
!805 = !{ptr @fanin4_pins, !806, !"fanin4_pins", i1 false, i1 false}
!806 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 392, i32 18}
!807 = !{ptr @fanin5_pins, !808, !"fanin5_pins", i1 false, i1 false}
!808 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 393, i32 18}
!809 = !{ptr @fanin6_pins, !810, !"fanin6_pins", i1 false, i1 false}
!810 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 394, i32 18}
!811 = !{ptr @fanin7_pins, !812, !"fanin7_pins", i1 false, i1 false}
!812 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 395, i32 18}
!813 = !{ptr @fanin8_pins, !814, !"fanin8_pins", i1 false, i1 false}
!814 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 396, i32 18}
!815 = !{ptr @fanin9_pins, !816, !"fanin9_pins", i1 false, i1 false}
!816 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 397, i32 18}
!817 = !{ptr @fanin10_pins, !818, !"fanin10_pins", i1 false, i1 false}
!818 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 398, i32 18}
!819 = !{ptr @fanin11_pins, !820, !"fanin11_pins", i1 false, i1 false}
!820 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 399, i32 18}
!821 = !{ptr @fanin12_pins, !822, !"fanin12_pins", i1 false, i1 false}
!822 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 400, i32 18}
!823 = !{ptr @fanin13_pins, !824, !"fanin13_pins", i1 false, i1 false}
!824 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 401, i32 18}
!825 = !{ptr @fanin14_pins, !826, !"fanin14_pins", i1 false, i1 false}
!826 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 402, i32 18}
!827 = !{ptr @fanin15_pins, !828, !"fanin15_pins", i1 false, i1 false}
!828 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 403, i32 18}
!829 = !{ptr @faninx_pins, !830, !"faninx_pins", i1 false, i1 false}
!830 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 404, i32 18}
!831 = !{ptr @pwm0_pins, !832, !"pwm0_pins", i1 false, i1 false}
!832 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 406, i32 18}
!833 = !{ptr @pwm1_pins, !834, !"pwm1_pins", i1 false, i1 false}
!834 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 407, i32 18}
!835 = !{ptr @pwm2_pins, !836, !"pwm2_pins", i1 false, i1 false}
!836 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 408, i32 18}
!837 = !{ptr @pwm3_pins, !838, !"pwm3_pins", i1 false, i1 false}
!838 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 409, i32 18}
!839 = !{ptr @pwm4_pins, !840, !"pwm4_pins", i1 false, i1 false}
!840 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 410, i32 18}
!841 = !{ptr @pwm5_pins, !842, !"pwm5_pins", i1 false, i1 false}
!842 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 411, i32 18}
!843 = !{ptr @pwm6_pins, !844, !"pwm6_pins", i1 false, i1 false}
!844 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 412, i32 18}
!845 = !{ptr @pwm7_pins, !846, !"pwm7_pins", i1 false, i1 false}
!846 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 413, i32 18}
!847 = !{ptr @rg1_pins, !848, !"rg1_pins", i1 false, i1 false}
!848 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 419, i32 18}
!849 = !{ptr @rg1mdio_pins, !850, !"rg1mdio_pins", i1 false, i1 false}
!850 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 422, i32 18}
!851 = !{ptr @rg2_pins, !852, !"rg2_pins", i1 false, i1 false}
!852 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 425, i32 18}
!853 = !{ptr @rg2mdio_pins, !854, !"rg2mdio_pins", i1 false, i1 false}
!854 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 428, i32 18}
!855 = !{ptr @ddr_pins, !856, !"ddr_pins", i1 false, i1 false}
!856 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 430, i32 18}
!857 = !{ptr @uart1_pins, !858, !"uart1_pins", i1 false, i1 false}
!858 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 415, i32 18}
!859 = !{ptr @uart2_pins, !860, !"uart2_pins", i1 false, i1 false}
!860 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 416, i32 18}
!861 = !{ptr @bmcuart0a_pins, !862, !"bmcuart0a_pins", i1 false, i1 false}
!862 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 462, i32 18}
!863 = !{ptr @bmcuart0b_pins, !864, !"bmcuart0b_pins", i1 false, i1 false}
!864 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 463, i32 18}
!865 = !{ptr @bmcuart1_pins, !866, !"bmcuart1_pins", i1 false, i1 false}
!866 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 465, i32 18}
!867 = !{ptr @iox1_pins, !868, !"iox1_pins", i1 false, i1 false}
!868 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 433, i32 18}
!869 = !{ptr @iox2_pins, !870, !"iox2_pins", i1 false, i1 false}
!870 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 435, i32 18}
!871 = !{ptr @ioxh_pins, !872, !"ioxh_pins", i1 false, i1 false}
!872 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 437, i32 18}
!873 = !{ptr @gspi_pins, !874, !"gspi_pins", i1 false, i1 false}
!874 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 479, i32 18}
!875 = !{ptr @mmc_pins, !876, !"mmc_pins", i1 false, i1 false}
!876 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 439, i32 18}
!877 = !{ptr @mmcwp_pins, !878, !"mmcwp_pins", i1 false, i1 false}
!878 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 440, i32 18}
!879 = !{ptr @mmccd_pins, !880, !"mmccd_pins", i1 false, i1 false}
!880 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 441, i32 18}
!881 = !{ptr @mmcrst_pins, !882, !"mmcrst_pins", i1 false, i1 false}
!882 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 442, i32 18}
!883 = !{ptr @mmc8_pins, !884, !"mmc8_pins", i1 false, i1 false}
!884 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 443, i32 18}
!885 = !{ptr @r1_pins, !886, !"r1_pins", i1 false, i1 false}
!886 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 446, i32 18}
!887 = !{ptr @r1err_pins, !888, !"r1err_pins", i1 false, i1 false}
!888 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 447, i32 18}
!889 = !{ptr @r1md_pins, !890, !"r1md_pins", i1 false, i1 false}
!890 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 448, i32 18}
!891 = !{ptr @r2_pins, !892, !"r2_pins", i1 false, i1 false}
!892 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 451, i32 18}
!893 = !{ptr @r2err_pins, !894, !"r2err_pins", i1 false, i1 false}
!894 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 452, i32 18}
!895 = !{ptr @r2md_pins, !896, !"r2md_pins", i1 false, i1 false}
!896 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 453, i32 18}
!897 = !{ptr @sd1_pins, !898, !"sd1_pins", i1 false, i1 false}
!898 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 455, i32 18}
!899 = !{ptr @sd1pwr_pins, !900, !"sd1pwr_pins", i1 false, i1 false}
!900 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 456, i32 18}
!901 = !{ptr @wdog1_pins, !902, !"wdog1_pins", i1 false, i1 false}
!902 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 458, i32 18}
!903 = !{ptr @wdog2_pins, !904, !"wdog2_pins", i1 false, i1 false}
!904 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 459, i32 18}
!905 = !{ptr @scipme_pins, !906, !"scipme_pins", i1 false, i1 false}
!906 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 468, i32 18}
!907 = !{ptr @sci_pins, !908, !"sci_pins", i1 false, i1 false}
!908 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 470, i32 18}
!909 = !{ptr @serirq_pins, !910, !"serirq_pins", i1 false, i1 false}
!910 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 472, i32 18}
!911 = !{ptr @jtag2_pins, !912, !"jtag2_pins", i1 false, i1 false}
!912 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 477, i32 18}
!913 = !{ptr @spix_pins, !914, !"spix_pins", i1 false, i1 false}
!914 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 481, i32 18}
!915 = !{ptr @spixcs1_pins, !916, !"spixcs1_pins", i1 false, i1 false}
!916 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 482, i32 18}
!917 = !{ptr @pspi1_pins, !918, !"pspi1_pins", i1 false, i1 false}
!918 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 484, i32 18}
!919 = !{ptr @pspi2_pins, !920, !"pspi2_pins", i1 false, i1 false}
!920 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 485, i32 18}
!921 = !{ptr @ddc_pins, !922, !"ddc_pins", i1 false, i1 false}
!922 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 495, i32 18}
!923 = !{ptr @clkreq_pins, !924, !"clkreq_pins", i1 false, i1 false}
!924 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 475, i32 18}
!925 = !{ptr @clkout_pins, !926, !"clkout_pins", i1 false, i1 false}
!926 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 474, i32 18}
!927 = !{ptr @spi3_pins, !928, !"spi3_pins", i1 false, i1 false}
!928 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 489, i32 18}
!929 = !{ptr @spi3cs1_pins, !930, !"spi3cs1_pins", i1 false, i1 false}
!930 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 490, i32 18}
!931 = !{ptr @spi3quad_pins, !932, !"spi3quad_pins", i1 false, i1 false}
!932 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 491, i32 18}
!933 = !{ptr @spi3cs2_pins, !934, !"spi3cs2_pins", i1 false, i1 false}
!934 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 492, i32 18}
!935 = !{ptr @spi3cs3_pins, !936, !"spi3cs3_pins", i1 false, i1 false}
!936 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 493, i32 18}
!937 = !{ptr @spi0cs1_pins, !938, !"spi0cs1_pins", i1 false, i1 false}
!938 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 487, i32 18}
!939 = !{ptr @lpc_pins, !940, !"lpc_pins", i1 false, i1 false}
!940 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 497, i32 18}
!941 = !{ptr @lpcclk_pins, !942, !"lpcclk_pins", i1 false, i1 false}
!942 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 498, i32 18}
!943 = !{ptr @espi_pins, !944, !"espi_pins", i1 false, i1 false}
!944 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 499, i32 18}
!945 = !{ptr @lkgpo0_pins, !946, !"lkgpo0_pins", i1 false, i1 false}
!946 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 501, i32 18}
!947 = !{ptr @lkgpo1_pins, !948, !"lkgpo1_pins", i1 false, i1 false}
!948 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 502, i32 18}
!949 = !{ptr @lkgpo2_pins, !950, !"lkgpo2_pins", i1 false, i1 false}
!950 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 503, i32 18}
!951 = !{ptr @nprd_smi_pins, !952, !"nprd_smi_pins", i1 false, i1 false}
!952 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 505, i32 18}
!953 = !{ptr @.str.412, !954, !"<string literal>", i1 false, i1 false}
!954 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1557, i32 16}
!955 = !{ptr @.str.413, !956, !"<string literal>", i1 false, i1 false}
!956 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1592, i32 2}
!957 = !{ptr @.str.414, !956, !"<string literal>", i1 false, i1 false}
!958 = !{ptr @npcm7xx_dt_node_to_map.__UNIQUE_ID_ddebug246, !956, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!959 = !{ptr @npcm7xx_pinmux_ops, !960, !"npcm7xx_pinmux_ops", i1 false, i1 false}
!960 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1704, i32 32}
!961 = !{ptr @npcm7xx_funcs, !962, !"npcm7xx_funcs", i1 false, i1 false}
!962 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 779, i32 28}
!963 = !{ptr @smb0_grp, !964, !"smb0_grp", i1 false, i1 false}
!964 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 662, i32 1}
!965 = !{ptr @smb0b_grp, !966, !"smb0b_grp", i1 false, i1 false}
!966 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 663, i32 1}
!967 = !{ptr @smb0c_grp, !968, !"smb0c_grp", i1 false, i1 false}
!968 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 664, i32 1}
!969 = !{ptr @smb0d_grp, !970, !"smb0d_grp", i1 false, i1 false}
!970 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 665, i32 1}
!971 = !{ptr @smb0den_grp, !972, !"smb0den_grp", i1 false, i1 false}
!972 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 666, i32 1}
!973 = !{ptr @smb1_grp, !974, !"smb1_grp", i1 false, i1 false}
!974 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 667, i32 1}
!975 = !{ptr @smb1b_grp, !976, !"smb1b_grp", i1 false, i1 false}
!976 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 668, i32 1}
!977 = !{ptr @smb1c_grp, !978, !"smb1c_grp", i1 false, i1 false}
!978 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 669, i32 1}
!979 = !{ptr @smb1d_grp, !980, !"smb1d_grp", i1 false, i1 false}
!980 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 670, i32 1}
!981 = !{ptr @smb2_grp, !982, !"smb2_grp", i1 false, i1 false}
!982 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 671, i32 1}
!983 = !{ptr @smb2b_grp, !984, !"smb2b_grp", i1 false, i1 false}
!984 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 672, i32 1}
!985 = !{ptr @smb2c_grp, !986, !"smb2c_grp", i1 false, i1 false}
!986 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 673, i32 1}
!987 = !{ptr @smb2d_grp, !988, !"smb2d_grp", i1 false, i1 false}
!988 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 674, i32 1}
!989 = !{ptr @smb3_grp, !990, !"smb3_grp", i1 false, i1 false}
!990 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 675, i32 1}
!991 = !{ptr @smb3b_grp, !992, !"smb3b_grp", i1 false, i1 false}
!992 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 676, i32 1}
!993 = !{ptr @smb3c_grp, !994, !"smb3c_grp", i1 false, i1 false}
!994 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 677, i32 1}
!995 = !{ptr @smb3d_grp, !996, !"smb3d_grp", i1 false, i1 false}
!996 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 678, i32 1}
!997 = !{ptr @smb4_grp, !998, !"smb4_grp", i1 false, i1 false}
!998 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 679, i32 1}
!999 = !{ptr @smb4b_grp, !1000, !"smb4b_grp", i1 false, i1 false}
!1000 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 680, i32 1}
!1001 = !{ptr @smb4c_grp, !1002, !"smb4c_grp", i1 false, i1 false}
!1002 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 681, i32 1}
!1003 = !{ptr @smb4d_grp, !1004, !"smb4d_grp", i1 false, i1 false}
!1004 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 682, i32 1}
!1005 = !{ptr @smb4den_grp, !1006, !"smb4den_grp", i1 false, i1 false}
!1006 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 683, i32 1}
!1007 = !{ptr @smb5_grp, !1008, !"smb5_grp", i1 false, i1 false}
!1008 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 684, i32 1}
!1009 = !{ptr @smb5b_grp, !1010, !"smb5b_grp", i1 false, i1 false}
!1010 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 685, i32 1}
!1011 = !{ptr @smb5c_grp, !1012, !"smb5c_grp", i1 false, i1 false}
!1012 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 686, i32 1}
!1013 = !{ptr @smb5d_grp, !1014, !"smb5d_grp", i1 false, i1 false}
!1014 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 687, i32 1}
!1015 = !{ptr @ga20kbc_grp, !1016, !"ga20kbc_grp", i1 false, i1 false}
!1016 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 688, i32 1}
!1017 = !{ptr @smb6_grp, !1018, !"smb6_grp", i1 false, i1 false}
!1018 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 689, i32 1}
!1019 = !{ptr @smb7_grp, !1020, !"smb7_grp", i1 false, i1 false}
!1020 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 690, i32 1}
!1021 = !{ptr @smb8_grp, !1022, !"smb8_grp", i1 false, i1 false}
!1022 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 691, i32 1}
!1023 = !{ptr @smb9_grp, !1024, !"smb9_grp", i1 false, i1 false}
!1024 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 692, i32 1}
!1025 = !{ptr @smb10_grp, !1026, !"smb10_grp", i1 false, i1 false}
!1026 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 693, i32 1}
!1027 = !{ptr @smb11_grp, !1028, !"smb11_grp", i1 false, i1 false}
!1028 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 694, i32 1}
!1029 = !{ptr @smb12_grp, !1030, !"smb12_grp", i1 false, i1 false}
!1030 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 695, i32 1}
!1031 = !{ptr @smb13_grp, !1032, !"smb13_grp", i1 false, i1 false}
!1032 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 696, i32 1}
!1033 = !{ptr @smb14_grp, !1034, !"smb14_grp", i1 false, i1 false}
!1034 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 697, i32 1}
!1035 = !{ptr @smb15_grp, !1036, !"smb15_grp", i1 false, i1 false}
!1036 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 698, i32 1}
!1037 = !{ptr @fanin0_grp, !1038, !"fanin0_grp", i1 false, i1 false}
!1038 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 699, i32 1}
!1039 = !{ptr @fanin1_grp, !1040, !"fanin1_grp", i1 false, i1 false}
!1040 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 700, i32 1}
!1041 = !{ptr @fanin2_grp, !1042, !"fanin2_grp", i1 false, i1 false}
!1042 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 701, i32 1}
!1043 = !{ptr @fanin3_grp, !1044, !"fanin3_grp", i1 false, i1 false}
!1044 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 702, i32 1}
!1045 = !{ptr @fanin4_grp, !1046, !"fanin4_grp", i1 false, i1 false}
!1046 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 703, i32 1}
!1047 = !{ptr @fanin5_grp, !1048, !"fanin5_grp", i1 false, i1 false}
!1048 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 704, i32 1}
!1049 = !{ptr @fanin6_grp, !1050, !"fanin6_grp", i1 false, i1 false}
!1050 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 705, i32 1}
!1051 = !{ptr @fanin7_grp, !1052, !"fanin7_grp", i1 false, i1 false}
!1052 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 706, i32 1}
!1053 = !{ptr @fanin8_grp, !1054, !"fanin8_grp", i1 false, i1 false}
!1054 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 707, i32 1}
!1055 = !{ptr @fanin9_grp, !1056, !"fanin9_grp", i1 false, i1 false}
!1056 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 708, i32 1}
!1057 = !{ptr @fanin10_grp, !1058, !"fanin10_grp", i1 false, i1 false}
!1058 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 709, i32 1}
!1059 = !{ptr @fanin11_grp, !1060, !"fanin11_grp", i1 false, i1 false}
!1060 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 710, i32 1}
!1061 = !{ptr @fanin12_grp, !1062, !"fanin12_grp", i1 false, i1 false}
!1062 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 711, i32 1}
!1063 = !{ptr @fanin13_grp, !1064, !"fanin13_grp", i1 false, i1 false}
!1064 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 712, i32 1}
!1065 = !{ptr @fanin14_grp, !1066, !"fanin14_grp", i1 false, i1 false}
!1066 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 713, i32 1}
!1067 = !{ptr @fanin15_grp, !1068, !"fanin15_grp", i1 false, i1 false}
!1068 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 714, i32 1}
!1069 = !{ptr @faninx_grp, !1070, !"faninx_grp", i1 false, i1 false}
!1070 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 715, i32 1}
!1071 = !{ptr @pwm0_grp, !1072, !"pwm0_grp", i1 false, i1 false}
!1072 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 716, i32 1}
!1073 = !{ptr @pwm1_grp, !1074, !"pwm1_grp", i1 false, i1 false}
!1074 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 717, i32 1}
!1075 = !{ptr @pwm2_grp, !1076, !"pwm2_grp", i1 false, i1 false}
!1076 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 718, i32 1}
!1077 = !{ptr @pwm3_grp, !1078, !"pwm3_grp", i1 false, i1 false}
!1078 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 719, i32 1}
!1079 = !{ptr @pwm4_grp, !1080, !"pwm4_grp", i1 false, i1 false}
!1080 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 720, i32 1}
!1081 = !{ptr @pwm5_grp, !1082, !"pwm5_grp", i1 false, i1 false}
!1082 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 721, i32 1}
!1083 = !{ptr @pwm6_grp, !1084, !"pwm6_grp", i1 false, i1 false}
!1084 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 722, i32 1}
!1085 = !{ptr @pwm7_grp, !1086, !"pwm7_grp", i1 false, i1 false}
!1086 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 723, i32 1}
!1087 = !{ptr @rg1_grp, !1088, !"rg1_grp", i1 false, i1 false}
!1088 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 724, i32 1}
!1089 = !{ptr @rg1mdio_grp, !1090, !"rg1mdio_grp", i1 false, i1 false}
!1090 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 725, i32 1}
!1091 = !{ptr @rg2_grp, !1092, !"rg2_grp", i1 false, i1 false}
!1092 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 726, i32 1}
!1093 = !{ptr @rg2mdio_grp, !1094, !"rg2mdio_grp", i1 false, i1 false}
!1094 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 727, i32 1}
!1095 = !{ptr @ddr_grp, !1096, !"ddr_grp", i1 false, i1 false}
!1096 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 728, i32 1}
!1097 = !{ptr @uart1_grp, !1098, !"uart1_grp", i1 false, i1 false}
!1098 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 729, i32 1}
!1099 = !{ptr @uart2_grp, !1100, !"uart2_grp", i1 false, i1 false}
!1100 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 730, i32 1}
!1101 = !{ptr @bmcuart0a_grp, !1102, !"bmcuart0a_grp", i1 false, i1 false}
!1102 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 731, i32 1}
!1103 = !{ptr @bmcuart0b_grp, !1104, !"bmcuart0b_grp", i1 false, i1 false}
!1104 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 732, i32 1}
!1105 = !{ptr @bmcuart1_grp, !1106, !"bmcuart1_grp", i1 false, i1 false}
!1106 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 733, i32 1}
!1107 = !{ptr @iox1_grp, !1108, !"iox1_grp", i1 false, i1 false}
!1108 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 734, i32 1}
!1109 = !{ptr @iox2_grp, !1110, !"iox2_grp", i1 false, i1 false}
!1110 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 735, i32 1}
!1111 = !{ptr @ioxh_grp, !1112, !"ioxh_grp", i1 false, i1 false}
!1112 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 736, i32 1}
!1113 = !{ptr @gspi_grp, !1114, !"gspi_grp", i1 false, i1 false}
!1114 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 737, i32 1}
!1115 = !{ptr @mmc_grp, !1116, !"mmc_grp", i1 false, i1 false}
!1116 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 738, i32 1}
!1117 = !{ptr @mmcwp_grp, !1118, !"mmcwp_grp", i1 false, i1 false}
!1118 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 739, i32 1}
!1119 = !{ptr @mmccd_grp, !1120, !"mmccd_grp", i1 false, i1 false}
!1120 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 740, i32 1}
!1121 = !{ptr @mmcrst_grp, !1122, !"mmcrst_grp", i1 false, i1 false}
!1122 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 741, i32 1}
!1123 = !{ptr @mmc8_grp, !1124, !"mmc8_grp", i1 false, i1 false}
!1124 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 742, i32 1}
!1125 = !{ptr @r1_grp, !1126, !"r1_grp", i1 false, i1 false}
!1126 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 743, i32 1}
!1127 = !{ptr @r1err_grp, !1128, !"r1err_grp", i1 false, i1 false}
!1128 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 744, i32 1}
!1129 = !{ptr @r1md_grp, !1130, !"r1md_grp", i1 false, i1 false}
!1130 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 745, i32 1}
!1131 = !{ptr @r2_grp, !1132, !"r2_grp", i1 false, i1 false}
!1132 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 746, i32 1}
!1133 = !{ptr @r2err_grp, !1134, !"r2err_grp", i1 false, i1 false}
!1134 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 747, i32 1}
!1135 = !{ptr @r2md_grp, !1136, !"r2md_grp", i1 false, i1 false}
!1136 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 748, i32 1}
!1137 = !{ptr @sd1_grp, !1138, !"sd1_grp", i1 false, i1 false}
!1138 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 749, i32 1}
!1139 = !{ptr @sd1pwr_grp, !1140, !"sd1pwr_grp", i1 false, i1 false}
!1140 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 750, i32 1}
!1141 = !{ptr @wdog1_grp, !1142, !"wdog1_grp", i1 false, i1 false}
!1142 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 751, i32 1}
!1143 = !{ptr @wdog2_grp, !1144, !"wdog2_grp", i1 false, i1 false}
!1144 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 752, i32 1}
!1145 = !{ptr @scipme_grp, !1146, !"scipme_grp", i1 false, i1 false}
!1146 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 753, i32 1}
!1147 = !{ptr @sci_grp, !1148, !"sci_grp", i1 false, i1 false}
!1148 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 754, i32 1}
!1149 = !{ptr @serirq_grp, !1150, !"serirq_grp", i1 false, i1 false}
!1150 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 755, i32 1}
!1151 = !{ptr @jtag2_grp, !1152, !"jtag2_grp", i1 false, i1 false}
!1152 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 756, i32 1}
!1153 = !{ptr @spix_grp, !1154, !"spix_grp", i1 false, i1 false}
!1154 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 757, i32 1}
!1155 = !{ptr @spixcs1_grp, !1156, !"spixcs1_grp", i1 false, i1 false}
!1156 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 758, i32 1}
!1157 = !{ptr @pspi1_grp, !1158, !"pspi1_grp", i1 false, i1 false}
!1158 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 759, i32 1}
!1159 = !{ptr @pspi2_grp, !1160, !"pspi2_grp", i1 false, i1 false}
!1160 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 760, i32 1}
!1161 = !{ptr @ddc_grp, !1162, !"ddc_grp", i1 false, i1 false}
!1162 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 761, i32 1}
!1163 = !{ptr @clkreq_grp, !1164, !"clkreq_grp", i1 false, i1 false}
!1164 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 762, i32 1}
!1165 = !{ptr @clkout_grp, !1166, !"clkout_grp", i1 false, i1 false}
!1166 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 763, i32 1}
!1167 = !{ptr @spi3_grp, !1168, !"spi3_grp", i1 false, i1 false}
!1168 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 764, i32 1}
!1169 = !{ptr @spi3cs1_grp, !1170, !"spi3cs1_grp", i1 false, i1 false}
!1170 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 765, i32 1}
!1171 = !{ptr @spi3quad_grp, !1172, !"spi3quad_grp", i1 false, i1 false}
!1172 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 766, i32 1}
!1173 = !{ptr @spi3cs2_grp, !1174, !"spi3cs2_grp", i1 false, i1 false}
!1174 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 767, i32 1}
!1175 = !{ptr @spi3cs3_grp, !1176, !"spi3cs3_grp", i1 false, i1 false}
!1176 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 768, i32 1}
!1177 = !{ptr @spi0cs1_grp, !1178, !"spi0cs1_grp", i1 false, i1 false}
!1178 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 769, i32 1}
!1179 = !{ptr @lpc_grp, !1180, !"lpc_grp", i1 false, i1 false}
!1180 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 770, i32 1}
!1181 = !{ptr @lpcclk_grp, !1182, !"lpcclk_grp", i1 false, i1 false}
!1182 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 771, i32 1}
!1183 = !{ptr @espi_grp, !1184, !"espi_grp", i1 false, i1 false}
!1184 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 772, i32 1}
!1185 = !{ptr @lkgpo0_grp, !1186, !"lkgpo0_grp", i1 false, i1 false}
!1186 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 773, i32 1}
!1187 = !{ptr @lkgpo1_grp, !1188, !"lkgpo1_grp", i1 false, i1 false}
!1188 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 774, i32 1}
!1189 = !{ptr @lkgpo2_grp, !1190, !"lkgpo2_grp", i1 false, i1 false}
!1190 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 775, i32 1}
!1191 = !{ptr @nprd_smi_grp, !1192, !"nprd_smi_grp", i1 false, i1 false}
!1192 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 776, i32 1}
!1193 = !{ptr @.str.415, !1194, !"<string literal>", i1 false, i1 false}
!1194 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1642, i32 2}
!1195 = !{ptr @.str.416, !1194, !"<string literal>", i1 false, i1 false}
!1196 = !{ptr @npcm7xx_pinmux_set_mux.__UNIQUE_ID_ddebug247, !1194, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!1197 = !{ptr @pincfg, !1198, !"pincfg", i1 false, i1 false}
!1198 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 925, i32 36}
!1199 = !{ptr @.str.417, !1200, !"<string literal>", i1 false, i1 false}
!1200 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1658, i32 3}
!1201 = !{ptr @.str.418, !1200, !"<string literal>", i1 false, i1 false}
!1202 = !{ptr @npcm7xx_gpio_request_enable._entry, !1200, !"_entry", i1 false, i1 false}
!1203 = !{ptr @npcm7xx_gpio_request_enable._entry_ptr, !1200, !"_entry_ptr", i1 false, i1 false}
!1204 = !{ptr @.str.420, !1205, !"<string literal>", i1 false, i1 false}
!1205 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1662, i32 3}
!1206 = !{ptr @npcm7xx_gpio_request_enable._entry.419, !1205, !"_entry", i1 false, i1 false}
!1207 = !{ptr @npcm7xx_gpio_request_enable._entry_ptr.421, !1205, !"_entry_ptr", i1 false, i1 false}
!1208 = !{ptr @.str.422, !1209, !"<string literal>", i1 false, i1 false}
!1209 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1694, i32 2}
!1210 = !{ptr @.str.423, !1209, !"<string literal>", i1 false, i1 false}
!1211 = !{ptr @npcm_gpio_set_direction.__UNIQUE_ID_ddebug248, !1209, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!1212 = !{ptr @npcm7xx_pinconf_ops, !1213, !"npcm7xx_pinconf_ops", i1 false, i1 false}
!1213 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1845, i32 33}
!1214 = !{ptr @.str.424, !1215, !"<string literal>", i1 false, i1 false}
!1215 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1518, i32 3}
!1216 = !{ptr @.str.425, !1215, !"<string literal>", i1 false, i1 false}
!1217 = !{ptr @npcm7xx_get_drive_strength.__UNIQUE_ID_ddebug242, !1215, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!1218 = !{ptr @.str.426, !1219, !"<string literal>", i1 false, i1 false}
!1219 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1787, i32 2}
!1220 = !{ptr @.str.427, !1219, !"<string literal>", i1 false, i1 false}
!1221 = !{ptr @npcm7xx_config_set_one.__UNIQUE_ID_ddebug249, !1219, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!1222 = !{ptr @.str.428, !1223, !"<string literal>", i1 false, i1 false}
!1223 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1539, i32 3}
!1224 = !{ptr @.str.429, !1223, !"<string literal>", i1 false, i1 false}
!1225 = !{ptr @npcm7xx_set_drive_strength.__UNIQUE_ID_ddebug243, !1223, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!1226 = !{ptr @.str.430, !1227, !"<string literal>", i1 false, i1 false}
!1227 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1544, i32 3}
!1228 = !{ptr @npcm7xx_set_drive_strength.__UNIQUE_ID_ddebug244, !1227, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!1229 = !{ptr @npcm7xx_gpio_register.lock_key, !1230, !"lock_key", i1 false, i1 false}
!1230 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1973, i32 9}
!1231 = !{ptr @npcm7xx_gpio_register.request_key, !1230, !"request_key", i1 false, i1 false}
!1232 = !{ptr @.str.431, !1233, !"<string literal>", i1 false, i1 false}
!1233 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1977, i32 4}
!1234 = !{ptr @.str.432, !1233, !"<string literal>", i1 false, i1 false}
!1235 = !{ptr @npcm7xx_gpio_register._entry, !1233, !"_entry", i1 false, i1 false}
!1236 = !{ptr @npcm7xx_gpio_register._entry_ptr, !1233, !"_entry_ptr", i1 false, i1 false}
!1237 = !{ptr @.str.434, !1238, !"<string literal>", i1 false, i1 false}
!1238 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 1987, i32 4}
!1239 = !{ptr @npcm7xx_gpio_register._entry.433, !1238, !"_entry", i1 false, i1 false}
!1240 = !{ptr @npcm7xx_gpio_register._entry_ptr.435, !1238, !"_entry_ptr", i1 false, i1 false}
!1241 = !{ptr @.str.436, !1242, !"<string literal>", i1 false, i1 false}
!1242 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 229, i32 2}
!1243 = !{ptr @.str.437, !1242, !"<string literal>", i1 false, i1 false}
!1244 = !{ptr @npcmgpio_irq_handler.__UNIQUE_ID_ddebug230, !1242, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!1245 = !{ptr @npcm7xx_pinctrl_match, !1246, !"npcm7xx_pinctrl_match", i1 false, i1 false}
!1246 = !{!"../drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c", i32 2044, i32 34}
!1247 = !{i32 1, !"wchar_size", i32 2}
!1248 = !{i32 1, !"min_enum_size", i32 4}
!1249 = !{i32 8, !"branch-target-enforcement", i32 0}
!1250 = !{i32 8, !"sign-return-address", i32 0}
!1251 = !{i32 8, !"sign-return-address-all", i32 0}
!1252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1253 = !{i32 7, !"uwtable", i32 1}
!1254 = !{i32 7, !"frame-pointer", i32 2}
!1255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1256 = !{i64 4912573}
!1257 = !{i64 2152452922}
!1258 = !{i64 2148350399, i64 2148350404, i64 2148350417, i64 2148350461, i64 2148350495, i64 2148350516}
!1259 = !{i64 2152454277}
!1260 = !{i64 4912155}
!1261 = !{!"auto-init"}
