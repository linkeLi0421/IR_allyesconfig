; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/mediatek/pinctrl-moore.c_pt.bc'
source_filename = "../drivers/pinctrl/mediatek/pinctrl-moore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.mtk_pinctrl = type { ptr, ptr, i8, ptr, %struct.gpio_chip, ptr, ptr, ptr, ptr, %struct.spinlock, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.mtk_pin_soc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i8, i8, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pin_desc = type { i32, ptr, %struct.mtk_eint_desc, i8, ptr }
%struct.mtk_eint_desc = type { i16, i16 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.group_desc = type { ptr, ptr, i32, ptr }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@mtk_moore_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 621, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SoC should be assigned at least one register base\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_moore_pinctrl_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pinctrl/mediatek/pinctrl-moore.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_moore_pinctrl_probe._entry_ptr = internal global ptr @mtk_moore_pinctrl_probe._entry, section ".printk_index", align 4
@mtk_moore_pinctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&hw->lock\00", [22 x i8] zeroinitializer }, align 32
@mtk_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.19, ptr null, i32 0, ptr @mtk_pctlops, ptr @mtk_pmxops, ptr @mtk_confops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mtk_custom_bindings = internal constant { [4 x %struct.pinconf_generic_params], [48 x i8] } { [4 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.22, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.23, i32 129, i32 0 }, %struct.pinconf_generic_params { ptr @.str.24, i32 130, i32 1 }, %struct.pinconf_generic_params { ptr @.str.25, i32 131, i32 1 }], [48 x i8] zeroinitializer }, align 32
@mtk_conf_items = internal constant { [4 x %struct.pin_config_item], [32 x i8] } { [4 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.26, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.27, ptr null, i8 1 }, %struct.pin_config_item { i32 130, ptr @.str.28, ptr null, i8 1 }, %struct.pin_config_item { i32 131, ptr @.str.29, ptr null, i8 1 }], [32 x i8] zeroinitializer }, align 32
@mtk_moore_pinctrl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 669, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to build groups\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_moore_pinctrl_probe._entry_ptr.8 = internal global ptr @mtk_moore_pinctrl_probe._entry.6, section ".printk_index", align 4
@mtk_moore_pinctrl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 676, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to build functions\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_moore_pinctrl_probe._entry_ptr.11 = internal global ptr @mtk_moore_pinctrl_probe._entry.9, section ".printk_index", align 4
@mtk_moore_pinctrl_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 690, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to add EINT, but pinctrl still can work\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_moore_pinctrl_probe._entry_ptr.15 = internal global ptr @mtk_moore_pinctrl_probe._entry.12, section ".printk_index", align 4
@mtk_moore_pinctrl_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 695, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add gpio_chip\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_moore_pinctrl_probe._entry_ptr.18 = internal global ptr @mtk_moore_pinctrl_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinctrl_moore\00", [18 x i8] zeroinitializer }, align 32
@mtk_pctlops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinconf_generic_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@mtk_pmxops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @mtk_pinmux_set_mux, ptr @mtk_pinmux_gpio_request_enable, ptr null, ptr @mtk_pinmux_gpio_set_direction, i8 1 }, [56 x i8] zeroinitializer }, align 32
@mtk_confops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @mtk_pinconf_get, ptr @mtk_pinconf_set, ptr @mtk_pinconf_group_get, ptr @mtk_pinconf_group_set, ptr null, ptr null, ptr @pinconf_generic_dump_config }, [32 x i8] zeroinitializer }, align 32
@mtk_pinmux_set_mux.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 13, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_pinmux_set_mux\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable function %s group %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mediatek,tdsel\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mediatek,rdsel\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,pull-up-adv\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,pull-down-adv\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tdsel\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdsel\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pu-adv\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pd-adv\00", [25 x i8] zeroinitializer }, align 32
@mtk_build_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 576, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to register group %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_build_groups\00", [47 x i8] zeroinitializer }, align 32
@mtk_build_groups._entry_ptr = internal global ptr @mtk_build_groups._entry, section ".printk_index", align 4
@mtk_build_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register function %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_build_functions\00", [44 x i8] zeroinitializer }, align 32
@mtk_build_functions._entry_ptr = internal global ptr @mtk_build_functions._entry, section ".printk_index", align 4
@mtk_build_gpiochip.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mtk_build_gpiochip.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@mtk_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 465, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to set gpio %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk_gpio_set\00", [19 x i8] zeroinitializer }, align 32
@mtk_gpio_set._entry_ptr = internal global ptr @mtk_gpio_set._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 14, i64 18, i64 24, i64 128, i64 129, i64 130, i64 131]
@__sancov_gen_cov_switch_values.37 = internal global [15 x i64] [i64 13, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 14, i64 17, i64 18, i64 24, i64 128, i64 129, i64 130, i64 131]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 620, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 639, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [9 x i8] c"mtk_desc\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 433, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"mtk_custom_bindings\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 22, i32 44 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"mtk_conf_items\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 30, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 669, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 676, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 689, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 695, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 434, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"mtk_pctlops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 406, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"mtk_pmxops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 414, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant [12 x i8] c"mtk_confops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 424, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 54, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 23, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 24, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 25, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 26, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 31, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 32, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 33, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 34, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 575, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 596, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 541, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 552, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [44 x i8] c"../drivers/pinctrl/mediatek/pinctrl-moore.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 465, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @mtk_build_functions._entry, ptr @mtk_build_functions._entry_ptr, ptr @mtk_build_groups._entry, ptr @mtk_build_groups._entry_ptr, ptr @mtk_gpio_set._entry, ptr @mtk_gpio_set._entry_ptr, ptr @mtk_moore_pinctrl_probe._entry, ptr @mtk_moore_pinctrl_probe._entry.12, ptr @mtk_moore_pinctrl_probe._entry.16, ptr @mtk_moore_pinctrl_probe._entry.6, ptr @mtk_moore_pinctrl_probe._entry.9, ptr @mtk_moore_pinctrl_probe._entry_ptr, ptr @mtk_moore_pinctrl_probe._entry_ptr.11, ptr @mtk_moore_pinctrl_probe._entry_ptr.15, ptr @mtk_moore_pinctrl_probe._entry_ptr.18, ptr @mtk_moore_pinctrl_probe._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mtk_moore_pinctrl_probe.__key, ptr @.str.5, ptr @mtk_desc, ptr @mtk_custom_bindings, ptr @mtk_conf_items, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @mtk_pctlops, ptr @mtk_pmxops, ptr @mtk_confops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @mtk_build_gpiochip.lock_key, ptr @mtk_build_gpiochip.request_key, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_moore_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_moore_pinctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_custom_bindings to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_conf_items to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_moore_pinctrl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_moore_pinctrl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_moore_pinctrl_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_moore_pinctrl_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctlops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmxops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_confops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_build_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_build_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_build_gpiochip.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_build_gpiochip.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_moore_pinctrl_probe(ptr noundef %pdev, ptr noundef %soc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 428, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc1 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %soc1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %soc, ptr %soc1, align 4
  %dev3 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev3, align 4
  %nbase_names = getelementptr inbounds %struct.mtk_pin_soc, ptr %soc, i32 0, i32 12
  %2 = ptrtoint ptr %nbase_names to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbase_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !91

