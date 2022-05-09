; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-axp209.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-axp209.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.axp20x_pctrl_desc = type { ptr, i32, i8, i8, i8, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
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
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.axp20x_pctl = type { %struct.gpio_chip, ptr, ptr, ptr, ptr, [4 x %struct.axp20x_pinctrl_function] }
%struct.axp20x_pinctrl_function = type { ptr, i32, ptr, i32 }
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }

@__initcall__kmod_pinctrl_axp209__227_489_axp20x_pctl_driver_init6 = internal global ptr @axp20x_pctl_driver_init, section ".initcall6.init", align 4
@axp20x_pctl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axp20x_pctl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axp20x_pctl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axp20x_pctl_driver_exit = internal global ptr @axp20x_pctl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [71 x i8] c"pinctrl_axp209.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [73 x i8] c"pinctrl_axp209.author=Quentin Schulz <quentin.schulz@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [63 x i8] c"pinctrl_axp209.description=AXP20x PMIC pinctrl and GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [51 x i8] c"pinctrl_axp209.file=drivers/pinctrl/pinctrl-axp209\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [27 x i8] c"pinctrl_axp209.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axp20x-gpio\00", [20 x i8] zeroinitializer }, align 32
@axp20x_pctl_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp209-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp20x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp813-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp813_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@axp20x_pctl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Parent drvdata not set\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axp20x_pctl_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/pinctrl/pinctrl-axp209.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axp20x_pctl_probe._entry_ptr = internal global ptr @axp20x_pctl_probe._entry, section ".printk_index", align 4
@axp20x_pctl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to build groups\0A\00", [40 x i8] zeroinitializer }, align 32
@axp20x_pctl_probe._entry_ptr.8 = internal global ptr @axp20x_pctl_probe._entry.6, section ".printk_index", align 4
@axp20x_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @axp20x_groups_cnt, ptr @axp20x_group_name, ptr @axp20x_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinconf_generic_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@axp20x_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @axp20x_pmx_func_cnt, ptr @axp20x_pmx_func_name, ptr @axp20x_pmx_func_groups, ptr @axp20x_pmx_set_mux, ptr null, ptr null, ptr @axp20x_pmx_gpio_set_direction, i8 1 }, [56 x i8] zeroinitializer }, align 32
@axp20x_pctl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 457, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@axp20x_pctl_probe._entry_ptr.11 = internal global ptr @axp20x_pctl_probe._entry.9, section ".printk_index", align 4
@axp20x_pctl_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@axp20x_pctl_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@axp20x_pctl_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register GPIO chip\0A\00", [34 x i8] zeroinitializer }, align 32
@axp20x_pctl_probe._entry_ptr.14 = internal global ptr @axp20x_pctl_probe._entry.12, section ".printk_index", align 4
@axp20x_pctl_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add pin range\0A\00", [39 x i8] zeroinitializer }, align 32
@axp20x_pctl_probe._entry_ptr.17 = internal global ptr @axp20x_pctl_probe._entry.15, section ".printk_index", align 4
@axp20x_pctl_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 476, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AXP209 pinctrl and GPIO driver loaded\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@axp20x_pctl_probe._entry_ptr.21 = internal global ptr @axp20x_pctl_probe._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_out\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_in\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ldo\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@axp20x_data = internal constant { %struct.axp20x_pctrl_desc, [20 x i8] } { %struct.axp20x_pctrl_desc { ptr @axp209_pins, i32 3, i8 3, i8 3, i8 4, i8 4 }, [20 x i8] zeroinitializer }, align 32
@axp813_data = internal constant { %struct.axp20x_pctrl_desc, [20 x i8] } { %struct.axp20x_pctrl_desc { ptr @axp813_pins, i32 2, i8 3, i8 1, i8 0, i8 5 }, [20 x i8] zeroinitializer }, align 32
@axp209_pins = internal constant { [3 x %struct.pinctrl_pin_desc], [60 x i8] } { [3 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.28, ptr null }], [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO0\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO1\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO2\00", [26 x i8] zeroinitializer }, align 32
@axp813_pins = internal constant { [2 x %struct.pinctrl_pin_desc], [40 x i8] } { [2 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.27, ptr null }], [40 x i8] zeroinitializer }, align 32
@switch.table.axp20x_gpio_get_direction = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 144, i32 146, i32 147], [20 x i8] zeroinitializer }, align 32
@switch.table.axp20x_gpio_set = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 144, i32 146, i32 147], [20 x i8] zeroinitializer }, align 32
@switch.table.axp20x_pmx_set_mux = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 144, i32 146, i32 147], [20 x i8] zeroinitializer }, align 32
@switch.table.axp20x_pmx_set_mux.29 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 144, i32 146, i32 147], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"axp20x_pctl_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 481, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 484, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"axp20x_pctl_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 389, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 408, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 440, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"axp20x_pctrl_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 310, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"axp20x_pmx_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 275, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 457, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 461, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 463, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 472, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 476, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 350, i32 43 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 352, i32 42 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 354, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 359, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"axp20x_data\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 81, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"axp813_data\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 90, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"axp209_pins\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 70, i32 38 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 71, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 72, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 73, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"axp813_pins\00", align 1
@___asan_gen_.134 = private constant [36 x i8] c"../drivers/pinctrl/pinctrl-axp209.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 76, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant [39 x i8] c"switch.table.axp20x_gpio_get_direction\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [29 x i8] c"switch.table.axp20x_gpio_set\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [32 x i8] c"switch.table.axp20x_pmx_set_mux\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [35 x i8] c"switch.table.axp20x_pmx_set_mux.29\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_axp20x_pctl_driver_exit, ptr @__initcall__kmod_pinctrl_axp209__227_489_axp20x_pctl_driver_init6, ptr @axp20x_pctl_driver_exit, ptr @axp20x_pctl_probe._entry, ptr @axp20x_pctl_probe._entry.12, ptr @axp20x_pctl_probe._entry.15, ptr @axp20x_pctl_probe._entry.18, ptr @axp20x_pctl_probe._entry.6, ptr @axp20x_pctl_probe._entry.9, ptr @axp20x_pctl_probe._entry_ptr, ptr @axp20x_pctl_probe._entry_ptr.11, ptr @axp20x_pctl_probe._entry_ptr.14, ptr @axp20x_pctl_probe._entry_ptr.17, ptr @axp20x_pctl_probe._entry_ptr.21, ptr @axp20x_pctl_probe._entry_ptr.8, ptr @axp20x_pctl_driver, ptr @.str, ptr @axp20x_pctl_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @axp20x_pctrl_ops, ptr @axp20x_pmx_ops, ptr @.str.10, ptr @axp20x_pctl_probe.lock_key, ptr @axp20x_pctl_probe.request_key, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @axp20x_data, ptr @axp813_data, ptr @axp209_pins, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @axp813_pins, ptr @switch.table.axp20x_gpio_get_direction, ptr @switch.table.axp20x_gpio_set, ptr @switch.table.axp20x_pmx_set_mux, ptr @switch.table.axp20x_pmx_set_mux.29], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctl_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctl_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctl_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctl_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctl_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pctl_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp209_pins to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_pins to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp20x_gpio_get_direction to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp20x_gpio_set to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp20x_pmx_set_mux to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp20x_pmx_set_mux.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pctl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp20x_pctl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axp20x_pctl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp20x_pctl_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pctl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mask_cpy.i106.i = alloca i32, align 4
  %mask_cpy.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call4 = tail call zeroext i1 @of_device_is_available(ptr noundef %5) #7
  br i1 %call4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 428, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %base, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %7 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %can_sleep, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %parent18 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %parent18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent18, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.dev_name.exit_crit_edge

