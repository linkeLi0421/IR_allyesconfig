; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-bcm2835.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-bcm2835.c"
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
%struct.bcm_plat_data = type { ptr, ptr, ptr }
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
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm2835_pinctrl = type { ptr, ptr, ptr, [2 x i32], [58 x i32], ptr, %struct.gpio_chip, %struct.pinctrl_desc, %struct.pinctrl_gpio_range, [2 x %struct.raw_spinlock] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }

@__initcall__kmod_pinctrl_bcm2835__233_1351_bcm2835_pinctrl_driver_init6 = internal global ptr @bcm2835_pinctrl_driver_init, section ".initcall6.init", align 4
@bcm2835_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @bcm2835_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_pinctrl_driver_exit = internal global ptr @bcm2835_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [34 x i8] c"pinctrl_bcm2835.author=Chris Boot\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [36 x i8] c"pinctrl_bcm2835.author=Simon Arlott\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [38 x i8] c"pinctrl_bcm2835.author=Stephen Warren\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [74 x i8] c"pinctrl_bcm2835.description=Broadcom BCM2835/2711 pinctrl and GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [57 x i8] c"pinctrl_bcm2835.file=drivers/pinctrl/bcm/pinctrl-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [28 x i8] c"pinctrl_bcm2835.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl-bcm2835\00", [16 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7211-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_plat_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not get IO memory\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm2835_pinctrl_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/bcm/pinctrl-bcm2835.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_probe._entry_ptr = internal global ptr @bcm2835_pinctrl_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,bcm7211-gpio\00", [46 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pc->irq_lock[i]\00", [47 x i8] zeroinitializer }, align 32
@bcm2835_gpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr @bcm2835_gpio_irq_enable, ptr @bcm2835_gpio_irq_disable, ptr @bcm2835_gpio_irq_ack, ptr @bcm2835_gpio_irq_disable, ptr null, ptr @bcm2835_gpio_irq_enable, ptr null, ptr null, ptr null, ptr @bcm2835_gpio_irq_set_type, ptr @bcm2835_gpio_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s:bank%d\00", [22 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1324, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to request wake IRQ %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_probe._entry_ptr.12 = internal global ptr @bcm2835_pinctrl_probe._entry.9, section ".printk_index", align 4
@bcm2835_pinctrl_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bcm2835_pinctrl_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bcm2835_pinctrl_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not add GPIO chip\0A\00", [39 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_probe._entry_ptr.15 = internal global ptr @bcm2835_pinctrl_probe._entry.13, section ".printk_index", align 4
@bcm2835_plat_data = internal constant { %struct.bcm_plat_data, [20 x i8] } { %struct.bcm_plat_data { ptr @bcm2835_gpio_chip, ptr @bcm2835_pinctrl_desc, ptr @bcm2835_pinctrl_gpio_range }, [20 x i8] zeroinitializer }, align 32
@bcm2711_plat_data = internal constant { %struct.bcm_plat_data, [20 x i8] } { %struct.bcm_plat_data { ptr @bcm2711_gpio_chip, ptr @bcm2711_pinctrl_desc, ptr @bcm2711_pinctrl_gpio_range }, [20 x i8] zeroinitializer }, align 32
@bcm2835_gpio_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @bcm2835_gpio_get_direction, ptr @bcm2835_gpio_direction_input, ptr @bcm2835_gpio_direction_output, ptr @bcm2835_gpio_get, ptr null, ptr @bcm2835_gpio_set, ptr null, ptr @gpiochip_generic_config, ptr null, ptr null, ptr null, ptr null, i32 -1, i16 54, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_desc = internal constant { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr @bcm2835_gpio_pins, i32 54, ptr @bcm2835_pctl_ops, ptr @bcm2835_pmx_ops, ptr @bcm2835_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_gpio_range = internal constant { %struct.pinctrl_gpio_range, [60 x i8] } { %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str, i32 0, i32 0, i32 0, i32 54, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_fsel_get.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 69, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl_bcm2835\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm2835_pinctrl_fsel_get\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get %08x (%u => %s)\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm2835_functions = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_in\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_out\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alt5\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alt4\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alt0\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alt1\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alt2\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alt3\00", [27 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm2835_pinctrl_fsel_set\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read %08x (%u => %s)\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trans %08x (%u <= %s)\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.27, ptr @.str.3, ptr @.str.30, i8 0, i8 77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write %08x (%u <= %s)\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm2835_gpio_pins = internal global { [58 x %struct.pinctrl_pin_desc], [168 x i8] } { [58 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.88, ptr null }], [168 x i8] zeroinitializer }, align 32
@bcm2835_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @bcm2835_pctl_get_groups_count, ptr @bcm2835_pctl_get_group_name, ptr @bcm2835_pctl_get_group_pins, ptr @bcm2835_pctl_pin_dbg_show, ptr @bcm2835_pctl_dt_node_to_map, ptr @bcm2835_pctl_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@bcm2835_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr @bcm2835_pmx_free, ptr @bcm2835_pmx_get_functions_count, ptr @bcm2835_pmx_get_function_name, ptr @bcm2835_pmx_get_function_groups, ptr @bcm2835_pmx_set, ptr null, ptr @bcm2835_pmx_gpio_disable_free, ptr @bcm2835_pmx_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@bcm2835_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @bcm2835_pinconf_get, ptr @bcm2835_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio17\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio18\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio19\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio20\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio21\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio22\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio23\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio24\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio25\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio26\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio27\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio28\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio29\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio30\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio31\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio32\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio33\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio34\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio35\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio36\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio37\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio38\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio39\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio40\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio41\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio42\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio43\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio44\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio45\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio46\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio47\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio48\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio49\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio50\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio51\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio52\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio53\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio54\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio55\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio56\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio57\00", [25 x i8] zeroinitializer }, align 32
@bcm2835_gpio_groups = internal constant { [58 x ptr], [56 x i8] } { [58 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"function %s in %s; irq %d (%s)\00", [33 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hi\00", [29 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lo\00", [29 x i8] zeroinitializer }, align 32
@irq_type_names = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr null, ptr null, ptr null, ptr @.str.97], [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"edge-rising\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"edge-falling\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edge-both\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"level-high\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"level-low\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"brcm,pins\00", [22 x i8] zeroinitializer }, align 32
@bcm2835_pctl_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 804, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%pOF: missing brcm,pins property\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcm2835_pctl_dt_node_to_map\00", [36 x i8] zeroinitializer }, align 32
@bcm2835_pctl_dt_node_to_map._entry_ptr = internal global ptr @bcm2835_pctl_dt_node_to_map._entry, section ".printk_index", align 4
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcm,function\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"brcm,pull\00", [22 x i8] zeroinitializer }, align 32
@bcm2835_pctl_dt_node_to_map._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.100, ptr @.str.3, i32 814, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%pOF: neither brcm,function nor brcm,pull specified\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm2835_pctl_dt_node_to_map._entry_ptr.105 = internal global ptr @bcm2835_pctl_dt_node_to_map._entry.103, section ".printk_index", align 4
@bcm2835_pctl_dt_node_to_map._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.100, ptr @.str.3, i32 825, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%pOF: brcm,function must have 1 or %d entries\0A\00", [49 x i8] zeroinitializer }, align 32
@bcm2835_pctl_dt_node_to_map._entry_ptr.108 = internal global ptr @bcm2835_pctl_dt_node_to_map._entry.106, section ".printk_index", align 4
@bcm2835_pctl_dt_node_to_map._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.100, ptr @.str.3, i32 832, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%pOF: brcm,pull must have 1 or %d entries\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm2835_pctl_dt_node_to_map._entry_ptr.111 = internal global ptr @bcm2835_pctl_dt_node_to_map._entry.109, section ".printk_index", align 4
@bcm2835_pctl_dt_node_to_map._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.100, ptr @.str.3, i32 852, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%pOF: invalid brcm,pins value %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm2835_pctl_dt_node_to_map._entry_ptr.114 = internal global ptr @bcm2835_pctl_dt_node_to_map._entry.112, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bcm2835_pctl_dt_node_to_map_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 747, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%pOF: invalid brcm,function %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bcm2835_pctl_dt_node_to_map_func\00", [63 x i8] zeroinitializer }, align 32
@bcm2835_pctl_dt_node_to_map_func._entry_ptr = internal global ptr @bcm2835_pctl_dt_node_to_map_func._entry, section ".printk_index", align 4
@bcm2835_pctl_dt_node_to_map_pull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 767, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%pOF: invalid brcm,pull %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bcm2835_pctl_dt_node_to_map_pull\00", [63 x i8] zeroinitializer }, align 32
@bcm2835_pctl_dt_node_to_map_pull._entry_ptr = internal global ptr @bcm2835_pctl_dt_node_to_map_pull._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm2711_gpio_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.119, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @bcm2835_gpio_get_direction, ptr @bcm2835_gpio_direction_input, ptr @bcm2835_gpio_direction_output, ptr @bcm2835_gpio_get, ptr null, ptr @bcm2835_gpio_set, ptr null, ptr @gpiochip_generic_config, ptr null, ptr null, ptr null, ptr null, i32 -1, i16 58, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@bcm2711_pinctrl_desc = internal constant { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.119, ptr @bcm2835_gpio_pins, i32 58, ptr @bcm2835_pctl_ops, ptr @bcm2835_pmx_ops, ptr @bcm2711_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bcm2711_pinctrl_gpio_range = internal constant { %struct.pinctrl_gpio_range, [60 x i8] } { %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.119, i32 0, i32 0, i32 0, i32 58, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl-bcm2711\00", [16 x i8] zeroinitializer }, align 32
@bcm2711_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @bcm2835_pinconf_get, ptr @bcm2711_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.125 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.126 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 5, i64 17, i64 128]
@__sancov_gen_cov_switch_values.127 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 5, i64 17, i64 128]
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"bcm2835_pinctrl_driver\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1343, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1346, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"bcm2835_pinctrl_match\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1174, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1214, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1227, i32 40 }
@___asan_gen_.158 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1249, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"bcm2835_gpio_irq_chip\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 678, i32 24 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1316, i32 23 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1323, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1330, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1332, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [18 x i8] c"bcm2835_plat_data\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1162, i32 35 }
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"bcm2711_plat_data\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1168, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"bcm2835_gpio_chip\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 361, i32 31 }
@___asan_gen_.200 = private unnamed_addr constant [21 x i8] c"bcm2835_pinctrl_desc\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1126, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant [27 x i8] c"bcm2835_pinctrl_gpio_range\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1146, i32 40 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 277, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"bcm2835_functions\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 225, i32 27 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 226, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 227, i32 28 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 233, i32 24 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 232, i32 24 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 228, i32 24 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 229, i32 24 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 230, i32 24 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 231, i32 24 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 290, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 301, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 309, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [18 x i8] c"bcm2835_gpio_pins\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 97, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"bcm2835_pctl_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 889, i32 33 }
@___asan_gen_.260 = private unnamed_addr constant [16 x i8] c"bcm2835_pmx_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 966, i32 32 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c"bcm2835_pinconf_ops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1049, i32 33 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 98, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 99, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 100, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 101, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 102, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 103, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 104, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 105, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 106, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 107, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 108, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 109, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 110, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 111, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 112, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 113, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 114, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 115, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 116, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 117, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 118, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 119, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 120, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 121, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 122, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 123, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 124, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 125, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 126, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 127, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 128, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 129, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 130, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 131, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 132, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 133, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 134, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 135, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 136, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 137, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 138, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 139, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 140, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 141, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 142, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 143, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 144, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 145, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 146, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 147, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 148, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 149, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 150, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 151, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 152, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 153, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 154, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 155, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [20 x i8] c"bcm2835_gpio_groups\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 159, i32 27 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 723, i32 16 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 724, i32 18 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 724, i32 25 }
@___asan_gen_.452 = private unnamed_addr constant [15 x i8] c"irq_type_names\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 236, i32 27 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 237, i32 20 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 238, i32 27 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 239, i32 28 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 240, i32 25 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 241, i32 26 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 242, i32 25 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 802, i32 30 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 804, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 808, i32 31 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 809, i32 31 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 812, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 823, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 830, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 851, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 747, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 767, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant [18 x i8] c"bcm2711_gpio_chip\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 377, i32 31 }
@___asan_gen_.536 = private unnamed_addr constant [21 x i8] c"bcm2711_pinctrl_desc\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1136, i32 34 }
@___asan_gen_.539 = private unnamed_addr constant [27 x i8] c"bcm2711_pinctrl_gpio_range\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1151, i32 40 }
@___asan_gen_.542 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 378, i32 11 }
@___asan_gen_.545 = private unnamed_addr constant [20 x i8] c"bcm2711_pinconf_ops\00", align 1
@___asan_gen_.546 = private constant [41 x i8] c"../drivers/pinctrl/bcm/pinctrl-bcm2835.c\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1120, i32 33 }
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_bcm2835_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_bcm2835__233_1351_bcm2835_pinctrl_driver_init6, ptr @bcm2835_pctl_dt_node_to_map._entry, ptr @bcm2835_pctl_dt_node_to_map._entry.103, ptr @bcm2835_pctl_dt_node_to_map._entry.106, ptr @bcm2835_pctl_dt_node_to_map._entry.109, ptr @bcm2835_pctl_dt_node_to_map._entry.112, ptr @bcm2835_pctl_dt_node_to_map._entry_ptr, ptr @bcm2835_pctl_dt_node_to_map._entry_ptr.105, ptr @bcm2835_pctl_dt_node_to_map._entry_ptr.108, ptr @bcm2835_pctl_dt_node_to_map._entry_ptr.111, ptr @bcm2835_pctl_dt_node_to_map._entry_ptr.114, ptr @bcm2835_pctl_dt_node_to_map_func._entry, ptr @bcm2835_pctl_dt_node_to_map_func._entry_ptr, ptr @bcm2835_pctl_dt_node_to_map_pull._entry, ptr @bcm2835_pctl_dt_node_to_map_pull._entry_ptr, ptr @bcm2835_pinctrl_driver_exit, ptr @bcm2835_pinctrl_probe._entry, ptr @bcm2835_pinctrl_probe._entry.13, ptr @bcm2835_pinctrl_probe._entry.9, ptr @bcm2835_pinctrl_probe._entry_ptr, ptr @bcm2835_pinctrl_probe._entry_ptr.12, ptr @bcm2835_pinctrl_probe._entry_ptr.15, ptr @bcm2835_pinctrl_driver, ptr @.str, ptr @bcm2835_pinctrl_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bcm2835_pinctrl_probe.__key, ptr @.str.7, ptr @bcm2835_gpio_irq_chip, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @bcm2835_pinctrl_probe.lock_key, ptr @bcm2835_pinctrl_probe.request_key, ptr @.str.14, ptr @bcm2835_plat_data, ptr @bcm2711_plat_data, ptr @bcm2835_gpio_chip, ptr @bcm2835_pinctrl_desc, ptr @bcm2835_pinctrl_gpio_range, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @bcm2835_functions, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @bcm2835_gpio_pins, ptr @bcm2835_pctl_ops, ptr @bcm2835_pmx_ops, ptr @bcm2835_pinconf_ops, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @bcm2835_gpio_groups, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @irq_type_names, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @bcm2711_gpio_chip, ptr @bcm2711_pinctrl_desc, ptr @bcm2711_pinctrl_gpio_range, ptr @.str.119, ptr @bcm2711_pinconf_ops], section "llvm.metadata"
@0 = internal global [140 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinctrl_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_gpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinctrl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinctrl_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinctrl_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinctrl_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_plat_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_plat_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_gpio_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinctrl_gpio_range to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_functions to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_gpio_pins to i32), i32 696, i32 864, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_gpio_groups to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_type_names to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pctl_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pctl_dt_node_to_map._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pctl_dt_node_to_map._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pctl_dt_node_to_map._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pctl_dt_node_to_map._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pctl_dt_node_to_map_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pctl_dt_node_to_map_pull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_gpio_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_pinctrl_gpio_range to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_pinctrl_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_pinctrl_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %iomem = alloca %struct.resource, align 4
  %events = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iomem) #13
  %2 = call ptr @memset(ptr %iomem, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 772, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup145_crit_edge, label %if.end

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup145

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i, align 4
  %call6 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %iomem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #16
  br label %cleanup145

if.end12:                                         ; preds = %if.end
  %call13 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %iomem) #13
  %base = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %call13 to i32
  br label %cleanup145