devm_kmalloc_array.exit.thread:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %base194 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %base194 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %base194, align 4
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.end8
  %7 = extractvalue { i32, i1 } %4, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %7, i32 noundef 3264) #6
  %base = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i, ptr %base, align 4
  %tobool14.not = icmp eq ptr %call5.i, null
  br i1 %tobool14.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit
  %9 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %soc1, align 4
  %nbase_names18209 = getelementptr inbounds %struct.mtk_pin_soc, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %nbase_names18209 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbase_names18209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp210.not = icmp eq i32 %12, 0
  br i1 %cmp210.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0211, 1
  %13 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc1, align 4
  %nbase_names18 = getelementptr inbounds %struct.mtk_pin_soc, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %nbase_names18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbase_names18, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end.loopexit

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %17 = phi ptr [ %14, %for.cond.for.body_crit_edge ], [ %10, %for.cond.preheader.for.body_crit_edge ]
  %i.0211 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %base_names = getelementptr inbounds %struct.mtk_pin_soc, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %base_names to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_names, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %i.0211
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call20 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef %21) #6
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %arrayidx22 = getelementptr ptr, ptr %23, i32 %i.0211
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call20, ptr %arrayidx22, align 4
  %25 = load ptr, ptr %base, align 4
  %arrayidx24 = getelementptr ptr, ptr %25, i32 %i.0211
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx24, align 4
  %cmp.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %for.cond

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

for.end.loopexit:                                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = trunc i32 %16 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa206 = phi i8 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %nbase = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %nbase to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.lcssa206, ptr %nbase, align 4
  %lock = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mtk_moore_pinctrl_probe.__key, i16 noundef signext 3) #6
  %30 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %soc1, align 4
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npins, align 4
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 12) #6
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %for.end.cleanup_crit_edge, label %devm_kmalloc_array.exit176, !prof !91

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kmalloc_array.exit176:                       ; preds = %for.end
  %36 = extractvalue { i32, i1 } %34, 0
  %call5.i173 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %36, i32 noundef 3264) #6
  %tobool40.not = icmp eq ptr %call5.i173, null
  br i1 %tobool40.not, label %devm_kmalloc_array.exit176.cleanup_crit_edge, label %for.cond43.preheader

devm_kmalloc_array.exit176.cleanup_crit_edge:     ; preds = %devm_kmalloc_array.exit176
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond43.preheader:                             ; preds = %devm_kmalloc_array.exit176
  %37 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %soc1, align 4
  %npins45 = getelementptr inbounds %struct.mtk_pin_soc, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %npins45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %npins45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp46212.not = icmp eq i32 %40, 0
  br i1 %cmp46212.not, label %for.cond43.preheader.for.end61_crit_edge, label %for.body48.lr.ph

for.cond43.preheader.for.end61_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end61

for.body48.lr.ph:                                 ; preds = %for.cond43.preheader
  %pins50 = getelementptr inbounds %struct.mtk_pin_soc, ptr %38, i32 0, i32 1
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.body48.lr.ph
  %i.1213 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc60, %for.body48.for.body48_crit_edge ]
  %41 = ptrtoint ptr %pins50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pins50, align 4
  %arrayidx51 = getelementptr %struct.mtk_pin_desc, ptr %42, i32 %i.1213
  %43 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx51, align 4
  %arrayidx52 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i173, i32 %i.1213
  %45 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx52, align 4
  %46 = load ptr, ptr %pins50, align 4
  %name = getelementptr %struct.mtk_pin_desc, ptr %46, i32 %i.1213, i32 1
  %47 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name, align 4
  %name58 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i173, i32 %i.1213, i32 1
  %49 = ptrtoint ptr %name58 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %name58, align 4
  %inc60 = add nuw i32 %i.1213, 1
  %50 = ptrtoint ptr %npins45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %npins45, align 4
  %cmp46 = icmp ult i32 %inc60, %51
  br i1 %cmp46, label %for.body48.for.body48_crit_edge, label %for.body48.for.end61_crit_edge

for.body48.for.end61_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end61

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body48

for.end61:                                        ; preds = %for.body48.for.end61_crit_edge, %for.cond43.preheader.for.end61_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond43.preheader.for.end61_crit_edge ], [ %51, %for.body48.for.end61_crit_edge ]
  store ptr %call5.i173, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 1), align 4
  store i32 %.lcssa, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 2), align 4
  store i32 4, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 7), align 4
  store ptr @mtk_custom_bindings, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 8), align 4
  store ptr @mtk_conf_items, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 9), align 4
  %call65 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %dev, ptr noundef nonnull @mtk_desc, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %for.end61.cleanup_crit_edge