if.end12.dev_name.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end12.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end12.dev_name.exit_crit_edge ]
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %owner, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @axp20x_gpio_get, ptr %get, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @axp20x_gpio_get_direction, ptr %get_direction, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %19 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @axp20x_gpio_set, ptr %set, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @axp20x_gpio_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @axp20x_gpio_output, ptr %direction_output, align 4
  %call28 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %desc = getelementptr inbounds %struct.axp20x_pctl, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call28, ptr %desc, align 4
  %npins = getelementptr inbounds %struct.axp20x_pctrl_desc, ptr %call28, i32 0, i32 1
  %23 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %npins, align 4
  %conv = trunc i32 %24 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %25 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %ngpio, align 4
  %regmap = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %regmap31 = getelementptr inbounds %struct.axp20x_pctl, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %regmap31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %regmap31, align 4
  %dev33 = getelementptr inbounds %struct.axp20x_pctl, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %dev33, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %31 = load i32, ptr %npins, align 4
  %funcs.i = getelementptr inbounds %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.22, ptr %funcs.i, align 4
  %muxval.i = getelementptr inbounds %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %muxval.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %muxval.i, align 4
  %arrayidx5.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.23, ptr %arrayidx5.i, align 4
  %muxval9.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %35 = ptrtoint ptr %muxval9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %muxval9.i, align 4
  %arrayidx11.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.24, ptr %arrayidx11.i, align 4
  %arrayidx14.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 3
  %37 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.25, ptr %arrayidx14.i, align 4
  %adc_mux.i = getelementptr inbounds %struct.axp20x_pctrl_desc, ptr %call28, i32 0, i32 5
  %38 = ptrtoint ptr %adc_mux.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %adc_mux.i, align 1
  %conv.i = zext i8 %39 to i32
  %muxval19.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 3, i32 1
  %40 = ptrtoint ptr %muxval19.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.i, ptr %muxval19.i, align 4
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 4) #7
  %42 = extractvalue { i32, i1 } %41, 1
  %43 = extractvalue { i32, i1 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp30162.i = icmp sgt i32 %31, 0
  %ngroups.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  %44 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %31, ptr %ngroups.i, align 4
  br i1 %42, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !85

devm_kcalloc.exit.thread.i:                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %groups156.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %45 = ptrtoint ptr %groups156.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %groups156.i, align 4
  br label %do.end39

devm_kcalloc.exit.i:                              ; preds = %dev_name.exit
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %43, i32 noundef 3520) #7
  %groups.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %46 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call5.i.i.i, ptr %groups.i, align 4
  %tobool.not.i165 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i165, label %devm_kcalloc.exit.i.do.end39_crit_edge, label %for.cond29.preheader.i