if.end19:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call22 = call ptr @of_match_node(ptr noundef nonnull @bcm2835_pinctrl_match, ptr noundef %8) #13
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end19.cleanup145_crit_edge, label %if.end25

if.end19.cleanup145_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup145

if.end25:                                         ; preds = %if.end19
  %data = getelementptr inbounds %struct.of_device_id, ptr %call22, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %call26 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.6) #13
  %gpio_chip = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = call ptr @memcpy(ptr %gpio_chip, ptr %12, i32 348)
  %parent = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev1, ptr %parent, align 4
  br label %for.body

for.body:                                         ; preds = %do.body50.for.body_crit_edge, %if.end25
  %i.0291 = phi i32 [ 0, %if.end25 ], [ %inc, %do.body50.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events) #13
  %15 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %events, align 4, !annotation !294
  %mul = shl i32 %i.0291, 2
  %add = add nuw nsw i32 %mul, 76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !296
  %add30 = add nuw nsw i32 %mul, 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr.i259 = getelementptr i8, ptr %19, i32 %add30
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259, i32 0) #13, !srcloc !296
  %add32 = add nuw nsw i32 %mul, 100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr.i261 = getelementptr i8, ptr %21, i32 %add32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261, i32 0) #13, !srcloc !296
  %add34 = add nuw nsw i32 %mul, 112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr.i263 = getelementptr i8, ptr %23, i32 %add34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 0) #13, !srcloc !296
  %add36 = add nuw nsw i32 %mul, 124
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr.i265 = getelementptr i8, ptr %25, i32 %add36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265, i32 0) #13, !srcloc !296
  %add38 = add nuw nsw i32 %mul, 136
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr.i267 = getelementptr i8, ptr %27, i32 %add38
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 0) #13, !srcloc !296
  %add40 = add nuw nsw i32 %mul, 64
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr.i269 = getelementptr i8, ptr %29, i32 %add40
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269) #13, !srcloc !297
  %31 = call i32 @llvm.bswap.i32(i32 %30) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %32 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %events, align 4
  %call42 = call i32 @_find_next_bit_be(ptr noundef nonnull %events, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call42)
  %cmp44289 = icmp ult i32 %call42, 32
  br i1 %cmp44289, label %for.body.for.body45_crit_edge, label %for.body.do.body50_crit_edge

for.body.do.body50_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body50

for.body.for.body45_crit_edge:                    ; preds = %for.body
  br label %for.body45

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.body.for.body45_crit_edge
  %offset.0290 = phi i32 [ %call49, %for.body45.for.body45_crit_edge ], [ %call42, %for.body.for.body45_crit_edge ]
  %shl = shl nuw i32 1, %offset.0290
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  call void @arm_heavy_mb() #13
  %33 = call i32 @llvm.bswap.i32(i32 %shl) #13
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr.i271 = getelementptr i8, ptr %35, i32 %add40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271, i32 %33) #13, !srcloc !296
  %add48 = add nuw nsw i32 %offset.0290, 1
  %call49 = call i32 @_find_next_bit_be(ptr noundef nonnull %events, i32 noundef 32, i32 noundef %add48) #13
  %cmp44 = icmp ult i32 %call49, 32
  br i1 %cmp44, label %for.body45.for.body45_crit_edge, label %for.body45.do.body50_crit_edge

for.body45.do.body50_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body50

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body45

do.body50:                                        ; preds = %for.body45.do.body50_crit_edge, %for.body.do.body50_crit_edge
  %arrayidx = getelementptr %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 9, i32 %i.0291
  call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.7, ptr noundef nonnull @bcm2835_pinctrl_probe.__key, i16 noundef signext 2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %events) #13
  %inc = add nuw nsw i32 %i.0291, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end54, label %do.body50.for.body_crit_edge

do.body50.for.body_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end54:                                        ; preds = %do.body50
  %pctl_desc = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 7
  %pctl_desc55 = getelementptr inbounds %struct.bcm_plat_data, ptr %10, i32 0, i32 1
  %36 = ptrtoint ptr %pctl_desc55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pctl_desc55, align 4
  %38 = call ptr @memcpy(ptr %pctl_desc, ptr %37, i32 44)
  %call57 = call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef %pctl_desc, ptr noundef nonnull %call.i) #13
  %pctl_dev = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call57, ptr %pctl_dev, align 4
  %cmp.i272 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272, label %if.then60, label %if.end64

if.then60:                                        ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #15
  call void @gpiochip_remove(ptr noundef %gpio_chip) #13
  %40 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pctl_dev, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup145

if.end64:                                         ; preds = %for.end54
  %gpio_range = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 8
  %gpio_range65 = getelementptr inbounds %struct.bcm_plat_data, ptr %10, i32 0, i32 2
  %43 = ptrtoint ptr %gpio_range65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpio_range65, align 4
  %45 = call ptr @memcpy(ptr %gpio_range, ptr %44, i32 32)
  %base67 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 6, i32 19
  %46 = ptrtoint ptr %base67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base67, align 4
  %base69 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 8, i32 3
  %48 = ptrtoint ptr %base69 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %base69, align 4
  %gc = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 8, i32 7
  %49 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %gpio_chip, ptr %gc, align 4
  call void @pinctrl_add_gpio_range(ptr noundef %call57, ptr noundef %gpio_range) #13
  %irq = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 6, i32 37
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @bcm2835_gpio_irq_chip, ptr %irq, align 4
  %parent_handler = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 6, i32 37, i32 13
  %51 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @bcm2835_gpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 6, i32 37, i32 15
  %52 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %num_parents, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #13
  %parents = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 6, i32 37, i32 16
  %53 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool77.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool77.not, label %if.end64.out_remove_crit_edge, label %if.end79

if.end64.out_remove_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_remove

if.end79:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool80.not = icmp eq i32 %call26, 0
  br i1 %tobool80.not, label %if.end79.if.end87_crit_edge, label %if.then81

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then81:                                        ; preds = %if.end79
  %call5.i.i273 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #13
  %wake_irq = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 2
  %54 = ptrtoint ptr %wake_irq to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call5.i.i273, ptr %wake_irq, align 4
  %tobool84.not = icmp eq ptr %call5.i.i273, null
  br i1 %tobool84.not, label %if.then81.out_remove_crit_edge, label %if.then81.if.end87_crit_edge

if.then81.if.end87_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then81.out_remove_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_remove

if.end87:                                         ; preds = %if.then81.if.end87_crit_edge, %if.end79.if.end87_crit_edge
  %wake_irq106 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 2
  br label %for.body90

for.body90:                                       ; preds = %for.inc132.for.body90_crit_edge, %if.end87
  %i.1292 = phi i32 [ 0, %if.end87 ], [ %inc133, %for.inc132.for.body90_crit_edge ]
  %call91 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef %i.1292) #13
  %55 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parents, align 4
  %arrayidx93 = getelementptr i32, ptr %56, i32 %i.1292
  %57 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call91, ptr %arrayidx93, align 4
  br i1 %tobool80.not, label %if.then95, label %if.end102