for.end61.cleanup_crit_edge:                      ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end68:                                         ; preds = %for.end61
  %52 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %soc1, align 4
  %ngrps17.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %ngrps17.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ngrps17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp18.not.i = icmp eq i32 %55, 0
  br i1 %cmp18.not.i, label %if.end68.if.end76_crit_edge, label %if.end68.for.body.i_crit_edge

if.end68.for.body.i_crit_edge:                    ; preds = %if.end68
  br label %for.body.i

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.019.i, 1
  %56 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %soc1, align 4
  %ngrps.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ngrps.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ngrps.i, align 4
  %cmp.i177 = icmp ult i32 %inc.i, %59
  br i1 %cmp.i177, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end76_crit_edge

for.cond.i.if.end76_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end68.for.body.i_crit_edge
  %60 = phi ptr [ %57, %for.cond.i.for.body.i_crit_edge ], [ %53, %if.end68.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end68.for.body.i_crit_edge ]
  %grps.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %grps.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %grps.i, align 4
  %add.ptr.i = getelementptr %struct.group_desc, ptr %62, i32 %i.019.i
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 4
  %pins.i = getelementptr %struct.group_desc, ptr %62, i32 %i.019.i, i32 1
  %67 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pins.i, align 4
  %num_pins.i = getelementptr %struct.group_desc, ptr %62, i32 %i.019.i, i32 2
  %69 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_pins.i, align 4
  %data.i = getelementptr %struct.group_desc, ptr %62, i32 %i.019.i, i32 3
  %71 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i, align 4
  %call.i178 = tail call i32 @pinctrl_generic_add_group(ptr noundef %64, ptr noundef %66, ptr noundef %68, i32 noundef %70, ptr noundef %72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %cmp2.i = icmp slt i32 %call.i178, 0
  br i1 %cmp2.i, label %do.end74, label %for.cond.i

do.end74:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev3, align 4
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.30, ptr noundef %76) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end76:                                         ; preds = %for.cond.i.if.end76_crit_edge, %if.end68.if.end76_crit_edge
  %77 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %soc1, align 4
  %nfuncs17.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %nfuncs17.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nfuncs17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp18.not.i180 = icmp eq i32 %80, 0
  br i1 %cmp18.not.i180, label %if.end76.if.end84_crit_edge, label %if.end76.for.body.i189_crit_edge

if.end76.for.body.i189_crit_edge:                 ; preds = %if.end76
  br label %for.body.i189

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

for.cond.i183:                                    ; preds = %for.body.i189
  %inc.i181 = add nuw i32 %i.019.i184, 1
  %81 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %soc1, align 4
  %nfuncs.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %nfuncs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nfuncs.i, align 4
  %cmp.i182 = icmp ult i32 %inc.i181, %84
  br i1 %cmp.i182, label %for.cond.i183.for.body.i189_crit_edge, label %for.cond.i183.if.end84_crit_edge

for.cond.i183.if.end84_crit_edge:                 ; preds = %for.cond.i183
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

for.cond.i183.for.body.i189_crit_edge:            ; preds = %for.cond.i183
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i189

for.body.i189:                                    ; preds = %for.cond.i183.for.body.i189_crit_edge, %if.end76.for.body.i189_crit_edge
  %85 = phi ptr [ %82, %for.cond.i183.for.body.i189_crit_edge ], [ %78, %if.end76.for.body.i189_crit_edge ]
  %i.019.i184 = phi i32 [ %inc.i181, %for.cond.i183.for.body.i189_crit_edge ], [ 0, %if.end76.for.body.i189_crit_edge ]
  %funcs.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %funcs.i, align 4
  %add.ptr.i185 = getelementptr %struct.function_desc, ptr %87, i32 %i.019.i184
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  %90 = ptrtoint ptr %add.ptr.i185 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i185, align 4
  %group_names.i = getelementptr %struct.function_desc, ptr %87, i32 %i.019.i184, i32 1
  %92 = ptrtoint ptr %group_names.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %group_names.i, align 4
  %num_group_names.i = getelementptr %struct.function_desc, ptr %87, i32 %i.019.i184, i32 2
  %94 = ptrtoint ptr %num_group_names.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_group_names.i, align 4
  %data.i186 = getelementptr %struct.function_desc, ptr %87, i32 %i.019.i184, i32 3
  %96 = ptrtoint ptr %data.i186 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data.i186, align 4
  %call.i187 = tail call i32 @pinmux_generic_add_function(ptr noundef %89, ptr noundef %91, ptr noundef %93, i32 noundef %95, ptr noundef %97) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %cmp2.i188 = icmp slt i32 %call.i187, 0
  br i1 %cmp2.i188, label %do.end82, label %for.cond.i183

