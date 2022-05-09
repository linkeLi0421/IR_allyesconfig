; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/renesas/pinctrl-rza1.c_pt.bc'
source_filename = "../drivers/pinctrl/renesas/pinctrl-rza1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.rza1_pinmux_conf = type { ptr, ptr }
%struct.rza1_bidir_entry = type { i32, ptr }
%struct.rza1_swio_entry = type { i32, ptr }
%struct.rza1_bidir_pin = type { i8 }
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
%struct.rza1_pinctrl = type { ptr, %struct.mutex, ptr, i32, ptr, ptr, %struct.pinctrl_desc, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.rza1_port = type { %struct.spinlock, i32, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.rza1_mux_conf = type { i16, i8, i8, i8, i8, i8 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.group_desc = type { ptr, ptr, i32, ptr }
%struct.rza1_swio_pin = type { i16 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pinctrl_rza1__226_1425_rza1_pinctrl_init1 = internal global ptr @rza1_pinctrl_init, section ".initcall1.init", align 4
@__UNIQUE_ID_author227 = internal constant [60 x i8] c"pinctrl_rza1.author=Jacopo Mondi <jacopo+renesas@jmondi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [77 x i8] c"pinctrl_rza1.description=Pin and gpio controller driver for Reneas RZ/A1 SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [55 x i8] c"pinctrl_rza1.file=drivers/pinctrl/renesas/pinctrl-rza1\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [28 x i8] c"pinctrl_rza1.license=GPL v2\00", section ".modinfo", align 1
@rza1_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rza1_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rza1_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pinctrl-rza1\00", [19 x i8] zeroinitializer }, align 32
@rza1_pinctrl_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s72100-ports\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rza1h_pmx_conf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s72102-ports\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rza1l_pmx_conf }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rza1_pinctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rza1_pctl->mutex\00", [46 x i8] zeroinitializer }, align 32
@rza1_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr null, ptr @rza1_dt_node_to_map, ptr @rza1_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@rza1_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @rza1_set_mux, ptr null, ptr null, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@rza1_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RZ/A1 pin controller and gpio successfully registered\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rza1_pinctrl_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pinctrl/renesas/pinctrl-rza1.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rza1_pinctrl_probe._entry_ptr = internal global ptr @rza1_pinctrl_probe._entry, section ".printk_index", align 4
@rza1_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 997, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid pinmux node structure\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rza1_dt_node_to_map\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rza1_dt_node_to_map._entry_ptr = internal global ptr @rza1_dt_node_to_map._entry, section ".printk_index", align 4
@rza1_dt_node_to_map._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.4, i32 1060, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Parsed function and group %s with %d pins\0A\00", [53 x i8] zeroinitializer }, align 32
@rza1_dt_node_to_map._entry_ptr.12 = internal global ptr @rza1_dt_node_to_map._entry.10, section ".printk_index", align 4
@rza1_dt_node_to_map._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.4, i32 1086, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to parse function and group %s\0A\00", [57 x i8] zeroinitializer }, align 32
@rza1_dt_node_to_map._entry_ptr.15 = internal global ptr @rza1_dt_node_to_map._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinmux\00", [25 x i8] zeroinitializer }, align 32
@rza1_parse_pinmux_node.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 -31, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pinctrl_rza1\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rza1_parse_pinmux_node\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Missing %s property\0A\00", [43 x i8] zeroinitializer }, align 32
@rza1_parse_pinmux_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 916, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Unable to parse pin configuration options for %pOFn\0A\00", [43 x i8] zeroinitializer }, align 32
@rza1_parse_pinmux_node._entry_ptr = internal global ptr @rza1_parse_pinmux_node._entry, section ".printk_index", align 4
@rza1_parse_pinmux_node._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.4, i32 961, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wrong port %u pin %u for %s property\0A\00", [58 x i8] zeroinitializer }, align 32
@rza1_parse_pinmux_node._entry_ptr.23 = internal global ptr @rza1_parse_pinmux_node._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"P%u-%u\00", [25 x i8] zeroinitializer }, align 32
@rza1_pinctrl_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ports[port_id].lock\00", [43 x i8] zeroinitializer }, align 32
@rza1_pinctrl_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 1344, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RZ/A1 pin controller registration failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rza1_pinctrl_register\00", [42 x i8] zeroinitializer }, align 32
@rza1_pinctrl_register._entry_ptr = internal global ptr @rza1_pinctrl_register._entry, section ".printk_index", align 4
@rza1_pinctrl_register._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 1351, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RZ/A1 pin controller failed to start\0A\00", [58 x i8] zeroinitializer }, align 32
@rza1_pinctrl_register._entry_ptr.30 = internal global ptr @rza1_pinctrl_register._entry.28, section ".printk_index", align 4
@rza1_pinctrl_register._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.4, i32 1357, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RZ/A1 GPIO registration failed\0A\00", [32 x i8] zeroinitializer }, align 32
@rza1_pinctrl_register._entry_ptr.33 = internal global ptr @rza1_pinctrl_register._entry.31, section ".printk_index", align 4
@rza1_gpio_register.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 1, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rza1_gpio_register\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No gpiochip registered\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@rza1_gpio_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.4, i32 1286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Registered %u gpio controllers\0A\00", [32 x i8] zeroinitializer }, align 32
@rza1_gpio_register._entry_ptr = internal global ptr @rza1_gpio_register._entry, section ".printk_index", align 4
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@rza1_parse_gpiochip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 1197, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to parse %s list property\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rza1_parse_gpiochip\00", [44 x i8] zeroinitializer }, align 32
@rza1_parse_gpiochip._entry_ptr = internal global ptr @rza1_parse_gpiochip._entry, section ".printk_index", align 4
@rza1_parse_gpiochip._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 1209, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid values in property %s\0A\00", [33 x i8] zeroinitializer }, align 32
@rza1_parse_gpiochip._entry_ptr.43 = internal global ptr @rza1_parse_gpiochip._entry.41, section ".printk_index", align 4
@rza1_gpiochip_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rza1_gpio_request, ptr @rza1_gpio_free, ptr @rza1_gpio_get_direction, ptr @rza1_gpio_direction_input, ptr @rza1_gpio_direction_output, ptr @rza1_gpio_get, ptr null, ptr @rza1_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@rza1_parse_gpiochip.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rza1_parse_gpiochip.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rza1_parse_gpiochip.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.40, ptr @.str.4, ptr @.str.45, i8 1, i8 53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Parsed gpiochip %s with %d pins\0A\00", [63 x i8] zeroinitializer }, align 32
@rza1h_pmx_conf = internal constant { %struct.rza1_pinmux_conf, [24 x i8] } { %struct.rza1_pinmux_conf { ptr @rza1h_bidir_entries, ptr @rza1h_swio_entries }, [24 x i8] zeroinitializer }, align 32
@rza1l_pmx_conf = internal constant { %struct.rza1_pinmux_conf, [24 x i8] } { %struct.rza1_pinmux_conf { ptr @rza1l_bidir_entries, ptr @rza1l_swio_entries }, [24 x i8] zeroinitializer }, align 32
@rza1h_bidir_entries = internal constant { [12 x %struct.rza1_bidir_entry], [32 x i8] } { [12 x %struct.rza1_bidir_entry] [%struct.rza1_bidir_entry zeroinitializer, %struct.rza1_bidir_entry { i32 8, ptr @rza1h_bidir_pins_p1 }, %struct.rza1_bidir_entry { i32 24, ptr @rza1h_bidir_pins_p2 }, %struct.rza1_bidir_entry { i32 11, ptr @rza1h_bidir_pins_p3 }, %struct.rza1_bidir_entry { i32 18, ptr @rza1h_bidir_pins_p4 }, %struct.rza1_bidir_entry zeroinitializer, %struct.rza1_bidir_entry { i32 16, ptr @rza1h_bidir_pins_p6 }, %struct.rza1_bidir_entry { i32 1, ptr @rza1h_bidir_pins_p7 }, %struct.rza1_bidir_entry { i32 8, ptr @rza1h_bidir_pins_p8 }, %struct.rza1_bidir_entry { i32 6, ptr @rza1h_bidir_pins_p9 }, %struct.rza1_bidir_entry zeroinitializer, %struct.rza1_bidir_entry { i32 14, ptr @rza1h_bidir_pins_p11 }], [32 x i8] zeroinitializer }, align 32
@rza1h_swio_entries = internal constant { [1 x %struct.rza1_swio_entry], [24 x i8] } { [1 x %struct.rza1_swio_entry] [%struct.rza1_swio_entry { i32 19, ptr @rza1h_swio_pins }], [24 x i8] zeroinitializer }, align 32
@rza1h_bidir_pins_p1 = internal constant { [8 x %struct.rza1_bidir_pin], [24 x i8] } { [8 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 1 }, %struct.rza1_bidir_pin { i8 17 }, %struct.rza1_bidir_pin { i8 33 }, %struct.rza1_bidir_pin { i8 49 }, %struct.rza1_bidir_pin { i8 65 }, %struct.rza1_bidir_pin { i8 81 }, %struct.rza1_bidir_pin { i8 97 }, %struct.rza1_bidir_pin { i8 113 }], [24 x i8] zeroinitializer }, align 32
@rza1h_bidir_pins_p2 = internal constant { [24 x %struct.rza1_bidir_pin], [40 x i8] } { [24 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 1 }, %struct.rza1_bidir_pin { i8 17 }, %struct.rza1_bidir_pin { i8 33 }, %struct.rza1_bidir_pin { i8 49 }, %struct.rza1_bidir_pin { i8 65 }, %struct.rza1_bidir_pin { i8 4 }, %struct.rza1_bidir_pin { i8 20 }, %struct.rza1_bidir_pin { i8 36 }, %struct.rza1_bidir_pin { i8 52 }, %struct.rza1_bidir_pin { i8 81 }, %struct.rza1_bidir_pin { i8 97 }, %struct.rza1_bidir_pin { i8 113 }, %struct.rza1_bidir_pin { i8 -127 }, %struct.rza1_bidir_pin { i8 -111 }, %struct.rza1_bidir_pin { i8 -95 }, %struct.rza1_bidir_pin { i8 -79 }, %struct.rza1_bidir_pin { i8 -63 }, %struct.rza1_bidir_pin { i8 -47 }, %struct.rza1_bidir_pin { i8 -31 }, %struct.rza1_bidir_pin { i8 -15 }, %struct.rza1_bidir_pin { i8 -60 }, %struct.rza1_bidir_pin { i8 -44 }, %struct.rza1_bidir_pin { i8 -28 }, %struct.rza1_bidir_pin { i8 -12 }], [40 x i8] zeroinitializer }, align 32
@rza1h_bidir_pins_p3 = internal constant { [11 x %struct.rza1_bidir_pin], [21 x i8] } { [11 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 50 }, %struct.rza1_bidir_pin { i8 -89 }, %struct.rza1_bidir_pin { i8 -73 }, %struct.rza1_bidir_pin { i8 -41 }, %struct.rza1_bidir_pin { i8 -25 }, %struct.rza1_bidir_pin { i8 -9 }, %struct.rza1_bidir_pin { i8 -88 }, %struct.rza1_bidir_pin { i8 -72 }, %struct.rza1_bidir_pin { i8 -40 }, %struct.rza1_bidir_pin { i8 -24 }, %struct.rza1_bidir_pin { i8 -8 }], [21 x i8] zeroinitializer }, align 32
@rza1h_bidir_pins_p4 = internal constant { [18 x %struct.rza1_bidir_pin], [46 x i8] } { [18 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 8 }, %struct.rza1_bidir_pin { i8 24 }, %struct.rza1_bidir_pin { i8 40 }, %struct.rza1_bidir_pin { i8 56 }, %struct.rza1_bidir_pin { i8 -93 }, %struct.rza1_bidir_pin { i8 -77 }, %struct.rza1_bidir_pin { i8 -45 }, %struct.rza1_bidir_pin { i8 -29 }, %struct.rza1_bidir_pin { i8 -13 }, %struct.rza1_bidir_pin { i8 -92 }, %struct.rza1_bidir_pin { i8 -76 }, %struct.rza1_bidir_pin { i8 -44 }, %struct.rza1_bidir_pin { i8 -28 }, %struct.rza1_bidir_pin { i8 -12 }, %struct.rza1_bidir_pin { i8 -59 }, %struct.rza1_bidir_pin { i8 -43 }, %struct.rza1_bidir_pin { i8 -27 }, %struct.rza1_bidir_pin { i8 -11 }], [46 x i8] zeroinitializer }, align 32
@rza1h_bidir_pins_p6 = internal constant { [16 x %struct.rza1_bidir_pin], [16 x i8] } { [16 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 1 }, %struct.rza1_bidir_pin { i8 17 }, %struct.rza1_bidir_pin { i8 33 }, %struct.rza1_bidir_pin { i8 49 }, %struct.rza1_bidir_pin { i8 65 }, %struct.rza1_bidir_pin { i8 81 }, %struct.rza1_bidir_pin { i8 97 }, %struct.rza1_bidir_pin { i8 113 }, %struct.rza1_bidir_pin { i8 -127 }, %struct.rza1_bidir_pin { i8 -111 }, %struct.rza1_bidir_pin { i8 -95 }, %struct.rza1_bidir_pin { i8 -79 }, %struct.rza1_bidir_pin { i8 -63 }, %struct.rza1_bidir_pin { i8 -47 }, %struct.rza1_bidir_pin { i8 -31 }, %struct.rza1_bidir_pin { i8 -15 }], [16 x i8] zeroinitializer }, align 32
@rza1h_bidir_pins_p7 = internal constant { [1 x %struct.rza1_bidir_pin], [31 x i8] } { [1 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 -45 }], [31 x i8] zeroinitializer }, align 32
@rza1h_bidir_pins_p8 = internal constant { [8 x %struct.rza1_bidir_pin], [24 x i8] } { [8 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 -125 }, %struct.rza1_bidir_pin { i8 -109 }, %struct.rza1_bidir_pin { i8 -93 }, %struct.rza1_bidir_pin { i8 -77 }, %struct.rza1_bidir_pin { i8 -30 }, %struct.rza1_bidir_pin { i8 -14 }, %struct.rza1_bidir_pin { i8 -29 }, %struct.rza1_bidir_pin { i8 -13 }], [24 x i8] zeroinitializer }, align 32
@rza1h_bidir_pins_p9 = internal constant { [6 x %struct.rza1_bidir_pin], [26 x i8] } { [6 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 2 }, %struct.rza1_bidir_pin { i8 18 }, %struct.rza1_bidir_pin { i8 66 }, %struct.rza1_bidir_pin { i8 82 }, %struct.rza1_bidir_pin { i8 98 }, %struct.rza1_bidir_pin { i8 114 }], [26 x i8] zeroinitializer }, align 32
@rza1h_bidir_pins_p11 = internal constant { [14 x %struct.rza1_bidir_pin], [18 x i8] } { [14 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 98 }, %struct.rza1_bidir_pin { i8 114 }, %struct.rza1_bidir_pin { i8 -110 }, %struct.rza1_bidir_pin { i8 100 }, %struct.rza1_bidir_pin { i8 116 }, %struct.rza1_bidir_pin { i8 -108 }, %struct.rza1_bidir_pin { i8 -94 }, %struct.rza1_bidir_pin { i8 -78 }, %struct.rza1_bidir_pin { i8 -92 }, %struct.rza1_bidir_pin { i8 -76 }, %struct.rza1_bidir_pin { i8 -60 }, %struct.rza1_bidir_pin { i8 -44 }, %struct.rza1_bidir_pin { i8 -28 }, %struct.rza1_bidir_pin { i8 -12 }], [18 x i8] zeroinitializer }, align 32
@rza1h_swio_pins = internal constant { [19 x { i8, i8 }], [58 x i8] } { [19 x { i8, i8 }] [{ i8, i8 } { i8 114, i8 64 }, { i8, i8 } { i8 -78, i8 64 }, { i8, i8 } { i8 115, i8 48 }, { i8, i8 } { i8 115, i8 -128 }, { i8, i8 } { i8 116, i8 80 }, { i8, i8 } { i8 116, i8 -80 }, { i8, i8 } { i8 -12, i8 96 }, { i8, i8 } { i8 5, i8 24 }, { i8, i8 } { i8 21, i8 24 }, { i8, i8 } { i8 37, i8 24 }, { i8, i8 } { i8 53, i8 24 }, { i8, i8 } { i8 69, i8 24 }, { i8, i8 } { i8 85, i8 24 }, { i8, i8 } { i8 101, i8 24 }, { i8, i8 } { i8 117, i8 24 }, { i8, i8 } { i8 71, i8 96 }, { i8, i8 } { i8 -73, i8 32 }, { i8, i8 } { i8 -88, i8 -128 }, { i8, i8 } { i8 -6, i8 32 }], [58 x i8] zeroinitializer }, align 32
@rza1l_bidir_entries = internal constant { [12 x %struct.rza1_bidir_entry], [32 x i8] } { [12 x %struct.rza1_bidir_entry] [%struct.rza1_bidir_entry zeroinitializer, %struct.rza1_bidir_entry { i32 8, ptr @rza1l_bidir_pins_p1 }, %struct.rza1_bidir_entry zeroinitializer, %struct.rza1_bidir_entry { i32 9, ptr @rza1l_bidir_pins_p3 }, %struct.rza1_bidir_entry { i32 5, ptr @rza1l_bidir_pins_p4 }, %struct.rza1_bidir_entry { i32 5, ptr @rza1l_bidir_pins_p5 }, %struct.rza1_bidir_entry { i32 16, ptr @rza1l_bidir_pins_p6 }, %struct.rza1_bidir_entry { i32 10, ptr @rza1l_bidir_pins_p7 }, %struct.rza1_bidir_entry zeroinitializer, %struct.rza1_bidir_entry { i32 6, ptr @rza1l_bidir_pins_p9 }, %struct.rza1_bidir_entry zeroinitializer, %struct.rza1_bidir_entry zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rza1l_swio_entries = internal constant { [1 x %struct.rza1_swio_entry], [24 x i8] } { [1 x %struct.rza1_swio_entry] [%struct.rza1_swio_entry { i32 6, ptr @rza1l_swio_pins }], [24 x i8] zeroinitializer }, align 32
@rza1l_bidir_pins_p1 = internal constant { [8 x %struct.rza1_bidir_pin], [24 x i8] } { [8 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 1 }, %struct.rza1_bidir_pin { i8 17 }, %struct.rza1_bidir_pin { i8 33 }, %struct.rza1_bidir_pin { i8 49 }, %struct.rza1_bidir_pin { i8 65 }, %struct.rza1_bidir_pin { i8 81 }, %struct.rza1_bidir_pin { i8 97 }, %struct.rza1_bidir_pin { i8 113 }], [24 x i8] zeroinitializer }, align 32
@rza1l_bidir_pins_p3 = internal constant { [9 x %struct.rza1_bidir_pin], [23 x i8] } { [9 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 2 }, %struct.rza1_bidir_pin { i8 18 }, %struct.rza1_bidir_pin { i8 34 }, %struct.rza1_bidir_pin { i8 66 }, %struct.rza1_bidir_pin { i8 82 }, %struct.rza1_bidir_pin { i8 -94 }, %struct.rza1_bidir_pin { i8 -78 }, %struct.rza1_bidir_pin { i8 -62 }, %struct.rza1_bidir_pin { i8 -46 }], [23 x i8] zeroinitializer }, align 32
@rza1l_bidir_pins_p4 = internal constant { [5 x %struct.rza1_bidir_pin], [27 x i8] } { [5 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 20 }, %struct.rza1_bidir_pin { i8 34 }, %struct.rza1_bidir_pin { i8 50 }, %struct.rza1_bidir_pin { i8 98 }, %struct.rza1_bidir_pin { i8 114 }], [27 x i8] zeroinitializer }, align 32
@rza1l_bidir_pins_p5 = internal constant { [20 x %struct.rza1_bidir_pin], [44 x i8] } { [20 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 1 }, %struct.rza1_bidir_pin { i8 17 }, %struct.rza1_bidir_pin { i8 33 }, %struct.rza1_bidir_pin { i8 49 }, %struct.rza1_bidir_pin { i8 65 }, %struct.rza1_bidir_pin { i8 81 }, %struct.rza1_bidir_pin { i8 97 }, %struct.rza1_bidir_pin { i8 113 }, %struct.rza1_bidir_pin { i8 -127 }, %struct.rza1_bidir_pin { i8 -111 }, %struct.rza1_bidir_pin { i8 -95 }, %struct.rza1_bidir_pin { i8 -79 }, %struct.rza1_bidir_pin { i8 -63 }, %struct.rza1_bidir_pin { i8 -47 }, %struct.rza1_bidir_pin { i8 -31 }, %struct.rza1_bidir_pin { i8 -15 }, %struct.rza1_bidir_pin { i8 2 }, %struct.rza1_bidir_pin { i8 18 }, %struct.rza1_bidir_pin { i8 34 }, %struct.rza1_bidir_pin { i8 50 }], [44 x i8] zeroinitializer }, align 32
@rza1l_bidir_pins_p6 = internal constant { [16 x %struct.rza1_bidir_pin], [16 x i8] } { [16 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 1 }, %struct.rza1_bidir_pin { i8 17 }, %struct.rza1_bidir_pin { i8 33 }, %struct.rza1_bidir_pin { i8 49 }, %struct.rza1_bidir_pin { i8 65 }, %struct.rza1_bidir_pin { i8 81 }, %struct.rza1_bidir_pin { i8 97 }, %struct.rza1_bidir_pin { i8 113 }, %struct.rza1_bidir_pin { i8 -127 }, %struct.rza1_bidir_pin { i8 -111 }, %struct.rza1_bidir_pin { i8 -95 }, %struct.rza1_bidir_pin { i8 -79 }, %struct.rza1_bidir_pin { i8 -63 }, %struct.rza1_bidir_pin { i8 -47 }, %struct.rza1_bidir_pin { i8 -31 }, %struct.rza1_bidir_pin { i8 -15 }], [16 x i8] zeroinitializer }, align 32
@rza1l_bidir_pins_p7 = internal constant { [10 x %struct.rza1_bidir_pin], [22 x i8] } { [10 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 34 }, %struct.rza1_bidir_pin { i8 50 }, %struct.rza1_bidir_pin { i8 82 }, %struct.rza1_bidir_pin { i8 98 }, %struct.rza1_bidir_pin { i8 114 }, %struct.rza1_bidir_pin { i8 35 }, %struct.rza1_bidir_pin { i8 51 }, %struct.rza1_bidir_pin { i8 83 }, %struct.rza1_bidir_pin { i8 99 }, %struct.rza1_bidir_pin { i8 115 }], [22 x i8] zeroinitializer }, align 32
@rza1l_bidir_pins_p9 = internal constant { [6 x %struct.rza1_bidir_pin], [26 x i8] } { [6 x %struct.rza1_bidir_pin] [%struct.rza1_bidir_pin { i8 18 }, %struct.rza1_bidir_pin { i8 3 }, %struct.rza1_bidir_pin { i8 19 }, %struct.rza1_bidir_pin { i8 51 }, %struct.rza1_bidir_pin { i8 67 }, %struct.rza1_bidir_pin { i8 83 }], [26 x i8] zeroinitializer }, align 32
@rza1l_swio_pins = internal constant { [6 x { i8, i8 }], [20 x i8] } { [6 x { i8, i8 }] [{ i8, i8 } { i8 -126, i8 32 }, { i8, i8 } { i8 101, i8 48 }, { i8, i8 } { i8 102, i8 48 }, { i8, i8 } { i8 -90, i8 48 }, { i8, i8 } { i8 -89, i8 32 }, { i8, i8 } { i8 40, i8 48 }], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 12, i64 17, i64 18]
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"rza1_pinctrl_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1413, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1415, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"rza1_pinctrl_of_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1399, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1379, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"rza1_pinctrl_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1097, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"rza1_pinmux_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1145, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1393, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 997, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1059, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1085, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 859, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 902, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 914, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 959, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1322, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1336, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1343, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1350, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1357, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1260, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1273, i32 37 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1286, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1188, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1196, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1208, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [23 x i8] c"rza1_gpiochip_template\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 834, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1215, i32 59 }
@___asan_gen_.204 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1230, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1237, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [15 x i8] c"rza1h_pmx_conf\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 297, i32 38 }
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"rza1l_pmx_conf\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 425, i32 38 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c"rza1h_bidir_entries\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 280, i32 38 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"rza1h_swio_entries\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 292, i32 37 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c"rza1h_bidir_pins_p1\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 125, i32 36 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"rza1h_bidir_pins_p2\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 136, i32 36 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c"rza1h_bidir_pins_p3\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 163, i32 36 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"rza1h_bidir_pins_p4\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 177, i32 36 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"rza1h_bidir_pins_p6\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 198, i32 36 }
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c"rza1h_bidir_pins_p7\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 217, i32 36 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c"rza1h_bidir_pins_p8\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 221, i32 36 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"rza1h_bidir_pins_p9\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 232, i32 36 }
@___asan_gen_.249 = private unnamed_addr constant [21 x i8] c"rza1h_bidir_pins_p11\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 241, i32 36 }
@___asan_gen_.252 = private unnamed_addr constant [16 x i8] c"rza1h_swio_pins\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 258, i32 35 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c"rza1l_bidir_entries\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 410, i32 38 }
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c"rza1l_swio_entries\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 420, i32 37 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c"rza1l_bidir_pins_p1\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 306, i32 36 }
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c"rza1l_bidir_pins_p3\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 317, i32 36 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c"rza1l_bidir_pins_p4\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 329, i32 36 }
@___asan_gen_.270 = private unnamed_addr constant [20 x i8] c"rza1l_bidir_pins_p5\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 337, i32 36 }
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c"rza1l_bidir_pins_p6\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 360, i32 36 }
@___asan_gen_.276 = private unnamed_addr constant [20 x i8] c"rza1l_bidir_pins_p7\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 379, i32 36 }
@___asan_gen_.279 = private unnamed_addr constant [20 x i8] c"rza1l_bidir_pins_p9\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 392, i32 36 }
@___asan_gen_.282 = private unnamed_addr constant [16 x i8] c"rza1l_swio_pins\00", align 1
@___asan_gen_.283 = private constant [42 x i8] c"../drivers/pinctrl/renesas/pinctrl-rza1.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 401, i32 35 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__initcall__kmod_pinctrl_rza1__226_1425_rza1_pinctrl_init1, ptr @rza1_dt_node_to_map._entry, ptr @rza1_dt_node_to_map._entry.10, ptr @rza1_dt_node_to_map._entry.13, ptr @rza1_dt_node_to_map._entry_ptr, ptr @rza1_dt_node_to_map._entry_ptr.12, ptr @rza1_dt_node_to_map._entry_ptr.15, ptr @rza1_gpio_register._entry, ptr @rza1_gpio_register._entry_ptr, ptr @rza1_parse_gpiochip._entry, ptr @rza1_parse_gpiochip._entry.41, ptr @rza1_parse_gpiochip._entry_ptr, ptr @rza1_parse_gpiochip._entry_ptr.43, ptr @rza1_parse_pinmux_node._entry, ptr @rza1_parse_pinmux_node._entry.21, ptr @rza1_parse_pinmux_node._entry_ptr, ptr @rza1_parse_pinmux_node._entry_ptr.23, ptr @rza1_pinctrl_probe._entry, ptr @rza1_pinctrl_probe._entry_ptr, ptr @rza1_pinctrl_register._entry, ptr @rza1_pinctrl_register._entry.28, ptr @rza1_pinctrl_register._entry.31, ptr @rza1_pinctrl_register._entry_ptr, ptr @rza1_pinctrl_register._entry_ptr.30, ptr @rza1_pinctrl_register._entry_ptr.33, ptr @rza1_pinctrl_driver, ptr @.str, ptr @rza1_pinctrl_of_match, ptr @rza1_pinctrl_probe.__key, ptr @.str.1, ptr @rza1_pinctrl_ops, ptr @rza1_pinmux_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @rza1_pinctrl_register.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @rza1_gpiochip_template, ptr @.str.44, ptr @rza1_parse_gpiochip.lock_key, ptr @rza1_parse_gpiochip.request_key, ptr @.str.45, ptr @rza1h_pmx_conf, ptr @rza1l_pmx_conf, ptr @rza1h_bidir_entries, ptr @rza1h_swio_entries, ptr @rza1h_bidir_pins_p1, ptr @rza1h_bidir_pins_p2, ptr @rza1h_bidir_pins_p3, ptr @rza1h_bidir_pins_p4, ptr @rza1h_bidir_pins_p6, ptr @rza1h_bidir_pins_p7, ptr @rza1h_bidir_pins_p8, ptr @rza1h_bidir_pins_p9, ptr @rza1h_bidir_pins_p11, ptr @rza1h_swio_pins, ptr @rza1l_bidir_entries, ptr @rza1l_swio_entries, ptr @rza1l_bidir_pins_p1, ptr @rza1l_bidir_pins_p3, ptr @rza1l_bidir_pins_p4, ptr @rza1l_bidir_pins_p5, ptr @rza1l_bidir_pins_p6, ptr @rza1l_bidir_pins_p7, ptr @rza1l_bidir_pins_p9, ptr @rza1l_swio_pins], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_pinctrl_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_pinctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_dt_node_to_map._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_dt_node_to_map._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_parse_pinmux_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_parse_pinmux_node._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_pinctrl_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_pinctrl_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_pinctrl_register._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_pinctrl_register._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_gpio_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_parse_gpiochip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_parse_gpiochip._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_gpiochip_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_parse_gpiochip.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_parse_gpiochip.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_pmx_conf to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_pmx_conf to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_bidir_entries to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_swio_entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_bidir_pins_p1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_bidir_pins_p2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_bidir_pins_p3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_bidir_pins_p4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_bidir_pins_p6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_bidir_pins_p7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_bidir_pins_p8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_bidir_pins_p9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_bidir_pins_p11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1h_swio_pins to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_bidir_entries to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_swio_entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_bidir_pins_p1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_bidir_pins_p3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_bidir_pins_p4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_bidir_pins_p5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_bidir_pins_p6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_bidir_pins_p7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_bidir_pins_p9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1l_swio_pins to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_pinctrl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rza1_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 164, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @rza1_pinctrl_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %desc = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %desc, align 4
  %pctlops = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rza1_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rza1_pinmux_ops, ptr %pmxops, align 4
  %owner = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 6, i32 6
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %owner, align 4
  %call14 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %data = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %data, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 2304, i32 noundef 3520) #7
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %call5.i.i109.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 672, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  %tobool3.not.i = icmp eq ptr %call5.i.i109.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %do.body.cleanup_crit_edge, label %if.end.i

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.body
  %pins4.i = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %pins4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i.i, ptr %pins4.i, align 4
  %pins5.i = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %pins5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i.i, ptr %pins5.i, align 4
  %npins.i = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %npins.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 192, ptr %npins.i, align 4
  %ports7.i = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %ports7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i109.i, ptr %ports7.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.0110.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rem.i = and i32 %i.0110.i, 15
  %div107.i = lshr i32 %i.0110.i, 4
  %arrayidx.i = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i.i, i32 %i.0110.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.0110.i, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call9.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %19, i32 noundef 3264, ptr noundef nonnull @.str.24, i32 noundef %div107.i, i32 noundef %rem.i) #7
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i.i, i32 %i.0110.i, i32 1
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i, ptr %name.i, align 4
  %tobool13.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool13.not.i, label %for.body.i.cleanup_crit_edge, label %if.end15.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp17.i = icmp eq i32 %rem.i, 0
  br i1 %cmp17.i, label %if.then18.i, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx20.i = getelementptr %struct.rza1_port, ptr %call5.i.i109.i, i32 %div107.i
  %id.i = getelementptr %struct.rza1_port, ptr %call5.i.i109.i, i32 %div107.i, i32 1
  %21 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div107.i, ptr %id.i, align 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %base22.i = getelementptr %struct.rza1_port, ptr %call5.i.i109.i, i32 %div107.i, i32 2
  %24 = ptrtoint ptr %base22.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %base22.i, align 4
  %pins25.i = getelementptr %struct.rza1_port, ptr %call5.i.i109.i, i32 %div107.i, i32 3
  %25 = ptrtoint ptr %pins25.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i, ptr %pins25.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx20.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @rza1_pinctrl_register.__key, i16 noundef signext 3) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then18.i, %if.end15.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0110.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 192
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %pctl.i = getelementptr inbounds %struct.rza1_pinctrl, ptr %call.i, i32 0, i32 7
  %call32.i = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %27, ptr noundef %desc, ptr noundef nonnull %call.i, ptr noundef %pctl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end39.i, label %for.end.i.cleanup57.sink.split.i_crit_edge