if.then95:                                        ; preds = %for.body90
  %58 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parents, align 4
  %arrayidx97 = getelementptr i32, ptr %59, i32 %i.1292
  %60 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool98.not = icmp eq i32 %61, 0
  br i1 %tobool98.not, label %cleanup.thread284, label %if.then95.for.inc132_crit_edge

if.then95.for.inc132_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc132

cleanup.thread284:                                ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %i.1292, ptr %num_parents, align 4
  br label %for.end134

if.end102:                                        ; preds = %for.body90
  %add104 = add nuw nsw i32 %i.1292, 4
  %call105 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef %add104) #13
  %63 = ptrtoint ptr %wake_irq106 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wake_irq106, align 4
  %arrayidx107 = getelementptr i32, ptr %64, i32 %i.1292
  %65 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call105, ptr %arrayidx107, align 4
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end102.dev_name.exit_crit_edge

if.end102.dev_name.exit_crit_edge:                ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %67, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end102.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %71, %if.end.i ], [ %69, %if.end102.dev_name.exit_crit_edge ]
  %call110 = call i32 @strlen(ptr noundef %retval.0.i) #17
  %add111 = add i32 %call110, 16
  %call.i274 = call noalias ptr @devm_kmalloc(ptr noundef %67, i32 noundef %add111, i32 noundef 3520) #13
  %tobool114.not = icmp eq ptr %call.i274, null
  br i1 %tobool114.not, label %dev_name.exit.out_remove_crit_edge, label %if.end116

dev_name.exit.out_remove_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_remove

if.end116:                                        ; preds = %dev_name.exit
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %init_name.i275 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %init_name.i275 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i275, align 8
  %tobool.not.i276 = icmp eq ptr %75, null
  br i1 %tobool.not.i276, label %if.end.i277, label %if.end116.dev_name.exit279_crit_edge

if.end116.dev_name.exit279_crit_edge:             ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit279

if.end.i277:                                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %73, align 4
  br label %dev_name.exit279

dev_name.exit279:                                 ; preds = %if.end.i277, %if.end116.dev_name.exit279_crit_edge
  %retval.0.i278 = phi ptr [ %77, %if.end.i277 ], [ %75, %if.end116.dev_name.exit279_crit_edge ]
  %call119 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i274, i32 noundef %add111, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i278, i32 noundef %i.1292)
  %78 = ptrtoint ptr %wake_irq106 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wake_irq106, align 4
  %arrayidx121 = getelementptr i32, ptr %79, i32 %i.1292
  %80 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx121, align 4
  %call.i280 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %81, ptr noundef nonnull @bcm2835_gpio_wake_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call.i274, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %tobool123.not = icmp eq i32 %call.i280, 0
  br i1 %tobool123.not, label %dev_name.exit279.for.inc132_crit_edge, label %do.end127

dev_name.exit279.for.inc132_crit_edge:            ; preds = %dev_name.exit279
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc132

do.end127:                                        ; preds = %dev_name.exit279
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %wake_irq106 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wake_irq106, align 4
  %arrayidx129 = getelementptr i32, ptr %83, i32 %i.1292
  %84 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx129, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %85) #16
  br label %for.inc132

for.inc132:                                       ; preds = %do.end127, %dev_name.exit279.for.inc132_crit_edge, %if.then95.for.inc132_crit_edge
  %inc133 = add nuw nsw i32 %i.1292, 1
  %exitcond296.not = icmp eq i32 %inc133, 3
  br i1 %exitcond296.not, label %for.inc132.for.end134_crit_edge, label %for.inc132.for.body90_crit_edge

for.inc132.for.body90_crit_edge:                  ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body90

for.inc132.for.end134_crit_edge:                  ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end134

for.end134:                                       ; preds = %for.inc132.for.end134_crit_edge, %cleanup.thread284
  %default_type = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 6, i32 37, i32 10
  %86 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call.i, i32 0, i32 6, i32 37, i32 9
  %87 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @handle_level_irq, ptr %handler, align 4
  %call136 = call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip, ptr noundef nonnull %call.i, ptr noundef nonnull @bcm2835_pinctrl_probe.lock_key, ptr noundef nonnull @bcm2835_pinctrl_probe.request_key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %for.end134.cleanup145_crit_edge, label %do.end141

for.end134.cleanup145_crit_edge:                  ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup145

do.end141:                                        ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #16
  br label %out_remove

out_remove:                                       ; preds = %do.end141, %dev_name.exit.out_remove_crit_edge, %if.then81.out_remove_crit_edge, %if.end64.out_remove_crit_edge
  %err.2 = phi i32 [ %call136, %do.end141 ], [ -12, %if.end64.out_remove_crit_edge ], [ -12, %if.then81.out_remove_crit_edge ], [ -12, %dev_name.exit.out_remove_crit_edge ]
  %88 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pctl_dev, align 4
  call void @pinctrl_remove_gpio_range(ptr noundef %89, ptr noundef %gpio_range) #13
  br label %cleanup145

cleanup145:                                       ; preds = %out_remove, %for.end134.cleanup145_crit_edge, %if.then60, %if.end19.cleanup145_crit_edge, %if.then16, %do.end11, %entry.cleanup145_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end11 ], [ %6, %if.then16 ], [ %42, %if.then60 ], [ %err.2, %out_remove ], [ -12, %entry.cleanup145_crit_edge ], [ -22, %if.end19.cleanup145_crit_edge ], [ 0, %for.end134.cleanup145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iomem) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %events.i65 = alloca i32, align 4
  %events.i48 = alloca i32, align 4
  %events.i31 = alloca i32, align 4
  %events.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #13
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 16
  %6 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parents, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp5 = icmp eq i32 %9, %5
  br i1 %cmp5, label %entry.do.end15_crit_edge, label %for.inc

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr i32, ptr %7, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp5.1 = icmp eq i32 %11, %5
  br i1 %cmp5.1, label %for.inc.do.end15_crit_edge, label %for.inc.1

for.inc.do.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr i32, ptr %7, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp5.2 = icmp eq i32 %13, %5
  br i1 %cmp5.2, label %for.inc.1.do.end15_crit_edge, label %do.body9

for.inc.1.do.end15_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

do.body9:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/bcm/pinctrl-bcm2835.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #13, !srcloc !299
  unreachable

do.end15:                                         ; preds = %for.inc.1.do.end15_crit_edge, %for.inc.do.end15_crit_edge, %entry.do.end15_crit_edge
  %i.091.lcssa = phi i32 [ 0, %entry.do.end15_crit_edge ], [ 1, %for.inc.do.end15_crit_edge ], [ 2, %for.inc.1.do.end15_crit_edge ]
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end15.chained_irq_enter.exit_crit_edge

do.end15.chained_irq_enter.exit_crit_edge:        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %do.end15
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %17(ptr noundef %irq_data.i) #13
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %19(ptr noundef %irq_data4.i) #13
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %21(ptr noundef %irq_data4.i) #13
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %do.end15.chained_irq_enter.exit_crit_edge
  %22 = zext i32 %i.091.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.091.lcssa, label %chained_irq_enter.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb17
  ]

chained_irq_enter.exit.sw.epilog_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %chained_irq_enter.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events.i) #13
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 1
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 64
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %26 = and i32 %25, -241
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %arrayidx.i = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 3, i32 0
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %29, %27
  %30 = ptrtoint ptr %events.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and1.i, ptr %events.i, align 4
  %call2.i = call i32 @_find_next_bit_be(ptr noundef nonnull %events.i, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2.i)
  %cmp14.i = icmp ult i32 %call2.i, 32
  br i1 %cmp14.i, label %for.body.lr.ph.i, label %sw.bb.bcm2835_gpio_irq_handle_bank.exit_crit_edge

sw.bb.bcm2835_gpio_irq_handle_bank.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_gpio_irq_handle_bank.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %domain.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 6, i32 37, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %offset.015.i = phi i32 [ %call2.i, %for.body.lr.ph.i ], [ %call7.i, %for.body.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %domain.i, align 4
  %call5.i = call i32 @generic_handle_domain_irq(ptr noundef %32, i32 noundef %offset.015.i) #13
  %add6.i = add nuw nsw i32 %offset.015.i, 1
  %call7.i = call i32 @_find_next_bit_be(ptr noundef nonnull %events.i, i32 noundef 32, i32 noundef %add6.i) #13
  %cmp.i = icmp ult i32 %call7.i, 32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bcm2835_gpio_irq_handle_bank.exit_crit_edge

for.body.i.bcm2835_gpio_irq_handle_bank.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_gpio_irq_handle_bank.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

bcm2835_gpio_irq_handle_bank.exit:                ; preds = %for.body.i.bcm2835_gpio_irq_handle_bank.exit_crit_edge, %sw.bb.bcm2835_gpio_irq_handle_bank.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %events.i) #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %chained_irq_enter.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events.i31) #13
  %base.i.i32 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 1
  %33 = ptrtoint ptr %base.i.i32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i32, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %34, i32 64
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #13, !srcloc !297
  %36 = shl i32 %35, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %and.i34 = and i32 %36, -268435456
  %arrayidx.i35 = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 3, i32 0
  %37 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i35, align 4
  %and1.i36 = and i32 %and.i34, %38
  %39 = ptrtoint ptr %events.i31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and1.i36, ptr %events.i31, align 4
  %call2.i37 = call i32 @_find_next_bit_be(ptr noundef nonnull %events.i31, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2.i37)
  %cmp14.i38 = icmp ult i32 %call2.i37, 32
  br i1 %cmp14.i38, label %for.body.lr.ph.i40, label %sw.bb16.bcm2835_gpio_irq_handle_bank.exit47_crit_edge

sw.bb16.bcm2835_gpio_irq_handle_bank.exit47_crit_edge: ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_gpio_irq_handle_bank.exit47

for.body.lr.ph.i40:                               ; preds = %sw.bb16
  %domain.i39 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 6, i32 37, i32 1
  br label %for.body.i46

for.body.i46:                                     ; preds = %for.body.i46.for.body.i46_crit_edge, %for.body.lr.ph.i40
  %offset.015.i41 = phi i32 [ %call2.i37, %for.body.lr.ph.i40 ], [ %call7.i44, %for.body.i46.for.body.i46_crit_edge ]
  %40 = ptrtoint ptr %domain.i39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %domain.i39, align 4
  %call5.i42 = call i32 @generic_handle_domain_irq(ptr noundef %41, i32 noundef %offset.015.i41) #13
  %add6.i43 = add nuw nsw i32 %offset.015.i41, 1
  %call7.i44 = call i32 @_find_next_bit_be(ptr noundef nonnull %events.i31, i32 noundef 32, i32 noundef %add6.i43) #13
  %cmp.i45 = icmp ult i32 %call7.i44, 32
  br i1 %cmp.i45, label %for.body.i46.for.body.i46_crit_edge, label %for.body.i46.bcm2835_gpio_irq_handle_bank.exit47_crit_edge

for.body.i46.bcm2835_gpio_irq_handle_bank.exit47_crit_edge: ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_gpio_irq_handle_bank.exit47

for.body.i46.for.body.i46_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i46

bcm2835_gpio_irq_handle_bank.exit47:              ; preds = %for.body.i46.bcm2835_gpio_irq_handle_bank.exit47_crit_edge, %sw.bb16.bcm2835_gpio_irq_handle_bank.exit47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %events.i31) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events.i48) #13
  %42 = ptrtoint ptr %base.i.i32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i32, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %43, i32 68
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #13, !srcloc !297
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %45 = and i32 %44, -12648448
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %arrayidx.i52 = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i52, align 4
  %and1.i53 = and i32 %48, %46
  %49 = ptrtoint ptr %events.i48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and1.i53, ptr %events.i48, align 4
  %call2.i54 = call i32 @_find_next_bit_be(ptr noundef nonnull %events.i48, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2.i54)
  %cmp14.i55 = icmp ult i32 %call2.i54, 32
  br i1 %cmp14.i55, label %for.body.lr.ph.i57, label %bcm2835_gpio_irq_handle_bank.exit47.bcm2835_gpio_irq_handle_bank.exit64_crit_edge