do.end82:                                         ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev3, align 4
  %100 = ptrtoint ptr %add.ptr.i185 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i185, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.32, ptr noundef %101) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end84:                                         ; preds = %for.cond.i183.if.end84_crit_edge, %if.end76.if.end84_crit_edge
  %102 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call.i, align 4
  %call86 = tail call i32 @pinctrl_enable(ptr noundef %103) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end89:                                         ; preds = %if.end84
  %call90 = tail call i32 @mtk_build_eint(ptr noundef nonnull %call.i, ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end89.if.end97_crit_edge, label %do.end95

if.end89.if.end97_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %if.end97

if.end97:                                         ; preds = %do.end95, %if.end89.if.end97_crit_edge
  %call98 = tail call fastcc i32 @mtk_build_gpiochip(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end105, label %do.end103

do.end103:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end105:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %104 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %do.end103, %if.end84.cleanup_crit_edge, %do.end82, %do.end74, %for.end61.cleanup_crit_edge, %devm_kmalloc_array.exit176.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then26, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kmalloc_array.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.then26 ], [ %call.i178, %do.end74 ], [ %call.i187, %do.end82 ], [ %call98, %do.end103 ], [ 0, %if.end105 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit176.cleanup_crit_edge ], [ %call65, %for.end61.cleanup_crit_edge ], [ %call86, %if.end84.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ], [ -12, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_build_eint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_build_gpiochip(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.19, ptr %chip1, align 4
  %dev = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %parent, align 4
  %request = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 6
  %5 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %direction_input = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mtk_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 9
  %7 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mtk_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 10
  %8 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mtk_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 12
  %9 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mtk_gpio_set, ptr %set, align 4
  %to_irq = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 15
  %10 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mtk_gpio_to_irq, ptr %to_irq, align 4
  %set_config = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 14
  %11 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mtk_gpio_set_config, ptr %set_config, align 4
  %base = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 19
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %base, align 4
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 5
  %13 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc, align 4
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %npins, align 4
  %conv = trunc i32 %16 to i16
  %ngpio = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 20
  %17 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %ngpio, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 40
  %18 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %call = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip1, ptr noundef %hw, ptr noundef nonnull @mtk_build_gpiochip.lock_key, ptr noundef nonnull @mtk_build_gpiochip.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.34, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.dev_name.exit_crit_edge

if.then5.dev_name.exit_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then5.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %28, %if.end.i ], [ %26, %if.then5.dev_name.exit_crit_edge ]
  %29 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ngpio, align 4
  %conv9 = zext i16 %30 to i32
  %call10 = tail call i32 @gpiochip_add_pin_range(ptr noundef %chip1, ptr noundef %retval.0.i, i32 noundef 0, i32 noundef 0, i32 noundef %conv9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiochip_remove(ptr noundef %chip1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then13 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %call1 = tail call ptr @pinmux_generic_get_function(ptr noundef %pctldev, i32 noundef %selector) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctldev, i32 noundef %group) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup24_crit_edge, label %do.body

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pinmux_set_mux.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_pinmux_set_mux, %do.end)) #6
          to label %if.then11 [label %do.end], !srcloc !92

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call1, align 4
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pinmux_set_mux.__UNIQUE_ID_ddebug223, ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %3, ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %pins = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 1
  %num_pins = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 2
  %6 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp42 = icmp sgt i32 %7, 0
  br i1 %cmp42, label %for.body.lr.ph, label %do.end.cleanup24_crit_edge

do.end.cleanup24_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

for.body.lr.ph:                                   ; preds = %do.end
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %data = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end19.for.body_crit_edge ]
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %i.043
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc, align 4
  %pins14 = getelementptr inbounds %struct.mtk_pin_soc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pins14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pins14, align 4
  %name16 = getelementptr %struct.mtk_pin_desc, ptr %15, i32 %11, i32 1
  %16 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name16, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %for.body.cleanup24_crit_edge, label %if.end19

for.body.cleanup24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end19:                                         ; preds = %for.body
  %arrayidx15 = getelementptr %struct.mtk_pin_desc, ptr %15, i32 %11
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %arrayidx20 = getelementptr i32, ptr %19, i32 %i.043
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx20, align 4
  %call21 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx15, i32 noundef 0, i32 noundef %21) #6
  %inc = add nuw nsw i32 %i.043, 1
  %22 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %if.end19.for.body_crit_edge, label %if.end19.cleanup24_crit_edge

if.end19.cleanup24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup24:                                        ; preds = %if.end19.cleanup24_crit_edge, %for.body.cleanup24_crit_edge, %do.end.cleanup24_crit_edge, %if.end.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup24_crit_edge ], [ -22, %if.end.cleanup24_crit_edge ], [ 0, %do.end.cleanup24_crit_edge ], [ 0, %if.end19.cleanup24_crit_edge ], [ -524, %for.body.cleanup24_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pinmux_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %pin, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %pin
  %gpio_m = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %gpio_m to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gpio_m, align 4
  %conv = zext i8 %7 to i32
  %call2 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 0, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pinmux_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %pin, i1 noundef zeroext %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %pin, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %pin
  %lnot = xor i1 %input, true
  %lnot.ext = zext i1 %lnot to i32
  %call2 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, i32 noundef %lnot.ext) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_hw_set_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %val2 = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2) #6
  %3 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val2, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #6
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %ret, align 4
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soc, align 4
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %pin
  %name = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %pin, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup103_crit_edge, label %if.end

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end:                                           ; preds = %entry
  %trunc = trunc i32 %1 to i8
  %11 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end.cleanup103_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %sw.bb12
    i8 3, label %sw.bb24
    i8 24, label %sw.bb37
    i8 12, label %if.end.sw.bb45_crit_edge
    i8 18, label %if.end.sw.bb45_crit_edge172
    i8 14, label %sw.bb56
    i8 9, label %sw.bb70
    i8 -128, label %if.end.sw.bb82_crit_edge
    i8 -127, label %if.end.sw.bb82_crit_edge173
    i8 -126, label %if.end.sw.bb88_crit_edge
    i8 -125, label %if.end.sw.bb88_crit_edge174
  ]

if.end.sw.bb88_crit_edge174:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb88

if.end.sw.bb88_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb88

if.end.sw.bb82_crit_edge173:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb82

if.end.sw.bb82_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb82

if.end.sw.bb45_crit_edge172:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb45

if.end.sw.bb45_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb45

if.end.cleanup103_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

sw.bb:                                            ; preds = %if.end
  %bias_disable_get = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 17
  %12 = ptrtoint ptr %bias_disable_get to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bias_disable_get, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %sw.bb.cleanup103_crit_edge, label %if.then4

sw.bb.cleanup103_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then4:                                         ; preds = %sw.bb
  %call7 = call i32 %13(ptr noundef %call, ptr noundef %arrayidx, ptr noundef nonnull %ret) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then4.sw.epilog_crit_edge, label %if.then4.cleanup103_crit_edge

if.then4.cleanup103_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then4.sw.epilog_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %bias_get = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 19
  %14 = ptrtoint ptr %bias_get to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bias_get, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %sw.bb12.cleanup103_crit_edge, label %if.then15

sw.bb12.cleanup103_crit_edge:                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then15:                                        ; preds = %sw.bb12
  %call18 = call i32 %15(ptr noundef %call, ptr noundef %arrayidx, i1 noundef zeroext true, ptr noundef nonnull %ret) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.sw.epilog_crit_edge, label %if.then15.cleanup103_crit_edge