devm_kcalloc.exit.i.do.end39_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

for.cond29.preheader.i:                           ; preds = %devm_kcalloc.exit.i
  br i1 %cmp30162.i, label %for.cond29.preheader.i.for.body32.i_crit_edge, label %for.cond29.preheader.i.devm_kcalloc.exit.1.i_crit_edge

for.cond29.preheader.i.devm_kcalloc.exit.1.i_crit_edge: ; preds = %for.cond29.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit.1.i

for.cond29.preheader.i.for.body32.i_crit_edge:    ; preds = %for.cond29.preheader.i
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.body32.i.for.body32.i_crit_edge, %for.cond29.preheader.i.for.body32.i_crit_edge
  %pin.0163.i = phi i32 [ %inc.i, %for.body32.i.for.body32.i_crit_edge ], [ 0, %for.cond29.preheader.i.for.body32.i_crit_edge ]
  %47 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %name35.i = getelementptr %struct.pinctrl_pin_desc, ptr %50, i32 %pin.0163.i, i32 1
  %51 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name35.i, align 4
  %53 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %groups.i, align 4
  %arrayidx39.i = getelementptr ptr, ptr %54, i32 %pin.0163.i
  %55 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %arrayidx39.i, align 4
  %inc.i = add nuw nsw i32 %pin.0163.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %31
  br i1 %exitcond.not.i, label %for.body32.i.devm_kcalloc.exit.1.i_crit_edge, label %for.body32.i.for.body32.i_crit_edge

for.body32.i.for.body32.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body32.i

for.body32.i.devm_kcalloc.exit.1.i_crit_edge:     ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit.1.i

devm_kcalloc.exit.1.i:                            ; preds = %for.body32.i.devm_kcalloc.exit.1.i_crit_edge, %for.cond29.preheader.i.devm_kcalloc.exit.1.i_crit_edge
  %ngroups.1.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 1, i32 3
  %56 = ptrtoint ptr %ngroups.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %31, ptr %ngroups.1.i, align 4
  %call5.i.i.1.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %43, i32 noundef 3520) #7
  %groups.1.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 1, i32 2
  %57 = ptrtoint ptr %groups.1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call5.i.i.1.i, ptr %groups.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %call5.i.i.1.i, null
  br i1 %tobool.not.1.i, label %devm_kcalloc.exit.1.i.do.end39_crit_edge, label %for.cond29.preheader.1.i

devm_kcalloc.exit.1.i.do.end39_crit_edge:         ; preds = %devm_kcalloc.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

for.cond29.preheader.1.i:                         ; preds = %devm_kcalloc.exit.1.i
  br i1 %cmp30162.i, label %for.cond29.preheader.1.i.for.body32.1.i_crit_edge, label %for.cond29.preheader.1.i.for.inc40.1.i_crit_edge

for.cond29.preheader.1.i.for.inc40.1.i_crit_edge: ; preds = %for.cond29.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc40.1.i

for.cond29.preheader.1.i.for.body32.1.i_crit_edge: ; preds = %for.cond29.preheader.1.i
  br label %for.body32.1.i