bcm2835_gpio_irq_handle_bank.exit47.bcm2835_gpio_irq_handle_bank.exit64_crit_edge: ; preds = %bcm2835_gpio_irq_handle_bank.exit47
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_gpio_irq_handle_bank.exit64

for.body.lr.ph.i57:                               ; preds = %bcm2835_gpio_irq_handle_bank.exit47
  %domain.i56 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 6, i32 37, i32 1
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.body.i63.for.body.i63_crit_edge, %for.body.lr.ph.i57
  %offset.015.i58 = phi i32 [ %call2.i54, %for.body.lr.ph.i57 ], [ %call7.i61, %for.body.i63.for.body.i63_crit_edge ]
  %add4.i = add nuw nsw i32 %offset.015.i58, 32
  %50 = ptrtoint ptr %domain.i56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %domain.i56, align 4
  %call5.i59 = call i32 @generic_handle_domain_irq(ptr noundef %51, i32 noundef %add4.i) #13
  %add6.i60 = add nuw nsw i32 %offset.015.i58, 1
  %call7.i61 = call i32 @_find_next_bit_be(ptr noundef nonnull %events.i48, i32 noundef 32, i32 noundef %add6.i60) #13
  %cmp.i62 = icmp ult i32 %call7.i61, 32
  br i1 %cmp.i62, label %for.body.i63.for.body.i63_crit_edge, label %for.body.i63.bcm2835_gpio_irq_handle_bank.exit64_crit_edge

for.body.i63.bcm2835_gpio_irq_handle_bank.exit64_crit_edge: ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_gpio_irq_handle_bank.exit64

for.body.i63.for.body.i63_crit_edge:              ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i63

bcm2835_gpio_irq_handle_bank.exit64:              ; preds = %for.body.i63.bcm2835_gpio_irq_handle_bank.exit64_crit_edge, %bcm2835_gpio_irq_handle_bank.exit47.bcm2835_gpio_irq_handle_bank.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %events.i48) #13
  br label %sw.epilog

sw.bb17:                                          ; preds = %chained_irq_enter.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events.i65) #13
  %base.i.i66 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 1
  %52 = ptrtoint ptr %base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i66, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %53, i32 68
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67) #13, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %55 = and i32 %54, 12599040
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %arrayidx.i69 = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i69, align 4
  %and1.i70 = and i32 %58, %56
  %59 = ptrtoint ptr %events.i65 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and1.i70, ptr %events.i65, align 4
  %call2.i71 = call i32 @_find_next_bit_be(ptr noundef nonnull %events.i65, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2.i71)
  %cmp14.i72 = icmp ult i32 %call2.i71, 32
  br i1 %cmp14.i72, label %for.body.lr.ph.i74, label %sw.bb17.bcm2835_gpio_irq_handle_bank.exit82_crit_edge

sw.bb17.bcm2835_gpio_irq_handle_bank.exit82_crit_edge: ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_gpio_irq_handle_bank.exit82

for.body.lr.ph.i74:                               ; preds = %sw.bb17
  %domain.i73 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 6, i32 37, i32 1
  br label %for.body.i81

for.body.i81:                                     ; preds = %for.body.i81.for.body.i81_crit_edge, %for.body.lr.ph.i74
  %offset.015.i75 = phi i32 [ %call2.i71, %for.body.lr.ph.i74 ], [ %call7.i79, %for.body.i81.for.body.i81_crit_edge ]
  %add4.i76 = add nuw nsw i32 %offset.015.i75, 32
  %60 = ptrtoint ptr %domain.i73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %domain.i73, align 4
  %call5.i77 = call i32 @generic_handle_domain_irq(ptr noundef %61, i32 noundef %add4.i76) #13
  %add6.i78 = add nuw nsw i32 %offset.015.i75, 1
  %call7.i79 = call i32 @_find_next_bit_be(ptr noundef nonnull %events.i65, i32 noundef 32, i32 noundef %add6.i78) #13
  %cmp.i80 = icmp ult i32 %call7.i79, 32
  br i1 %cmp.i80, label %for.body.i81.for.body.i81_crit_edge, label %for.body.i81.bcm2835_gpio_irq_handle_bank.exit82_crit_edge

for.body.i81.bcm2835_gpio_irq_handle_bank.exit82_crit_edge: ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_gpio_irq_handle_bank.exit82

for.body.i81.for.body.i81_crit_edge:              ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i81

bcm2835_gpio_irq_handle_bank.exit82:              ; preds = %for.body.i81.bcm2835_gpio_irq_handle_bank.exit82_crit_edge, %sw.bb17.bcm2835_gpio_irq_handle_bank.exit82_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %events.i65) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %bcm2835_gpio_irq_handle_bank.exit82, %bcm2835_gpio_irq_handle_bank.exit64, %bcm2835_gpio_irq_handle_bank.exit, %chained_irq_enter.exit.sw.epilog_crit_edge
  %62 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i84 = icmp eq ptr %63, null
  br i1 %tobool.not.i84, label %if.else.i85, label %sw.epilog.chained_irq_exit.exit_crit_edge

sw.epilog.chained_irq_exit.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %chained_irq_exit.exit

if.else.i85:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %64 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i85, %sw.epilog.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %65, %if.else.i85 ], [ %63, %sw.epilog.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_gpio_wake_irq_handler(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_remove_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_gpio_irq_enable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #13
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %rem = and i32 %3, 31
  %div23 = lshr i32 %3, 5
  %arrayidx = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 9, i32 %div23
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #13
  %arrayidx4 = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 3, i32 %div23
  tail call void @_set_bit(i32 noundef %rem, ptr noundef %arrayidx4) #13
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_gpio_irq_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #13
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %rem = and i32 %3, 31
  %div25 = lshr i32 %3, 5
  %arrayidx = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 9, i32 %div25
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #13
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext false)
  %4 = lshr i32 %3, 3
  %mul.i = and i32 %4, 536870908
  %add.i = add nuw nsw i32 %mul.i, 64
  %shl.i = shl nuw i32 1, %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #13
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #13, !srcloc !296
  %arrayidx4 = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 3, i32 %div25
  tail call void @_clear_bit(i32 noundef %rem, ptr noundef %arrayidx4) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_gpio_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #13
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %4 = lshr i32 %3, 3
  %mul.i = and i32 %4, 536870908
  %add.i = add nuw nsw i32 %mul.i, 64
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #13
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #13, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #13
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %rem = and i32 %3, 31
  %div36 = lshr i32 %3, 5
  %arrayidx = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 9, i32 %div36
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #13
  %arrayidx4 = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 3, i32 %div36
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx4, align 4
  %6 = shl nuw i32 1, %rem
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %type, label %if.then.if.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb20.i
    i32 3, label %sw.bb38.i
    i32 4, label %if.then.sw.bb66.i_crit_edge
    i32 8, label %if.then.sw.bb66.i_crit_edge53
  ]

if.then.sw.bb66.i_crit_edge53:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb66.i

if.then.sw.bb66.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb66.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  %arrayidx.i = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 4, i32 %3
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %sw.bb.i.if.else10_crit_edge, label %if.then.i

sw.bb.i.if.else10_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else10

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext false) #13
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.i, align 4
  br label %if.else10

sw.bb3.i:                                         ; preds = %if.then
  %arrayidx5.i = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 4, i32 %3
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %13, label %if.then15.i [
    i32 3, label %if.then7.i
    i32 1, label %sw.bb3.i.do.body12_crit_edge
  ]

sw.bb3.i.do.body12_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body12

if.then7.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %arrayidx5.i, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext false) #13
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx5.i, align 4
  br label %do.body12

if.then15.i:                                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext false) #13
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx5.i, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext true) #13
  br label %do.body12

sw.bb20.i:                                        ; preds = %if.then
  %arrayidx22.i = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 4, i32 %3
  %18 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %19, label %if.then33.i [
    i32 3, label %if.then24.i
    i32 2, label %sw.bb20.i.do.body12_crit_edge
  ]

sw.bb20.i.do.body12_crit_edge:                    ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body12

if.then24.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx22.i, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext false) #13
  %22 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %arrayidx22.i, align 4
  br label %do.body12

if.then33.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext false) #13
  %23 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %arrayidx22.i, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext true) #13
  br label %do.body12

sw.bb38.i:                                        ; preds = %if.then
  %arrayidx40.i = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 4, i32 %3
  %24 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx40.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %25, label %if.then60.i [
    i32 1, label %if.then42.i
    i32 2, label %if.then51.i
    i32 3, label %sw.bb38.i.do.body12_crit_edge
  ]

sw.bb38.i.do.body12_crit_edge:                    ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body12

if.then42.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %arrayidx40.i, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext true) #13
  %28 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %arrayidx40.i, align 4
  br label %do.body12

if.then51.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx40.i, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext true) #13
  %30 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %arrayidx40.i, align 4
  br label %do.body12

if.then60.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext false) #13
  %31 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %arrayidx40.i, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext true) #13
  br label %do.body12

sw.bb66.i:                                        ; preds = %if.then.sw.bb66.i_crit_edge, %if.then.sw.bb66.i_crit_edge53
  %arrayidx68.i = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 4, i32 %3
  %32 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx68.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %type)
  %cmp69.not.i = icmp eq i32 %33, %type
  br i1 %cmp69.not.i, label %sw.bb66.i.if.end_crit_edge, label %if.then70.i

sw.bb66.i.if.end_crit_edge:                       ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then70.i:                                      ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext false) #13
  %34 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %type, ptr %arrayidx68.i, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext true) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %35 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %type, label %if.else.if.end_crit_edge [
    i32 0, label %if.else.sw.bb.i38_crit_edge
    i32 1, label %if.else.sw.bb.i38_crit_edge54
    i32 2, label %if.else.sw.bb.i38_crit_edge55
    i32 3, label %if.else.sw.bb.i38_crit_edge56
    i32 4, label %if.else.sw.bb.i38_crit_edge57
    i32 8, label %if.else.sw.bb.i38_crit_edge58
  ]

if.else.sw.bb.i38_crit_edge58:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i38

if.else.sw.bb.i38_crit_edge57:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i38

if.else.sw.bb.i38_crit_edge56:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i38

if.else.sw.bb.i38_crit_edge55:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i38

if.else.sw.bb.i38_crit_edge54:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i38

if.else.sw.bb.i38_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i38

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

sw.bb.i38:                                        ; preds = %if.else.sw.bb.i38_crit_edge, %if.else.sw.bb.i38_crit_edge54, %if.else.sw.bb.i38_crit_edge55, %if.else.sw.bb.i38_crit_edge56, %if.else.sw.bb.i38_crit_edge57, %if.else.sw.bb.i38_crit_edge58
  %arrayidx.i37 = getelementptr %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 4, i32 %3
  %36 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %type, ptr %arrayidx.i37, align 4
  br label %if.end

if.end:                                           ; preds = %sw.bb.i38, %if.else.if.end_crit_edge, %if.then70.i, %sw.bb66.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ -22, %if.then.if.end_crit_edge ], [ 0, %sw.bb66.i.if.end_crit_edge ], [ 0, %if.then70.i ], [ 0, %sw.bb.i38 ], [ -22, %if.else.if.end_crit_edge ]
  %and = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end.if.else10_crit_edge, label %if.end.do.body12_crit_edge

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body12

if.end.if.else10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else10

if.else10:                                        ; preds = %if.end.if.else10_crit_edge, %if.then.i, %sw.bb.i.if.else10_crit_edge
  %ret.052 = phi i32 [ %ret.0, %if.end.if.else10_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.bb.i.if.else10_crit_edge ]
  br label %do.body12