if.then15.cleanup103_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then15.sw.epilog_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %bias_get26 = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 19
  %16 = ptrtoint ptr %bias_get26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bias_get26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %sw.bb24.cleanup103_crit_edge, label %if.then28

sw.bb24.cleanup103_crit_edge:                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then28:                                        ; preds = %sw.bb24
  %call31 = call i32 %17(ptr noundef %call, ptr noundef %arrayidx, i1 noundef zeroext false, ptr noundef nonnull %ret) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then28.sw.epilog_crit_edge, label %if.then28.cleanup103_crit_edge

if.then28.cleanup103_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then28.sw.epilog_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end
  %call38 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 4, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %sw.bb37.cleanup103_crit_edge

sw.bb37.cleanup103_crit_edge:                     ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end41:                                         ; preds = %sw.bb37
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool42.not = icmp eq i32 %19, 0
  br i1 %tobool42.not, label %if.end41.cleanup103_crit_edge, label %if.end41.sw.epilog_crit_edge

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end41.cleanup103_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

sw.bb45:                                          ; preds = %if.end.sw.bb45_crit_edge, %if.end.sw.bb45_crit_edge172
  %call46 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %sw.bb45.cleanup103_crit_edge

sw.bb45.cleanup103_crit_edge:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end49:                                         ; preds = %sw.bb45
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool50.not = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 12
  %or.cond = select i1 %tobool50.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end49.cleanup103_crit_edge, label %lor.lhs.false

if.end49.cleanup103_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

lor.lhs.false:                                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool51.not = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and.i)
  %cmp53 = icmp eq i32 %and.i, 18
  %or.cond171 = select i1 %tobool51.not, i1 %cmp53, i1 false
  br i1 %or.cond171, label %lor.lhs.false.cleanup103_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false.cleanup103_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

sw.bb56:                                          ; preds = %if.end
  %call57 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %sw.bb56.cleanup103_crit_edge

sw.bb56.cleanup103_crit_edge:                     ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end60:                                         ; preds = %sw.bb56
  %call61 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 5, ptr noundef nonnull %val2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.cleanup103_crit_edge

if.end60.cleanup103_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end64:                                         ; preds = %if.end60
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool65.not = icmp eq i32 %23, 0
  br i1 %tobool65.not, label %lor.lhs.false66, label %if.end64.cleanup103_crit_edge

if.end64.cleanup103_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

lor.lhs.false66:                                  ; preds = %if.end64
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool67.not = icmp eq i32 %25, 0
  br i1 %tobool67.not, label %lor.lhs.false66.cleanup103_crit_edge, label %lor.lhs.false66.sw.epilog_crit_edge

lor.lhs.false66.sw.epilog_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false66.cleanup103_crit_edge:             ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

sw.bb70:                                          ; preds = %if.end
  %drive_get = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 23
  %26 = ptrtoint ptr %drive_get to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drive_get, align 4
  %tobool72.not = icmp eq ptr %27, null
  br i1 %tobool72.not, label %sw.bb70.sw.epilog_crit_edge, label %if.then73

sw.bb70.sw.epilog_crit_edge:                      ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then73:                                        ; preds = %sw.bb70
  %call76 = call i32 %27(ptr noundef %call, ptr noundef %arrayidx, ptr noundef nonnull %ret) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then73.sw.epilog_crit_edge, label %if.then73.cleanup103_crit_edge

if.then73.cleanup103_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then73.sw.epilog_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end.sw.bb82_crit_edge, %if.end.sw.bb82_crit_edge173
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and.i)
  %cmp83 = icmp eq i32 %and.i, 128
  %cond = select i1 %cmp83, i32 10, i32 11
  %call84 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef %cond, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %sw.bb82.cleanup103_crit_edge

sw.bb82.cleanup103_crit_edge:                     ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end87:                                         ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %30 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ret, align 4
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end.sw.bb88_crit_edge, %if.end.sw.bb88_crit_edge174
  %adv_pull_get = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 25
  %31 = ptrtoint ptr %adv_pull_get to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adv_pull_get, align 4
  %tobool90.not = icmp eq ptr %32, null
  br i1 %tobool90.not, label %sw.bb88.cleanup103_crit_edge, label %if.then91

sw.bb88.cleanup103_crit_edge:                     ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then91:                                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %and.i)
  %cmp92 = icmp eq i32 %and.i, 130
  %call96 = call i32 %32(ptr noundef %call, ptr noundef %arrayidx, i1 noundef zeroext %cmp92, ptr noundef nonnull %ret) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then91.sw.epilog_crit_edge, label %if.then91.cleanup103_crit_edge

if.then91.cleanup103_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then91.sw.epilog_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then91.sw.epilog_crit_edge, %if.end87, %if.then73.sw.epilog_crit_edge, %sw.bb70.sw.epilog_crit_edge, %lor.lhs.false66.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %if.end41.sw.epilog_crit_edge, %if.then28.sw.epilog_crit_edge, %if.then15.sw.epilog_crit_edge, %if.then4.sw.epilog_crit_edge
  %33 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ret, align 4
  %shl.i = shl i32 %34, 8
  %or.i = or i32 %shl.i, %and.i
  %35 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup103