for.end.i.cleanup57.sink.split.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57.sink.split.i

if.end39.i:                                       ; preds = %for.end.i
  %28 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pctl.i, align 4
  %call41.i = tail call i32 @pinctrl_enable(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end48.i, label %if.end39.i.cleanup57.sink.split.i_crit_edge

if.end39.i.cleanup57.sink.split.i_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57.sink.split.i

if.end48.i:                                       ; preds = %if.end39.i
  %call49.i = tail call fastcc i32 @rza1_gpio_register(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %do.end21, label %if.end48.i.cleanup57.sink.split.i_crit_edge

if.end48.i.cleanup57.sink.split.i_crit_edge:      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57.sink.split.i

cleanup57.sink.split.i:                           ; preds = %if.end48.i.cleanup57.sink.split.i_crit_edge, %if.end39.i.cleanup57.sink.split.i_crit_edge, %for.end.i.cleanup57.sink.split.i_crit_edge
  %.str.32.sink.i = phi ptr [ @.str.26, %for.end.i.cleanup57.sink.split.i_crit_edge ], [ @.str.29, %if.end39.i.cleanup57.sink.split.i_crit_edge ], [ @.str.32, %if.end48.i.cleanup57.sink.split.i_crit_edge ]
  %retval.2.ph.i = phi i32 [ %call32.i, %for.end.i.cleanup57.sink.split.i_crit_edge ], [ %call41.i, %if.end39.i.cleanup57.sink.split.i_crit_edge ], [ %call49.i, %if.end48.i.cleanup57.sink.split.i_crit_edge ]
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %.str.32.sink.i) #10
  br label %cleanup

do.end21:                                         ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %cleanup57.sink.split.i, %for.body.i.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ 0, %do.end21 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.2.ph.i, %cleanup57.sink.split.i ], [ -12, %do.body.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef %map, ptr nocapture noundef writeonly %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %length.i = getelementptr inbounds %struct.property, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length.i, align 4
  %div21.i = lshr i32 %1, 2
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not24.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not24.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %npins.026.i = phi i32 [ %add.i, %if.end5.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %child.025.i = phi ptr [ %call8.i, %if.end5.i.for.body.i_crit_edge ], [ %call1.i, %if.end.i.for.body.i_crit_edge ]
  %call2.i = tail call ptr @of_find_property(ptr noundef nonnull %child.025.i, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %rza1_dt_node_pin_count.exit.thread136, label %if.end5.i

rza1_dt_node_pin_count.exit.thread136:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.025.i) #7
  br label %do.end

if.end5.i:                                        ; preds = %for.body.i
  %length6.i = getelementptr inbounds %struct.property, ptr %call2.i, i32 0, i32 1
  %2 = ptrtoint ptr %length6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length6.i, align 4
  %div720.i = lshr i32 %3, 2
  %add.i = add i32 %div720.i, %npins.026.i
  %call8.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.025.i) #7
  %cmp.not.i = icmp eq ptr %call8.i, null
  br i1 %cmp.not.i, label %rza1_dt_node_pin_count.exit, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rza1_dt_node_pin_count.exit:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp = icmp slt i32 %add.i, 0
  br i1 %cmp, label %rza1_dt_node_pin_count.exit.do.end_crit_edge, label %rza1_dt_node_pin_count.exit.if.end_crit_edge

rza1_dt_node_pin_count.exit.if.end_crit_edge:     ; preds = %rza1_dt_node_pin_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rza1_dt_node_pin_count.exit.do.end_crit_edge:     ; preds = %rza1_dt_node_pin_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %rza1_dt_node_pin_count.exit.do.end_crit_edge, %rza1_dt_node_pin_count.exit.thread136
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end:                                           ; preds = %rza1_dt_node_pin_count.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.i
  %retval.0.i135 = phi i32 [ %add.i, %rza1_dt_node_pin_count.exit.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ], [ %div21.i, %if.then.i ]
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i135, i32 8) #7
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.devm_kcalloc.exit_crit_edge, label %if.end.i.i, !prof !165