do.body12:                                        ; preds = %if.else10, %if.end.do.body12_crit_edge, %if.then60.i, %if.then51.i, %if.then42.i, %sw.bb38.i.do.body12_crit_edge, %if.then33.i, %if.then24.i, %sw.bb20.i.do.body12_crit_edge, %if.then15.i, %if.then7.i, %sw.bb3.i.do.body12_crit_edge
  %handle_edge_irq.sink = phi ptr [ @handle_level_irq, %if.else10 ], [ @handle_edge_irq, %sw.bb3.i.do.body12_crit_edge ], [ @handle_edge_irq, %if.then7.i ], [ @handle_edge_irq, %if.then15.i ], [ @handle_edge_irq, %sw.bb20.i.do.body12_crit_edge ], [ @handle_edge_irq, %if.then24.i ], [ @handle_edge_irq, %if.then33.i ], [ @handle_edge_irq, %sw.bb38.i.do.body12_crit_edge ], [ @handle_edge_irq, %if.then42.i ], [ @handle_edge_irq, %if.then51.i ], [ @handle_edge_irq, %if.then60.i ], [ @handle_edge_irq, %if.end.do.body12_crit_edge ]
  %ret.045 = phi i32 [ %ret.052, %if.else10 ], [ 0, %sw.bb3.i.do.body12_crit_edge ], [ 0, %if.then7.i ], [ 0, %if.then15.i ], [ 0, %sw.bb20.i.do.body12_crit_edge ], [ 0, %if.then24.i ], [ 0, %if.then33.i ], [ 0, %sw.bb38.i.do.body12_crit_edge ], [ 0, %if.then42.i ], [ 0, %if.then51.i ], [ 0, %if.then60.i ], [ %ret.0, %if.end.do.body12_crit_edge ]
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %37 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %handle_edge_irq.sink, ptr %handle_irq.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %call3) #13
  ret i32 %ret.045
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_irq_set_wake(ptr nocapture noundef readonly %data, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #13
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %wake_irq = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %wake_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wake_irq, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %3)
  %cmp = icmp ult i32 %3, 28
  br i1 %cmp, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %3)
  %cmp5 = icmp ult i32 %3, 46
  br i1 %cmp5, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true9

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %3)
  %cmp10 = icmp ult i32 %3, 58
  br i1 %cmp10, label %land.lhs.true9.if.end15_crit_edge, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %irqgroup.0 = phi i32 [ 0, %if.end.if.end15_crit_edge ], [ 1, %land.lhs.true.if.end15_crit_edge ], [ 2, %land.lhs.true9.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool16.not = icmp ne i32 %on, 0
  %arrayidx22 = getelementptr i32, ptr %5, i32 %irqgroup.0
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx22, align 4
  %. = zext i1 %tobool16.not to i32
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef %.) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %land.lhs.true9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true9.cleanup_crit_edge ], [ %call.i, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_gpio_irq_config(ptr nocapture noundef readonly %pc, i32 noundef %offset, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bcm2835_pinctrl, ptr %pc, i32 0, i32 4, i32 %offset
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb6
    i32 8, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = lshr i32 %offset, 3
  %mul.i = and i32 %3, 536870908
  %add.i = add nuw nsw i32 %mul.i, 76
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %pc, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !297
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %rem.i = and i32 %offset, 31
  %shl.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %7, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %7, %neg.i
  %value.0.i = select i1 %enable, i32 %or.i, i32 %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %value.0.i) #13
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %10, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %8) #13, !srcloc !296
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %11 = lshr i32 %offset, 3
  %mul.i27 = and i32 %11, 536870908
  %add.i28 = add nuw nsw i32 %mul.i27, 88
  %base.i.i29 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %pc, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %13, i32 %add.i28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #13, !srcloc !297
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %rem.i31 = and i32 %offset, 31
  %shl.i32 = shl nuw i32 1, %rem.i31
  %or.i33 = or i32 %15, %shl.i32
  %neg.i34 = xor i32 %shl.i32, -1
  %and.i35 = and i32 %15, %neg.i34
  %value.0.i36 = select i1 %enable, i32 %or.i33, i32 %and.i35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %value.0.i36) #13
  %17 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i12.i37 = getelementptr i8, ptr %18, i32 %add.i28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i37, i32 %16) #13, !srcloc !296
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %19 = lshr i32 %offset, 3
  %mul.i38 = and i32 %19, 536870908
  %add.i39 = add nuw nsw i32 %mul.i38, 76
  %base.i.i40 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %pc, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i40, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %21, i32 %add.i39
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #13, !srcloc !297
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %rem.i42 = and i32 %offset, 31
  %shl.i43 = shl nuw i32 1, %rem.i42
  %or.i44 = or i32 %23, %shl.i43
  %neg.i45 = xor i32 %shl.i43, -1
  %and.i46 = and i32 %23, %neg.i45
  %value.0.i47 = select i1 %enable, i32 %or.i44, i32 %and.i46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %24 = tail call i32 @llvm.bswap.i32(i32 %value.0.i47) #13
  %25 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i40, align 4
  %add.ptr.i12.i48 = getelementptr i8, ptr %26, i32 %add.i39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i48, i32 %24) #13, !srcloc !296
  %add.i50 = add nuw nsw i32 %mul.i38, 88
  %27 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i40, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %28, i32 %add.i50
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #13, !srcloc !297
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %or.i55 = or i32 %30, %shl.i43
  %and.i57 = and i32 %30, %neg.i45
  %value.0.i58 = select i1 %enable, i32 %or.i55, i32 %and.i57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %31 = tail call i32 @llvm.bswap.i32(i32 %value.0.i58) #13
  %32 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i40, align 4
  %add.ptr.i12.i59 = getelementptr i8, ptr %33, i32 %add.i50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i59, i32 %31) #13, !srcloc !296
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %34 = lshr i32 %offset, 3
  %mul.i60 = and i32 %34, 536870908
  %add.i61 = add nuw nsw i32 %mul.i60, 100
  %base.i.i62 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %pc, i32 0, i32 1
  %35 = ptrtoint ptr %base.i.i62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i62, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %36, i32 %add.i61
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i63) #13, !srcloc !297
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %rem.i64 = and i32 %offset, 31
  %shl.i65 = shl nuw i32 1, %rem.i64
  %or.i66 = or i32 %38, %shl.i65
  %neg.i67 = xor i32 %shl.i65, -1
  %and.i68 = and i32 %38, %neg.i67
  %value.0.i69 = select i1 %enable, i32 %or.i66, i32 %and.i68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %39 = tail call i32 @llvm.bswap.i32(i32 %value.0.i69) #13
  %40 = ptrtoint ptr %base.i.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i62, align 4
  %add.ptr.i12.i70 = getelementptr i8, ptr %41, i32 %add.i61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i70, i32 %39) #13, !srcloc !296
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %42 = lshr i32 %offset, 3
  %mul.i71 = and i32 %42, 536870908
  %add.i72 = add nuw nsw i32 %mul.i71, 112
  %base.i.i73 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %pc, i32 0, i32 1
  %43 = ptrtoint ptr %base.i.i73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i73, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %44, i32 %add.i72
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i74) #13, !srcloc !297
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %rem.i75 = and i32 %offset, 31
  %shl.i76 = shl nuw i32 1, %rem.i75
  %or.i77 = or i32 %46, %shl.i76
  %neg.i78 = xor i32 %shl.i76, -1
  %and.i79 = and i32 %46, %neg.i78
  %value.0.i80 = select i1 %enable, i32 %or.i77, i32 %and.i79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %47 = tail call i32 @llvm.bswap.i32(i32 %value.0.i80) #13
  %48 = ptrtoint ptr %base.i.i73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i73, align 4
  %add.ptr.i12.i81 = getelementptr i8, ptr %49, i32 %add.i72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i81, i32 %47) #13, !srcloc !296
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %div.i = udiv i32 %offset, 10
  %mul.i = shl nuw nsw i32 %div.i, 2
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !297
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %4 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %offset, %4
  %mul1.i = mul nuw nsw i32 %rem.i.decomposed, 3
  %shr.i = lshr i32 %3, %mul1.i
  %and.i = and i32 %shr.i, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_get.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_gpio_get_direction, %bcm2835_pinctrl_fsel_get.exit)) #13
          to label %if.then.i [label %bcm2835_pinctrl_fsel_get.exit], !srcloc !300

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %arrayidx.i = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %and.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_get.__UNIQUE_ID_ddebug227, ptr noundef %6, ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %offset, ptr noundef %8) #13
  br label %bcm2835_pinctrl_fsel_get.exit

bcm2835_pinctrl_fsel_get.exit:                    ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2 = icmp eq i32 %and.i, 0
  %. = zext i1 %cmp2 to i32
  %retval.0 = select i1 %cmp, i32 -22, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %div.i = udiv i32 %offset, 10
  %mul.i = shl nuw nsw i32 %div.i, 2
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !297
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %4 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %offset, %4
  %mul1.i = mul nuw nsw i32 %rem.i.decomposed, 3
  %shr.i = lshr i32 %3, %mul1.i
  %and.i = and i32 %shr.i, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_gpio_direction_input, %do.end.i)) #13
          to label %if.then.i [label %do.end.i], !srcloc !300

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %arrayidx.i = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %and.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug228, ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %3, i32 noundef %offset, ptr noundef %8) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.end.i.bcm2835_pinctrl_fsel_set.exit_crit_edge, label %if.end7.i

do.end.i.bcm2835_pinctrl_fsel_set.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_pinctrl_fsel_set.exit

if.end7.i:                                        ; preds = %do.end.i
  %.pre.i = shl nuw nsw i32 7, %mul1.i
  %.pre115.i = xor i32 %.pre.i, -1
  %and44.i = and i32 %3, %.pre115.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_gpio_direction_input, %do.end68.i)) #13
          to label %if.then63.i [label %do.end68.i], !srcloc !300

if.then63.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug230, ptr noundef %10, ptr noundef nonnull @.str.30, i32 noundef %and44.i, i32 noundef %offset, ptr noundef nonnull @.str.19) #13
  br label %do.end68.i

do.end68.i:                                       ; preds = %if.then63.i, %if.end7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %and44.i) #13
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %13, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 %11) #13, !srcloc !296
  br label %bcm2835_pinctrl_fsel_set.exit

bcm2835_pinctrl_fsel_set.exit:                    ; preds = %do.end68.i, %do.end.i.bcm2835_pinctrl_fsel_set.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool.not, i32 40, i32 28
  %0 = lshr i32 %offset, 3
  %mul.i = and i32 %0, 536870908
  %add.i = add nuw nsw i32 %cond, %mul.i
  %rem.i = and i32 %offset, 31
  %shl.i = shl nuw i32 1, %rem.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %1 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #13
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %1) #13, !srcloc !296
  tail call fastcc void @bcm2835_pinctrl_fsel_set(ptr noundef %call, i32 noundef %offset, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %0 = lshr i32 %offset, 3
  %mul.i = and i32 %0, 536870908
  %add.i = add nuw nsw i32 %mul.i, 52
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !297
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %rem.i = and i32 %offset, 31
  %shr.i = lshr i32 %4, %rem.i
  %and.i = and i32 %shr.i, 1
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool.not, i32 40, i32 28
  %0 = lshr i32 %offset, 3
  %mul.i = and i32 %0, 536870908
  %add.i = add nuw nsw i32 %cond, %mul.i
  %rem.i = and i32 %offset, 31
  %shl.i = shl nuw i32 1, %rem.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %1 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #13
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %1) #13, !srcloc !296
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_pinctrl_fsel_set(ptr nocapture noundef readonly %pc, i32 noundef %pin, i32 noundef %fsel) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %div = udiv i32 %pin, 10
  %mul = shl nuw nsw i32 %div, 2
  %base.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %pc, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !297
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %4 = mul i32 %div, 10
  %rem.decomposed = sub i32 %pin, %4
  %mul1 = mul nuw nsw i32 %rem.decomposed, 3
  %shr = lshr i32 %3, %mul1
  %and = and i32 %shr, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_pinctrl_fsel_set, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pc, align 4
  %arrayidx = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug228, ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %3, i32 noundef %pin, ptr noundef %8) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %fsel)
  %cmp = icmp eq i32 %and, %fsel
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp8.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fsel)
  %cmp9.not = icmp eq i32 %fsel, 0
  %or.cond = or i1 %cmp9.not, %cmp8.not
  %.pre = shl nuw nsw i32 7, %mul1
  %.pre115 = xor i32 %.pre, -1
  br i1 %or.cond, label %if.end7.if.end39_crit_edge, label %if.then10