for.body32.1.i:                                   ; preds = %for.body32.1.i.for.body32.1.i_crit_edge, %for.cond29.preheader.1.i.for.body32.1.i_crit_edge
  %pin.0163.1.i = phi i32 [ %inc.1.i, %for.body32.1.i.for.body32.1.i_crit_edge ], [ 0, %for.cond29.preheader.1.i.for.body32.1.i_crit_edge ]
  %58 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %name35.1.i = getelementptr %struct.pinctrl_pin_desc, ptr %61, i32 %pin.0163.1.i, i32 1
  %62 = ptrtoint ptr %name35.1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name35.1.i, align 4
  %64 = ptrtoint ptr %groups.1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %groups.1.i, align 4
  %arrayidx39.1.i = getelementptr ptr, ptr %65, i32 %pin.0163.1.i
  %66 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %arrayidx39.1.i, align 4
  %inc.1.i = add nuw nsw i32 %pin.0163.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, %31
  br i1 %exitcond.1.not.i, label %for.body32.1.i.for.inc40.1.i_crit_edge, label %for.body32.1.i.for.body32.1.i_crit_edge

for.body32.1.i.for.body32.1.i_crit_edge:          ; preds = %for.body32.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body32.1.i

for.body32.1.i.for.inc40.1.i_crit_edge:           ; preds = %for.body32.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc40.1.i

for.inc40.1.i:                                    ; preds = %for.body32.1.i.for.inc40.1.i_crit_edge, %for.cond29.preheader.1.i.for.inc40.1.i_crit_edge
  %67 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %desc, align 4
  %ldo_mask.i = getelementptr inbounds %struct.axp20x_pctrl_desc, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %ldo_mask.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ldo_mask.i, align 4
  %conv45.i = zext i8 %70 to i32
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask_cpy.i.i) #7
  %73 = ptrtoint ptr %mask_cpy.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv45.i, ptr %mask_cpy.i.i, align 4
  %call.i.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv45.i) #7
  %ngroups57.i.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 2, i32 3
  %74 = ptrtoint ptr %ngroups57.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i.i.i, ptr %ngroups57.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %for.inc40.1.i.if.end53.i_crit_edge, label %if.then.i.i

for.inc40.1.i.if.end53.i_crit_edge:               ; preds = %for.inc40.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.then.i.i:                                      ; preds = %for.inc40.1.i
  %75 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i.i, i32 4) #7
  %76 = extractvalue { i32, i1 } %75, 1
  br i1 %76, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !85

devm_kcalloc.exit.thread.i.i:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %groups95.i.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 2, i32 2
  %77 = ptrtoint ptr %groups95.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %groups95.i.i, align 4
  br label %axp20x_funcs_groups_from_mask.exit.i

devm_kcalloc.exit.i.i:                            ; preds = %if.then.i.i
  %78 = extractvalue { i32, i1 } %75, 0
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %78, i32 noundef 3520) #7
  %groups.i.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 2, i32 2
  %79 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call5.i.i.i.i, ptr %groups.i.i, align 4
  %tobool62.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool62.not.i.i, label %devm_kcalloc.exit.i.i.axp20x_funcs_groups_from_mask.exit.i_crit_edge, label %if.end.i.i

devm_kcalloc.exit.i.i.axp20x_funcs_groups_from_mask.exit.i_crit_edge: ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %axp20x_funcs_groups_from_mask.exit.i

if.end.i.i:                                       ; preds = %devm_kcalloc.exit.i.i
  %call65.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_cpy.i.i, i32 noundef %31, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call65.i.i, i32 %31)
  %cmp6697.i.i = icmp ult i32 %call65.i.i, %31
  br i1 %cmp6697.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.if.end53.i_crit_edge

if.end.i.i.if.end53.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %bit.099.i.i = phi i32 [ %call69.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call65.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %group.098.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call5.i.i.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %name.i.i = getelementptr %struct.pinctrl_pin_desc, ptr %72, i32 %bit.099.i.i, i32 1
  %80 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name.i.i, align 4
  %82 = ptrtoint ptr %group.098.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %group.098.i.i, align 4
  %incdec.ptr.i.i = getelementptr ptr, ptr %group.098.i.i, i32 1
  %add68.i.i = add nuw i32 %bit.099.i.i, 1
  %call69.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_cpy.i.i, i32 noundef %31, i32 noundef %add68.i.i) #7
  %cmp66.i.i = icmp ult i32 %call69.i.i, %31
  br i1 %cmp66.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end53.i_crit_edge

for.body.i.i.if.end53.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

axp20x_funcs_groups_from_mask.exit.i:             ; preds = %devm_kcalloc.exit.i.i.axp20x_funcs_groups_from_mask.exit.i_crit_edge, %devm_kcalloc.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask_cpy.i.i) #7
  br label %do.end39