if.end.devm_kcalloc.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %10 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %10, i32 noundef 3520) #7
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i, %if.end.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %if.end.devm_kcalloc.exit_crit_edge ]
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i135, i32 4) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.devm_kcalloc.exit131_crit_edge, label %if.end.i.i129, !prof !165

devm_kcalloc.exit.devm_kcalloc.exit131_crit_edge: ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit131

if.end.i.i129:                                    ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %15 = extractvalue { i32, i1 } %11, 0
  %call5.i.i128 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %15, i32 noundef 3520) #7
  br label %devm_kcalloc.exit131

devm_kcalloc.exit131:                             ; preds = %if.end.i.i129, %devm_kcalloc.exit.devm_kcalloc.exit131_crit_edge
  %retval.0.i.i130 = phi ptr [ %call5.i.i128, %if.end.i.i129 ], [ null, %devm_kcalloc.exit.devm_kcalloc.exit131_crit_edge ]
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %call.i132 = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 4, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  %tobool8.not = icmp eq ptr %retval.0.i.i130, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  %tobool10.not = icmp eq ptr %call.i132, null
  %or.cond127 = select i1 %or.cond, i1 true, i1 %tobool10.not
  br i1 %or.cond127, label %devm_kcalloc.exit131.cleanup_crit_edge, label %if.end12