if.end7.if.end39_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then10:                                        ; preds = %if.end7
  %and13 = and i32 %3, %.pre115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_pinctrl_fsel_set, %do.end35)) #13
          to label %if.then31 [label %do.end35], !srcloc !300

if.then31:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug229, ptr noundef %10, ptr noundef nonnull @.str.29, i32 noundef %and13, i32 noundef %pin, ptr noundef nonnull @.str.19) #13
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %if.then10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %and13) #13
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %13, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %11) #13, !srcloc !296
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %if.end7.if.end39_crit_edge
  %val.0 = phi i32 [ %and13, %do.end35 ], [ %3, %if.end7.if.end39_crit_edge ]
  %and44 = and i32 %val.0, %.pre115
  %shl47 = shl i32 %fsel, %mul1
  %or48 = or i32 %and44, %shl47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_pinctrl_fsel_set, %do.end68)) #13
          to label %if.then63 [label %do.end68], !srcloc !300

if.then63:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pc, align 4
  %arrayidx65 = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %fsel
  %16 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug230, ptr noundef %15, ptr noundef nonnull @.str.30, i32 noundef %or48, i32 noundef %pin, ptr noundef %17) #13
  br label %do.end68

do.end68:                                         ; preds = %if.then63, %if.end39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %18 = tail call i32 @llvm.bswap.i32(i32 %or48) #13
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %20, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %18) #13, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_pctl_get_groups_count(ptr nocapture noundef readnone %pctldev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm2835_pctl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [58 x ptr], ptr @bcm2835_gpio_groups, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm2835_pctl_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [58 x %struct.pinctrl_pin_desc], ptr @bcm2835_gpio_pins, i32 0, i32 %selector
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %pins, align 4
  %1 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_pctl_pin_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %offset) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %div.i = udiv i32 %offset, 10
  %mul.i = shl nuw nsw i32 %div.i, 2
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !297
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %4 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %offset, %4
  %mul1.i = mul nuw nsw i32 %rem.i.decomposed, 3
  %shr.i = lshr i32 %3, %mul1.i
  %and.i = and i32 %shr.i, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_get.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_pctl_pin_dbg_show, %bcm2835_pinctrl_fsel_get.exit)) #13
          to label %if.then.i [label %bcm2835_pinctrl_fsel_get.exit], !srcloc !300

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %arrayidx.i = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %and.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_get.__UNIQUE_ID_ddebug227, ptr noundef %6, ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %offset, ptr noundef %8) #13
  br label %bcm2835_pinctrl_fsel_get.exit

bcm2835_pinctrl_fsel_get.exit:                    ; preds = %if.then.i, %entry
  %arrayidx = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %and.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = lshr i32 %offset, 3
  %mul.i13 = and i32 %11, 536870908
  %add.i = add nuw nsw i32 %mul.i13, 52
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %13, i32 %add.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #13, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %domain = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 6, i32 37, i32 1
  %15 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %irq.i, align 4, !annotation !294
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %16, i32 noundef %offset, ptr noundef nonnull %irq.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %bcm2835_pinctrl_fsel_get.exit.irq_find_mapping.exit_crit_edge, label %if.then.i19

bcm2835_pinctrl_fsel_get.exit.irq_find_mapping.exit_crit_edge: ; preds = %bcm2835_pinctrl_fsel_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit

if.then.i19:                                      ; preds = %bcm2835_pinctrl_fsel_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i19, %bcm2835_pinctrl_fsel_get.exit.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.then.i19 ], [ 0, %bcm2835_pinctrl_fsel_get.exit.irq_find_mapping.exit_crit_edge ]
  %20 = call i32 @llvm.bswap.i32(i32 %14) #13
  %rem.i16 = and i32 %offset, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  %21 = shl nuw i32 1, %rem.i16
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  %cond = select i1 %tobool.not, ptr @.str.91, ptr @.str.90
  %arrayidx5 = getelementptr %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 4, i32 %offset
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr [9 x ptr], ptr @irq_type_names, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx6, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.89, ptr noundef %10, ptr noundef nonnull %cond, i32 noundef %retval.0.i, ptr noundef %26) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pctl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr noundef %map, ptr noundef %num_maps) #2 align 64 {
entry:
  %pin = alloca i32, align 4
  %func = alloca i32, align 4
  %pull = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pin) #13
  %0 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pin, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %func) #13
  %1 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %func, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pull) #13
  %2 = ptrtoint ptr %pull to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pull, align 4, !annotation !294
  %call.i = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.98, ptr noundef null) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.99, ptr noundef %np) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.101, ptr noundef null) #13
  %call8 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.102, ptr noundef null) #13
  %tobool9.not = icmp eq ptr %call7, null
  %tobool10.not = icmp eq ptr %call8, null
  %or.cond = select i1 %tobool9.not, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.104, ptr noundef %np) #16
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %length = getelementptr inbounds %struct.property, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %div = sdiv i32 %10, 4
  br i1 %tobool9.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %length18 = getelementptr inbounds %struct.property, ptr %call7, i32 0, i32 1
  %11 = ptrtoint ptr %length18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length18, align 4
  %div19 = sdiv i32 %12, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %div19, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  br i1 %tobool10.not, label %cond.end.cond.end25_crit_edge, label %cond.true21

cond.end.cond.end25_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end25

cond.true21:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %length22 = getelementptr inbounds %struct.property, ptr %call8, i32 0, i32 1
  %13 = ptrtoint ptr %length22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length22, align 4
  %div23 = sdiv i32 %14, 4
  br label %cond.end25

cond.end25:                                       ; preds = %cond.true21, %cond.end.cond.end25_crit_edge
  %cond26 = phi i32 [ %div23, %cond.true21 ], [ 0, %cond.end.cond.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp = icmp sgt i32 %cond, 1
  %cmp.not = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %div)
  %cmp28.not = icmp eq i32 %cond, %div
  %or.cond178 = select i1 %cmp.not, i1 true, i1 %cmp28.not
  br i1 %or.cond178, label %if.end34, label %do.end32

do.end32:                                         ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.107, ptr noundef %np, i32 noundef %div) #16
  br label %cleanup

if.end34:                                         ; preds = %cond.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond26)
  %cmp35 = icmp sgt i32 %cond26, 1
  %cmp35.not = xor i1 %cmp35, true
  call void @__sanitizer_cov_trace_cmp4(i32 %cond26, i32 %div)
  %cmp37.not = icmp eq i32 %cond26, %div
  %or.cond179 = select i1 %cmp35.not, i1 true, i1 %cmp37.not
  br i1 %or.cond179, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.110, ptr noundef %np, i32 noundef %div) #16
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool44.not = icmp eq i32 %cond, 0
  %not.tobool44.not = xor i1 %tobool44.not, true
  %spec.select = zext i1 %not.tobool44.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond26)
  %tobool47.not = icmp eq i32 %cond26, 0
  %inc49 = select i1 %tobool44.not, i32 1, i32 2
  %maps_per_pin.1 = select i1 %tobool47.not, i32 %spec.select, i32 %inc49
  %mul = mul nsw i32 %maps_per_pin.1, %div
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 28) #13
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.end43.cleanup_crit_edge, label %if.end7.i.i, !prof !301

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end43
  %21 = extractvalue { i32, i1 } %19, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #18
  %tobool52.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool52.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp55208 = icmp sgt i32 %10, 3
  br i1 %cmp55208, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %npins = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 7, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0210 = phi i32 [ 0, %for.body.lr.ph ], [ %inc99, %for.inc.for.body_crit_edge ]
  %cur_map.0209 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %cur_map.4, %for.inc.for.body_crit_edge ]
  %call56 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.98, i32 noundef %i.0210, ptr noundef nonnull %pin) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end59:                                         ; preds = %for.body
  %22 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pin, align 4
  %24 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp60.not = icmp ult i32 %23, %25
  br i1 %cmp60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.113, ptr noundef %np, i32 noundef %23) #16
  br label %out

if.end66:                                         ; preds = %if.end59
  br i1 %tobool44.not, label %if.end66.if.end82_crit_edge, label %if.then68

if.end66.if.end82_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then68:                                        ; preds = %if.end66
  %spec.select180 = select i1 %cmp, i32 %i.0210, i32 0
  %call74 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.101, i32 noundef %spec.select180, ptr noundef nonnull %func) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.then68.out_crit_edge

if.then68.out_crit_edge:                          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end77:                                         ; preds = %if.then68
  %28 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %29)
  %cmp.i = icmp ugt i32 %29, 7
  br i1 %cmp.i, label %bcm2835_pctl_dt_node_to_map_func.exit, label %bcm2835_pctl_dt_node_to_map_func.exit.thread

bcm2835_pctl_dt_node_to_map_func.exit.thread:     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pin, align 4
  %type.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.0209, i32 0, i32 2
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %type.i, align 4
  %arrayidx.i = getelementptr [58 x ptr], ptr @bcm2835_gpio_groups, i32 0, i32 %31
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %data.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.0209, i32 0, i32 4
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %data.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %29
  %36 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx1.i, align 4
  %function.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.0209, i32 0, i32 4, i32 0, i32 1
  %38 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %function.i, align 4
  %incdec.ptr.i = getelementptr %struct.pinctrl_map, ptr %cur_map.0209, i32 1
  br label %if.end82

bcm2835_pctl_dt_node_to_map_func.exit:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.115, ptr noundef %np, i32 noundef %29) #16
  br label %out

if.end82:                                         ; preds = %bcm2835_pctl_dt_node_to_map_func.exit.thread, %if.end66.if.end82_crit_edge
  %cur_map.2 = phi ptr [ %cur_map.0209, %if.end66.if.end82_crit_edge ], [ %incdec.ptr.i, %bcm2835_pctl_dt_node_to_map_func.exit.thread ]
  br i1 %tobool47.not, label %if.end82.for.inc_crit_edge, label %if.then84

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then84:                                        ; preds = %if.end82
  %spec.select181 = select i1 %cmp35, i32 %i.0210, i32 0
  %call90 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.102, i32 noundef %spec.select181, ptr noundef nonnull %pull) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.then84.out_crit_edge

if.then84.out_crit_edge:                          ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end93:                                         ; preds = %if.then84
  %41 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pin, align 4
  %43 = ptrtoint ptr %pull to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pull, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i182 = icmp ugt i32 %44, 2
  br i1 %cmp.i182, label %do.end.i183, label %if.end.i185

do.end.i183:                                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.117, ptr noundef %np, i32 noundef %44) #16
  br label %out

if.end.i185:                                      ; preds = %if.end93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i184 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 4) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i184, null
  br i1 %tobool.not.i, label %if.end.i185.out_crit_edge, label %bcm2835_pctl_dt_node_to_map_pull.exit

if.end.i185.out_crit_edge:                        ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