cleanup103:                                       ; preds = %sw.epilog, %if.then91.cleanup103_crit_edge, %sw.bb88.cleanup103_crit_edge, %sw.bb82.cleanup103_crit_edge, %if.then73.cleanup103_crit_edge, %lor.lhs.false66.cleanup103_crit_edge, %if.end64.cleanup103_crit_edge, %if.end60.cleanup103_crit_edge, %sw.bb56.cleanup103_crit_edge, %lor.lhs.false.cleanup103_crit_edge, %if.end49.cleanup103_crit_edge, %sw.bb45.cleanup103_crit_edge, %if.end41.cleanup103_crit_edge, %sw.bb37.cleanup103_crit_edge, %if.then28.cleanup103_crit_edge, %sw.bb24.cleanup103_crit_edge, %if.then15.cleanup103_crit_edge, %sw.bb12.cleanup103_crit_edge, %if.then4.cleanup103_crit_edge, %sw.bb.cleanup103_crit_edge, %if.end.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.1 = phi i32 [ 0, %sw.epilog ], [ %call96, %if.then91.cleanup103_crit_edge ], [ -524, %entry.cleanup103_crit_edge ], [ %call7, %if.then4.cleanup103_crit_edge ], [ -524, %sw.bb.cleanup103_crit_edge ], [ %call18, %if.then15.cleanup103_crit_edge ], [ -524, %sw.bb12.cleanup103_crit_edge ], [ %call31, %if.then28.cleanup103_crit_edge ], [ -524, %sw.bb24.cleanup103_crit_edge ], [ %call38, %sw.bb37.cleanup103_crit_edge ], [ -22, %if.end41.cleanup103_crit_edge ], [ %call46, %sw.bb45.cleanup103_crit_edge ], [ -22, %lor.lhs.false.cleanup103_crit_edge ], [ -22, %if.end49.cleanup103_crit_edge ], [ %call57, %sw.bb56.cleanup103_crit_edge ], [ %call61, %if.end60.cleanup103_crit_edge ], [ -22, %lor.lhs.false66.cleanup103_crit_edge ], [ -22, %if.end64.cleanup103_crit_edge ], [ %call76, %if.then73.cleanup103_crit_edge ], [ %call84, %sw.bb82.cleanup103_crit_edge ], [ -524, %sw.bb88.cleanup103_crit_edge ], [ -524, %if.end.cleanup103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %pin
  %name = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %pin, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup120_crit_edge, label %for.cond.preheader

entry.cleanup120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp205.not = icmp eq i32 %num_configs, 0
  br i1 %cmp205.not, label %for.cond.preheader.cleanup120_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup120_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cfg.0206 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %cfg.0206
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %and.i = and i32 %7, 255
  %shr.i = lshr i32 %7, 8
  %trunc = trunc i32 %7 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %trunc, label %for.body.for.inc_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %sw.bb15
    i8 3, label %sw.bb27
    i8 18, label %sw.bb40
    i8 12, label %sw.bb49
    i8 24, label %sw.bb59
    i8 17, label %sw.bb64
    i8 14, label %sw.bb73
    i8 9, label %sw.bb86
    i8 -128, label %for.body.sw.bb98_crit_edge
    i8 -127, label %for.body.sw.bb98_crit_edge225
    i8 -126, label %for.body.sw.bb105_crit_edge
    i8 -125, label %for.body.sw.bb105_crit_edge226
  ]

for.body.sw.bb105_crit_edge226:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb105

for.body.sw.bb105_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb105

for.body.sw.bb98_crit_edge225:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb98

for.body.sw.bb98_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb98

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %9 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %soc, align 4
  %bias_disable_set = getelementptr inbounds %struct.mtk_pin_soc, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %bias_disable_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bias_disable_set, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %sw.bb.cleanup120_crit_edge, label %if.then7

sw.bb.cleanup120_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.then7:                                         ; preds = %sw.bb
  %call10 = tail call i32 %12(ptr noundef %call, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.for.inc_crit_edge, label %if.then7.cleanup120_crit_edge

if.then7.cleanup120_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb15:                                          ; preds = %for.body
  %13 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc, align 4
  %bias_set = getelementptr inbounds %struct.mtk_pin_soc, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %bias_set to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bias_set, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %sw.bb15.cleanup120_crit_edge, label %if.then18

sw.bb15.cleanup120_crit_edge:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.then18:                                        ; preds = %sw.bb15
  %call21 = tail call i32 %16(ptr noundef %call, ptr noundef %arrayidx, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then18.for.inc_crit_edge, label %if.then18.cleanup120_crit_edge

if.then18.cleanup120_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb27:                                          ; preds = %for.body
  %17 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soc, align 4
  %bias_set29 = getelementptr inbounds %struct.mtk_pin_soc, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %bias_set29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bias_set29, align 4
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %sw.bb27.cleanup120_crit_edge, label %if.then31

sw.bb27.cleanup120_crit_edge:                     ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.then31:                                        ; preds = %sw.bb27
  %call34 = tail call i32 %20(ptr noundef %call, ptr noundef %arrayidx, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then31.for.inc_crit_edge, label %if.then31.cleanup120_crit_edge

if.then31.cleanup120_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.then31.for.inc_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb40:                                          ; preds = %for.body
  %call41 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %sw.bb40.cleanup120_crit_edge

sw.bb40.cleanup120_crit_edge:                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.end44:                                         ; preds = %sw.bb40
  %call45 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.for.inc_crit_edge, label %if.end44.cleanup120_crit_edge

if.end44.cleanup120_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb49:                                          ; preds = %for.body
  %21 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %soc, align 4
  %ies_present = getelementptr inbounds %struct.mtk_pin_soc, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %ies_present to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ies_present, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool51.not = icmp eq i8 %24, 0
  br i1 %tobool51.not, label %sw.bb49.if.end54_crit_edge, label %if.then52

sw.bb49.if.end54_crit_edge:                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then52:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 16, i32 noundef 1) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %sw.bb49.if.end54_crit_edge
  %call55 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end54.for.inc_crit_edge, label %if.end54.cleanup120_crit_edge

if.end54.cleanup120_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.end54.for.inc_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb59:                                          ; preds = %for.body
  %call60 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 4, i32 noundef %shr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %sw.bb59.for.inc_crit_edge, label %sw.bb59.cleanup120_crit_edge

sw.bb59.cleanup120_crit_edge:                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

sw.bb59.for.inc_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb64:                                          ; preds = %for.body
  %call65 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %sw.bb64.cleanup120_crit_edge

sw.bb64.cleanup120_crit_edge:                     ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.end68:                                         ; preds = %sw.bb64
  %call69 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 3, i32 noundef %shr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end68.for.inc_crit_edge, label %if.end68.cleanup120_crit_edge

if.end68.cleanup120_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb73:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %tobool74.not = icmp ult i32 %7, 256
  %cond = select i1 %tobool74.not, i32 1, i32 2
  %and = and i32 %cond, 1
  %call75 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, i32 noundef %and) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %sw.bb73.cleanup120_crit_edge

sw.bb73.cleanup120_crit_edge:                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.end78:                                         ; preds = %sw.bb73
  %and79.lobit = lshr i32 %cond, 1
  %call82 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 5, i32 noundef %and79.lobit) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end78.for.inc_crit_edge, label %if.end78.cleanup120_crit_edge