devm_kcalloc.exit131.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit131
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %devm_kcalloc.exit131
  %call14 = tail call fastcc i32 @rza1_parse_pinmux_node(ptr noundef %call, ptr noundef %np, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull %retval.0.i.i130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call14)
  %cmp15 = icmp eq i32 %call14, -2
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %call17 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp18.not141 = icmp eq ptr %call17, null
  br i1 %cmp18.not141, label %if.then16.if.end28_crit_edge, label %if.then16.for.body_crit_edge

if.then16.for.body_crit_edge:                     ; preds = %if.then16
  br label %for.body

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %if.then16.for.body_crit_edge
  %child.0144 = phi ptr [ %call24, %if.end22.for.body_crit_edge ], [ %call17, %if.then16.for.body_crit_edge ]
  %grpin.0143 = phi ptr [ %add.ptr, %if.end22.for.body_crit_edge ], [ %retval.0.i.i130, %if.then16.for.body_crit_edge ]
  %mux_conf.0142 = phi ptr [ %add.ptr23, %if.end22.for.body_crit_edge ], [ %retval.0.i.i, %if.then16.for.body_crit_edge ]
  %call19 = tail call fastcc i32 @rza1_parse_pinmux_node(ptr noundef %call, ptr noundef nonnull %child.0144, ptr noundef %mux_conf.0142, ptr noundef %grpin.0143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.0144) #7
  br label %cleanup

if.end22:                                         ; preds = %for.body
  %add.ptr = getelementptr i32, ptr %grpin.0143, i32 %call19
  %add.ptr23 = getelementptr %struct.rza1_mux_conf, ptr %mux_conf.0142, i32 %call19
  %call24 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.0144) #7
  %cmp18.not = icmp eq ptr %call24, null
  br i1 %cmp18.not, label %if.end22.if.end28_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp25 = icmp slt i32 %call14, 0
  br i1 %cmp25, label %if.else.cleanup_crit_edge, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.end22.if.end28_crit_edge, %if.then16.if.end28_crit_edge
  %18 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %np, align 4
  %20 = ptrtoint ptr %call.i132 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %call.i132, align 4
  %mutex = getelementptr inbounds %struct.rza1_pinctrl, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call30 = tail call i32 @pinctrl_generic_add_group(ptr noundef %pctldev, ptr noundef %19, ptr noundef nonnull %retval.0.i.i130, i32 noundef %retval.0.i135, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %call35 = tail call i32 @pinmux_generic_add_function(ptr noundef %pctldev, ptr noundef %19, ptr noundef nonnull %call.i132, i32 noundef 1, ptr noundef nonnull %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.remove_group_crit_edge, label %do.end41

if.end34.remove_group_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_group

do.end41:                                         ; preds = %if.end34
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.11, ptr noundef %19, i32 noundef %retval.0.i135) #10
  %23 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %num_maps, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 28) #11
  %25 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %map, align 4
  %tobool44.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call i32 @pinmux_generic_remove_function(ptr noundef %pctldev, i32 noundef %call35) #7
  br label %remove_group

if.end46:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.pinctrl_map, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %type, align 8
  %27 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %np, align 4
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %call7.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %data, align 8
  %function = getelementptr inbounds %struct.pinctrl_map, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %30 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %function, align 4
  %31 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_maps, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

remove_group:                                     ; preds = %if.then45, %if.end34.remove_group_crit_edge
  %ret.0 = phi i32 [ -12, %if.then45 ], [ %call35, %if.end34.remove_group_crit_edge ]
  %call52 = tail call i32 @pinctrl_generic_remove_group(ptr noundef %pctldev, i32 noundef %call30) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.14, ptr noundef %19) #10
  br label %cleanup

cleanup:                                          ; preds = %remove_group, %if.end46, %if.then32, %if.else.cleanup_crit_edge, %if.then21, %devm_kcalloc.exit131.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call19, %if.then21 ], [ %call30, %if.then32 ], [ %ret.0, %remove_group ], [ 0, %if.end46 ], [ -12, %devm_kcalloc.exit131.cleanup_crit_edge ], [ %call14, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rza1_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %map, i32 noundef %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %map) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rza1_parse_pinmux_node(ptr nocapture noundef readonly %rza1_pctl, ptr noundef %np, ptr nocapture noundef %mux_confs, ptr nocapture noundef writeonly %grpins) unnamed_addr #2 align 64 {
entry:
  %pin_configs = alloca ptr, align 4
  %npin_configs = alloca i32, align 4
  %of_pinconf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pctl = getelementptr inbounds %struct.rza1_pinctrl, ptr %rza1_pctl, i32 0, i32 7
  %0 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pin_configs) #7
  %2 = ptrtoint ptr %pin_configs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %pin_configs, align 4, !annotation !166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npin_configs) #7
  %3 = ptrtoint ptr %npin_configs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %npin_configs, align 4, !annotation !166
  %call = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rza1_parse_pinmux_node.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rza1_parse_pinmux_node, %cleanup69)) #7
          to label %if.then6 [label %cleanup69], !srcloc !167

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rza1_pctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rza1_parse_pinmux_node.__UNIQUE_ID_ddebug223, ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #7
  br label %cleanup69

if.end7:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.property, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %div113 = lshr i32 %7, 2
  %call8 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %np, ptr noundef %1, ptr noundef nonnull %pin_configs, ptr noundef nonnull %npin_configs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %do.end13