bcm2835_pctl_dt_node_to_map_pull.exit:            ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i.i = shl nuw nsw i32 %44, 8
  %or.i.i = or i32 %shl.i.i, 128
  %48 = ptrtoint ptr %call7.i.i.i184 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i.i, ptr %call7.i.i.i184, align 8
  %type.i186 = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.2, i32 0, i32 2
  %49 = ptrtoint ptr %type.i186 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %type.i186, align 4
  %name.i = getelementptr [58 x %struct.pinctrl_pin_desc], ptr @bcm2835_gpio_pins, i32 0, i32 %42, i32 1
  %50 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name.i, align 4
  %data.i187 = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.2, i32 0, i32 4
  %52 = ptrtoint ptr %data.i187 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %data.i187, align 4
  %configs6.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.2, i32 0, i32 4, i32 0, i32 1
  %53 = ptrtoint ptr %configs6.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i.i184, ptr %configs6.i, align 4
  %num_configs.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.2, i32 0, i32 4, i32 0, i32 2
  %54 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %num_configs.i, align 4
  %incdec.ptr.i188 = getelementptr %struct.pinctrl_map, ptr %cur_map.2, i32 1
  br label %for.inc

for.inc:                                          ; preds = %bcm2835_pctl_dt_node_to_map_pull.exit, %if.end82.for.inc_crit_edge
  %cur_map.4 = phi ptr [ %cur_map.2, %if.end82.for.inc_crit_edge ], [ %incdec.ptr.i188, %bcm2835_pctl_dt_node_to_map_pull.exit ]
  %inc99 = add nuw nsw i32 %i.0210, 1
  %exitcond.not = icmp eq i32 %inc99, %div
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %55 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call8.i.i, ptr %map, align 4
  %56 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul, ptr %num_maps, align 4
  br label %cleanup

out:                                              ; preds = %if.end.i185.out_crit_edge, %do.end.i183, %if.then84.out_crit_edge, %bcm2835_pctl_dt_node_to_map_func.exit, %if.then68.out_crit_edge, %do.end64, %for.body.out_crit_edge
  %err.0 = phi i32 [ -22, %do.end64 ], [ -22, %bcm2835_pctl_dt_node_to_map_func.exit ], [ -22, %do.end.i183 ], [ -12, %if.end.i185.out_crit_edge ], [ %call90, %if.then84.out_crit_edge ], [ %call74, %if.then68.out_crit_edge ], [ %call56, %for.body.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp8.not.i = icmp eq i32 %mul, 0
  br i1 %cmp8.not.i, label %out.bcm2835_pctl_dt_free_map.exit_crit_edge, label %out.for.body.i_crit_edge

out.for.body.i_crit_edge:                         ; preds = %out
  br label %for.body.i

out.bcm2835_pctl_dt_free_map.exit_crit_edge:      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_pctl_dt_free_map.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %out.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %out.for.body.i_crit_edge ]
  %type.i190 = getelementptr %struct.pinctrl_map, ptr %call8.i.i, i32 %i.09.i, i32 2
  %57 = ptrtoint ptr %type.i190 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp1.i = icmp eq i32 %58, 3
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %configs.i = getelementptr %struct.pinctrl_map, ptr %call8.i.i, i32 %i.09.i, i32 4, i32 0, i32 1
  %59 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %configs.i, align 4
  call void @kfree(ptr noundef %60) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul
  br i1 %exitcond.not.i, label %for.inc.i.bcm2835_pctl_dt_free_map.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.bcm2835_pctl_dt_free_map.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_pctl_dt_free_map.exit

bcm2835_pctl_dt_free_map.exit:                    ; preds = %for.inc.i.bcm2835_pctl_dt_free_map.exit_crit_edge, %out.bcm2835_pctl_dt_free_map.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %bcm2835_pctl_dt_free_map.exit, %for.end, %if.end7.i.i.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %do.end41, %do.end32, %do.end14, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end32 ], [ -22, %do.end41 ], [ %err.0, %bcm2835_pctl_dt_free_map.exit ], [ 0, %for.end ], [ -22, %do.end14 ], [ -22, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pull) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %func) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pin) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_pctl_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %maps, i32 noundef %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_maps)
  %cmp8.not = icmp eq i32 %num_maps, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %type = getelementptr %struct.pinctrl_map, ptr %maps, i32 %i.09, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %configs = getelementptr %struct.pinctrl_map, ptr %maps, i32 %i.09, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configs, align 4
  tail call void @kfree(ptr noundef %3) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %num_maps
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %maps) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pmx_free(ptr noundef %pctldev, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %div.i = udiv i32 %offset, 10
  %mul.i = shl nuw nsw i32 %div.i, 2
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !297
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %4 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %offset, %4
  %mul1.i = mul nuw nsw i32 %rem.i.decomposed, 3
  %shr.i = lshr i32 %3, %mul1.i
  %and.i = and i32 %shr.i, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_pmx_free, %do.end.i)) #13
          to label %if.then.i [label %do.end.i], !srcloc !300

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %arrayidx.i = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %and.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug228, ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %3, i32 noundef %offset, ptr noundef %8) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.end.i.bcm2835_pinctrl_fsel_set.exit_crit_edge, label %if.end7.i

do.end.i.bcm2835_pinctrl_fsel_set.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_pinctrl_fsel_set.exit

if.end7.i:                                        ; preds = %do.end.i
  %.pre.i = shl nuw nsw i32 7, %mul1.i
  %.pre115.i = xor i32 %.pre.i, -1
  %and44.i = and i32 %3, %.pre115.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_pmx_free, %do.end68.i)) #13
          to label %if.then63.i [label %do.end68.i], !srcloc !300

if.then63.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug230, ptr noundef %10, ptr noundef nonnull @.str.30, i32 noundef %and44.i, i32 noundef %offset, ptr noundef nonnull @.str.19) #13
  br label %do.end68.i

do.end68.i:                                       ; preds = %if.then63.i, %if.end7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %and44.i) #13
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %13, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 %11) #13, !srcloc !296
  br label %bcm2835_pinctrl_fsel_set.exit

bcm2835_pinctrl_fsel_set.exit:                    ; preds = %do.end68.i, %do.end.i.bcm2835_pinctrl_fsel_set.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_pmx_get_functions_count(ptr nocapture noundef readnone %pctldev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm2835_pmx_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm2835_pmx_get_function_groups(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bcm2835_gpio_groups, ptr %groups, align 4
  %1 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 54, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pmx_set(ptr noundef %pctldev, i32 noundef %func_selector, i32 noundef %group_selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  tail call fastcc void @bcm2835_pinctrl_fsel_set(ptr noundef %call, i32 noundef %group_selector, i32 noundef %func_selector)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_pmx_gpio_disable_free(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %div.i = udiv i32 %offset, 10
  %mul.i = shl nuw nsw i32 %div.i, 2
  %base.i.i = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !297
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %4 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %offset, %4
  %mul1.i = mul nuw nsw i32 %rem.i.decomposed, 3
  %shr.i = lshr i32 %3, %mul1.i
  %and.i = and i32 %shr.i, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_pmx_gpio_disable_free, %do.end.i)) #13
          to label %if.then.i [label %do.end.i], !srcloc !300

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %arrayidx.i = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %and.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug228, ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %3, i32 noundef %offset, ptr noundef %8) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.end.i.bcm2835_pinctrl_fsel_set.exit_crit_edge, label %if.end7.i

do.end.i.bcm2835_pinctrl_fsel_set.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bcm2835_pinctrl_fsel_set.exit

if.end7.i:                                        ; preds = %do.end.i
  %.pre.i = shl nuw nsw i32 7, %mul1.i
  %.pre115.i = xor i32 %.pre.i, -1
  %and44.i = and i32 %3, %.pre115.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_pmx_gpio_disable_free, %do.end68.i)) #13
          to label %if.then63.i [label %do.end68.i], !srcloc !300

if.then63.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug230, ptr noundef %10, ptr noundef nonnull @.str.30, i32 noundef %and44.i, i32 noundef %offset, ptr noundef nonnull @.str.19) #13
  br label %do.end68.i

do.end68.i:                                       ; preds = %if.then63.i, %if.end7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %and44.i) #13
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %13, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 %11) #13, !srcloc !296
  br label %bcm2835_pinctrl_fsel_set.exit

bcm2835_pinctrl_fsel_set.exit:                    ; preds = %do.end68.i, %do.end.i.bcm2835_pinctrl_fsel_set.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pmx_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %not.input = xor i1 %input, true
  %cond = zext i1 %not.input to i32
  tail call fastcc void @bcm2835_pinctrl_fsel_set(ptr noundef %call, i32 noundef %offset, i32 noundef %cond)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_pinconf_get(ptr nocapture noundef readnone %pctldev, i32 noundef %pin, ptr nocapture noundef readnone %config) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp55.not = icmp eq i32 %num_configs, 0
  br i1 %cmp55.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = lshr i32 %pin, 3
  %mul.i49 = and i32 %0, 536870908
  %rem.i51 = and i32 %pin, 31
  %shl.i52 = shl nuw i32 1, %rem.i51
  %1 = tail call i32 @llvm.bswap.i32(i32 %shl.i52) #13
  %base.i.i53 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 1
  %add.i45 = add nuw nsw i32 %mul.i49, 152
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.056
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 -128, label %sw.bb
    i8 1, label %sw.bb4
    i8 3, label %sw.bb5
    i8 5, label %sw.bb6
    i8 17, label %sw.bb7
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %5 = shl i32 %3, 16
  %6 = and i32 %5, 50331648
  %7 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #13, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %11, i32 %add.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %1) #13, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %14, i32 %add.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #13, !srcloc !296
  br label %for.inc

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %16, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27, i32 0) #13, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i9.i31 = getelementptr i8, ptr %19, i32 %add.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i31, i32 %1) #13, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i11.i32 = getelementptr i8, ptr %22, i32 %add.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i32, i32 0) #13, !srcloc !296
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %24, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35, i32 16777216) #13, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i9.i39 = getelementptr i8, ptr %27, i32 %add.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i39, i32 %1) #13, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i11.i40 = getelementptr i8, ptr %30, i32 %add.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i40, i32 0) #13, !srcloc !296
  br label %for.inc

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %32, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43, i32 33554432) #13, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i9.i47 = getelementptr i8, ptr %35, i32 %add.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i47, i32 %1) #13, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i11.i48 = getelementptr i8, ptr %38, i32 %add.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i48, i32 0) #13, !srcloc !296
  br label %for.inc

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %tobool.not = icmp ult i32 %3, 256
  %cond = select i1 %tobool.not, i32 40, i32 28
  %add.i50 = add nuw nsw i32 %cond, %mul.i49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %40, i32 %add.i50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 %1) #13, !srcloc !296
  br label %for.inc