if.end53.i:                                       ; preds = %for.body.i.i.if.end53.i_crit_edge, %if.end.i.i.if.end53.i_crit_edge, %for.inc40.1.i.if.end53.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask_cpy.i.i) #7
  %83 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %desc, align 4
  %adc_mask.i = getelementptr inbounds %struct.axp20x_pctrl_desc, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %adc_mask.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %adc_mask.i, align 1
  %conv56.i = zext i8 %86 to i32
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask_cpy.i106.i) #7
  %89 = ptrtoint ptr %mask_cpy.i106.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv56.i, ptr %mask_cpy.i106.i, align 4
  %call.i.i129.i = call i32 @__sw_hweight8(i32 noundef %conv56.i) #7
  %ngroups57.i132.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 3, i32 3
  %90 = ptrtoint ptr %ngroups57.i132.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call.i.i129.i, ptr %ngroups57.i132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129.i)
  %cmp.not.i133.i = icmp eq i32 %call.i.i129.i, 0
  br i1 %cmp.not.i133.i, label %if.end53.i.if.end41_crit_edge, label %if.then.i135.i

if.end53.i.if.end41_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then.i135.i:                                   ; preds = %if.end53.i
  %91 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i129.i, i32 4) #7
  %92 = extractvalue { i32, i1 } %91, 1
  br i1 %92, label %devm_kcalloc.exit.thread.i137.i, label %devm_kcalloc.exit.i141.i, !prof !85

devm_kcalloc.exit.thread.i137.i:                  ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #9
  %groups95.i136.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 3, i32 2
  %93 = ptrtoint ptr %groups95.i136.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %groups95.i136.i, align 4
  br label %axp20x_build_funcs_groups.exit

devm_kcalloc.exit.i141.i:                         ; preds = %if.then.i135.i
  %94 = extractvalue { i32, i1 } %91, 0
  %call5.i.i.i138.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %94, i32 noundef 3520) #7
  %groups.i139.i = getelementptr %struct.axp20x_pctl, ptr %call.i, i32 0, i32 5, i32 3, i32 2
  %95 = ptrtoint ptr %groups.i139.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call5.i.i.i138.i, ptr %groups.i139.i, align 4
  %tobool62.not.i140.i = icmp eq ptr %call5.i.i.i138.i, null
  br i1 %tobool62.not.i140.i, label %devm_kcalloc.exit.i141.i.axp20x_build_funcs_groups.exit_crit_edge, label %if.end.i144.i

devm_kcalloc.exit.i141.i.axp20x_build_funcs_groups.exit_crit_edge: ; preds = %devm_kcalloc.exit.i141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %axp20x_build_funcs_groups.exit

if.end.i144.i:                                    ; preds = %devm_kcalloc.exit.i141.i
  %call65.i142.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_cpy.i106.i, i32 noundef %31, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call65.i142.i, i32 %31)
  %cmp6697.i143.i = icmp ult i32 %call65.i142.i, %31
  br i1 %cmp6697.i143.i, label %if.end.i144.i.for.body.i152.i_crit_edge, label %if.end.i144.i.if.end41_crit_edge

if.end.i144.i.if.end41_crit_edge:                 ; preds = %if.end.i144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end.i144.i.for.body.i152.i_crit_edge:          ; preds = %if.end.i144.i
  br label %for.body.i152.i

for.body.i152.i:                                  ; preds = %for.body.i152.i.for.body.i152.i_crit_edge, %if.end.i144.i.for.body.i152.i_crit_edge
  %bit.099.i145.i = phi i32 [ %call69.i150.i, %for.body.i152.i.for.body.i152.i_crit_edge ], [ %call65.i142.i, %if.end.i144.i.for.body.i152.i_crit_edge ]
  %group.098.i146.i = phi ptr [ %incdec.ptr.i148.i, %for.body.i152.i.for.body.i152.i_crit_edge ], [ %call5.i.i.i138.i, %if.end.i144.i.for.body.i152.i_crit_edge ]
  %name.i147.i = getelementptr %struct.pinctrl_pin_desc, ptr %88, i32 %bit.099.i145.i, i32 1
  %96 = ptrtoint ptr %name.i147.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name.i147.i, align 4
  %98 = ptrtoint ptr %group.098.i146.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %group.098.i146.i, align 4
  %incdec.ptr.i148.i = getelementptr ptr, ptr %group.098.i146.i, i32 1
  %add68.i149.i = add nuw i32 %bit.099.i145.i, 1
  %call69.i150.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_cpy.i106.i, i32 noundef %31, i32 noundef %add68.i149.i) #7
  %cmp66.i151.i = icmp ult i32 %call69.i150.i, %31
  br i1 %cmp66.i151.i, label %for.body.i152.i.for.body.i152.i_crit_edge, label %for.body.i152.i.if.end41_crit_edge

for.body.i152.i.if.end41_crit_edge:               ; preds = %for.body.i152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

for.body.i152.i.for.body.i152.i_crit_edge:        ; preds = %for.body.i152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i152.i