for.cond.preheader:                               ; preds = %if.end7
  %8 = ptrtoint ptr %npin_configs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npin_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp119.not = icmp eq i32 %9, 0
  br i1 %cmp119.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %pin_configs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pin_configs, align 4
  br label %for.body

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rza1_pctl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.20, ptr noundef %np) #10
  br label %cleanup69

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %11, i32 %i.0120
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %15 to i8
  %16 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %for.inc [
    i8 12, label %for.body.for.end.loopexit_crit_edge
    i8 17, label %for.body.for.end_crit_edge
    i8 18, label %for.body.for.end_crit_edge150
  ]

for.body.for.end_crit_edge150:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0120, 1
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end.loopexit_crit_edge

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  %pinmux_flags.0.lcssa.ph = phi i8 [ 0, %for.inc.for.end.loopexit_crit_edge ], [ 2, %for.body.for.end.loopexit_crit_edge ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.for.end_crit_edge, %for.body.for.end_crit_edge150, %for.cond.preheader.for.end_crit_edge
  %pinmux_flags.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %pinmux_flags.0.lcssa.ph, %for.end.loopexit ], [ 4, %for.body.for.end_crit_edge ], [ 4, %for.body.for.end_crit_edge150 ]
  %17 = ptrtoint ptr %pin_configs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pin_configs, align 4
  call void @kfree(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp26121.not = icmp ult i32 %7, 4
  br i1 %cmp26121.not, label %for.end.cleanup69_crit_edge, label %for.body28.preheader

for.end.cleanup69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

for.body28.preheader:                             ; preds = %for.end
  %umax = call i32 @llvm.umax.i32(i32 %div113, i32 1)
  br label %for.body28

for.body28:                                       ; preds = %for.inc66.for.body28_crit_edge, %for.body28.preheader
  %i.1122 = phi i32 [ %inc67, %for.inc66.for.body28_crit_edge ], [ 0, %for.body28.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_pinconf) #7
  %19 = ptrtoint ptr %of_pinconf to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %of_pinconf, align 4, !annotation !166
  %call30 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.16, i32 noundef %i.1122, ptr noundef nonnull %of_pinconf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %for.body28.cleanup.thread_crit_edge

for.body28.cleanup.thread_crit_edge:              ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end33:                                         ; preds = %for.body28
  %arrayidx29 = getelementptr %struct.rza1_mux_conf, ptr %mux_confs, i32 %i.1122
  %20 = ptrtoint ptr %of_pinconf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %of_pinconf, align 4
  %conv34 = trunc i32 %21 to i16
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv34, ptr %arrayidx29, align 2
  %conv36 = lshr i32 %21, 4
  %conv38 = trunc i32 %conv36 to i8
  %port = getelementptr %struct.rza1_mux_conf, ptr %mux_confs, i32 %i.1122, i32 1
  %23 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv38, ptr %port, align 2
  %24 = trunc i32 %21 to i8
  %conv41 = and i8 %24, 15
  %pin = getelementptr %struct.rza1_mux_conf, ptr %mux_confs, i32 %i.1122, i32 2
  %25 = ptrtoint ptr %pin to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv41, ptr %pin, align 1
  %shr = lshr i32 %21, 16
  %conv43 = trunc i32 %shr to i8
  %mux_func = getelementptr %struct.rza1_mux_conf, ptr %mux_confs, i32 %i.1122, i32 3
  %26 = ptrtoint ptr %mux_func to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv43, ptr %mux_func, align 2
  %mux_flags = getelementptr %struct.rza1_mux_conf, ptr %mux_confs, i32 %i.1122, i32 4
  %27 = ptrtoint ptr %mux_flags to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %pinmux_flags.0.lcssa, ptr %mux_flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv38)
  %cmp46 = icmp ugt i8 %conv38, 11
  br i1 %cmp46, label %do.end55, label %for.inc66

do.end55:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rza1_pctl, align 4
  %conv58 = and i32 %conv36, 255
  %conv60 = zext i8 %conv41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.22, i32 noundef %conv58, i32 noundef %conv60, ptr noundef nonnull @.str.16) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end55, %for.body28.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ -22, %do.end55 ], [ %call30, %for.body28.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_pinconf) #7
  br label %cleanup69

for.inc66:                                        ; preds = %if.end33
  %conv63 = and i32 %21, 65535
  %arrayidx64 = getelementptr i32, ptr %grpins, i32 %i.1122
  %30 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv63, ptr %arrayidx64, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_pinconf) #7
  %inc67 = add nuw nsw i32 %i.1122, 1
  %exitcond.not = icmp eq i32 %inc67, %umax
  br i1 %exitcond.not, label %for.inc66.cleanup69_crit_edge, label %for.inc66.for.body28_crit_edge

for.inc66.for.body28_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.inc66.cleanup69_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

cleanup69:                                        ; preds = %for.inc66.cleanup69_crit_edge, %cleanup.thread, %for.end.cleanup69_crit_edge, %do.end13, %if.then6, %do.body
  %retval.2 = phi i32 [ %call8, %do.end13 ], [ -2, %if.then6 ], [ %retval.1.ph, %cleanup.thread ], [ -2, %do.body ], [ %div113, %for.end.cleanup69_crit_edge ], [ %div113, %for.inc66.cleanup69_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npin_configs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pin_configs) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_remove_function(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_remove_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %call1 = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctldev, i32 noundef %group) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup10_crit_edge, label %if.end

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @pinmux_generic_get_function(ptr noundef %pctldev, i32 noundef %selector) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup10_crit_edge, label %if.end5

if.end.cleanup10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.function_desc, ptr %call2, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %num_pins = getelementptr inbounds %struct.group_desc, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23 = icmp sgt i32 %3, 0
  br i1 %cmp23, label %for.body.lr.ph, label %if.end5.cleanup10_crit_edge

if.end5.cleanup10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.body.lr.ph:                                   ; preds = %if.end5
  %ports.i = getelementptr inbounds %struct.rza1_pinctrl, ptr %call, i32 0, i32 4
  %data.i.i = getelementptr inbounds %struct.rza1_pinctrl, ptr %call, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %rza1_pin_mux_single.exit.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rza1_pin_mux_single.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %port1.i = getelementptr %struct.rza1_mux_conf, ptr %1, i32 %i.024, i32 1
  %6 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port1.i, align 2
  %idxprom.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.rza1_port, ptr %5, i32 %idxprom.i
  %pin2.i = getelementptr %struct.rza1_mux_conf, ptr %1, i32 %i.024, i32 2
  %8 = ptrtoint ptr %pin2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pin2.i, align 1
  %conv.i = zext i8 %9 to i32
  %mux_func3.i = getelementptr %struct.rza1_mux_conf, ptr %1, i32 %i.024, i32 3
  %10 = ptrtoint ptr %mux_func3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mux_func3.i, align 2
  %mux_flags4.i = getelementptr %struct.rza1_mux_conf, ptr %1, i32 %i.024, i32 4
  %12 = ptrtoint ptr %mux_flags4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mux_flags4.i, align 1
  tail call fastcc void @rza1_pin_reset(ptr noundef %arrayidx.i, i32 noundef %conv.i) #7
  %id.i = getelementptr %struct.rza1_port, ptr %5, i32 %idxprom.i, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %swio_entries2.i.i = getelementptr inbounds %struct.rza1_pinmux_conf, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %swio_entries2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %swio_entries2.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.rza1_bidir_entry, ptr %19, i32 %15
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp15.not.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp15.not.i.i.i, label %for.body.rza1_pinmux_get_bidir.exit.thread.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.body.rza1_pinmux_get_bidir.exit.thread.i.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rza1_pinmux_get_bidir.exit.thread.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.body
  %pins.i.i.i = getelementptr %struct.rza1_bidir_entry, ptr %19, i32 %15, i32 1
  %24 = ptrtoint ptr %pins.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pins.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i55.i = load i8, ptr %25, align 1
  %bf.lshr.i.i56.i = lshr i8 %bf.load.i.i55.i, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr.i.i56.i, i8 %9)
  %cmp3.i.i57.i = icmp eq i8 %bf.lshr.i.i56.i, %9
  %bf.clear.i.i58.i = and i8 %bf.load.i.i55.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.i.i58.i, i8 %11)
  %cmp7.i.i59.i = icmp eq i8 %bf.clear.i.i58.i, %11
  %or.cond60.i = select i1 %cmp3.i.i57.i, i1 %cmp7.i.i59.i, i1 false
  br i1 %or.cond60.i, label %for.body.lr.ph.i.i.i.rza1_pinmux_get_bidir.exit.thread.i.i_crit_edge, label %for.body.lr.ph.i.i.i.for.inc.i.i.i_crit_edge

for.body.lr.ph.i.i.i.for.inc.i.i.i_crit_edge:     ; preds = %for.body.lr.ph.i.i.i
  br label %for.inc.i.i.i

for.body.lr.ph.i.i.i.rza1_pinmux_get_bidir.exit.thread.i.i_crit_edge: ; preds = %for.body.lr.ph.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rza1_pinmux_get_bidir.exit.thread.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i
  %arrayidx2.i.i.i = getelementptr %struct.rza1_bidir_pin, ptr %25, i32 %inc.i.i.i
  %27 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i.i = load i8, ptr %arrayidx2.i.i.i, align 1
  %bf.lshr.i.i.i = lshr i8 %bf.load.i.i.i, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr.i.i.i, i8 %9)
  %cmp3.i.i.i = icmp eq i8 %bf.lshr.i.i.i, %9
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.i.i.i, i8 %11)
  %cmp7.i.i.i = icmp eq i8 %bf.clear.i.i.i, %11
  %or.cond.i = select i1 %cmp3.i.i.i, i1 %cmp7.i.i.i, i1 false
  br i1 %or.cond.i, label %for.body.i.i.i.rza1_pinmux_get_bidir.exit.i.loopexit.i_crit_edge, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.body.i.i.i.rza1_pinmux_get_bidir.exit.i.loopexit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rza1_pinmux_get_bidir.exit.i.loopexit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i.for.inc.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.for.inc.i.i.i_crit_edge
  %i.016.i.i61.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i.i.for.inc.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw i32 %i.016.i.i61.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %23)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %23
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.rza1_pinmux_get_bidir.exit.i.loopexit.i_crit_edge, label %for.body.i.i.i

for.inc.i.i.i.rza1_pinmux_get_bidir.exit.i.loopexit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rza1_pinmux_get_bidir.exit.i.loopexit.i

rza1_pinmux_get_bidir.exit.i.loopexit.i:          ; preds = %for.inc.i.i.i.rza1_pinmux_get_bidir.exit.i.loopexit.i_crit_edge, %for.body.i.i.i.rza1_pinmux_get_bidir.exit.i.loopexit.i_crit_edge
  %inc.i.i.i.lcssa = phi i32 [ %23, %for.inc.i.i.i.rza1_pinmux_get_bidir.exit.i.loopexit.i_crit_edge ], [ %inc.i.i.i, %for.body.i.i.i.rza1_pinmux_get_bidir.exit.i.loopexit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.lcssa, i32 %23)
  %cmp.i.i.le.i = icmp ult i32 %inc.i.i.i.lcssa, %23
  %phi.cast.i = zext i1 %cmp.i.i.le.i to i32
  br label %rza1_pinmux_get_bidir.exit.thread.i.i