for.inc:                                          ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb
  %inc = add nuw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2711_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp74.not = icmp eq i32 %num_configs, 0
  br i1 %cmp74.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = lshr i32 %pin, 3
  %mul.i68 = and i32 %0, 536870908
  %rem.i70 = and i32 %pin, 31
  %shl.i71 = shl nuw i32 1, %rem.i70
  %1 = tail call i32 @llvm.bswap.i32(i32 %shl.i71) #13
  %base.i.i72 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %call, i32 0, i32 1
  %rem.i56 = shl i32 %pin, 1
  %mul.i57 = and i32 %rem.i56, 30
  %2 = lshr i32 %pin, 2
  %mul1.i58 = and i32 %2, 1073741820
  %add.i59 = add nuw nsw i32 %mul1.i58, 228
  %shl.i62 = shl nuw i32 3, %mul.i57
  %neg.i63 = xor i32 %shl.i62, -1
  %shl2.i65 = shl nuw nsw i32 1, %mul.i57
  %shl2.i53 = shl nuw i32 2, %mul.i57
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.075
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %4 to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 -128, label %sw.bb
    i8 1, label %sw.bb9
    i8 3, label %sw.bb10
    i8 5, label %sw.bb11
    i8 17, label %sw.bb12
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %shr.i = lshr i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %switch.selectcmp = icmp eq i32 %shr.i, 1
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %switch.selectcmp31 = icmp eq i32 %shr.i, 2
  %switch.select32 = select i1 %switch.selectcmp31, i32 1, i32 %switch.select
  %6 = ptrtoint ptr %base.i.i72 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i72, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i59
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !297
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %and.i33 = and i32 %9, %neg.i63
  %shl2.i = shl nuw i32 %switch.select32, %mul.i57
  %or.i = or i32 %and.i33, %shl2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %11 = ptrtoint ptr %base.i.i72 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i72, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %12, i32 %add.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %10) #13, !srcloc !296
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %base.i.i72 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i72, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %14, i32 %add.i59
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #13, !srcloc !297
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %and.i42 = and i32 %16, %neg.i63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i42) #13
  %18 = ptrtoint ptr %base.i.i72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i72, align 4
  %add.ptr.i13.i43 = getelementptr i8, ptr %19, i32 %add.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i43, i32 %17) #13, !srcloc !296
  br label %for.inc

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %base.i.i72 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i72, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %21, i32 %add.i59
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49) #13, !srcloc !297
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %and.i52 = and i32 %23, %neg.i63
  %or.i54 = or i32 %and.i52, %shl2.i53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i54) #13
  %25 = ptrtoint ptr %base.i.i72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i72, align 4
  %add.ptr.i13.i55 = getelementptr i8, ptr %26, i32 %add.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i55, i32 %24) #13, !srcloc !296
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %base.i.i72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i72, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %28, i32 %add.i59
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61) #13, !srcloc !297
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %and.i64 = and i32 %30, %neg.i63
  %or.i66 = or i32 %and.i64, %shl2.i65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i66) #13
  %32 = ptrtoint ptr %base.i.i72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i72, align 4
  %add.ptr.i13.i67 = getelementptr i8, ptr %33, i32 %add.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i67, i32 %31) #13, !srcloc !296
  br label %for.inc

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool.not = icmp ult i32 %4, 256
  %cond = select i1 %tobool.not, i32 40, i32 28
  %add.i69 = add nuw nsw i32 %cond, %mul.i68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %base.i.i72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i72, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %35, i32 %add.i69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i73, i32 %1) #13, !srcloc !296
  br label %for.inc

for.inc:                                          ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !82, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !236, !237, !239, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !271, !273, !275, !277, !279, !281, !283}
!llvm.module.flags = !{!285, !286, !287, !288, !289, !290, !291, !292}
!llvm.ident = !{!293}

!0 = !{ptr @__initcall__kmod_pinctrl_bcm2835__233_1351_bcm2835_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_bcm2835__233_1351_bcm2835_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1351, i32 1}
!2 = !{ptr @__exitcall_bcm2835_pinctrl_driver_exit, !1, !"__exitcall_bcm2835_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author234, !4, !"__UNIQUE_ID_author234", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1353, i32 1}
!5 = !{ptr @__UNIQUE_ID_author235, !6, !"__UNIQUE_ID_author235", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1354, i32 1}
!7 = !{ptr @__UNIQUE_ID_author236, !8, !"__UNIQUE_ID_author236", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1355, i32 1}
!9 = !{ptr @__UNIQUE_ID_description237, !10, !"__UNIQUE_ID_description237", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1356, i32 1}
!11 = !{ptr @__UNIQUE_ID_file238, !12, !"__UNIQUE_ID_file238", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1357, i32 1}
!13 = !{ptr @__UNIQUE_ID_license239, !12, !"__UNIQUE_ID_license239", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1346, i32 11}
!16 = !{ptr @bcm2835_pinctrl_driver, !17, !"bcm2835_pinctrl_driver", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1343, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1214, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bcm2835_pinctrl_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcm2835_pinctrl_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1227, i32 40}
!28 = !{ptr @bcm2835_pinctrl_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1249, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1316, i32 23}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1323, i32 4}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @bcm2835_pinctrl_probe._entry.9, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @bcm2835_pinctrl_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @bcm2835_pinctrl_probe.lock_key, !39, !"lock_key", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1330, i32 8}
!40 = !{ptr @bcm2835_pinctrl_probe.request_key, !39, !"request_key", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1332, i32 3}
!43 = !{ptr @bcm2835_pinctrl_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bcm2835_pinctrl_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @bcm2835_gpio_irq_chip, !46, !"bcm2835_gpio_irq_chip", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 678, i32 24}
!47 = !{ptr @bcm2835_pinctrl_match, !48, !"bcm2835_pinctrl_match", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1174, i32 34}
!49 = !{ptr @bcm2835_plat_data, !50, !"bcm2835_plat_data", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1162, i32 35}
!51 = !{ptr @bcm2835_gpio_chip, !52, !"bcm2835_gpio_chip", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 361, i32 31}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 277, i32 2}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @bcm2835_pinctrl_fsel_get.__UNIQUE_ID_ddebug227, !54, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 226, i32 27}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 227, i32 28}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 233, i32 24}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 232, i32 24}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 228, i32 24}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 229, i32 24}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 230, i32 24}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 231, i32 24}
!74 = !{ptr @bcm2835_functions, !75, !"bcm2835_functions", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 225, i32 27}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 290, i32 2}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug228, !77, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 301, i32 3}
!82 = !{ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug229, !81, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 309, i32 2}
!85 = !{ptr @bcm2835_pinctrl_fsel_set.__UNIQUE_ID_ddebug230, !84, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!86 = !{ptr @bcm2835_pinctrl_desc, !87, !"bcm2835_pinctrl_desc", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1126, i32 34}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 98, i32 2}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 99, i32 2}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 100, i32 2}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 101, i32 2}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 102, i32 2}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 103, i32 2}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 104, i32 2}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 105, i32 2}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 106, i32 2}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 107, i32 2}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 108, i32 2}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 109, i32 2}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 110, i32 2}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 111, i32 2}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 112, i32 2}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 113, i32 2}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 114, i32 2}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 115, i32 2}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 116, i32 2}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 117, i32 2}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 118, i32 2}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 119, i32 2}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 120, i32 2}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 121, i32 2}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 122, i32 2}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 123, i32 2}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 124, i32 2}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 125, i32 2}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 126, i32 2}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 127, i32 2}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 128, i32 2}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 129, i32 2}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 130, i32 2}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 131, i32 2}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 132, i32 2}
!158 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 133, i32 2}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 134, i32 2}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 135, i32 2}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 136, i32 2}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 137, i32 2}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 138, i32 2}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 139, i32 2}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 140, i32 2}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 141, i32 2}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 142, i32 2}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 143, i32 2}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 144, i32 2}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 145, i32 2}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 146, i32 2}
!186 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 147, i32 2}
!188 = !{ptr @.str.81, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 148, i32 2}
!190 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 149, i32 2}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 150, i32 2}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 151, i32 2}
!196 = !{ptr @.str.85, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 152, i32 2}
!198 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 153, i32 2}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 154, i32 2}
!202 = !{ptr @.str.88, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 155, i32 2}
!204 = !{ptr @bcm2835_gpio_pins, !205, !"bcm2835_gpio_pins", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 97, i32 32}
!206 = !{ptr @bcm2835_pctl_ops, !207, !"bcm2835_pctl_ops", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 889, i32 33}
!208 = !{ptr @bcm2835_gpio_groups, !209, !"bcm2835_gpio_groups", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 159, i32 27}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 723, i32 16}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 724, i32 18}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 724, i32 25}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 237, i32 20}
!218 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 238, i32 27}
!220 = !{ptr @.str.94, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 239, i32 28}
!222 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 240, i32 25}
!224 = !{ptr @.str.96, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 241, i32 26}
!226 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 242, i32 25}
!228 = !{ptr @irq_type_names, !229, !"irq_type_names", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 236, i32 27}
!230 = !{ptr @.str.98, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 802, i32 30}
!232 = !{ptr @.str.99, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 804, i32 3}
!234 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @bcm2835_pctl_dt_node_to_map._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @bcm2835_pctl_dt_node_to_map._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 808, i32 31}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 809, i32 31}
!241 = !{ptr @.str.104, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 812, i32 3}
!243 = !{ptr @bcm2835_pctl_dt_node_to_map._entry.103, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @bcm2835_pctl_dt_node_to_map._entry_ptr.105, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 823, i32 3}
!247 = !{ptr @bcm2835_pctl_dt_node_to_map._entry.106, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @bcm2835_pctl_dt_node_to_map._entry_ptr.108, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.110, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 830, i32 3}
!251 = !{ptr @bcm2835_pctl_dt_node_to_map._entry.109, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @bcm2835_pctl_dt_node_to_map._entry_ptr.111, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.113, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 851, i32 4}
!255 = !{ptr @bcm2835_pctl_dt_node_to_map._entry.112, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @bcm2835_pctl_dt_node_to_map._entry_ptr.114, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.115, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 747, i32 3}
!259 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @bcm2835_pctl_dt_node_to_map_func._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @bcm2835_pctl_dt_node_to_map_func._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.117, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 767, i32 3}
!264 = !{ptr @.str.118, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @bcm2835_pctl_dt_node_to_map_pull._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @bcm2835_pctl_dt_node_to_map_pull._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @bcm2835_pmx_ops, !268, !"bcm2835_pmx_ops", i1 false, i1 false}
!268 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 966, i32 32}
!269 = !{ptr @bcm2835_pinconf_ops, !270, !"bcm2835_pinconf_ops", i1 false, i1 false}
!270 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1049, i32 33}
!271 = !{ptr @bcm2835_pinctrl_gpio_range, !272, !"bcm2835_pinctrl_gpio_range", i1 false, i1 false}
!272 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1146, i32 40}
!273 = !{ptr @bcm2711_plat_data, !274, !"bcm2711_plat_data", i1 false, i1 false}
!274 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1168, i32 35}
!275 = !{ptr @.str.119, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 378, i32 11}
!277 = !{ptr @bcm2711_gpio_chip, !278, !"bcm2711_gpio_chip", i1 false, i1 false}
!278 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 377, i32 31}
!279 = !{ptr @bcm2711_pinctrl_desc, !280, !"bcm2711_pinctrl_desc", i1 false, i1 false}
!280 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1136, i32 34}
!281 = !{ptr @bcm2711_pinconf_ops, !282, !"bcm2711_pinconf_ops", i1 false, i1 false}
!282 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1120, i32 33}
!283 = !{ptr @bcm2711_pinctrl_gpio_range, !284, !"bcm2711_pinctrl_gpio_range", i1 false, i1 false}
!284 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm2835.c", i32 1151, i32 40}
!285 = !{i32 1, !"wchar_size", i32 2}
!286 = !{i32 1, !"min_enum_size", i32 4}
!287 = !{i32 8, !"branch-target-enforcement", i32 0}
!288 = !{i32 8, !"sign-return-address", i32 0}
!289 = !{i32 8, !"sign-return-address-all", i32 0}
!290 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!291 = !{i32 7, !"uwtable", i32 1}
!292 = !{i32 7, !"frame-pointer", i32 2}
!293 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!294 = !{!"auto-init"}
!295 = !{i64 2153977345}
!296 = !{i64 4880305}
!297 = !{i64 4880723}
!298 = !{i64 2153976965}
!299 = !{i64 2153989105, i64 2153989607, i64 2153989142, i64 2153989198, i64 2153989232, i64 2153989256, i64 2153989297, i64 2153989318, i64 2153989346, i64 2153989380}
!300 = !{i64 2148744336, i64 2148744341, i64 2148744354, i64 2148744398, i64 2148744432, i64 2148744453}
!301 = !{!"branch_weights", i32 1, i32 2000}