axp20x_build_funcs_groups.exit:                   ; preds = %devm_kcalloc.exit.i141.i.axp20x_build_funcs_groups.exit_crit_edge, %devm_kcalloc.exit.thread.i137.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask_cpy.i106.i) #7
  br label %do.end39

do.end39:                                         ; preds = %axp20x_build_funcs_groups.exit, %axp20x_funcs_groups_from_mask.exit.i, %devm_kcalloc.exit.1.i.do.end39_crit_edge, %devm_kcalloc.exit.i.do.end39_crit_edge, %devm_kcalloc.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end41:                                         ; preds = %for.body.i152.i.if.end41_crit_edge, %if.end.i144.i.if.end41_crit_edge, %if.end53.i.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask_cpy.i106.i) #7
  %call.i167 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #7
  %tobool44.not = icmp eq ptr %call.i167, null
  br i1 %tobool44.not, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %99 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i169 = icmp eq ptr %100, null
  br i1 %tobool.not.i169, label %if.end.i170, label %if.end46.dev_name.exit172_crit_edge

if.end46.dev_name.exit172_crit_edge:              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit172

if.end.i170:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  br label %dev_name.exit172

dev_name.exit172:                                 ; preds = %if.end.i170, %if.end46.dev_name.exit172_crit_edge
  %retval.0.i171 = phi ptr [ %102, %if.end.i170 ], [ %100, %if.end46.dev_name.exit172_crit_edge ]
  %103 = ptrtoint ptr %call.i167 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %retval.0.i171, ptr %call.i167, align 4
  %owner49 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i167, i32 0, i32 6
  %104 = ptrtoint ptr %owner49 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %owner49, align 4
  %105 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %desc, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %pins51 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i167, i32 0, i32 1
  %109 = ptrtoint ptr %pins51 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %pins51, align 4
  %npins53 = getelementptr inbounds %struct.axp20x_pctrl_desc, ptr %106, i32 0, i32 1
  %110 = ptrtoint ptr %npins53 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %npins53, align 4
  %npins54 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i167, i32 0, i32 2
  %112 = ptrtoint ptr %npins54 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %npins54, align 4
  %pctlops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i167, i32 0, i32 3
  %113 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @axp20x_pctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i167, i32 0, i32 4
  %114 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @axp20x_pmx_ops, ptr %pmxops, align 4
  %call56 = call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull %call.i167, ptr noundef nonnull %call.i) #7
  %pctl_dev = getelementptr inbounds %struct.axp20x_pctl, ptr %call.i, i32 0, i32 2
  %115 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call56, ptr %pctl_dev, align 4
  %cmp.i = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end62, label %if.end66

do.end62:                                         ; preds = %dev_name.exit172
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  %116 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pctl_dev, align 4
  %118 = ptrtoint ptr %117 to i32
  br label %cleanup

if.end66:                                         ; preds = %dev_name.exit172
  %call69 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @axp20x_pctl_probe.lock_key, ptr noundef nonnull @axp20x_pctl_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end76, label %do.end74

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end76:                                         ; preds = %if.end66
  %119 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i174 = icmp eq ptr %120, null
  br i1 %tobool.not.i174, label %if.end.i175, label %if.end76.dev_name.exit177_crit_edge

if.end76.dev_name.exit177_crit_edge:              ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit177

if.end.i175:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  br label %dev_name.exit177