rza1_pinmux_get_bidir.exit.thread.i.i:            ; preds = %rza1_pinmux_get_bidir.exit.i.loopexit.i, %for.body.lr.ph.i.i.i.rza1_pinmux_get_bidir.exit.thread.i.i_crit_edge, %for.body.rza1_pinmux_get_bidir.exit.thread.i.i_crit_edge
  %28 = phi i32 [ 0, %for.body.rza1_pinmux_get_bidir.exit.thread.i.i_crit_edge ], [ 1, %for.body.lr.ph.i.i.i.rza1_pinmux_get_bidir.exit.thread.i.i_crit_edge ], [ %phi.cast.i, %rza1_pinmux_get_bidir.exit.i.loopexit.i ]
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp26.not.i.i.i = icmp eq i32 %30, 0
  br i1 %cmp26.not.i.i.i, label %rza1_pinmux_get_bidir.exit.thread.i.i.rza1_pinmux_get_flags.exit.i_crit_edge, label %for.body.lr.ph.i21.i.i

rza1_pinmux_get_bidir.exit.thread.i.i.rza1_pinmux_get_flags.exit.i_crit_edge: ; preds = %rza1_pinmux_get_bidir.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rza1_pinmux_get_flags.exit.i

for.body.lr.ph.i21.i.i:                           ; preds = %rza1_pinmux_get_bidir.exit.thread.i.i
  %pins.i20.i.i = getelementptr inbounds %struct.rza1_swio_entry, ptr %21, i32 0, i32 1
  %31 = ptrtoint ptr %pins.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pins.i20.i.i, align 4
  %33 = zext i8 %9 to i16
  %34 = zext i8 %11 to i16
  br label %for.body.i27.i.i

for.body.i27.i.i:                                 ; preds = %for.inc.i31.i.i.for.body.i27.i.i_crit_edge, %for.body.lr.ph.i21.i.i
  %i.027.i.i.i = phi i32 [ 0, %for.body.lr.ph.i21.i.i ], [ %inc.i29.i.i, %for.inc.i31.i.i.for.body.i27.i.i_crit_edge ]
  %arrayidx.i22.i.i = getelementptr %struct.rza1_swio_pin, ptr %32, i32 %i.027.i.i.i
  %35 = ptrtoint ptr %arrayidx.i22.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i23.i.i = load i16, ptr %arrayidx.i22.i.i, align 2
  %bf.lshr.i24.i.i = lshr i16 %bf.load.i23.i.i, 8
  %bf.clear.i25.i.i = and i16 %bf.lshr.i24.i.i, 15
  %conv.i26.i.i = zext i16 %bf.clear.i25.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i26.i.i)
  %cmp1.i.i.i = icmp eq i32 %15, %conv.i26.i.i
  %bf.lshr4.i.i.i = lshr i16 %bf.load.i23.i.i, 12
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr4.i.i.i, i16 %33)
  %cmp6.i.i.i = icmp eq i16 %bf.lshr4.i.i.i, %33
  %or.cond52.i = select i1 %cmp1.i.i.i, i1 %cmp6.i.i.i, i1 false
  %bf.lshr10.i.i.i = lshr i16 %bf.load.i23.i.i, 4
  %bf.clear11.i.i.i = and i16 %bf.lshr10.i.i.i, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear11.i.i.i, i16 %34)
  %cmp13.i.i.i = icmp eq i16 %bf.clear11.i.i.i, %34
  %or.cond53.i = select i1 %or.cond52.i, i1 %cmp13.i.i.i, i1 false
  br i1 %or.cond53.i, label %rza1_pinmux_get_swio.exit.i.i, label %for.inc.i31.i.i

for.inc.i31.i.i:                                  ; preds = %for.body.i27.i.i
  %inc.i29.i.i = add nuw i32 %i.027.i.i.i, 1
  %exitcond.not.i30.i.i = icmp eq i32 %inc.i29.i.i, %30
  br i1 %exitcond.not.i30.i.i, label %for.inc.i31.i.i.rza1_pinmux_get_flags.exit.i_crit_edge, label %for.inc.i31.i.i.for.body.i27.i.i_crit_edge

for.inc.i31.i.i.for.body.i27.i.i_crit_edge:       ; preds = %for.inc.i31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i27.i.i

for.inc.i31.i.i.rza1_pinmux_get_flags.exit.i_crit_edge: ; preds = %for.inc.i31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rza1_pinmux_get_flags.exit.i

rza1_pinmux_get_swio.exit.i.i:                    ; preds = %for.body.i27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = and i16 %bf.load.i23.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp6.not.i.i = icmp eq i16 %36, 0
  %spec.select44.v.i.i = select i1 %cmp6.not.i.i, i32 4, i32 2
  %spec.select44.i.i = or i32 %spec.select44.v.i.i, %28
  br label %rza1_pinmux_get_flags.exit.i

rza1_pinmux_get_flags.exit.i:                     ; preds = %rza1_pinmux_get_swio.exit.i.i, %for.inc.i31.i.i.rza1_pinmux_get_flags.exit.i_crit_edge, %rza1_pinmux_get_bidir.exit.thread.i.i.rza1_pinmux_get_flags.exit.i_crit_edge
  %37 = phi i32 [ %28, %rza1_pinmux_get_bidir.exit.thread.i.i.rza1_pinmux_get_flags.exit.i_crit_edge ], [ %spec.select44.i.i, %rza1_pinmux_get_swio.exit.i.i ], [ %28, %for.inc.i31.i.i.rza1_pinmux_get_flags.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %and.i = and i32 %37, 1
  %conv8.i = zext i8 %13 to i32
  %or.i = or i32 %and.i, %conv8.i
  %mux_flags.0.i = select i1 %tobool.not.i, i32 %37, i32 %or.i
  %and11.i = and i32 %mux_flags.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %rza1_pinmux_get_flags.exit.if.end14_crit_edge.i, label %if.then13.i

rza1_pinmux_get_flags.exit.if.end14_crit_edge.i:  ; preds = %rza1_pinmux_get_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = shl nuw i32 1, %conv.i
  %.pre64.i = trunc i32 %.pre.i to i16
  br label %if.end14.i

if.then13.i:                                      ; preds = %rza1_pinmux_get_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr %struct.rza1_port, ptr %5, i32 %idxprom.i, i32 2
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 16640
  %mul.i.i = shl i32 %15, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i.i) #7, !srcloc !168
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %shl.i.i = shl nuw i32 1, %conv.i
  %42 = trunc i32 %shl.i.i to i16
  %conv2.i.i = or i16 %41, %42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 %43) #7, !srcloc !171
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %rza1_pinmux_get_flags.exit.if.end14_crit_edge.i
  %.pre-phi.i = phi i16 [ %.pre64.i, %rza1_pinmux_get_flags.exit.if.end14_crit_edge.i ], [ %42, %if.then13.i ]
  %sub.i = add i8 %11, -1
  %conv17.i = zext i8 %sub.i to i32
  %and18.i = and i32 %conv17.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %base.i1.i = getelementptr %struct.rza1_port, ptr %5, i32 %idxprom.i, i32 2
  %44 = ptrtoint ptr %base.i1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i1.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %45, i32 1280
  %46 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id.i, align 4
  %mul.i4.i = shl i32 %47, 2
  %add.ptr1.i5.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %mul.i4.i
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i5.i) #7, !srcloc !168
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv2.i7.i = or i16 %49, %.pre-phi.i
  %50 = xor i16 %.pre-phi.i, -1
  %conv5.i8.i = and i16 %49, %50
  %val.0.i.i = select i1 %tobool19.not.i, i16 %conv5.i8.i, i16 %conv2.i7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %51 = tail call i16 @llvm.bswap.i16(i16 %val.0.i.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i5.i, i16 %51) #7, !srcloc !171
  %and21.i = and i32 %conv17.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %52 = ptrtoint ptr %base.i1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i1.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %53, i32 1536
  %54 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id.i, align 4
  %mul.i12.i = shl i32 %55, 2
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i10.i, i32 %mul.i12.i
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i13.i) #7, !srcloc !168
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv2.i15.i = or i16 %57, %.pre-phi.i
  %conv5.i16.i = and i16 %57, %50
  %val.0.i17.i = select i1 %tobool22.not.i, i16 %conv5.i16.i, i16 %conv2.i15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %58 = tail call i16 @llvm.bswap.i16(i16 %val.0.i17.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i13.i, i16 %58) #7, !srcloc !171
  %and24.i = and i32 %conv17.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %59 = ptrtoint ptr %base.i1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i1.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %60, i32 2560
  %61 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id.i, align 4
  %mul.i21.i = shl i32 %62, 2
  %add.ptr1.i22.i = getelementptr i8, ptr %add.ptr.i19.i, i32 %mul.i21.i
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i22.i) #7, !srcloc !168
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv2.i24.i = or i16 %64, %.pre-phi.i
  %conv5.i25.i = and i16 %64, %50
  %val.0.i26.i = select i1 %tobool25.not.i, i16 %conv5.i25.i, i16 %conv2.i24.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %65 = tail call i16 @llvm.bswap.i16(i16 %val.0.i26.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i22.i, i16 %65) #7, !srcloc !171
  %and27.i = and i32 %mux_flags.0.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else33.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %and31.i = and i32 %mux_flags.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %66 = ptrtoint ptr %base.i1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i1.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %67, i32 768
  %68 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id.i, align 4
  %mul.i30.i = shl i32 %69, 2
  %add.ptr1.i31.i = getelementptr i8, ptr %add.ptr.i28.i, i32 %mul.i30.i
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i31.i) #7, !srcloc !168
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv2.i33.i = or i16 %71, %.pre-phi.i
  %conv5.i34.i = and i16 %71, %50
  %val.0.i35.i = select i1 %tobool32.not.i, i16 %conv5.i34.i, i16 %conv2.i33.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %72 = tail call i16 @llvm.bswap.i16(i16 %val.0.i35.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i31.i, i16 %72) #7, !srcloc !171
  br label %rza1_pin_mux_single.exit

if.else33.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %base.i1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i1.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %74, i32 16896
  %75 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id.i, align 4
  %mul.i39.i = shl i32 %76, 2
  %add.ptr1.i40.i = getelementptr i8, ptr %add.ptr.i37.i, i32 %mul.i39.i
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i40.i) #7, !srcloc !168
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv2.i42.i = or i16 %78, %.pre-phi.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv2.i42.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i40.i, i16 %79) #7, !srcloc !171
  br label %rza1_pin_mux_single.exit