if.end78.cleanup120_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.end78.for.inc_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb86:                                          ; preds = %for.body
  %25 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc, align 4
  %drive_set = getelementptr inbounds %struct.mtk_pin_soc, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %drive_set to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %drive_set, align 4
  %tobool88.not = icmp eq ptr %28, null
  br i1 %tobool88.not, label %sw.bb86.for.inc_crit_edge, label %if.then89

sw.bb86.for.inc_crit_edge:                        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then89:                                        ; preds = %sw.bb86
  %call92 = tail call i32 %28(ptr noundef %call, ptr noundef %arrayidx, i32 noundef %shr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then89.for.inc_crit_edge, label %if.then89.cleanup120_crit_edge

if.then89.cleanup120_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.then89.for.inc_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb98:                                          ; preds = %for.body.sw.bb98_crit_edge, %for.body.sw.bb98_crit_edge225
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and.i)
  %cmp99 = icmp eq i32 %and.i, 128
  %cond100 = select i1 %cmp99, i32 10, i32 11
  %call101 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef %cond100, i32 noundef %shr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %sw.bb98.for.inc_crit_edge, label %sw.bb98.cleanup120_crit_edge

sw.bb98.cleanup120_crit_edge:                     ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

sw.bb98.for.inc_crit_edge:                        ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb105:                                         ; preds = %for.body.sw.bb105_crit_edge, %for.body.sw.bb105_crit_edge226
  %29 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %soc, align 4
  %adv_pull_set = getelementptr inbounds %struct.mtk_pin_soc, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %adv_pull_set to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adv_pull_set, align 4
  %tobool107.not = icmp eq ptr %32, null
  br i1 %tobool107.not, label %sw.bb105.cleanup120_crit_edge, label %if.then108