dev_name.exit177:                                 ; preds = %if.end.i175, %if.end76.dev_name.exit177_crit_edge
  %retval.0.i176 = phi ptr [ %122, %if.end.i175 ], [ %120, %if.end76.dev_name.exit177_crit_edge ]
  %123 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %desc, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %npins86 = getelementptr inbounds %struct.axp20x_pctrl_desc, ptr %124, i32 0, i32 1
  %129 = ptrtoint ptr %npins86 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %npins86, align 4
  %call87 = call i32 @gpiochip_add_pin_range(ptr noundef nonnull %call.i, ptr noundef %retval.0.i176, i32 noundef %128, i32 noundef %128, i32 noundef %130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.end97, label %do.end92

do.end92:                                         ; preds = %dev_name.exit177
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %cleanup

do.end97:                                         ; preds = %dev_name.exit177
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %do.end92, %do.end74, %do.end62, %if.end41.cleanup_crit_edge, %do.end39, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end39 ], [ %118, %do.end62 ], [ %call69, %do.end74 ], [ %call87, %do.end92 ], [ 0, %do.end97 ], [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !86
  %regmap = getelementptr inbounds %struct.axp20x_pctl, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 148, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %desc = getelementptr inbounds %struct.axp20x_pctl, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 4
  %gpio_status_offset = getelementptr inbounds %struct.axp20x_pctrl_desc, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %gpio_status_offset to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gpio_status_offset, align 2
  %conv = zext i8 %8 to i32
  %add = add i32 %conv, %offset
  %9 = lshr i32 %4, %add
  %10 = and i32 %9, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %1 = icmp ult i32 %offset, 3
  br i1 %1, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.axp20x_gpio_get_direction, i32 0, i32 %offset
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap = getelementptr inbounds %struct.axp20x_pctl, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef %switch.load, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %switch.lookup
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp5 = icmp ugt i32 %and, 2
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %and8 = lshr i32 %6, 1
  %and8.lobit = and i32 %and8, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %switch.lookup.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %and8.lobit, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axp20x_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %0 = icmp ult i32 %offset, 3
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.axp20x_gpio_set, i32 0, i32 %offset
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap = getelementptr inbounds %struct.axp20x_pctl, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp ne i32 %value, 0
  %cond = zext i1 %tobool.not to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %switch.load, i32 noundef 7, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_gpio_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_gpio_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set, align 4
  tail call void %1(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_groups_cnt(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %desc = getelementptr inbounds %struct.axp20x_pctl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %npins = getelementptr inbounds %struct.axp20x_pctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @axp20x_group_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %desc = getelementptr inbounds %struct.axp20x_pctl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %selector, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %desc = getelementptr inbounds %struct.axp20x_pctl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %selector
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %pins, align 4
  %5 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pmx_func_cnt(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @axp20x_pmx_func_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %arrayidx = getelementptr %struct.axp20x_pctl, ptr %call, i32 0, i32 5, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pmx_func_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %groups1 = getelementptr %struct.axp20x_pctl, ptr %call, i32 0, i32 5, i32 %selector, i32 2
  %0 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups1, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %ngroups = getelementptr %struct.axp20x_pctl, ptr %call, i32 0, i32 5, i32 %selector, i32 3
  %3 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ngroups, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pmx_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %function)
  %cmp = icmp ult i32 %function, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %muxval = getelementptr %struct.axp20x_pctl, ptr %call, i32 0, i32 5, i32 %function, i32 1
  %0 = ptrtoint ptr %muxval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %muxval, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %group)
  %2 = icmp ult i32 %group, 3
  br i1 %2, label %switch.lookup, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.axp20x_pmx_set_mux, i32 0, i32 %group
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap.i = getelementptr inbounds %struct.axp20x_pctl, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv.i = and i32 %1, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %switch.load, i32 noundef 7, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %function)
  %cmp2 = icmp eq i32 %function, 2
  %desc = getelementptr inbounds %struct.axp20x_pctl, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  br i1 %cmp2, label %if.end8.thread, label %if.end8

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ldo_mask = getelementptr inbounds %struct.axp20x_pctrl_desc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ldo_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %mask.0.in43 = load i8, ptr %ldo_mask, align 1
  %mask.044 = zext i8 %mask.0.in43 to i32
  %shl45 = shl nuw i32 1, %group
  %and46 = and i32 %shl45, %mask.044
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool.not47 = icmp eq i32 %and46, 0
  %.mux49 = select i1 %tobool.not47, i32 -22, i32 0
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %adc_mask = getelementptr inbounds %struct.axp20x_pctrl_desc, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %adc_mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %mask.0.in = load i8, ptr %adc_mask, align 1
  %mask.0 = zext i8 %mask.0.in to i32
  %shl = shl nuw i32 1, %group
  %and = and i32 %shl, %mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %muxval17 = getelementptr %struct.axp20x_pctl, ptr %call, i32 0, i32 5, i32 %function, i32 1
  %10 = ptrtoint ptr %muxval17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %muxval17, align 4
  %call.i32 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %group)
  %12 = icmp ult i32 %group, 3
  br i1 %12, label %switch.lookup50, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup50:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep51 = getelementptr inbounds [3 x i32], ptr @switch.table.axp20x_pmx_set_mux.29, i32 0, i32 %group
  %13 = ptrtoint ptr %switch.gep51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load52 = load i32, ptr %switch.gep51, align 4
  %regmap.i36 = getelementptr inbounds %struct.axp20x_pctl, ptr %call.i32, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i36, align 4
  %conv.i37 = and i32 %11, 255
  %call.i.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %switch.load52, i32 noundef 7, i32 noundef %conv.i37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup50, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end8.thread, %switch.lookup, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end8.cleanup_crit_edge ], [ %call.i.i, %switch.lookup ], [ -22, %if.then.cleanup_crit_edge ], [ %.mux49, %if.end8.thread ], [ %call.i.i38, %switch.lookup50 ], [ -22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pmx_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  br i1 %input, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %muxval = getelementptr %struct.axp20x_pctl, ptr %call, i32 0, i32 5, i32 1, i32 1
  %0 = ptrtoint ptr %muxval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %muxval, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %2 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %offset, label %if.then.cleanup_crit_edge [
    i32 0, label %if.then.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
  ]

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb2.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %muxval4 = getelementptr inbounds %struct.axp20x_pctl, ptr %call, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %muxval4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %muxval4, align 4
  %call.i11 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %5 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %offset, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb1.i.i12
    i32 2, label %sw.bb2.i.i13
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i.i12:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb2.i.i13:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2.i.i13, %sw.bb1.i.i12, %if.end.cleanup.sink.split_crit_edge, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.cleanup.sink.split_crit_edge
  %call.i11.sink = phi ptr [ %call.i, %sw.bb2.i.i ], [ %call.i, %sw.bb1.i.i ], [ %call.i, %if.then.cleanup.sink.split_crit_edge ], [ %call.i11, %sw.bb2.i.i13 ], [ %call.i11, %sw.bb1.i.i12 ], [ %call.i11, %if.end.cleanup.sink.split_crit_edge ]
  %.sink21 = phi i32 [ %1, %sw.bb2.i.i ], [ %1, %sw.bb1.i.i ], [ %1, %if.then.cleanup.sink.split_crit_edge ], [ %4, %sw.bb2.i.i13 ], [ %4, %sw.bb1.i.i12 ], [ %4, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.i.ph.i14.sink = phi i32 [ 147, %sw.bb2.i.i ], [ 146, %sw.bb1.i.i ], [ 144, %if.then.cleanup.sink.split_crit_edge ], [ 147, %sw.bb2.i.i13 ], [ 146, %sw.bb1.i.i12 ], [ 144, %if.end.cleanup.sink.split_crit_edge ]
  %regmap.i15 = getelementptr inbounds %struct.axp20x_pctl, ptr %call.i11.sink, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i15, align 4
  %conv.i16 = and i32 %.sink21, 255
  %call.i.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %retval.0.i.ph.i14.sink, i32 noundef 7, i32 noundef %conv.i16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i.i17, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_pinctrl_axp209__227_489_axp20x_pctl_driver_init6, !1, !"__initcall__kmod_pinctrl_axp209__227_489_axp20x_pctl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 489, i32 1}
!2 = !{ptr @__exitcall_axp20x_pctl_driver_exit, !1, !"__exitcall_axp20x_pctl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 491, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 492, i32 1}
!7 = !{ptr @__UNIQUE_ID_description230, !8, !"__UNIQUE_ID_description230", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 493, i32 1}
!9 = !{ptr @__UNIQUE_ID_file231, !10, !"__UNIQUE_ID_file231", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 494, i32 1}
!11 = !{ptr @__UNIQUE_ID_license232, !10, !"__UNIQUE_ID_license232", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 484, i32 12}
!14 = !{ptr @axp20x_pctl_driver, !15, !"axp20x_pctl_driver", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 481, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 408, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @axp20x_pctl_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @axp20x_pctl_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 440, i32 3}
!26 = !{ptr @axp20x_pctl_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @axp20x_pctl_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 457, i32 3}
!30 = !{ptr @axp20x_pctl_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @axp20x_pctl_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @axp20x_pctl_probe.lock_key, !33, !"lock_key", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 461, i32 8}
!34 = !{ptr @axp20x_pctl_probe.request_key, !33, !"request_key", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 463, i32 3}
!37 = !{ptr @axp20x_pctl_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @axp20x_pctl_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 472, i32 3}
!41 = !{ptr @axp20x_pctl_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @axp20x_pctl_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 476, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @axp20x_pctl_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @axp20x_pctl_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 350, i32 43}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 352, i32 42}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 354, i32 38}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 359, i32 38}
!56 = !{ptr @axp20x_pctrl_ops, !57, !"axp20x_pctrl_ops", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 310, i32 33}
!58 = !{ptr @axp20x_pmx_ops, !59, !"axp20x_pmx_ops", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 275, i32 32}
!60 = !{ptr @axp20x_pctl_match, !61, !"axp20x_pctl_match", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 389, i32 34}
!62 = !{ptr @axp20x_data, !63, !"axp20x_data", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 81, i32 39}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 71, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 72, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 73, i32 2}
!70 = !{ptr @axp209_pins, !71, !"axp209_pins", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 70, i32 38}
!72 = !{ptr @axp813_data, !73, !"axp813_data", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 90, i32 39}
!74 = !{ptr @axp813_pins, !75, !"axp813_pins", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-axp209.c", i32 76, i32 38}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{!"auto-init"}