rza1_pin_mux_single.exit:                         ; preds = %if.else33.i, %if.then29.i
  %80 = ptrtoint ptr %base.i1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i1.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %81, i32 1024
  %82 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id.i, align 4
  %mul.i47.i = shl i32 %83, 2
  %add.ptr1.i48.i = getelementptr i8, ptr %add.ptr.i45.i, i32 %mul.i47.i
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i48.i) #7, !srcloc !168
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv2.i50.i = or i16 %85, %.pre-phi.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %86 = tail call i16 @llvm.bswap.i16(i16 %conv2.i50.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i48.i, i16 %86) #7, !srcloc !171
  %inc = add nuw nsw i32 %i.024, 1
  %87 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %88
  br i1 %cmp, label %rza1_pin_mux_single.exit.for.body_crit_edge, label %rza1_pin_mux_single.exit.cleanup10_crit_edge

rza1_pin_mux_single.exit.cleanup10_crit_edge:     ; preds = %rza1_pin_mux_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

rza1_pin_mux_single.exit.for.body_crit_edge:      ; preds = %rza1_pin_mux_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup10:                                        ; preds = %rza1_pin_mux_single.exit.cleanup10_crit_edge, %if.end5.cleanup10_crit_edge, %if.end.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup10_crit_edge ], [ -22, %if.end.cleanup10_crit_edge ], [ 0, %if.end5.cleanup10_crit_edge ], [ 0, %rza1_pin_mux_single.exit.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rza1_pin_reset(ptr noundef %port, i32 noundef %pin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %base.i = getelementptr inbounds %struct.rza1_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16384
  %id.i = getelementptr inbounds %struct.rza1_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %3, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #7, !srcloc !168
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %shl.i = shl nuw i32 1, %pin
  %6 = trunc i32 %shl.i to i16
  %7 = xor i16 %6, -1
  %conv5.i = and i16 %5, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv5.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 %8) #7, !srcloc !171
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %10, i32 16640
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %mul.i19 = shl i32 %12, 2
  %add.ptr1.i20 = getelementptr i8, ptr %add.ptr.i17, i32 %mul.i19
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i20) #7, !srcloc !168
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv5.i23 = and i16 %14, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv5.i23) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i20, i16 %15) #7, !srcloc !171
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 768
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %mul.i27 = shl i32 %19, 2
  %add.ptr1.i28 = getelementptr i8, ptr %add.ptr.i25, i32 %mul.i27
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i28) #7, !srcloc !168
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv2.i30 = or i16 %21, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv2.i30) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i28, i16 %22) #7, !srcloc !171
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %24, i32 1024
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i, align 4
  %mul.i35 = shl i32 %26, 2
  %add.ptr1.i36 = getelementptr i8, ptr %add.ptr.i33, i32 %mul.i35
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i36) #7, !srcloc !168
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv5.i39 = and i16 %28, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv5.i39) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i36, i16 %29) #7, !srcloc !171
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %31, i32 16896
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i, align 4
  %mul.i43 = shl i32 %33, 2
  %add.ptr1.i44 = getelementptr i8, ptr %add.ptr.i41, i32 %mul.i43
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i44) #7, !srcloc !168
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv5.i47 = and i16 %35, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv5.i47) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i44, i16 %36) #7, !srcloc !171
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rza1_gpio_register(ptr nocapture noundef readonly %rza1_pctl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rza1_pctl, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #7
  %cmp.not7.i = icmp eq ptr %call.i, null
  br i1 %cmp.not7.i, label %entry.do.body_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %count.09.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.08.i = phi ptr [ %call2.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %child.08.i, ptr noundef nonnull @.str.36, ptr noundef null) #7
  %tobool.i.not.i = icmp ne ptr %call.i.i, null
  %inc.i = zext i1 %tobool.i.not.i to i32
  %spec.select.i = add i32 %count.09.i, %inc.i
  %call2.i = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef nonnull %child.08.i) #7
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %rza1_count_gpio_chips.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rza1_count_gpio_chips.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp = icmp eq i32 %spec.select.i, 0
  br i1 %cmp, label %rza1_count_gpio_chips.exit.do.body_crit_edge, label %if.end7

rza1_count_gpio_chips.exit.do.body_crit_edge:     ; preds = %rza1_count_gpio_chips.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %rza1_count_gpio_chips.exit.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rza1_gpio_register.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rza1_gpio_register, %cleanup)) #7
          to label %if.then5 [label %cleanup], !srcloc !167

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rza1_pctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rza1_gpio_register.__UNIQUE_ID_ddebug225, ptr noundef %5, ptr noundef nonnull @.str.35) #7
  br label %cleanup

if.end7:                                          ; preds = %rza1_count_gpio_chips.exit
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i, i32 348) #7
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end7.devm_kcalloc.exit_crit_edge, label %if.end.i.i, !prof !165

if.end7.devm_kcalloc.exit_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rza1_pctl, align 4
  %10 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %10, i32 noundef 3520) #7
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i, %if.end7.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %if.end7.devm_kcalloc.exit_crit_edge ]
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i, i32 36) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.cleanup_crit_edge, label %devm_kcalloc.exit59, !prof !165

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit59:                              ; preds = %devm_kcalloc.exit
  %13 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rza1_pctl, align 4
  %15 = extractvalue { i32, i1 } %11, 0
  %call5.i.i56 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %15, i32 noundef 3520) #7
  %tobool12.not = icmp eq ptr %retval.0.i.i, null
  %tobool13.not = icmp eq ptr %call5.i.i56, null
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %devm_kcalloc.exit59.cleanup_crit_edge, label %if.end15

devm_kcalloc.exit59.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %devm_kcalloc.exit59
  %call16 = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #7
  %cmp17.not70 = icmp eq ptr %call16, null
  br i1 %cmp17.not70, label %if.end15.do.end29_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

if.end15.do.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15.for.body_crit_edge
  %i.073 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %child.071 = phi ptr [ %call26, %for.inc.for.body_crit_edge ], [ %call16, %if.end15.for.body_crit_edge ]
  %call.i60 = tail call ptr @of_find_property(ptr noundef nonnull %child.071, ptr noundef nonnull @.str.36, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i60, null
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.gpio_chip, ptr %retval.0.i.i, i32 %i.073
  %arrayidx21 = getelementptr %struct.pinctrl_gpio_range, ptr %call5.i.i56, i32 %i.073
  %call22 = tail call fastcc i32 @rza1_parse_gpiochip(ptr noundef %rza1_pctl, ptr noundef nonnull %child.071, ptr noundef %arrayidx, ptr noundef %arrayidx21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.071) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %i.073, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %if.end25 ], [ %i.073, %for.body.for.inc_crit_edge ]
  %call26 = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef nonnull %child.071) #7
  %cmp17.not = icmp eq ptr %call26, null
  br i1 %cmp17.not, label %for.inc.do.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