sw.bb105.cleanup120_crit_edge:                    ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.then108:                                       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %and.i)
  %cmp109 = icmp eq i32 %and.i, 130
  %call113 = tail call i32 %32(ptr noundef %call, ptr noundef %arrayidx, i1 noundef zeroext %cmp109, i32 noundef %shr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then108.for.inc_crit_edge, label %if.then108.cleanup120_crit_edge

if.then108.cleanup120_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

if.then108.for.inc_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then108.for.inc_crit_edge, %sw.bb98.for.inc_crit_edge, %if.then89.for.inc_crit_edge, %sw.bb86.for.inc_crit_edge, %if.end78.for.inc_crit_edge, %if.end68.for.inc_crit_edge, %sw.bb59.for.inc_crit_edge, %if.end54.for.inc_crit_edge, %if.end44.for.inc_crit_edge, %if.then31.for.inc_crit_edge, %if.then18.for.inc_crit_edge, %if.then7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ 0, %if.then108.for.inc_crit_edge ], [ 0, %sw.bb98.for.inc_crit_edge ], [ 0, %if.then89.for.inc_crit_edge ], [ 0, %if.end78.for.inc_crit_edge ], [ 0, %if.end68.for.inc_crit_edge ], [ 0, %sw.bb59.for.inc_crit_edge ], [ 0, %if.end54.for.inc_crit_edge ], [ 0, %if.end44.for.inc_crit_edge ], [ 0, %if.then31.for.inc_crit_edge ], [ 0, %if.then18.for.inc_crit_edge ], [ 0, %if.then7.for.inc_crit_edge ], [ -524, %sw.bb86.for.inc_crit_edge ], [ -524, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %cfg.0206, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup120_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup120_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

cleanup120:                                       ; preds = %for.inc.cleanup120_crit_edge, %if.then108.cleanup120_crit_edge, %sw.bb105.cleanup120_crit_edge, %sw.bb98.cleanup120_crit_edge, %if.then89.cleanup120_crit_edge, %if.end78.cleanup120_crit_edge, %sw.bb73.cleanup120_crit_edge, %if.end68.cleanup120_crit_edge, %sw.bb64.cleanup120_crit_edge, %sw.bb59.cleanup120_crit_edge, %if.end54.cleanup120_crit_edge, %if.end44.cleanup120_crit_edge, %sw.bb40.cleanup120_crit_edge, %if.then31.cleanup120_crit_edge, %sw.bb27.cleanup120_crit_edge, %if.then18.cleanup120_crit_edge, %sw.bb15.cleanup120_crit_edge, %if.then7.cleanup120_crit_edge, %sw.bb.cleanup120_crit_edge, %for.cond.preheader.cleanup120_crit_edge, %entry.cleanup120_crit_edge
  %retval.3 = phi i32 [ -524, %entry.cleanup120_crit_edge ], [ 0, %for.cond.preheader.cleanup120_crit_edge ], [ %call113, %if.then108.cleanup120_crit_edge ], [ %call10, %if.then7.cleanup120_crit_edge ], [ -524, %sw.bb.cleanup120_crit_edge ], [ %call21, %if.then18.cleanup120_crit_edge ], [ -524, %sw.bb15.cleanup120_crit_edge ], [ %call34, %if.then31.cleanup120_crit_edge ], [ -524, %sw.bb27.cleanup120_crit_edge ], [ %call92, %if.then89.cleanup120_crit_edge ], [ -524, %sw.bb105.cleanup120_crit_edge ], [ %err.1, %for.inc.cleanup120_crit_edge ], [ %call101, %sw.bb98.cleanup120_crit_edge ], [ %call82, %if.end78.cleanup120_crit_edge ], [ %call75, %sw.bb73.cleanup120_crit_edge ], [ %call69, %if.end68.cleanup120_crit_edge ], [ %call65, %sw.bb64.cleanup120_crit_edge ], [ %call60, %sw.bb59.cleanup120_crit_edge ], [ %call55, %if.end54.cleanup120_crit_edge ], [ %call45, %if.end44.cleanup120_crit_edge ], [ %call41, %sw.bb40.cleanup120_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pinconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %config) #0 align 64 {
entry:
  %pins = alloca ptr, align 4
  %npins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #6
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pins, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npins) #6
  %1 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %npins, align 4, !annotation !93
  %call = call i32 @pinctrl_generic_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr noundef nonnull %pins, ptr noundef nonnull %npins) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %old.022 = phi i32 [ %11, %if.end8.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.021 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.021
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 @mtk_pinconf_get(ptr noundef %pctldev, i32 noundef %7, ptr noundef %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.021)
  %tobool5.not = icmp eq i32 %i.021, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %land.lhs.true

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %old.022, i32 %9)
  %cmp6.not = icmp eq i32 %old.022, %9
  br i1 %cmp6.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config, align 4
  %inc = add nuw i32 %i.021, 1
  %12 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ], [ -524, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npins) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pinconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  %pins = alloca ptr, align 4
  %npins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #6
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pins, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npins) #6
  %1 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %npins, align 4, !annotation !93
  %call = call i32 @pinctrl_generic_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr noundef nonnull %pins, ptr noundef nonnull %npins) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.015, 1
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %i.015
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 @mtk_pinconf_set(ptr noundef %pctldev, i32 noundef %9, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call1, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npins) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_config(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_hw_get_value(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_direction_input(ptr nocapture noundef readonly %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %gpio
  %call = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_direction_output(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %pins.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins.i, align 4
  %name.i = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %gpio, i32 1
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef %gpio) #9
  br label %mtk_gpio_set.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %gpio
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool1.i = icmp ne i32 %value, 0
  %lnot.ext.i = zext i1 %tobool1.i to i32
  %call3.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 3, i32 noundef %lnot.ext.i) #6
  br label %mtk_gpio_set.exit

mtk_gpio_set.exit:                                ; preds = %if.end.i, %do.end.i
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %add = add i32 %9, %gpio
  %call = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_get(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !93
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soc, align 4
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.mtk_pin_desc, ptr %4, i32 %gpio, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %4, i32 %gpio
  %call1 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 2, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5 = icmp ne i32 %8, 0
  %lnot.ext = zext i1 %tobool5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end4 ], [ -524, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_gpio_set(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %gpio, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef %gpio) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %gpio
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool1 = icmp ne i32 %value, 0
  %lnot.ext = zext i1 %tobool1 to i32
  %call3 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 3, i32 noundef %lnot.ext) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_to_irq(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %eint = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eint, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %eint_n = getelementptr %struct.mtk_pin_desc, ptr %5, i32 %offset, i32 2, i32 1
  %6 = ptrtoint ptr %eint_n to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %eint_n, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp eq i16 %7, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %7 to i32
  %call9 = tail call i32 @mtk_eint_find_irq(ptr noundef nonnull %1, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end4 ], [ -524, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %offset, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %eint = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eint, align 4
  %tobool1.not = icmp ne ptr %7, null
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 11
  %or.cond = and i1 %cmp.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %eint_n = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %offset, i32 2, i32 1
  %8 = ptrtoint ptr %eint_n to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %eint_n, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp5 = icmp eq i16 %9, -1
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end8

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %config, 8
  %conv13 = zext i16 %9 to i32
  %call14 = tail call i32 @mtk_eint_set_debounce(ptr noundef nonnull %7, i32 noundef %conv13, i32 noundef %shr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end8 ], [ -524, %entry.cleanup_crit_edge ], [ -524, %lor.lhs.false3.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_find_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_set_debounce(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !79, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 620, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_moore_pinctrl_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_moore_pinctrl_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mtk_moore_pinctrl_probe.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 639, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 669, i32 3}
!13 = !{ptr @mtk_moore_pinctrl_probe._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @mtk_moore_pinctrl_probe._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 676, i32 3}
!17 = !{ptr @mtk_moore_pinctrl_probe._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @mtk_moore_pinctrl_probe._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 689, i32 3}
!21 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mtk_moore_pinctrl_probe._entry.12, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk_moore_pinctrl_probe._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 695, i32 3}
!26 = !{ptr @mtk_moore_pinctrl_probe._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtk_moore_pinctrl_probe._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 434, i32 10}
!30 = !{ptr @mtk_desc, !31, !"mtk_desc", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 433, i32 28}
!32 = !{ptr @mtk_pctlops, !33, !"mtk_pctlops", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 406, i32 33}
!34 = !{ptr @mtk_pmxops, !35, !"mtk_pmxops", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 414, i32 32}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 54, i32 2}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mtk_pinmux_set_mux.__UNIQUE_ID_ddebug223, !37, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!40 = !{ptr @mtk_confops, !41, !"mtk_confops", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 424, i32 33}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 23, i32 3}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 24, i32 3}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 25, i32 3}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 26, i32 3}
!50 = !{ptr @mtk_custom_bindings, !51, !"mtk_custom_bindings", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 22, i32 44}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 31, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 32, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 33, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 34, i32 2}
!60 = !{ptr @mtk_conf_items, !61, !"mtk_conf_items", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 30, i32 37}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 575, i32 4}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mtk_build_groups._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @mtk_build_groups._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 596, i32 4}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mtk_build_functions._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtk_build_functions._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @mtk_build_gpiochip.lock_key, !73, !"lock_key", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 541, i32 8}
!74 = !{ptr @mtk_build_gpiochip.request_key, !73, !"request_key", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 552, i32 42}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/mediatek/pinctrl-moore.c", i32 465, i32 3}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mtk_gpio_set._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @mtk_gpio_set._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2148316683, i64 2148316688, i64 2148316701, i64 2148316745, i64 2148316779, i64 2148316800}
!93 = !{!"auto-init"}
!94 = !{i8 0, i8 2}