do.end29:                                         ; preds = %for.inc.do.end29_crit_edge, %if.end15.do.end29_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end15.do.end29_crit_edge ], [ %i.1, %for.inc.do.end29_crit_edge ]
  %16 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rza1_pctl, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.37, i32 noundef %i.0.lcssa) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.then24, %devm_kcalloc.exit59.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %call22, %if.then24 ], [ 0, %do.end29 ], [ 0, %if.then5 ], [ -12, %devm_kcalloc.exit59.cleanup_crit_edge ], [ 0, %do.body ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rza1_parse_gpiochip(ptr nocapture noundef readonly %rza1_pctl, ptr noundef %np, ptr noundef %chip, ptr noundef %range) unnamed_addr #2 align 64 {
entry:
  %of_args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %of_args) #7
  %0 = call ptr @memset(ptr %of_args, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %of_args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rza1_pctl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.of_phandle_args, ptr %of_args, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %div79 = lshr i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %4)
  %cmp = icmp ugt i32 %4, 191
  br i1 %cmp, label %do.end4, label %if.end6

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rza1_pctl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = call ptr @memcpy(ptr %chip, ptr @rza1_gpiochip_template, i32 348)
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %base, align 4
  %9 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rza1_pctl, align 4
  %call8 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %10, i32 noundef 3264, ptr noundef nonnull @.str.44, ptr noundef %np) #7
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %chip, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %arrayidx14 = getelementptr inbounds %struct.of_phandle_args, ptr %of_args, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %conv = trunc i32 %13 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %14 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %ngpio, align 4
  %of_node = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 39
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %np, ptr %of_node, align 4
  %16 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rza1_pctl, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %parent, align 4
  %id = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 2
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div79, ptr %id, align 4
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %name = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %name, align 4
  %base17 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 3
  %23 = ptrtoint ptr %base17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %4, ptr %base17, align 4
  %pin_base = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 4
  %24 = ptrtoint ptr %pin_base to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %4, ptr %pin_base, align 4
  %npins = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 5
  %25 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %13, ptr %npins, align 4
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 7
  %26 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %chip, ptr %gc, align 4
  %27 = load ptr, ptr %rza1_pctl, align 4
  %ports = getelementptr inbounds %struct.rza1_pinctrl, ptr %rza1_pctl, i32 0, i32 4
  %28 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ports, align 4
  %arrayidx21 = getelementptr %struct.rza1_port, ptr %29, i32 %div79
  %call22 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %27, ptr noundef %chip, ptr noundef %arrayidx21, ptr noundef nonnull @rza1_parse_gpiochip.lock_key, ptr noundef nonnull @rza1_parse_gpiochip.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %pctl = getelementptr inbounds %struct.rza1_pinctrl, ptr %rza1_pctl, i32 0, i32 7
  %30 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pctl, align 4
  call void @pinctrl_add_gpio_range(ptr noundef %31, ptr noundef %range) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rza1_parse_gpiochip.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rza1_parse_gpiochip, %cleanup)) #7
          to label %if.then33 [label %cleanup], !srcloc !167

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %rza1_pctl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rza1_pctl, align 4
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  %36 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ngpio, align 4
  %conv37 = zext i16 %37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rza1_parse_gpiochip.__UNIQUE_ID_ddebug224, ptr noundef %33, ptr noundef nonnull @.str.45, ptr noundef %35, i32 noundef %conv37) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end25, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end4, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end4 ], [ -12, %if.end6.cleanup_crit_edge ], [ %call22, %if.end12.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %of_args) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_gpio_request(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  tail call fastcc void @rza1_pin_reset(ptr noundef %call, i32 noundef %gpio)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rza1_gpio_free(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  tail call fastcc void @rza1_pin_reset(ptr noundef %call, i32 noundef %gpio)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_gpio_get_direction(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %base.i = getelementptr inbounds %struct.rza1_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 768
  %id.i = getelementptr inbounds %struct.rza1_port, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %3, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #7, !srcloc !168
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv.i = zext i16 %5 to i32
  %6 = lshr i32 %conv.i, %gpio
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_gpio_direction_input(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #7
  %base.i.i = getelementptr inbounds %struct.rza1_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16384
  %id.i.i = getelementptr inbounds %struct.rza1_port, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i.i, align 4
  %mul.i.i = shl i32 %3, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i.i) #7, !srcloc !168
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %shl.i.i = shl nuw i32 1, %gpio
  %6 = trunc i32 %shl.i.i to i16
  %conv2.i.i = or i16 %5, %6
  %7 = xor i16 %6, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 %8) #7, !srcloc !171
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %10, i32 768
  %11 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i.i, align 4
  %mul.i19.i = shl i32 %12, 2
  %add.ptr1.i20.i = getelementptr i8, ptr %add.ptr.i17.i, i32 %mul.i19.i
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i20.i) #7
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %conv2.i22.i = or i16 %14, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv2.i22.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i20.i, i16 %15) #7, !srcloc !171
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %17, i32 16640
  %18 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i.i, align 4
  %mul.i27.i = shl i32 %19, 2
  %add.ptr1.i28.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %mul.i27.i
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i28.i) #7, !srcloc !168
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv5.i31.i = and i16 %21, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv5.i31.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i28.i, i16 %22) #7, !srcloc !171
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call2.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_gpio_direction_output(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %base.i.i = getelementptr inbounds %struct.rza1_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.rza1_port, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i.i, align 4
  %mul.i.i = shl i32 %3, 2
  %add.ptr1.i.i = getelementptr i8, ptr %1, i32 %mul.i.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i.i) #7, !srcloc !168
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %shl.i.i = shl nuw i32 1, %gpio
  %6 = trunc i32 %shl.i.i to i16
  %conv2.i.i = or i16 %5, %6
  %7 = xor i16 %6, -1
  %conv5.i.i = and i16 %5, %7
  %val.0.i.i = select i1 %tobool.not.i, i16 %conv5.i.i, i16 %conv2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %8 = tail call i16 @llvm.bswap.i16(i16 %val.0.i.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 %8) #7, !srcloc !171
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call2.i) #7
  %call2.i3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #7
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 16384
  %11 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i.i, align 4
  %mul.i.i6 = shl i32 %12, 2
  %add.ptr1.i.i7 = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i6
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i.i7) #7, !srcloc !168
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv2.i.i9 = or i16 %14, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i9) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i7, i16 %15) #7, !srcloc !171
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %17, i32 768
  %18 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i.i, align 4
  %mul.i19.i = shl i32 %19, 2
  %add.ptr1.i20.i = getelementptr i8, ptr %add.ptr.i17.i, i32 %mul.i19.i
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i20.i) #7
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %conv5.i39.i = and i16 %21, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv5.i39.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i20.i, i16 %22) #7, !srcloc !171
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %24, i32 16640
  %25 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i.i, align 4
  %mul.i43.i = shl i32 %26, 2
  %add.ptr1.i44.i = getelementptr i8, ptr %add.ptr.i41.i, i32 %mul.i43.i
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i44.i) #7, !srcloc !168
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv2.i46.i = or i16 %28, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv2.i46.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i44.i, i16 %29) #7, !srcloc !171
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call2.i3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_gpio_get(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %base.i.i = getelementptr inbounds %struct.rza1_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 512
  %id.i.i = getelementptr inbounds %struct.rza1_port, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i.i, align 4
  %mul.i.i = shl i32 %3, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i.i) #7, !srcloc !168
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %conv.i.i = zext i16 %5 to i32
  %shl.i.i = shl nuw i32 1, %gpio
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  ret i32 %and.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rza1_gpio_set(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %base.i.i = getelementptr inbounds %struct.rza1_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.rza1_port, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i.i, align 4
  %mul.i.i = shl i32 %3, 2
  %add.ptr1.i.i = getelementptr i8, ptr %1, i32 %mul.i.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i.i) #7, !srcloc !168
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %shl.i.i = shl nuw i32 1, %gpio
  %6 = trunc i32 %shl.i.i to i16
  %conv2.i.i = or i16 %5, %6
  %7 = xor i16 %6, -1
  %conv5.i.i = and i16 %5, %7
  %val.0.i.i = select i1 %tobool.not.i, i16 %conv5.i.i, i16 %conv2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %8 = tail call i16 @llvm.bswap.i16(i16 %val.0.i.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 %8) #7, !srcloc !171
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call2.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_pinctrl_rza1__226_1425_rza1_pinctrl_init1, !1, !"__initcall__kmod_pinctrl_rza1__226_1425_rza1_pinctrl_init1", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1425, i32 1}
!2 = !{ptr @__UNIQUE_ID_author227, !3, !"__UNIQUE_ID_author227", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1427, i32 1}
!4 = !{ptr @__UNIQUE_ID_description228, !5, !"__UNIQUE_ID_description228", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1428, i32 1}
!6 = !{ptr @__UNIQUE_ID_file229, !7, !"__UNIQUE_ID_file229", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1429, i32 1}
!8 = !{ptr @__UNIQUE_ID_license230, !7, !"__UNIQUE_ID_license230", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1415, i32 11}
!11 = !{ptr @rza1_pinctrl_driver, !12, !"rza1_pinctrl_driver", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1413, i32 31}
!13 = !{ptr @rza1_pinctrl_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1379, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1393, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rza1_pinctrl_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rza1_pinctrl_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rza1_pinctrl_ops, !25, !"rza1_pinctrl_ops", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1097, i32 33}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 997, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rza1_dt_node_to_map._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @rza1_dt_node_to_map._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1059, i32 2}
!34 = !{ptr @rza1_dt_node_to_map._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rza1_dt_node_to_map._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1085, i32 2}
!38 = !{ptr @rza1_dt_node_to_map._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rza1_dt_node_to_map._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 859, i32 33}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 902, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rza1_parse_pinmux_node.__UNIQUE_ID_ddebug223, !43, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 914, i32 3}
!49 = !{ptr @rza1_parse_pinmux_node._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rza1_parse_pinmux_node._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 959, i32 4}
!53 = !{ptr @rza1_parse_pinmux_node._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rza1_parse_pinmux_node._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @rza1_pinmux_ops, !56, !"rza1_pinmux_ops", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1145, i32 32}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1322, i32 12}
!59 = !{ptr @rza1_pinctrl_register.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1336, i32 4}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1343, i32 3}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rza1_pinctrl_register._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @rza1_pinctrl_register._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1350, i32 3}
!69 = !{ptr @rza1_pinctrl_register._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @rza1_pinctrl_register._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1357, i32 3}
!73 = !{ptr @rza1_pinctrl_register._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rza1_pinctrl_register._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1260, i32 3}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rza1_gpio_register.__UNIQUE_ID_ddebug225, !76, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1273, i32 37}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1286, i32 2}
!83 = !{ptr @rza1_gpio_register._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rza1_gpio_register._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1188, i32 26}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1196, i32 3}
!89 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @rza1_parse_gpiochip._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @rza1_parse_gpiochip._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1208, i32 3}
!94 = !{ptr @rza1_parse_gpiochip._entry.41, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @rza1_parse_gpiochip._entry_ptr.43, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1215, i32 59}
!98 = !{ptr @rza1_parse_gpiochip.lock_key, !99, !"lock_key", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1230, i32 8}
!100 = !{ptr @rza1_parse_gpiochip.request_key, !99, !"request_key", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1237, i32 2}
!103 = !{ptr @rza1_parse_gpiochip.__UNIQUE_ID_ddebug224, !102, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!104 = !{ptr @rza1_gpiochip_template, !105, !"rza1_gpiochip_template", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 834, i32 31}
!106 = !{ptr @rza1_pinctrl_of_match, !107, !"rza1_pinctrl_of_match", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 1399, i32 34}
!108 = !{ptr @rza1h_pmx_conf, !109, !"rza1h_pmx_conf", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 297, i32 38}
!110 = !{ptr @rza1h_bidir_entries, !111, !"rza1h_bidir_entries", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 280, i32 38}
!112 = !{ptr @rza1h_bidir_pins_p1, !113, !"rza1h_bidir_pins_p1", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 125, i32 36}
!114 = !{ptr @rza1h_bidir_pins_p2, !115, !"rza1h_bidir_pins_p2", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 136, i32 36}
!116 = !{ptr @rza1h_bidir_pins_p3, !117, !"rza1h_bidir_pins_p3", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 163, i32 36}
!118 = !{ptr @rza1h_bidir_pins_p4, !119, !"rza1h_bidir_pins_p4", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 177, i32 36}
!120 = !{ptr @rza1h_bidir_pins_p6, !121, !"rza1h_bidir_pins_p6", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 198, i32 36}
!122 = !{ptr @rza1h_bidir_pins_p7, !123, !"rza1h_bidir_pins_p7", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 217, i32 36}
!124 = !{ptr @rza1h_bidir_pins_p8, !125, !"rza1h_bidir_pins_p8", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 221, i32 36}
!126 = !{ptr @rza1h_bidir_pins_p9, !127, !"rza1h_bidir_pins_p9", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 232, i32 36}
!128 = !{ptr @rza1h_bidir_pins_p11, !129, !"rza1h_bidir_pins_p11", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 241, i32 36}
!130 = !{ptr @rza1h_swio_entries, !131, !"rza1h_swio_entries", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 292, i32 37}
!132 = !{ptr @rza1h_swio_pins, !133, !"rza1h_swio_pins", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 258, i32 35}
!134 = !{ptr @rza1l_pmx_conf, !135, !"rza1l_pmx_conf", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 425, i32 38}
!136 = !{ptr @rza1l_bidir_entries, !137, !"rza1l_bidir_entries", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 410, i32 38}
!138 = !{ptr @rza1l_bidir_pins_p1, !139, !"rza1l_bidir_pins_p1", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 306, i32 36}
!140 = !{ptr @rza1l_bidir_pins_p3, !141, !"rza1l_bidir_pins_p3", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 317, i32 36}
!142 = !{ptr @rza1l_bidir_pins_p4, !143, !"rza1l_bidir_pins_p4", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 329, i32 36}
!144 = !{ptr @rza1l_bidir_pins_p5, !145, !"rza1l_bidir_pins_p5", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 337, i32 36}
!146 = !{ptr @rza1l_bidir_pins_p6, !147, !"rza1l_bidir_pins_p6", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 360, i32 36}
!148 = !{ptr @rza1l_bidir_pins_p7, !149, !"rza1l_bidir_pins_p7", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 379, i32 36}
!150 = !{ptr @rza1l_bidir_pins_p9, !151, !"rza1l_bidir_pins_p9", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 392, i32 36}
!152 = !{ptr @rza1l_swio_entries, !153, !"rza1l_swio_entries", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 420, i32 37}
!154 = !{ptr @rza1l_swio_pins, !155, !"rza1l_swio_pins", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/renesas/pinctrl-rza1.c", i32 401, i32 35}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{!"auto-init"}
!167 = !{i64 2148842810, i64 2148842815, i64 2148842828, i64 2148842872, i64 2148842906, i64 2148842927}
!168 = !{i64 4874429}
!169 = !{i64 2152415004}
!170 = !{i64 2152416421}
!171 = !{i64 4874229}
