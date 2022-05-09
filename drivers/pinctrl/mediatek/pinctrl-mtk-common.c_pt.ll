; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/mediatek/pinctrl-mtk-common.c_pt.bc'
source_filename = "../drivers/pinctrl/mediatek/pinctrl-mtk-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtk_eint_xt = type { ptr, ptr, ptr }
%struct.mtk_pin_ies_smt_set = type { i16, i16, i16, i8 }
%struct.mtk_pin_spec_pupd_set_samereg = type { i16, i16, i8, i8, i8 }
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
%struct.mtk_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_pinctrl_devdata = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, %struct.mtk_eint_hw, ptr, i32, i32, i32 }
%struct.mtk_eint_hw = type { i8, i8, i32, i32 }
%struct.mtk_desc_pin = type { %struct.pinctrl_pin_desc, %struct.mtk_desc_eint, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.mtk_desc_eint = type { i8, i8 }
%struct.mtk_pinctrl_group = type { ptr, i32, i32 }
%struct.mtk_eint = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pin_drv_grp = type { i16, i16, i8, i8 }
%struct.mtk_drv_group_desc = type { i8, i8, i8, i8, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.mtk_desc_function = type { ptr, i8 }

@mtk_eint_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_eint_suspend, ptr @mtk_eint_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pins-are-numbered\00", [46 x i8] zeroinitializer }, align 32
@mtk_pctrl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1034, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"only support pins-are-numbered format\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_pctrl_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/pinctrl/mediatek/pinctrl-mtk-common.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_pctrl_init._entry_ptr = internal global ptr @mtk_pctrl_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,pctl-regmap\00", [43 x i8] zeroinitializer }, align 32
@mtk_pctrl_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1046, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Pinctrl node has not register regmap.\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_pctrl_init._entry_ptr.9 = internal global ptr @mtk_pctrl_init._entry.7, section ".printk_index", align 4
@mtk_pctrl_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1061, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"build state failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_pctrl_init._entry_ptr.12 = internal global ptr @mtk_pctrl_init._entry.10, section ".printk_index", align 4
@mtk_pconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr @mtk_pconf_group_get, ptr @mtk_pconf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mtk_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @mtk_pctrl_get_groups_count, ptr @mtk_pctrl_get_group_name, ptr @mtk_pctrl_get_group_pins, ptr null, ptr @mtk_pctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@mtk_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @mtk_pmx_get_funcs_cnt, ptr @mtk_pmx_get_func_name, ptr @mtk_pmx_get_func_groups, ptr @mtk_pmx_set_mux, ptr @mtk_pmx_gpio_request_enable, ptr null, ptr @mtk_pmx_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mtk_pctrl_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1085, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_pctrl_init._entry_ptr.15 = internal global ptr @mtk_pctrl_init._entry.13, section ".printk_index", align 4
@mtk_gpio_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @mtk_gpio_get_direction, ptr @mtk_gpio_direction_input, ptr @mtk_gpio_direction_output, ptr @mtk_gpio_get, ptr null, ptr @mtk_gpio_set, ptr null, ptr @mtk_gpio_set_config, ptr @mtk_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 2, ptr null }, [68 x i8] zeroinitializer }, align 32
@mtk_pctrl_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mtk_pctrl_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mtk_pconf_set_pull_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid pull-up argument %d on pin %d .\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_pconf_set_pull_select\00", [38 x i8] zeroinitializer }, align 32
@mtk_pconf_set_pull_select._entry_ptr = internal global ptr @mtk_pconf_set_pull_select._entry, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinmux\00", [25 x i8] zeroinitializer }, align 32
@mtk_pctrl_dt_subnode_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"missing pins property in node %pOFn .\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_pctrl_dt_subnode_to_map\00", [36 x i8] zeroinitializer }, align 32
@mtk_pctrl_dt_subnode_to_map._entry_ptr = internal global ptr @mtk_pctrl_dt_subnode_to_map._entry, section ".printk_index", align 4
@mtk_pctrl_dt_subnode_to_map._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 552, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid pins value.\0A\00", [43 x i8] zeroinitializer }, align 32
@mtk_pctrl_dt_subnode_to_map._entry_ptr.23 = internal global ptr @mtk_pctrl_dt_subnode_to_map._entry.21, section ".printk_index", align 4
@mtk_pctrl_dt_subnode_to_map._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 560, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to match pin %d to group\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_pctrl_dt_subnode_to_map._entry_ptr.26 = internal global ptr @mtk_pctrl_dt_subnode_to_map._entry.24, section ".printk_index", align 4
@mtk_pctrl_dt_node_to_map_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 479, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid function %d on pin %d .\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mtk_pctrl_dt_node_to_map_func\00", [34 x i8] zeroinitializer }, align 32
@mtk_pctrl_dt_node_to_map_func._entry_ptr = internal global ptr @mtk_pctrl_dt_node_to_map_func._entry, section ".printk_index", align 4
@mtk_gpio_functions = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func0\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func1\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func2\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func3\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func4\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func5\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func6\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func7\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func8\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func9\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func10\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func11\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func12\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func13\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func14\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func15\00", [25 x i8] zeroinitializer }, align 32
@mtk_pmx_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid function %d on group %d .\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_pmx_set_mux\00", [16 x i8] zeroinitializer }, align 32
@mtk_pmx_set_mux._entry_ptr = internal global ptr @mtk_pmx_set_mux._entry, section ".printk_index", align 4
@mtk_pmx_gpio_request_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 759, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid gpio pin %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_pmx_gpio_request_enable\00", [36 x i8] zeroinitializer }, align 32
@mtk_pmx_gpio_request_enable._entry_ptr = internal global ptr @mtk_pmx_gpio_request_enable._entry, section ".printk_index", align 4
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@mtk_eint_xt = internal constant { %struct.mtk_eint_xt, [20 x i8] } { %struct.mtk_eint_xt { ptr @mtk_xt_get_gpio_n, ptr @mtk_xt_get_gpio_state, ptr @mtk_xt_set_gpio_as_eint }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 101, i64 102, i64 103]
@__sancov_gen_cov_switch_values.51 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 14, i64 17]
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"mtk_eint_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 891, i32 25 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1032, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1034, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1038, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1046, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1061, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"mtk_pconf_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 403, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"mtk_pctrl_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 640, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"mtk_pmx_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 769, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1085, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"mtk_gpio_chip\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 863, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1099, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 308, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 506, i32 32 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 508, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 552, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 559, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 478, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c"mtk_gpio_functions\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 39, i32 27 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 40, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 40, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 40, i32 20 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 40, i32 29 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 41, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 41, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 41, i32 20 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 41, i32 29 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 42, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 42, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 42, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 42, i32 30 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 43, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 43, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 43, i32 22 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 43, i32 32 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 722, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 759, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 741, i32 28 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 988, i32 33 }
@___asan_gen_.232 = private unnamed_addr constant [12 x i8] c"mtk_eint_xt\00", align 1
@___asan_gen_.233 = private constant [49 x i8] c"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 978, i32 33 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @mtk_pconf_set_pull_select._entry, ptr @mtk_pconf_set_pull_select._entry_ptr, ptr @mtk_pctrl_dt_node_to_map_func._entry, ptr @mtk_pctrl_dt_node_to_map_func._entry_ptr, ptr @mtk_pctrl_dt_subnode_to_map._entry, ptr @mtk_pctrl_dt_subnode_to_map._entry.21, ptr @mtk_pctrl_dt_subnode_to_map._entry.24, ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr, ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr.23, ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr.26, ptr @mtk_pctrl_init._entry, ptr @mtk_pctrl_init._entry.10, ptr @mtk_pctrl_init._entry.13, ptr @mtk_pctrl_init._entry.7, ptr @mtk_pctrl_init._entry_ptr, ptr @mtk_pctrl_init._entry_ptr.12, ptr @mtk_pctrl_init._entry_ptr.15, ptr @mtk_pctrl_init._entry_ptr.9, ptr @mtk_pmx_gpio_request_enable._entry, ptr @mtk_pmx_gpio_request_enable._entry_ptr, ptr @mtk_pmx_set_mux._entry, ptr @mtk_pmx_set_mux._entry_ptr, ptr @mtk_eint_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @mtk_pconf_ops, ptr @mtk_pctrl_ops, ptr @mtk_pmx_ops, ptr @.str.14, ptr @mtk_gpio_chip, ptr @mtk_pctrl_init.lock_key, ptr @mtk_pctrl_init.request_key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @mtk_gpio_functions, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @mtk_eint_xt], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_eint_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_gpio_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pconf_set_pull_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_dt_subnode_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_dt_subnode_to_map._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_dt_subnode_to_map._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_dt_node_to_map_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_gpio_functions to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmx_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmx_gpio_request_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_eint_xt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_pconf_spec_set_ies_smt_range(ptr noundef %regmap, ptr nocapture noundef readonly %ies_smt_infos, i32 noundef %info_num, i32 noundef %pin, i8 noundef zeroext %align, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info_num)
  %cmp41.not = icmp eq i32 %info_num, 0
  br i1 %cmp41.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_pin_ies_smt_set, ptr %ies_smt_infos, i32 %i.042
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pin)
  %cmp1.not = icmp ugt i32 %conv, %pin
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %end = getelementptr %struct.mtk_pin_ies_smt_set, ptr %ies_smt_infos, i32 %i.042, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %end, align 2
  %conv4 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %pin)
  %cmp5.not = icmp ult i32 %conv4, %pin
  br i1 %cmp5.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %info_num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.042, %land.lhs.true.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %info_num)
  %cmp7 = icmp eq i32 %i.0.lcssa, %info_num
  br i1 %cmp7, label %for.end.cleanup_crit_edge, label %if.end10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %offset16 = getelementptr %struct.mtk_pin_ies_smt_set, ptr %ies_smt_infos, i32 %i.0.lcssa, i32 2
  %4 = ptrtoint ptr %offset16 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %offset16, align 2
  %conv17 = zext i16 %5 to i32
  %conv18 = zext i8 %align to i32
  %shl = zext i1 %tobool.not to i32
  %reg_addr.0.v = shl nuw nsw i32 %conv18, %shl
  %reg_addr.0 = add nuw nsw i32 %reg_addr.0.v, %conv17
  %bit22 = getelementptr %struct.mtk_pin_ies_smt_set, ptr %ies_smt_infos, i32 %i.0.lcssa, i32 3
  %6 = ptrtoint ptr %bit22 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bit22, align 2
  %conv23 = zext i8 %7 to i32
  %shl24 = shl nuw i32 1, %conv23
  %call = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %reg_addr.0, i32 noundef %shl24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_pctrl_spec_pull_set_samereg(ptr noundef %regmap, ptr nocapture noundef readonly %pupd_infos, i32 noundef %info_num, i32 noundef %pin, i8 noundef zeroext %align, i1 noundef zeroext %isup, i32 noundef %r1r0) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info_num)
  %cmp72.not = icmp eq i32 %info_num, 0
  br i1 %cmp72.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.073 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_pin_spec_pupd_set_samereg, ptr %pupd_infos, i32 %i.073
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pin)
  %cmp2 = icmp eq i32 %conv, %pin
  br i1 %cmp2, label %if.end5, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, %info_num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %offset = getelementptr %struct.mtk_pin_spec_pupd_set_samereg, ptr %pupd_infos, i32 %i.073, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset, align 2
  %conv6 = zext i16 %3 to i32
  %conv7 = zext i8 %align to i32
  %add = add nuw nsw i32 %conv6, %conv7
  %shl = shl nuw nsw i32 %conv7, 1
  %add11 = add nuw nsw i32 %shl, %conv6
  %add11.add = select i1 %isup, i32 %add11, i32 %add
  %pupd_bit = getelementptr %struct.mtk_pin_spec_pupd_set_samereg, ptr %pupd_infos, i32 %i.073, i32 2
  %4 = ptrtoint ptr %pupd_bit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pupd_bit, align 2
  %conv15 = zext i8 %5 to i32
  %shl16 = shl nuw i32 1, %conv15
  %call = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %add11.add, i32 noundef %shl16) #8
  %r0_bit = getelementptr %struct.mtk_pin_spec_pupd_set_samereg, ptr %pupd_infos, i32 %i.073, i32 4
  %6 = ptrtoint ptr %r0_bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %r0_bit, align 2
  %conv17 = zext i8 %7 to i32
  %shl18 = shl nuw i32 1, %conv17
  %r1_bit = getelementptr %struct.mtk_pin_spec_pupd_set_samereg, ptr %pupd_infos, i32 %i.073, i32 3
  %8 = ptrtoint ptr %r1_bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %r1_bit, align 1
  %conv19 = zext i8 %9 to i32
  %shl20 = shl nuw i32 1, %conv19
  %10 = zext i32 %r1r0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %r1r0, label %if.end5.cleanup_crit_edge [
    i32 100, label %if.end5.cleanup.sink.split_crit_edge
    i32 101, label %sw.bb23
    i32 102, label %sw.bb26
    i32 103, label %sw.bb29
  ]

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb23:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb26:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb29, %sw.bb26, %sw.bb23, %if.end5.cleanup.sink.split_crit_edge
  %add11.sink76 = phi i32 [ %add, %sw.bb23 ], [ %add11, %sw.bb26 ], [ %add, %sw.bb29 ], [ %add11, %if.end5.cleanup.sink.split_crit_edge ]
  %add11.sink = phi i32 [ %add11, %sw.bb23 ], [ %add, %sw.bb26 ], [ %add, %sw.bb29 ], [ %add11, %if.end5.cleanup.sink.split_crit_edge ]
  %call21 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %add11.sink76, i32 noundef %shl18) #8
  %call22 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %add11.sink, i32 noundef %shl20) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_eint_suspend(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %eint = getelementptr inbounds %struct.mtk_pinctrl, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eint, align 4
  %call1 = tail call i32 @mtk_eint_do_suspend(ptr noundef %3) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_eint_resume(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %eint = getelementptr inbounds %struct.mtk_pinctrl, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eint, align 4
  %call1 = tail call i32 @mtk_eint_do_resume(ptr noundef %3) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_pctrl_init(ptr noundef %pdev, ptr noundef %data, ptr noundef %regmap) local_unnamed_addr #0 align 64 {
entry:
  %args.i198 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i197 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %tobool.not.i = icmp eq i32 %call.i197, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %if.else

of_parse_phandle.exit:                            ; preds = %if.end6
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %of_parse_phandle.exit.if.else_crit_edge, label %if.then9

of_parse_phandle.exit.if.else_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then9:                                         ; preds = %of_parse_phandle.exit
  %call10 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %5) #8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.then9.if.end26_crit_edge

if.then9.if.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.else:                                          ; preds = %of_parse_phandle.exit.if.else_crit_edge, %of_parse_phandle.exit.thread
  %tobool17.not = icmp eq ptr %regmap, null
  br i1 %tobool17.not, label %do.end23, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %regmap, ptr %call.i, align 4
  br label %if.end26

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end26:                                         ; preds = %if.then18, %if.then9.if.end26_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i198) #8
  %9 = call ptr @memset(ptr %args.i198, i32 255, i32 72)
  %call.i199 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i198) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %of_parse_phandle.exit203, label %of_parse_phandle.exit203.thread

of_parse_phandle.exit203.thread:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i198) #8
  br label %if.end37

of_parse_phandle.exit203:                         ; preds = %if.end26
  %10 = ptrtoint ptr %args.i198 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.i198, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i198) #8
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %of_parse_phandle.exit203.if.end37_crit_edge, label %if.then29

of_parse_phandle.exit203.if.end37_crit_edge:      ; preds = %of_parse_phandle.exit203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then29:                                        ; preds = %of_parse_phandle.exit203
  %call30 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %11) #8
  %regmap2 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %regmap2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %regmap2, align 4
  %cmp.i204 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then33, label %if.then29.if.end37_crit_edge

if.then29.if.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.then29.if.end37_crit_edge, %of_parse_phandle.exit203.if.end37_crit_edge, %of_parse_phandle.exit203.thread
  %devdata = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %devdata to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %devdata, align 4
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %devdata.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %npins.i, align 4
  %ngroups.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ngroups.i, align 4
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 12) #8
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !121

devm_kcalloc.exit.thread.i:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %groups49.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %16, i32 0, i32 5
  br label %cleanup.sink.split.i

devm_kcalloc.exit.i:                              ; preds = %if.end37
  %24 = extractvalue { i32, i1 } %22, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %24, i32 noundef 3520) #8
  %groups.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %16, i32 0, i32 5
  %25 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i.i, ptr %groups.i, align 4
  %tobool.not.i205 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i205, label %devm_kcalloc.exit.i.do.end43_crit_edge, label %if.end.i206

devm_kcalloc.exit.i.do.end43_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

if.end.i206:                                      ; preds = %devm_kcalloc.exit.i
  %26 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ngroups.i, align 4
  %28 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 4) #8
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %devm_kcalloc.exit47.thread.i, label %devm_kcalloc.exit47.i, !prof !121

devm_kcalloc.exit47.thread.i:                     ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  %grp_names52.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %16, i32 0, i32 7
  br label %cleanup.sink.split.i

devm_kcalloc.exit47.i:                            ; preds = %if.end.i206
  %30 = extractvalue { i32, i1 } %28, 0
  %call5.i.i44.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %30, i32 noundef 3520) #8
  %grp_names.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %16, i32 0, i32 7
  %31 = ptrtoint ptr %grp_names.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i44.i, ptr %grp_names.i, align 4
  %tobool8.not.i = icmp eq ptr %call5.i.i44.i, null
  br i1 %tobool8.not.i, label %devm_kcalloc.exit47.i.do.end43_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit47.i.do.end43_crit_edge:         ; preds = %devm_kcalloc.exit47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit47.i
  %32 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %devdata.i, align 4
  %npins1254.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %npins1254.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %npins1254.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp55.not.i = icmp eq i32 %35, 0
  br i1 %cmp55.not.i, label %for.cond.preheader.i.if.end45_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end45_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %36 = phi ptr [ %52, %for.body.i.for.body.i_crit_edge ], [ %33, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.056.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %add.ptr.i = getelementptr %struct.mtk_desc_pin, ptr %38, i32 %i.056.i
  %39 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %groups.i, align 4
  %add.ptr15.i = getelementptr %struct.mtk_pinctrl_group, ptr %40, i32 %i.056.i
  %name.i = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %add.ptr.i, i32 0, i32 1
  %41 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i, align 4
  %43 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %add.ptr15.i, align 4
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 4
  %pin19.i = getelementptr %struct.mtk_pinctrl_group, ptr %40, i32 %i.056.i, i32 2
  %46 = ptrtoint ptr %pin19.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %pin19.i, align 4
  %47 = load ptr, ptr %name.i, align 4
  %48 = ptrtoint ptr %grp_names.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %grp_names.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %49, i32 %i.056.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.056.i, 1
  %51 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %devdata.i, align 4
  %npins12.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %npins12.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %npins12.i, align 4
  %cmp.i207 = icmp ult i32 %inc.i, %54
  br i1 %cmp.i207, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end45_crit_edge

for.body.i.if.end45_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.sink.split.i:                             ; preds = %devm_kcalloc.exit47.thread.i, %devm_kcalloc.exit.thread.i
  %grp_names52.sink.i = phi ptr [ %grp_names52.i, %devm_kcalloc.exit47.thread.i ], [ %groups49.i, %devm_kcalloc.exit.thread.i ]
  %55 = ptrtoint ptr %grp_names52.sink.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %grp_names52.sink.i, align 4
  br label %do.end43

do.end43:                                         ; preds = %cleanup.sink.split.i, %devm_kcalloc.exit47.i.do.end43_crit_edge, %devm_kcalloc.exit.i.do.end43_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef -12) #11
  br label %cleanup

if.end45:                                         ; preds = %for.body.i.if.end45_crit_edge, %for.cond.preheader.i.if.end45_crit_edge
  %56 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %devdata, align 4
  %npins = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %npins, align 4
  %60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %59, i32 12) #8
  %61 = extractvalue { i32, i1 } %60, 1
  br i1 %61, label %if.end45.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !121

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end45
  %62 = extractvalue { i32, i1 } %60, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %62, i32 noundef 3520) #8
  %tobool49.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool49.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %63 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %devdata, align 4
  %npins53 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %npins53 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %npins53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp233.not = icmp eq i32 %66, 0
  br i1 %cmp233.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0234 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0234
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  %arrayidx56 = getelementptr %struct.mtk_desc_pin, ptr %68, i32 %i.0234
  %69 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx56, i32 12)
  %inc = add nuw i32 %i.0234, 1
  %70 = ptrtoint ptr %npins53 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %npins53, align 4
  %cmp = icmp ult i32 %inc, %71
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %72 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i209 = icmp eq ptr %73, null
  br i1 %tobool.not.i209, label %if.end.i210, label %for.end.dev_name.exit_crit_edge

for.end.dev_name.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i210:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i210, %for.end.dev_name.exit_crit_edge
  %retval.0.i211 = phi ptr [ %75, %if.end.i210 ], [ %73, %for.end.dev_name.exit_crit_edge ]
  %pctl_desc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 2
  %76 = ptrtoint ptr %pctl_desc to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %retval.0.i211, ptr %pctl_desc, align 4
  %owner = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 2, i32 6
  %77 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %owner, align 4
  %pins61 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %pins61 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call5.i.i, ptr %pins61, align 4
  %79 = ptrtoint ptr %npins53 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %npins53, align 4
  %npins65 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 2, i32 2
  %81 = ptrtoint ptr %npins65 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %npins65, align 4
  %confops = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 2, i32 5
  %82 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @mtk_pconf_ops, ptr %confops, align 4
  %pctlops = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 2, i32 3
  %83 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @mtk_pctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 2, i32 4
  %84 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @mtk_pmx_ops, ptr %pmxops, align 4
  %dev70 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %85 = ptrtoint ptr %dev70 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %dev, ptr %dev70, align 4
  %call73 = call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %pctl_desc, ptr noundef nonnull %call.i) #8
  %pctl_dev = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 8
  %86 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call73, ptr %pctl_dev, align 4
  %cmp.i212 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %do.end79, label %if.end83

do.end79:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  %87 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pctl_dev, align 4
  %89 = ptrtoint ptr %88 to i32
  br label %cleanup

if.end83:                                         ; preds = %dev_name.exit
  %call.i213 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 348, i32 noundef 3520) #8
  %chip = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 4
  %90 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i213, ptr %chip, align 4
  %tobool87.not = icmp eq ptr %call.i213, null
  br i1 %tobool87.not, label %if.end83.cleanup_crit_edge, label %if.end89

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %if.end83
  %91 = call ptr @memcpy(ptr %call.i213, ptr @mtk_gpio_chip, i32 348)
  %92 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %devdata, align 4
  %npins92 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %npins92 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %npins92, align 4
  %conv = trunc i32 %95 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i213, i32 0, i32 20
  %96 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv, ptr %ngpio, align 4
  %97 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i215 = icmp eq ptr %98, null
  br i1 %tobool.not.i215, label %if.end.i216, label %if.end89.dev_name.exit218_crit_edge

if.end89.dev_name.exit218_crit_edge:              ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit218

if.end.i216:                                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 4
  br label %dev_name.exit218

dev_name.exit218:                                 ; preds = %if.end.i216, %if.end89.dev_name.exit218_crit_edge
  %retval.0.i217 = phi ptr [ %100, %if.end.i216 ], [ %98, %if.end89.dev_name.exit218_crit_edge ]
  %101 = ptrtoint ptr %call.i213 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %retval.0.i217, ptr %call.i213, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i213, i32 0, i32 2
  %102 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %dev, ptr %parent, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i213, i32 0, i32 19
  %103 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %base, align 4
  %call101 = call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %call.i213, ptr noundef nonnull %call.i, ptr noundef nonnull @mtk_pctrl_init.lock_key, ptr noundef nonnull @mtk_pctrl_init.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %dev_name.exit218.cleanup_crit_edge

dev_name.exit218.cleanup_crit_edge:               ; preds = %dev_name.exit218
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end104:                                        ; preds = %dev_name.exit218
  %104 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chip, align 4
  %106 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i220 = icmp eq ptr %107, null
  br i1 %tobool.not.i220, label %if.end.i221, label %if.end104.dev_name.exit223_crit_edge

if.end104.dev_name.exit223_crit_edge:             ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit223

if.end.i221:                                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  br label %dev_name.exit223

dev_name.exit223:                                 ; preds = %if.end.i221, %if.end104.dev_name.exit223_crit_edge
  %retval.0.i222 = phi ptr [ %109, %if.end.i221 ], [ %107, %if.end104.dev_name.exit223_crit_edge ]
  %110 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %devdata, align 4
  %npins109 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %npins109 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %npins109, align 4
  %call110 = call i32 @gpiochip_add_pin_range(ptr noundef %105, ptr noundef %retval.0.i222, i32 noundef 0, i32 noundef 0, i32 noundef %113) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %dev_name.exit223.chip_error_crit_edge

dev_name.exit223.chip_error_crit_edge:            ; preds = %dev_name.exit223
  call void @__sanitizer_cov_trace_pc() #10
  br label %chip_error

if.end113:                                        ; preds = %dev_name.exit223
  %call114 = call fastcc i32 @mtk_eint_init(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end113.cleanup_crit_edge, label %if.end113.chip_error_crit_edge

if.end113.chip_error_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %chip_error

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

chip_error:                                       ; preds = %if.end113.chip_error_crit_edge, %dev_name.exit223.chip_error_crit_edge
  %ret.0 = phi i32 [ %call114, %if.end113.chip_error_crit_edge ], [ -22, %dev_name.exit223.chip_error_crit_edge ]
  %114 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %chip, align 4
  call void @gpiochip_remove(ptr noundef %115) #8
  br label %cleanup

cleanup:                                          ; preds = %chip_error, %if.end113.cleanup_crit_edge, %dev_name.exit218.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %do.end79, %devm_kcalloc.exit.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %do.end43, %if.then33, %do.end23, %if.then13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then13 ], [ %13, %if.then33 ], [ -22, %do.end43 ], [ %89, %do.end79 ], [ %ret.0, %chip_error ], [ -22, %do.end23 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.end83.cleanup_crit_edge ], [ -22, %dev_name.exit218.cleanup_crit_edge ], [ 0, %if.end113.cleanup_crit_edge ], [ -12, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_eint_init(ptr noundef %pctl, ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i53 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 44, i32 noundef 3520) #8
  %eint = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 10
  %4 = ptrtoint ptr %eint to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i53, ptr %eint, align 4
  %tobool.not = icmp eq ptr %call.i53, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %5 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eint, align 4
  %base = getelementptr inbounds %struct.mtk_eint, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %base, align 4
  %8 = load ptr, ptr %eint, align 4
  %base9 = getelementptr inbounds %struct.mtk_eint, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base9, align 4
  %cmp.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %call16 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #8
  %12 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eint, align 4
  %irq = getelementptr inbounds %struct.mtk_eint, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call16, ptr %irq, align 4
  %15 = load ptr, ptr %eint, align 4
  %irq19 = getelementptr inbounds %struct.mtk_eint, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %15, align 4
  %devdata = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 9
  %19 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devdata, align 4
  %eint_regs = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %eint_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eint_regs, align 4
  %23 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eint, align 4
  %regs = getelementptr inbounds %struct.mtk_eint, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %regs, align 4
  %26 = load ptr, ptr %devdata, align 4
  %eint_hw = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %26, i32 0, i32 24
  %27 = load ptr, ptr %eint, align 4
  %hw = getelementptr inbounds %struct.mtk_eint, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %eint_hw, ptr %hw, align 4
  %29 = load ptr, ptr %eint, align 4
  %pctl30 = getelementptr inbounds %struct.mtk_eint, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %pctl30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pctl, ptr %pctl30, align 4
  %31 = load ptr, ptr %eint, align 4
  %gpio_xlate = getelementptr inbounds %struct.mtk_eint, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %gpio_xlate to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mtk_eint_xt, ptr %gpio_xlate, align 4
  %33 = load ptr, ptr %eint, align 4
  %call33 = tail call i32 @mtk_eint_do_init(ptr noundef %33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end15.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then11 ], [ %call33, %if.end22 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_do_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_do_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %config1 = getelementptr %struct.mtk_pinctrl_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config1, align 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %config, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  %reg_addr.i102.i = alloca i32, align 4
  %reg_addr.i66.i = alloca i32, align 4
  %reg_addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp28.not = icmp eq i32 %num_configs, 0
  br i1 %cmp28.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %groups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.mtk_pinctrl_group, ptr %1, i32 %group, i32 2
  %config = getelementptr %struct.mtk_pinctrl_group, ptr %1, i32 %group, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin, align 4
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.029
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %shr.i = lshr i32 %5, 8
  %call.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 1, label %sw.bb.i
    i8 5, label %sw.bb2.i
    i8 3, label %sw.bb4.i
    i8 12, label %sw.bb6.i
    i8 17, label %sw.bb9.i
    i8 14, label %sw.bb11.i
    i8 9, label %sw.bb14.i
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call fastcc i32 @mtk_pconf_set_pull_select(ptr noundef %call.i, i32 noundef %3, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %shr.i) #8
  br label %mtk_pconf_parse_conf.exit

sw.bb2.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call fastcc i32 @mtk_pconf_set_pull_select(ptr noundef %call.i, i32 noundef %3, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %shr.i) #8
  br label %mtk_pconf_parse_conf.exit

sw.bb4.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call fastcc i32 @mtk_pconf_set_pull_select(ptr noundef %call.i, i32 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %shr.i) #8
  br label %mtk_pconf_parse_conf.exit

sw.bb6.i:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_addr.i.i) #8
  %call.i.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %devdata.i.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %devdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devdata.i.i.i, align 4
  %mode_shf.i.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 28
  %9 = ptrtoint ptr %mode_shf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode_shf.i.i.i, align 4
  %shr.i.i.i = lshr i32 %3, %10
  %port_mask.i.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 22
  %11 = ptrtoint ptr %port_mask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port_mask.i.i.i, align 1
  %conv.i.i.i = zext i8 %12 to i32
  %and.i.i.i = and i32 %shr.i.i.i, %conv.i.i.i
  %port_shf.i.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 21
  %13 = ptrtoint ptr %port_shf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_shf.i.i.i, align 4
  %conv3.i.i.i = zext i8 %14 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %dir_offset.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 10
  %15 = ptrtoint ptr %dir_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dir_offset.i.i, align 4
  %add.i.i = add i32 %shl.i.i.i, %16
  %17 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i.i, ptr %reg_addr.i.i, align 4
  %mode_mask.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 26
  %18 = ptrtoint ptr %mode_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode_mask.i.i, align 4
  %spec_dir_set.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 9
  %20 = ptrtoint ptr %spec_dir_set.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spec_dir_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %sw.bb6.i.if.end.i.i_crit_edge, label %if.then.i.i

sw.bb6.i.if.end.i.i_crit_edge:                    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %21(ptr noundef nonnull %reg_addr.i.i, i32 noundef %3) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb6.i.if.end.i.i_crit_edge
  %22 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_addr.i.i, align 4
  %24 = ptrtoint ptr %devdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devdata.i.i.i, align 4
  %port_align.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %port_align.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_align.i.i, align 2
  %conv.i.i = zext i8 %27 to i32
  %storemerge.v.i.i = shl nuw nsw i32 %conv.i.i, 1
  %storemerge.i.i = add i32 %storemerge.v.i.i, %23
  store i32 %storemerge.i.i, ptr %reg_addr.i.i, align 4
  %type1_start.i.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 19
  %28 = ptrtoint ptr %type1_start.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %type1_start.i.i.i, align 4
  %conv.i29.i.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i29.i.i)
  %cmp.not.i.i.i = icmp ult i32 %3, %conv.i29.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.mtk_pmx_gpio_set_direction.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.mtk_pmx_gpio_set_direction.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pmx_gpio_set_direction.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 20
  %30 = ptrtoint ptr %type1_end.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %type1_end.i.i.i, align 2
  %conv3.i30.i.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv3.i30.i.i)
  %cmp4.i.i.i = icmp ult i32 %3, %conv3.i30.i.i
  %regmap2.i.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i.i, i32 0, i32 1
  %spec.select.i.i.i = select i1 %cmp4.i.i.i, ptr %regmap2.i.i.i, ptr %call.i.i
  br label %mtk_pmx_gpio_set_direction.exit.i

mtk_pmx_gpio_set_direction.exit.i:                ; preds = %land.lhs.true.i.i.i, %if.end.i.i.mtk_pmx_gpio_set_direction.exit.i_crit_edge
  %retval.0.in.i.i.i = phi ptr [ %call.i.i, %if.end.i.i.mtk_pmx_gpio_set_direction.exit.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %and.i.i = and i32 %19, %3
  %shl.i.i = shl nuw i32 1, %and.i.i
  %32 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %retval.0.i.i.i = load ptr, ptr %retval.0.in.i.i.i, align 4
  %call17.i.i = call i32 @regmap_write(ptr noundef %retval.0.i.i.i, i32 noundef %storemerge.i.i, i32 noundef %shl.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_addr.i.i) #8
  %call8.i = call fastcc i32 @mtk_pconf_set_ies_smt(ptr noundef %call.i, i32 noundef %3, i32 noundef %shr.i, i32 noundef 12) #8
  br label %mtk_pconf_parse_conf.exit

sw.bb9.i:                                         ; preds = %for.body
  %chip.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip.i, align 4
  %call.i42.i = call ptr @gpiochip_get_data(ptr noundef %34) #8
  %devdata.i.i43.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i42.i, i32 0, i32 9
  %35 = ptrtoint ptr %devdata.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %devdata.i.i43.i, align 4
  %mode_shf.i.i44.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 28
  %37 = ptrtoint ptr %mode_shf.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode_shf.i.i44.i, align 4
  %port_mask.i.i45.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 22
  %39 = ptrtoint ptr %port_mask.i.i45.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %port_mask.i.i45.i, align 1
  %port_shf.i.i46.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 21
  %41 = ptrtoint ptr %port_shf.i.i46.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port_shf.i.i46.i, align 4
  %dout_offset.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 16
  %43 = ptrtoint ptr %dout_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dout_offset.i.i, align 4
  %mode_mask.i47.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 26
  %45 = ptrtoint ptr %mode_mask.i47.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode_mask.i47.i, align 4
  %port_align6.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 23
  %47 = ptrtoint ptr %port_align6.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %port_align6.i.i, align 2
  %type1_start.i.i48.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 19
  %49 = ptrtoint ptr %type1_start.i.i48.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %type1_start.i.i48.i, align 4
  %conv.i22.i.i = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i22.i.i)
  %cmp.not.i.i49.i = icmp ult i32 %3, %conv.i22.i.i
  br i1 %cmp.not.i.i49.i, label %sw.bb9.i.mtk_gpio_set.exit.i_crit_edge, label %land.lhs.true.i.i54.i

sw.bb9.i.mtk_gpio_set.exit.i_crit_edge:           ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_gpio_set.exit.i

land.lhs.true.i.i54.i:                            ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i.i50.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 20
  %51 = ptrtoint ptr %type1_end.i.i50.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %type1_end.i.i50.i, align 2
  %conv3.i23.i.i = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv3.i23.i.i)
  %cmp4.i.i51.i = icmp ult i32 %3, %conv3.i23.i.i
  %regmap2.i.i52.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i42.i, i32 0, i32 1
  %spec.select.i.i53.i = select i1 %cmp4.i.i51.i, ptr %regmap2.i.i52.i, ptr %call.i42.i
  br label %mtk_gpio_set.exit.i

mtk_gpio_set.exit.i:                              ; preds = %land.lhs.true.i.i54.i, %sw.bb9.i.mtk_gpio_set.exit.i_crit_edge
  %retval.0.in.i.i55.i = phi ptr [ %call.i42.i, %sw.bb9.i.mtk_gpio_set.exit.i_crit_edge ], [ %spec.select.i.i53.i, %land.lhs.true.i.i54.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %tobool.not.i56.i = icmp ult i32 %5, 256
  %conv7.i.i = zext i8 %48 to i32
  %shl8.i.i = zext i1 %tobool.not.i56.i to i32
  %conv.pn.i.i = shl nuw nsw i32 %conv7.i.i, %shl8.i.i
  %and.i57.i = and i32 %46, %3
  %shl.i58.i = shl nuw i32 1, %and.i57.i
  %shr.i.i59.i = lshr i32 %3, %38
  %conv.i.i60.i = zext i8 %40 to i32
  %and.i.i61.i = and i32 %shr.i.i59.i, %conv.i.i60.i
  %conv3.i.i62.i = zext i8 %42 to i32
  %shl.i.i63.i = shl i32 %and.i.i61.i, %conv3.i.i62.i
  %add.i64.i = add i32 %shl.i.i63.i, %44
  %reg_addr.0.i.i = add i32 %add.i64.i, %conv.pn.i.i
  %53 = ptrtoint ptr %retval.0.in.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %retval.0.i.i65.i = load ptr, ptr %retval.0.in.i.i55.i, align 4
  %call11.i.i = call i32 @regmap_write(ptr noundef %retval.0.i.i65.i, i32 noundef %reg_addr.0.i.i, i32 noundef %shl.i58.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_addr.i66.i) #8
  %call.i67.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %devdata.i.i68.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i67.i, i32 0, i32 9
  %54 = ptrtoint ptr %devdata.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %devdata.i.i68.i, align 4
  %mode_shf.i.i69.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %55, i32 0, i32 28
  %56 = ptrtoint ptr %mode_shf.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode_shf.i.i69.i, align 4
  %shr.i.i70.i = lshr i32 %3, %57
  %port_mask.i.i71.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %55, i32 0, i32 22
  %58 = ptrtoint ptr %port_mask.i.i71.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port_mask.i.i71.i, align 1
  %conv.i.i72.i = zext i8 %59 to i32
  %and.i.i73.i = and i32 %shr.i.i70.i, %conv.i.i72.i
  %port_shf.i.i74.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %55, i32 0, i32 21
  %60 = ptrtoint ptr %port_shf.i.i74.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %port_shf.i.i74.i, align 4
  %conv3.i.i75.i = zext i8 %61 to i32
  %shl.i.i76.i = shl i32 %and.i.i73.i, %conv3.i.i75.i
  %dir_offset.i77.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %55, i32 0, i32 10
  %62 = ptrtoint ptr %dir_offset.i77.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dir_offset.i77.i, align 4
  %add.i78.i = add i32 %shl.i.i76.i, %63
  %64 = ptrtoint ptr %reg_addr.i66.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.i78.i, ptr %reg_addr.i66.i, align 4
  %mode_mask.i79.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %55, i32 0, i32 26
  %65 = ptrtoint ptr %mode_mask.i79.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mode_mask.i79.i, align 4
  %spec_dir_set.i80.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %55, i32 0, i32 9
  %67 = ptrtoint ptr %spec_dir_set.i80.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spec_dir_set.i80.i, align 4
  %tobool.not.i81.i = icmp eq ptr %68, null
  br i1 %tobool.not.i81.i, label %mtk_gpio_set.exit.i.if.end.i89.i_crit_edge, label %if.then.i82.i

mtk_gpio_set.exit.i.if.end.i89.i_crit_edge:       ; preds = %mtk_gpio_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i89.i

if.then.i82.i:                                    ; preds = %mtk_gpio_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %68(ptr noundef nonnull %reg_addr.i66.i, i32 noundef %3) #8
  br label %if.end.i89.i

if.end.i89.i:                                     ; preds = %if.then.i82.i, %mtk_gpio_set.exit.i.if.end.i89.i_crit_edge
  %69 = ptrtoint ptr %reg_addr.i66.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg_addr.i66.i, align 4
  %71 = ptrtoint ptr %devdata.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %devdata.i.i68.i, align 4
  %port_align.i83.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %72, i32 0, i32 23
  %73 = ptrtoint ptr %port_align.i83.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %port_align.i83.i, align 2
  %conv.i84.i = zext i8 %74 to i32
  %storemerge.i85.i = add i32 %70, %conv.i84.i
  store i32 %storemerge.i85.i, ptr %reg_addr.i66.i, align 4
  %type1_start.i.i86.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %72, i32 0, i32 19
  %75 = ptrtoint ptr %type1_start.i.i86.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %type1_start.i.i86.i, align 4
  %conv.i29.i87.i = zext i16 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i29.i87.i)
  %cmp.not.i.i88.i = icmp ult i32 %3, %conv.i29.i87.i
  br i1 %cmp.not.i.i88.i, label %if.end.i89.i.mtk_pconf_parse_conf.exit.thread22_crit_edge, label %land.lhs.true.i.i95.i

if.end.i89.i.mtk_pconf_parse_conf.exit.thread22_crit_edge: ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pconf_parse_conf.exit.thread22

land.lhs.true.i.i95.i:                            ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i.i90.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %72, i32 0, i32 20
  %77 = ptrtoint ptr %type1_end.i.i90.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %type1_end.i.i90.i, align 2
  %conv3.i30.i91.i = zext i16 %78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv3.i30.i91.i)
  %cmp4.i.i92.i = icmp ult i32 %3, %conv3.i30.i91.i
  %regmap2.i.i93.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i67.i, i32 0, i32 1
  %spec.select.i.i94.i = select i1 %cmp4.i.i92.i, ptr %regmap2.i.i93.i, ptr %call.i67.i
  br label %mtk_pconf_parse_conf.exit.thread22

mtk_pconf_parse_conf.exit.thread22:               ; preds = %land.lhs.true.i.i95.i, %if.end.i89.i.mtk_pconf_parse_conf.exit.thread22_crit_edge
  %retval.0.in.i.i96.i = phi ptr [ %call.i67.i, %if.end.i89.i.mtk_pconf_parse_conf.exit.thread22_crit_edge ], [ %spec.select.i.i94.i, %land.lhs.true.i.i95.i ]
  %and.i97.i = and i32 %66, %3
  %shl.i98.i = shl nuw i32 1, %and.i97.i
  %79 = ptrtoint ptr %retval.0.in.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %retval.0.i.i99.i = load ptr, ptr %retval.0.in.i.i96.i, align 4
  %call17.i100.i = call i32 @regmap_write(ptr noundef %retval.0.i.i99.i, i32 noundef %storemerge.i85.i, i32 noundef %shl.i98.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_addr.i66.i) #8
  br label %if.end

sw.bb11.i:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_addr.i102.i) #8
  %call.i103.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %devdata.i.i104.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i103.i, i32 0, i32 9
  %80 = ptrtoint ptr %devdata.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %devdata.i.i104.i, align 4
  %mode_shf.i.i105.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %81, i32 0, i32 28
  %82 = ptrtoint ptr %mode_shf.i.i105.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mode_shf.i.i105.i, align 4
  %shr.i.i106.i = lshr i32 %3, %83
  %port_mask.i.i107.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %81, i32 0, i32 22
  %84 = ptrtoint ptr %port_mask.i.i107.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %port_mask.i.i107.i, align 1
  %conv.i.i108.i = zext i8 %85 to i32
  %and.i.i109.i = and i32 %shr.i.i106.i, %conv.i.i108.i
  %port_shf.i.i110.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %81, i32 0, i32 21
  %86 = ptrtoint ptr %port_shf.i.i110.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %port_shf.i.i110.i, align 4
  %conv3.i.i111.i = zext i8 %87 to i32
  %shl.i.i112.i = shl i32 %and.i.i109.i, %conv3.i.i111.i
  %dir_offset.i113.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %81, i32 0, i32 10
  %88 = ptrtoint ptr %dir_offset.i113.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dir_offset.i113.i, align 4
  %add.i114.i = add i32 %shl.i.i112.i, %89
  %90 = ptrtoint ptr %reg_addr.i102.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add.i114.i, ptr %reg_addr.i102.i, align 4
  %mode_mask.i115.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %81, i32 0, i32 26
  %91 = ptrtoint ptr %mode_mask.i115.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mode_mask.i115.i, align 4
  %spec_dir_set.i116.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %81, i32 0, i32 9
  %93 = ptrtoint ptr %spec_dir_set.i116.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %spec_dir_set.i116.i, align 4
  %tobool.not.i117.i = icmp eq ptr %94, null
  br i1 %tobool.not.i117.i, label %sw.bb11.i.if.end.i126.i_crit_edge, label %if.then.i118.i

sw.bb11.i.if.end.i126.i_crit_edge:                ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i126.i

if.then.i118.i:                                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %94(ptr noundef nonnull %reg_addr.i102.i, i32 noundef %3) #8
  br label %if.end.i126.i

if.end.i126.i:                                    ; preds = %if.then.i118.i, %sw.bb11.i.if.end.i126.i_crit_edge
  %95 = ptrtoint ptr %reg_addr.i102.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reg_addr.i102.i, align 4
  %97 = ptrtoint ptr %devdata.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %devdata.i.i104.i, align 4
  %port_align.i119.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %98, i32 0, i32 23
  %99 = ptrtoint ptr %port_align.i119.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %port_align.i119.i, align 2
  %conv.i120.i = zext i8 %100 to i32
  %storemerge.v.i121.i = shl nuw nsw i32 %conv.i120.i, 1
  %storemerge.i122.i = add i32 %storemerge.v.i121.i, %96
  store i32 %storemerge.i122.i, ptr %reg_addr.i102.i, align 4
  %type1_start.i.i123.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %98, i32 0, i32 19
  %101 = ptrtoint ptr %type1_start.i.i123.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %type1_start.i.i123.i, align 4
  %conv.i29.i124.i = zext i16 %102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i29.i124.i)
  %cmp.not.i.i125.i = icmp ult i32 %3, %conv.i29.i124.i
  br i1 %cmp.not.i.i125.i, label %if.end.i126.i.mtk_pmx_gpio_set_direction.exit138.i_crit_edge, label %land.lhs.true.i.i132.i

if.end.i126.i.mtk_pmx_gpio_set_direction.exit138.i_crit_edge: ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pmx_gpio_set_direction.exit138.i

land.lhs.true.i.i132.i:                           ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i.i127.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %98, i32 0, i32 20
  %103 = ptrtoint ptr %type1_end.i.i127.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %type1_end.i.i127.i, align 2
  %conv3.i30.i128.i = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv3.i30.i128.i)
  %cmp4.i.i129.i = icmp ult i32 %3, %conv3.i30.i128.i
  %regmap2.i.i130.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i103.i, i32 0, i32 1
  %spec.select.i.i131.i = select i1 %cmp4.i.i129.i, ptr %regmap2.i.i130.i, ptr %call.i103.i
  br label %mtk_pmx_gpio_set_direction.exit138.i

mtk_pmx_gpio_set_direction.exit138.i:             ; preds = %land.lhs.true.i.i132.i, %if.end.i126.i.mtk_pmx_gpio_set_direction.exit138.i_crit_edge
  %retval.0.in.i.i133.i = phi ptr [ %call.i103.i, %if.end.i126.i.mtk_pmx_gpio_set_direction.exit138.i_crit_edge ], [ %spec.select.i.i131.i, %land.lhs.true.i.i132.i ]
  %and.i134.i = and i32 %92, %3
  %shl.i135.i = shl nuw i32 1, %and.i134.i
  %105 = ptrtoint ptr %retval.0.in.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %retval.0.i.i136.i = load ptr, ptr %retval.0.in.i.i133.i, align 4
  %call17.i137.i = call i32 @regmap_write(ptr noundef %retval.0.i.i136.i, i32 noundef %storemerge.i122.i, i32 noundef %shl.i135.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_addr.i102.i) #8
  %call13.i = call fastcc i32 @mtk_pconf_set_ies_smt(ptr noundef %call.i, i32 noundef %3, i32 noundef %shr.i, i32 noundef 14) #8
  br label %mtk_pconf_parse_conf.exit

sw.bb14.i:                                        ; preds = %for.body
  %conv.i = trunc i32 %shr.i to i8
  %devdata.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 9
  %106 = ptrtoint ptr %devdata.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %devdata.i.i, align 4
  %npins.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %3)
  %cmp.not.i.i = icmp ugt i32 %109, %3
  br i1 %cmp.not.i.i, label %if.end.i139.i, label %sw.bb14.i.cleanup_crit_edge

sw.bb14.i.cleanup_crit_edge:                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i139.i:                                    ; preds = %sw.bb14.i
  %n_pin_drv_grps.i.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %107, i32 0, i32 5
  %110 = ptrtoint ptr %n_pin_drv_grps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %n_pin_drv_grps.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp10.not.i.i.i = icmp eq i32 %111, 0
  br i1 %cmp10.not.i.i.i, label %if.end.i139.i.cleanup_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i139.i.cleanup_crit_edge:                  ; preds = %if.end.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i139.i
  %pin_drv_grp.i.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %107, i32 0, i32 4
  %112 = ptrtoint ptr %pin_drv_grp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pin_drv_grp.i.i.i, align 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.011.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %111
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.cleanup_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.cond.i.i.i.cleanup_crit_edge:                 ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.011.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.mtk_pin_drv_grp, ptr %113, i32 %i.011.i.i.i
  %114 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i140.i = zext i16 %115 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i140.i)
  %cmp3.i.i.i = icmp eq i32 %3, %conv.i.i140.i
  br i1 %cmp3.i.i.i, label %mtk_find_pin_drv_grp_by_pin.exit.i.i, label %for.cond.i.i.i

mtk_find_pin_drv_grp_by_pin.exit.i.i:             ; preds = %for.body.i.i.i
  %tobool.not.i141.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i141.i, label %mtk_find_pin_drv_grp_by_pin.exit.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

mtk_find_pin_drv_grp_by_pin.exit.i.i.cleanup_crit_edge: ; preds = %mtk_find_pin_drv_grp_by_pin.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %mtk_find_pin_drv_grp_by_pin.exit.i.i
  %grp.i.i = getelementptr %struct.mtk_pin_drv_grp, ptr %113, i32 %i.011.i.i.i, i32 3
  %116 = ptrtoint ptr %grp.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %grp.i.i, align 1
  %conv.i142.i = zext i8 %117 to i32
  %n_grp_cls.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %107, i32 0, i32 3
  %118 = ptrtoint ptr %n_grp_cls.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %n_grp_cls.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %conv.i142.i)
  %cmp2.i.i = icmp ult i32 %119, %conv.i142.i
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %if.end5.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i.i:                                      ; preds = %lor.lhs.false.i.i
  %grp_desc.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %107, i32 0, i32 2
  %120 = ptrtoint ptr %grp_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %grp_desc.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.mtk_drv_group_desc, ptr %121, i32 %conv.i142.i
  %122 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %123, i8 %conv.i)
  %cmp11.not.i.i = icmp ugt i8 %123, %conv.i
  br i1 %cmp11.not.i.i, label %if.end5.i.i.cleanup_crit_edge, label %land.lhs.true.i.i

if.end5.i.i.cleanup_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.end5.i.i
  %max_drv.i.i = getelementptr %struct.mtk_drv_group_desc, ptr %121, i32 %conv.i142.i, i32 1
  %124 = ptrtoint ptr %max_drv.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %max_drv.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %125, i8 %conv.i)
  %cmp15.not.i.i = icmp ult i8 %125, %conv.i
  br i1 %cmp15.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true17.i.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true17.i.i:                              ; preds = %land.lhs.true.i.i
  %step.i.i = getelementptr %struct.mtk_drv_group_desc, ptr %121, i32 %conv.i142.i, i32 4
  %126 = ptrtoint ptr %step.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %step.i.i, align 1
  %conv.i.frozen = freeze i8 %conv.i
  %.frozen = freeze i8 %127
  %div71.i.i = udiv i8 %conv.i.frozen, %.frozen
  %128 = mul i8 %div71.i.i, %.frozen
  %rem70.i.i.decomposed = sub i8 %conv.i.frozen, %128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rem70.i.i.decomposed)
  %tobool20.not.i.i = icmp eq i8 %rem70.i.i.decomposed, 0
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %land.lhs.true17.i.i.cleanup_crit_edge

land.lhs.true17.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21.i.i:                                    ; preds = %land.lhs.true17.i.i
  %div.zext.i.i = zext i8 %div71.i.i to i32
  %sub.i.i = add nsw i32 %div.zext.i.i, -1
  %high_bit.i.i = getelementptr %struct.mtk_drv_group_desc, ptr %121, i32 %conv.i142.i, i32 3
  %129 = ptrtoint ptr %high_bit.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %high_bit.i.i, align 1
  %conv25.i.i = zext i8 %130 to i32
  %low_bit.i.i = getelementptr %struct.mtk_drv_group_desc, ptr %121, i32 %conv.i142.i, i32 2
  %131 = ptrtoint ptr %low_bit.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %low_bit.i.i, align 1
  %conv26.i.i = zext i8 %132 to i32
  %sub27.i.i = add nuw nsw i32 %conv25.i.i, 1
  %add.i143.i = sub nsw i32 %sub27.i.i, %conv26.i.i
  %notmask.i.i = shl nsw i32 -1, %add.i143.i
  %sub28.i.i = xor i32 %notmask.i.i, -1
  %bit.i.i = getelementptr %struct.mtk_pin_drv_grp, ptr %113, i32 %i.011.i.i.i, i32 2
  %133 = ptrtoint ptr %bit.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %bit.i.i, align 2
  %conv29.i.i = zext i8 %134 to i32
  %add32.i.i = add nuw nsw i32 %conv29.i.i, %conv26.i.i
  %shl33.i.i = shl i32 %sub28.i.i, %add32.i.i
  %shl34.i.i = shl i32 %sub.i.i, %add32.i.i
  %type1_start.i.i144.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %107, i32 0, i32 19
  %135 = ptrtoint ptr %type1_start.i.i144.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %type1_start.i.i144.i, align 4
  %conv.i67.i.i = zext i16 %136 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i67.i.i)
  %cmp.not.i.i145.i = icmp ult i32 %3, %conv.i67.i.i
  br i1 %cmp.not.i.i145.i, label %if.then21.i.i.mtk_get_regmap.exit.i.i_crit_edge, label %land.lhs.true.i.i151.i

if.then21.i.i.mtk_get_regmap.exit.i.i_crit_edge:  ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit.i.i

land.lhs.true.i.i151.i:                           ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i.i146.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %107, i32 0, i32 20
  %137 = ptrtoint ptr %type1_end.i.i146.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %type1_end.i.i146.i, align 2
  %conv3.i.i147.i = zext i16 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv3.i.i147.i)
  %cmp4.i.i148.i = icmp ult i32 %3, %conv3.i.i147.i
  %regmap2.i.i149.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 1
  %spec.select.i.i150.i = select i1 %cmp4.i.i148.i, ptr %regmap2.i.i149.i, ptr %call.i
  br label %mtk_get_regmap.exit.i.i

mtk_get_regmap.exit.i.i:                          ; preds = %land.lhs.true.i.i151.i, %if.then21.i.i.mtk_get_regmap.exit.i.i_crit_edge
  %retval.0.in.i.i152.i = phi ptr [ %call.i, %if.then21.i.i.mtk_get_regmap.exit.i.i_crit_edge ], [ %spec.select.i.i150.i, %land.lhs.true.i.i151.i ]
  %139 = ptrtoint ptr %retval.0.in.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %retval.0.i.i153.i = load ptr, ptr %retval.0.in.i.i152.i, align 4
  %offset.i.i = getelementptr %struct.mtk_pin_drv_grp, ptr %113, i32 %i.011.i.i.i, i32 1
  %140 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %offset.i.i, align 2
  %conv36.i.i = zext i16 %141 to i32
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %retval.0.i.i153.i, i32 noundef %conv36.i.i, i32 noundef %shl33.i.i, i32 noundef %shl34.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %mtk_pconf_parse_conf.exit

mtk_pconf_parse_conf.exit:                        ; preds = %mtk_get_regmap.exit.i.i, %mtk_pmx_gpio_set_direction.exit138.i, %mtk_pmx_gpio_set_direction.exit.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call13.i, %mtk_pmx_gpio_set_direction.exit138.i ], [ %call8.i, %mtk_pmx_gpio_set_direction.exit.i ], [ %call5.i, %sw.bb4.i ], [ %call3.i, %sw.bb2.i ], [ %call1.i, %sw.bb.i ], [ %call.i.i.i, %mtk_get_regmap.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp6 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp6, label %mtk_pconf_parse_conf.exit.cleanup_crit_edge, label %mtk_pconf_parse_conf.exit.if.end_crit_edge

mtk_pconf_parse_conf.exit.if.end_crit_edge:       ; preds = %mtk_pconf_parse_conf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mtk_pconf_parse_conf.exit.cleanup_crit_edge:      ; preds = %mtk_pconf_parse_conf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mtk_pconf_parse_conf.exit.if.end_crit_edge, %mtk_pconf_parse_conf.exit.thread22
  %142 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx1, align 4
  %144 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %config, align 4
  %inc = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %mtk_pconf_parse_conf.exit.cleanup_crit_edge, %land.lhs.true17.i.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end5.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %mtk_find_pin_drv_grp_by_pin.exit.i.i.cleanup_crit_edge, %for.cond.i.i.i.cleanup_crit_edge, %if.end.i139.i.cleanup_crit_edge, %sw.bb14.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %for.cond.i.i.i.cleanup_crit_edge ], [ %ret.0.i, %mtk_pconf_parse_conf.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %sw.bb14.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %mtk_find_pin_drv_grp_by_pin.exit.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true17.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.i.cleanup_crit_edge ], [ -22, %if.end5.i.i.cleanup_crit_edge ], [ -22, %if.end.i139.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_pconf_set_pull_select(ptr nocapture noundef readonly %pctl, i32 noundef %pin, i1 noundef zeroext %enable, i1 noundef zeroext %isup, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 9
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %spec_pull_set = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %spec_pull_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec_pull_set, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %spec.select = select i1 %enable, i32 %arg, i32 100
  %type1_start.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %type1_start.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type1_start.i, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %pin)
  %cmp.not.i = icmp ugt i32 %conv.i, %pin
  br i1 %cmp.not.i, label %if.then.mtk_get_regmap.exit_crit_edge, label %land.lhs.true.i

if.then.mtk_get_regmap.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %type1_end.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type1_end.i, align 2
  %conv3.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %pin)
  %cmp4.i = icmp ugt i32 %conv3.i, %pin
  %regmap2.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 1
  %spec.select.i = select i1 %cmp4.i, ptr %regmap2.i, ptr %pctl
  br label %mtk_get_regmap.exit

mtk_get_regmap.exit:                              ; preds = %land.lhs.true.i, %if.then.mtk_get_regmap.exit_crit_edge
  %retval.0.in.i = phi ptr [ %pctl, %if.then.mtk_get_regmap.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %8 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %port_align = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %port_align to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_align, align 2
  %call7 = tail call i32 %3(ptr noundef %retval.0.i, i32 noundef %pin, i8 noundef zeroext %10, i1 noundef zeroext %isup, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %mtk_get_regmap.exit.cleanup_crit_edge, label %mtk_get_regmap.exit.if.end10_crit_edge

mtk_get_regmap.exit.if.end10_crit_edge:           ; preds = %mtk_get_regmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

mtk_get_regmap.exit.cleanup_crit_edge:            ; preds = %mtk_get_regmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %mtk_get_regmap.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %arg)
  %switch = icmp ult i32 %arg, 2
  br i1 %switch, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef %arg, i32 noundef %pin) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devdata, align 4
  %mode_mask = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode_mask, align 4
  %and = and i32 %16, %pin
  %shl = shl nuw i32 1, %and
  %mode_shf.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 28
  %17 = ptrtoint ptr %mode_shf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode_shf.i, align 4
  %shr.i = lshr i32 %pin, %18
  %port_mask.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 22
  %19 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_mask.i, align 1
  %conv.i95 = zext i8 %20 to i32
  %and.i = and i32 %shr.i, %conv.i95
  %port_shf.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 21
  %21 = ptrtoint ptr %port_shf.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port_shf.i, align 4
  %conv3.i96 = zext i8 %22 to i32
  %shl.i = shl i32 %and.i, %conv3.i96
  %pullen_offset = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 13
  %23 = ptrtoint ptr %pullen_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pullen_offset, align 4
  %add = add i32 %shl.i, %24
  %port_align20 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 23
  %25 = ptrtoint ptr %port_align20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port_align20, align 2
  %conv = zext i8 %26 to i32
  %not.enable = xor i1 %enable, true
  %shl29 = zext i1 %not.enable to i32
  %shl29.sink = shl nuw nsw i32 %conv, %shl29
  %add30 = add i32 %add, %shl29.sink
  %mode_shf.i107 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 28
  %27 = ptrtoint ptr %mode_shf.i107 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode_shf.i107, align 4
  %shr.i108 = lshr i32 %pin, %28
  %port_mask.i109 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 22
  %29 = ptrtoint ptr %port_mask.i109 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port_mask.i109, align 1
  %conv.i110 = zext i8 %30 to i32
  %and.i111 = and i32 %shr.i108, %conv.i110
  %port_shf.i112 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 21
  %31 = ptrtoint ptr %port_shf.i112 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port_shf.i112, align 4
  %conv3.i113 = zext i8 %32 to i32
  %shl.i114 = shl i32 %and.i111, %conv3.i113
  %pullsel_offset = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 14
  %33 = ptrtoint ptr %pullsel_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pullsel_offset, align 4
  %add36 = add i32 %shl.i114, %34
  %port_align38 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 23
  %35 = ptrtoint ptr %port_align38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port_align38, align 2
  %conv39 = zext i8 %36 to i32
  %not.isup = xor i1 %isup, true
  %shl49 = zext i1 %not.isup to i32
  %shl49.sink = shl nuw nsw i32 %conv39, %shl49
  %add50 = add i32 %add36, %shl49.sink
  %type1_start.i125 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 19
  %37 = ptrtoint ptr %type1_start.i125 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %type1_start.i125, align 4
  %conv.i126 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i126, i32 %pin)
  %cmp.not.i127 = icmp ugt i32 %conv.i126, %pin
  br i1 %cmp.not.i127, label %if.end13.mtk_get_regmap.exit136_crit_edge, label %land.lhs.true.i133

if.end13.mtk_get_regmap.exit136_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit136

land.lhs.true.i133:                               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i128 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 20
  %39 = ptrtoint ptr %type1_end.i128 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %type1_end.i128, align 2
  %conv3.i129 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i129, i32 %pin)
  %cmp4.i130 = icmp ugt i32 %conv3.i129, %pin
  %regmap2.i131 = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 1
  %spec.select.i132 = select i1 %cmp4.i130, ptr %regmap2.i131, ptr %pctl
  br label %mtk_get_regmap.exit136

mtk_get_regmap.exit136:                           ; preds = %land.lhs.true.i133, %if.end13.mtk_get_regmap.exit136_crit_edge
  %retval.0.in.i134 = phi ptr [ %pctl, %if.end13.mtk_get_regmap.exit136_crit_edge ], [ %spec.select.i132, %land.lhs.true.i133 ]
  %41 = ptrtoint ptr %retval.0.in.i134 to i32
  call void @__asan_load4_noabort(i32 %41)
  %retval.0.i135 = load ptr, ptr %retval.0.in.i134, align 4
  %call53 = tail call i32 @regmap_write(ptr noundef %retval.0.i135, i32 noundef %add30, i32 noundef %shl) #8
  %42 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %devdata, align 4
  %type1_start.i138 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %type1_start.i138 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %type1_start.i138, align 4
  %conv.i139 = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i139, i32 %pin)
  %cmp.not.i140 = icmp ugt i32 %conv.i139, %pin
  br i1 %cmp.not.i140, label %mtk_get_regmap.exit136.mtk_get_regmap.exit149_crit_edge, label %land.lhs.true.i146

mtk_get_regmap.exit136.mtk_get_regmap.exit149_crit_edge: ; preds = %mtk_get_regmap.exit136
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit149

land.lhs.true.i146:                               ; preds = %mtk_get_regmap.exit136
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i141 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %43, i32 0, i32 20
  %46 = ptrtoint ptr %type1_end.i141 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %type1_end.i141, align 2
  %conv3.i142 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i142, i32 %pin)
  %cmp4.i143 = icmp ugt i32 %conv3.i142, %pin
  %regmap2.i144 = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 1
  %spec.select.i145 = select i1 %cmp4.i143, ptr %regmap2.i144, ptr %pctl
  br label %mtk_get_regmap.exit149

mtk_get_regmap.exit149:                           ; preds = %land.lhs.true.i146, %mtk_get_regmap.exit136.mtk_get_regmap.exit149_crit_edge
  %retval.0.in.i147 = phi ptr [ %pctl, %mtk_get_regmap.exit136.mtk_get_regmap.exit149_crit_edge ], [ %spec.select.i145, %land.lhs.true.i146 ]
  %48 = ptrtoint ptr %retval.0.in.i147 to i32
  call void @__asan_load4_noabort(i32 %48)
  %retval.0.i148 = load ptr, ptr %retval.0.in.i147, align 4
  %call55 = tail call i32 @regmap_write(ptr noundef %retval.0.i148, i32 noundef %add50, i32 noundef %shl) #8
  br label %cleanup

cleanup:                                          ; preds = %mtk_get_regmap.exit149, %do.end, %mtk_get_regmap.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %mtk_get_regmap.exit149 ], [ 0, %mtk_get_regmap.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pmx_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #0 align 64 {
entry:
  %reg_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_addr) #8
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata.i, align 4
  %mode_shf.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %mode_shf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_shf.i, align 4
  %shr.i = lshr i32 %offset, %3
  %port_mask.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_mask.i, align 1
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %shr.i, %conv.i
  %port_shf.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %port_shf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_shf.i, align 4
  %conv3.i = zext i8 %7 to i32
  %shl.i = shl i32 %and.i, %conv3.i
  %dir_offset = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %dir_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir_offset, align 4
  %add = add i32 %shl.i, %9
  %10 = ptrtoint ptr %reg_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %reg_addr, align 4
  %mode_mask = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode_mask, align 4
  %spec_dir_set = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %spec_dir_set to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spec_dir_set, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void %14(ptr noundef nonnull %reg_addr, i32 noundef %offset) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %reg_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_addr, align 4
  %17 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %devdata.i, align 4
  %port_align = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %port_align to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_align, align 2
  %conv = zext i8 %20 to i32
  %shl9 = zext i1 %input to i32
  %storemerge.v = shl nuw nsw i32 %conv, %shl9
  %storemerge = add i32 %16, %storemerge.v
  store i32 %storemerge, ptr %reg_addr, align 4
  %21 = load ptr, ptr %devdata.i, align 4
  %type1_start.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %type1_start.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %type1_start.i, align 4
  %conv.i29 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i29, i32 %offset)
  %cmp.not.i = icmp ugt i32 %conv.i29, %offset
  br i1 %cmp.not.i, label %if.end.mtk_get_regmap.exit_crit_edge, label %land.lhs.true.i

if.end.mtk_get_regmap.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %21, i32 0, i32 20
  %24 = ptrtoint ptr %type1_end.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %type1_end.i, align 2
  %conv3.i30 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i30, i32 %offset)
  %cmp4.i = icmp ugt i32 %conv3.i30, %offset
  %regmap2.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 1
  %spec.select.i = select i1 %cmp4.i, ptr %regmap2.i, ptr %call
  br label %mtk_get_regmap.exit

mtk_get_regmap.exit:                              ; preds = %land.lhs.true.i, %if.end.mtk_get_regmap.exit_crit_edge
  %retval.0.in.i = phi ptr [ %call, %if.end.mtk_get_regmap.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %and = and i32 %12, %offset
  %shl = shl nuw i32 1, %and
  %26 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %call17 = call i32 @regmap_write(ptr noundef %retval.0.i, i32 noundef %storemerge, i32 noundef %shl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_addr) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_pconf_set_ies_smt(ptr nocapture noundef readonly %pctl, i32 noundef %pin, i32 noundef %value, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 9
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %spec_ies_smt_set = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %spec_ies_smt_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec_ies_smt_set, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then17

land.lhs.true:                                    ; preds = %entry
  %ies_offset = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %ies_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ies_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp = icmp eq i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %arg)
  %cmp3 = icmp eq i32 %arg, 12
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true7:                                   ; preds = %land.lhs.true
  %smt_offset = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %smt_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smt_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %cmp9 = icmp eq i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %arg)
  %cmp11 = icmp eq i32 %arg, 14
  %or.cond75 = and i1 %cmp11, %cmp9
  br i1 %or.cond75, label %land.lhs.true7.cleanup_crit_edge, label %if.end22

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %entry
  %type1_start.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %type1_start.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %type1_start.i, align 4
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %pin)
  %cmp.not.i = icmp ugt i32 %conv.i, %pin
  br i1 %cmp.not.i, label %if.then17.mtk_get_regmap.exit_crit_edge, label %land.lhs.true.i

if.then17.mtk_get_regmap.exit_crit_edge:          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit

land.lhs.true.i:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %type1_end.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %type1_end.i, align 2
  %conv3.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %pin)
  %cmp4.i = icmp ugt i32 %conv3.i, %pin
  %regmap2.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 1
  %spec.select.i = select i1 %cmp4.i, ptr %regmap2.i, ptr %pctl
  br label %mtk_get_regmap.exit

mtk_get_regmap.exit:                              ; preds = %land.lhs.true.i, %if.then17.mtk_get_regmap.exit_crit_edge
  %retval.0.in.i = phi ptr [ %pctl, %if.then17.mtk_get_regmap.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %12 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %port_align = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %port_align to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_align, align 2
  %call21 = tail call i32 %3(ptr noundef %retval.0.i, i32 noundef %pin, i8 noundef zeroext %14, i32 noundef %value, i32 noundef %arg) #8
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true7
  %offset.0.in = select i1 %cmp3, ptr %ies_offset, ptr %smt_offset
  %15 = ptrtoint ptr %offset.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %offset.0 = load i32, ptr %offset.0.in, align 4
  %mode_mask = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode_mask, align 4
  %and = and i32 %17, %offset.0
  %shl = shl nuw i32 1, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool31.not = icmp eq i32 %value, 0
  %mode_shf.i80 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 28
  %18 = ptrtoint ptr %mode_shf.i80 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode_shf.i80, align 4
  %shr.i81 = lshr i32 %pin, %19
  %port_mask.i82 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 22
  %20 = ptrtoint ptr %port_mask.i82 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_mask.i82, align 1
  %conv.i83 = zext i8 %21 to i32
  %and.i84 = and i32 %shr.i81, %conv.i83
  %port_shf.i85 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 21
  %22 = ptrtoint ptr %port_shf.i85 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_shf.i85, align 4
  %conv3.i86 = zext i8 %23 to i32
  %shl.i87 = shl i32 %and.i84, %conv3.i86
  %add39 = add i32 %shl.i87, %offset.0
  %port_align41 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 23
  %24 = ptrtoint ptr %port_align41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port_align41, align 2
  %conv42 = zext i8 %25 to i32
  %shl43 = zext i1 %tobool31.not to i32
  %shl43.sink = shl nuw nsw i32 %conv42, %shl43
  %add44 = add i32 %add39, %shl43.sink
  %type1_start.i89 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 19
  %26 = ptrtoint ptr %type1_start.i89 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %type1_start.i89, align 4
  %conv.i90 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i90, i32 %pin)
  %cmp.not.i91 = icmp ugt i32 %conv.i90, %pin
  br i1 %cmp.not.i91, label %if.end22.mtk_get_regmap.exit100_crit_edge, label %land.lhs.true.i97

if.end22.mtk_get_regmap.exit100_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit100

land.lhs.true.i97:                                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i92 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %type1_end.i92 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %type1_end.i92, align 2
  %conv3.i93 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i93, i32 %pin)
  %cmp4.i94 = icmp ugt i32 %conv3.i93, %pin
  %regmap2.i95 = getelementptr inbounds %struct.mtk_pinctrl, ptr %pctl, i32 0, i32 1
  %spec.select.i96 = select i1 %cmp4.i94, ptr %regmap2.i95, ptr %pctl
  br label %mtk_get_regmap.exit100

mtk_get_regmap.exit100:                           ; preds = %land.lhs.true.i97, %if.end22.mtk_get_regmap.exit100_crit_edge
  %retval.0.in.i98 = phi ptr [ %pctl, %if.end22.mtk_get_regmap.exit100_crit_edge ], [ %spec.select.i96, %land.lhs.true.i97 ]
  %30 = ptrtoint ptr %retval.0.in.i98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %retval.0.i99 = load ptr, ptr %retval.0.in.i98, align 4
  %call47 = tail call i32 @regmap_write(ptr noundef %retval.0.i99, i32 noundef %add44, i32 noundef %shl) #8
  br label %cleanup

cleanup:                                          ; preds = %mtk_get_regmap.exit100, %mtk_get_regmap.exit, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %mtk_get_regmap.exit ], [ 0, %mtk_get_regmap.exit100 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata.i, align 4
  %mode_shf.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %mode_shf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_shf.i, align 4
  %port_mask.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_mask.i, align 1
  %port_shf.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %port_shf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_shf.i, align 4
  %dout_offset = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %dout_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dout_offset, align 4
  %mode_mask = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_mask, align 4
  %port_align6 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %port_align6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_align6, align 2
  %type1_start.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %type1_start.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type1_start.i, align 4
  %conv.i22 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i22, i32 %offset)
  %cmp.not.i = icmp ugt i32 %conv.i22, %offset
  br i1 %cmp.not.i, label %entry.mtk_get_regmap.exit_crit_edge, label %land.lhs.true.i

entry.mtk_get_regmap.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %type1_end.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type1_end.i, align 2
  %conv3.i23 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i23, i32 %offset)
  %cmp4.i = icmp ugt i32 %conv3.i23, %offset
  %regmap2.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 1
  %spec.select.i = select i1 %cmp4.i, ptr %regmap2.i, ptr %call
  br label %mtk_get_regmap.exit

mtk_get_regmap.exit:                              ; preds = %land.lhs.true.i, %entry.mtk_get_regmap.exit_crit_edge
  %retval.0.in.i = phi ptr [ %call, %entry.mtk_get_regmap.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %conv7 = zext i8 %13 to i32
  %shl8 = zext i1 %tobool.not to i32
  %conv.pn = shl nuw nsw i32 %conv7, %shl8
  %and = and i32 %11, %offset
  %shl = shl nuw i32 1, %and
  %shr.i = lshr i32 %offset, %3
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %shr.i, %conv.i
  %conv3.i = zext i8 %7 to i32
  %shl.i = shl i32 %and.i, %conv3.i
  %add = add i32 %shl.i, %9
  %reg_addr.0 = add i32 %add, %conv.pn
  %18 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %retval.0.i, i32 noundef %reg_addr.0, i32 noundef %shl) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pctrl_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %ngroups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_pctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.mtk_pinctrl_group, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.mtk_pinctrl_group, ptr %1, i32 %group, i32 2
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pin, ptr %pins, align 4
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pctrl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #0 align 64 {
entry:
  %pinfunc.i = alloca i32, align 4
  %configs.i = alloca ptr, align 4
  %num_configs.i = alloca i32, align 4
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #8
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %map, align 4
  %1 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_maps, align 4
  %2 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserved_maps, align 4
  %call = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #8
  %cmp.not41 = icmp eq ptr %call, null
  br i1 %cmp.not41, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.042 = phi ptr [ %call3, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pinfunc.i) #8
  %3 = ptrtoint ptr %pinfunc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pinfunc.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs.i) #8
  %4 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %configs.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs.i) #8
  %5 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %num_configs.i, align 4, !annotation !122
  %call.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %call1.i = call ptr @of_find_property(ptr noundef nonnull %np.042, ptr noundef nonnull @.str.18, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %mtk_pctrl_dt_subnode_to_map.exit.thread, label %if.end.i

mtk_pctrl_dt_subnode_to_map.exit.thread:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, ptr noundef nonnull %np.042) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinfunc.i) #8
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %call2.i = call i32 @pinconf_generic_parse_dt_config(ptr noundef nonnull %np.042, ptr noundef %pctldev, ptr noundef nonnull %configs.i, ptr noundef nonnull %num_configs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.mtk_pctrl_dt_subnode_to_map.exit_crit_edge

if.end.i.mtk_pctrl_dt_subnode_to_map.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pctrl_dt_subnode_to_map.exit

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_configs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i = icmp eq i32 %9, 0
  %length.i = getelementptr inbounds %struct.property, ptr %call1.i, i32 0, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  %div112.i = lshr i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %tobool9.not.i = icmp ult i32 %11, 4
  br i1 %tobool9.not.i, label %if.end5.i.exit.i_crit_edge, label %if.end19.i

if.end5.i.exit.i_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end19.i:                                       ; preds = %if.end5.i
  %maps_per_pin.1.i = select i1 %tobool6.not.i, i32 1, i32 2
  %mul.i = mul nuw nsw i32 %maps_per_pin.1.i, %div112.i
  %call20.i = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %mul.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.end19.i.exit.i_crit_edge, label %for.body.lr.ph.i

if.end19.i.exit.i_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 9
  %ngroups.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 6
  %groups.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 5
  %smax.i = call i32 @llvm.smax.i32(i32 %div112.i, i32 1) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0138.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc57.i, %for.inc.i.for.body.i_crit_edge ]
  %call25.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %np.042, ptr noundef nonnull @.str.18, i32 noundef %i.0138.i, ptr noundef nonnull %pinfunc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %for.body.i.exit.i_crit_edge

for.body.i.exit.i_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end28.i:                                       ; preds = %for.body.i
  %12 = ptrtoint ptr %pinfunc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pinfunc.i, align 4
  %shr.i = lshr i32 %13, 8
  %and.i = and i32 %13, 15
  %14 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devdata.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %17)
  %cmp29.not.i = icmp ult i32 %shr.i, %17
  br i1 %cmp29.not.i, label %if.end37.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev36.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %dev36.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev36.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.22) #11
  br label %exit.i

if.end37.i:                                       ; preds = %if.end28.i
  %20 = ptrtoint ptr %ngroups.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ngroups.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp10.not.i.i, label %if.end37.i.do.end43.i_crit_edge, label %for.body.lr.ph.i.i

if.end37.i.do.end43.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43.i

for.body.lr.ph.i.i:                               ; preds = %if.end37.i
  %22 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %groups.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %pin1.i.i = getelementptr %struct.mtk_pinctrl_group, ptr %23, i32 %i.011.i.i, i32 2
  %24 = ptrtoint ptr %pin1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pin1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %shr.i)
  %cmp2.i.i = icmp eq i32 %25, %shr.i
  br i1 %cmp2.i.i, label %mtk_pctrl_find_group_by_pin.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %21
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end43.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end43.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43.i

mtk_pctrl_find_group_by_pin.exit.i:               ; preds = %for.body.i.i
  %add.ptr.le.i.i = getelementptr %struct.mtk_pinctrl_group, ptr %23, i32 %i.011.i.i
  %tobool39.not.i = icmp eq ptr %add.ptr.le.i.i, null
  br i1 %tobool39.not.i, label %mtk_pctrl_find_group_by_pin.exit.i.do.end43.i_crit_edge, label %if.end45.i

mtk_pctrl_find_group_by_pin.exit.i.do.end43.i_crit_edge: ; preds = %mtk_pctrl_find_group_by_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43.i

do.end43.i:                                       ; preds = %mtk_pctrl_find_group_by_pin.exit.i.do.end43.i_crit_edge, %for.inc.i.i.do.end43.i_crit_edge, %if.end37.i.do.end43.i_crit_edge
  %dev44.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %dev44.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev44.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.25, i32 noundef %shr.i) #11
  br label %exit.i

if.end45.i:                                       ; preds = %mtk_pctrl_find_group_by_pin.exit.i
  %28 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_maps, align 4
  %30 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reserved_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i.i = icmp eq i32 %29, %31
  br i1 %cmp.i.i, label %if.end45.i.exit.i_crit_edge, label %if.end.i.i

if.end45.i.exit.i_crit_edge:                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end.i.i:                                       ; preds = %if.end45.i
  %32 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map, align 4
  %type.i.i = getelementptr %struct.pinctrl_map, ptr %33, i32 %29, i32 2
  %34 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %type.i.i, align 4
  %35 = ptrtoint ptr %add.ptr.le.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.le.i.i, align 4
  %37 = load ptr, ptr %map, align 4
  %38 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_maps, align 4
  %data.i.i = getelementptr %struct.pinctrl_map, ptr %37, i32 %39, i32 4
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %36, ptr %data.i.i, align 4
  %41 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %devdata.i, align 4
  %npins.i.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %npins.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %npins.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp23.not.i.i.i = icmp eq i32 %44, 0
  br i1 %cmp23.not.i.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.024.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.mtk_desc_pin, ptr %46, i32 %i.024.i.i.i
  %47 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %shr.i)
  %cmp3.i.i.i = icmp eq i32 %48, %shr.i
  br i1 %cmp3.i.i.i, label %if.then.i.i.i, label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %functions.i.i.i = getelementptr %struct.mtk_desc_pin, ptr %46, i32 %i.024.i.i.i, i32 2
  %49 = ptrtoint ptr %functions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %functions.i.i.i, align 4
  %tobool.not25.i.i.i = icmp eq ptr %50, null
  br i1 %tobool.not25.i.i.i, label %if.then.i.i.i.do.end.i.i_crit_edge, label %if.then.i.i.i.land.rhs.i.i.i_crit_edge

if.then.i.i.i.land.rhs.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  br label %land.rhs.i.i.i

if.then.i.i.i.do.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.mtk_desc_function, ptr %func.026.i.i.i, i32 1
  %tobool.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.do.end.i.i_crit_edge, label %while.cond.i.i.i.land.rhs.i.i.i_crit_edge

while.cond.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i.i

while.cond.i.i.i.do.end.i.i_crit_edge:            ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

land.rhs.i.i.i:                                   ; preds = %while.cond.i.i.i.land.rhs.i.i.i_crit_edge, %if.then.i.i.i.land.rhs.i.i.i_crit_edge
  %func.026.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.cond.i.i.i.land.rhs.i.i.i_crit_edge ], [ %50, %if.then.i.i.i.land.rhs.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %func.026.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %func.026.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i.i.i, label %land.rhs.i.i.i.do.end.i.i_crit_edge, label %while.body.i.i.i

land.rhs.i.i.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %muxval.i.i.i = getelementptr inbounds %struct.mtk_desc_function, ptr %func.026.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %muxval.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %muxval.i.i.i, align 4
  %conv.i.i.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv.i.i.i)
  %cmp5.i.i.i = icmp eq i32 %and.i, %conv.i.i.i
  br i1 %cmp5.i.i.i, label %if.end49.i, label %while.cond.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.024.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %44
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i.i.do.end.i.i_crit_edge, %land.rhs.i.i.i.do.end.i.i_crit_edge, %while.cond.i.i.i.do.end.i.i_crit_edge, %if.then.i.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %55 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.27, i32 noundef %and.i, i32 noundef %shr.i) #11
  br label %exit.i

if.end49.i:                                       ; preds = %while.body.i.i.i
  %arrayidx4.i.i = getelementptr [16 x ptr], ptr @mtk_gpio_functions, i32 0, i32 %and.i
  %57 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx4.i.i, align 4
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map, align 4
  %61 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_maps, align 4
  %function.i.i = getelementptr %struct.pinctrl_map, ptr %60, i32 %62, i32 4, i32 0, i32 1
  %63 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %58, ptr %function.i.i, align 4
  %64 = load i32, ptr %num_maps, align 4
  %inc.i114.i = add i32 %64, 1
  store i32 %inc.i114.i, ptr %num_maps, align 4
  br i1 %tobool6.not.i, label %if.end49.i.for.inc.i_crit_edge, label %if.then51.i

if.end49.i.for.inc.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then51.i:                                      ; preds = %if.end49.i
  %65 = ptrtoint ptr %add.ptr.le.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.le.i.i, align 4
  %67 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %configs.i, align 4
  %69 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_configs.i, align 4
  %call52.i = call i32 @pinctrl_utils_add_map_configs(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef %66, ptr noundef %68, i32 noundef %70, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %if.then51.i.exit.i_crit_edge, label %if.then51.i.for.inc.i_crit_edge

if.then51.i.for.inc.i_crit_edge:                  ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then51.i.exit.i_crit_edge:                     ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

for.inc.i:                                        ; preds = %if.then51.i.for.inc.i_crit_edge, %if.end49.i.for.inc.i_crit_edge
  %inc57.i = add nuw nsw i32 %i.0138.i, 1
  %exitcond.not.i = icmp eq i32 %inc57.i, %smax.i
  br i1 %exitcond.not.i, label %for.inc.i.exit.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.exit.i_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

exit.i:                                           ; preds = %for.inc.i.exit.i_crit_edge, %if.then51.i.exit.i_crit_edge, %do.end.i.i, %if.end45.i.exit.i_crit_edge, %do.end43.i, %do.end35.i, %for.body.i.exit.i_crit_edge, %if.end19.i.exit.i_crit_edge, %if.end5.i.exit.i_crit_edge
  %err.0.i = phi i32 [ %call20.i, %if.end19.i.exit.i_crit_edge ], [ -22, %do.end35.i ], [ -22, %do.end43.i ], [ -22, %if.end5.i.exit.i_crit_edge ], [ -22, %do.end.i.i ], [ -28, %if.end45.i.exit.i_crit_edge ], [ 0, %for.inc.i.exit.i_crit_edge ], [ %call52.i, %if.then51.i.exit.i_crit_edge ], [ %call25.i, %for.body.i.exit.i_crit_edge ]
  %71 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %configs.i, align 4
  call void @kfree(ptr noundef %72) #8
  br label %mtk_pctrl_dt_subnode_to_map.exit

mtk_pctrl_dt_subnode_to_map.exit:                 ; preds = %exit.i, %if.end.i.mtk_pctrl_dt_subnode_to_map.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %exit.i ], [ %call2.i, %if.end.i.mtk_pctrl_dt_subnode_to_map.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinfunc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %mtk_pctrl_dt_subnode_to_map.exit.if.then_crit_edge, label %for.inc

mtk_pctrl_dt_subnode_to_map.exit.if.then_crit_edge: ; preds = %mtk_pctrl_dt_subnode_to_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %mtk_pctrl_dt_subnode_to_map.exit.if.then_crit_edge, %mtk_pctrl_dt_subnode_to_map.exit.thread
  %retval.0.i18 = phi i32 [ -22, %mtk_pctrl_dt_subnode_to_map.exit.thread ], [ %retval.0.i, %mtk_pctrl_dt_subnode_to_map.exit.if.then_crit_edge ]
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 4
  %75 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_maps, align 4
  call void @pinctrl_utils_free_map(ptr noundef %pctldev, ptr noundef %74, i32 noundef %76) #8
  call void @of_node_put(ptr noundef nonnull %np.042) #8
  br label %cleanup

for.inc:                                          ; preds = %mtk_pctrl_dt_subnode_to_map.exit
  %call3 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %np.042) #8
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i18, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_pmx_get_funcs_cnt(ptr nocapture noundef readnone %pctldev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mtk_pmx_get_func_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [16 x ptr], ptr @mtk_gpio_functions, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pmx_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %grp_names = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %grp_names to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grp_names, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %ngroups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ngroups, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pmx_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.mtk_pinctrl_group, ptr %1, i32 %group, i32 2
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin, align 4
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devdata.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23.not.i = icmp eq i32 %7, 0
  br i1 %cmp23.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.mtk_desc_pin, ptr %9, i32 %i.024.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp3.i = icmp eq i32 %11, %3
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %functions.i = getelementptr %struct.mtk_desc_pin, ptr %9, i32 %i.024.i, i32 2
  %12 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %functions.i, align 4
  %tobool.not25.i = icmp eq ptr %13, null
  br i1 %tobool.not25.i, label %if.then.i.do.end_crit_edge, label %if.then.i.land.rhs.i_crit_edge

if.then.i.land.rhs.i_crit_edge:                   ; preds = %if.then.i
  br label %land.rhs.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.mtk_desc_function, ptr %func.026.i, i32 1
  %tobool.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i, label %while.cond.i.do.end_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.cond.i.do.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %if.then.i.land.rhs.i_crit_edge
  %func.026.i = phi ptr [ %incdec.ptr.i, %while.cond.i.land.rhs.i_crit_edge ], [ %13, %if.then.i.land.rhs.i_crit_edge ]
  %14 = ptrtoint ptr %func.026.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func.026.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %land.rhs.i.do.end_crit_edge, label %while.body.i

land.rhs.i.do.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.body.i:                                     ; preds = %land.rhs.i
  %muxval.i = getelementptr inbounds %struct.mtk_desc_function, ptr %func.026.i, i32 0, i32 1
  %16 = ptrtoint ptr %muxval.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %muxval.i, align 4
  %conv.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %function)
  %cmp5.i = icmp eq i32 %conv.i, %function
  br i1 %cmp5.i, label %if.end, label %while.cond.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %land.rhs.i.do.end_crit_edge, %while.cond.i.do.end_crit_edge, %if.then.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.45, i32 noundef %function, i32 noundef %group) #11
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %functions.i23 = getelementptr %struct.mtk_desc_pin, ptr %21, i32 %3, i32 2
  %22 = ptrtoint ptr %functions.i23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %functions.i23, align 4
  %tobool.not8.i = icmp eq ptr %23, null
  br i1 %tobool.not8.i, label %if.end.cleanup_crit_edge, label %if.end.land.rhs.i24_crit_edge

if.end.land.rhs.i24_crit_edge:                    ; preds = %if.end
  br label %land.rhs.i24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i24:                                     ; preds = %if.end.i.land.rhs.i24_crit_edge, %if.end.land.rhs.i24_crit_edge
  %func.09.i = phi ptr [ %incdec.ptr.i28, %if.end.i.land.rhs.i24_crit_edge ], [ %23, %if.end.land.rhs.i24_crit_edge ]
  %24 = ptrtoint ptr %func.09.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %func.09.i, align 4
  %tobool1.not.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i, label %land.rhs.i24.cleanup_crit_edge, label %while.body.i27

land.rhs.i24.cleanup_crit_edge:                   ; preds = %land.rhs.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i27:                                   ; preds = %land.rhs.i24
  %muxval.i25 = getelementptr inbounds %struct.mtk_desc_function, ptr %func.09.i, i32 0, i32 1
  %26 = ptrtoint ptr %muxval.i25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %muxval.i25, align 4
  %conv.i26 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i26, i32 %function)
  %cmp.i = icmp eq i32 %conv.i26, %function
  br i1 %cmp.i, label %if.end6, label %if.end.i

if.end.i:                                         ; preds = %while.body.i27
  %incdec.ptr.i28 = getelementptr %struct.mtk_desc_function, ptr %func.09.i, i32 1
  %tobool.not.i29 = icmp eq ptr %incdec.ptr.i28, null
  br i1 %tobool.not.i29, label %if.end.i.cleanup_crit_edge, label %if.end.i.land.rhs.i24_crit_edge

if.end.i.land.rhs.i24_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i24

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  %muxval.i25.le = getelementptr inbounds %struct.mtk_desc_function, ptr %func.09.i, i32 0, i32 1
  %28 = ptrtoint ptr %muxval.i25.le to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %muxval.i25.le, align 4
  %conv = zext i8 %29 to i32
  tail call fastcc void @mtk_pmx_set_mode(ptr noundef %pctldev, i32 noundef %3, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.i.cleanup_crit_edge, %land.rhs.i24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.rhs.i24.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pmx_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %functions.i = getelementptr %struct.mtk_desc_pin, ptr %3, i32 %offset, i32 2
  %4 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functions.i, align 4
  %tobool.not10.i = icmp eq ptr %5, null
  br i1 %tobool.not10.i, label %entry.do.end_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %func.011.i = phi ptr [ %incdec.ptr.i, %if.end.i.land.rhs.i_crit_edge ], [ %5, %entry.land.rhs.i_crit_edge ]
  %6 = ptrtoint ptr %func.011.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func.011.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.rhs.i.do.end_crit_edge, label %while.body.i

land.rhs.i.do.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.body.i:                                     ; preds = %land.rhs.i
  %call.i = tail call i32 @strncmp(ptr noundef nonnull %7, ptr noundef nonnull dereferenceable(5) @.str.49, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %mtk_pmx_find_gpio_mode.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.mtk_desc_function, ptr %func.011.i, i32 1
  %tobool.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i, label %if.end.i.do.end_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

mtk_pmx_find_gpio_mode.exit:                      ; preds = %while.body.i
  %muxval.i = getelementptr inbounds %struct.mtk_desc_function, ptr %func.011.i, i32 0, i32 1
  %8 = ptrtoint ptr %muxval.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %muxval.i, align 4
  %conv.i = zext i8 %9 to i32
  tail call fastcc void @mtk_pmx_set_mode(ptr noundef %pctldev, i32 noundef %offset, i32 noundef %conv.i)
  %10 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devdata.i, align 4
  %spec_ies_smt_set.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %spec_ies_smt_set.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec_ies_smt_set.i, align 4
  %tobool.not.i13 = icmp eq ptr %13, null
  br i1 %tobool.not.i13, label %land.lhs.true.i, label %if.then17.i

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %land.rhs.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.47, i32 noundef %offset) #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %mtk_pmx_find_gpio_mode.exit
  %ies_offset.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 11
  %16 = ptrtoint ptr %ies_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ies_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %17)
  %cmp.i = icmp eq i32 %17, 65535
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %mode_mask.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 26
  %18 = ptrtoint ptr %mode_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode_mask.i, align 4
  %and.i = and i32 %19, %17
  %shl.i = shl nuw i32 1, %and.i
  %mode_shf.i80.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 28
  %20 = ptrtoint ptr %mode_shf.i80.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode_shf.i80.i, align 4
  %shr.i81.i = lshr i32 %offset, %21
  %port_mask.i82.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 22
  %22 = ptrtoint ptr %port_mask.i82.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_mask.i82.i, align 1
  %conv.i83.i = zext i8 %23 to i32
  %and.i84.i = and i32 %shr.i81.i, %conv.i83.i
  %port_shf.i85.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 21
  %24 = ptrtoint ptr %port_shf.i85.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port_shf.i85.i, align 4
  %conv3.i86.i = zext i8 %25 to i32
  %shl.i87.i = shl i32 %and.i84.i, %conv3.i86.i
  %add39.i = add i32 %shl.i87.i, %17
  %port_align41.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 23
  %26 = ptrtoint ptr %port_align41.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_align41.i, align 2
  %conv42.i = zext i8 %27 to i32
  %add44.i = add i32 %add39.i, %conv42.i
  %type1_start.i89.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 19
  %28 = ptrtoint ptr %type1_start.i89.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %type1_start.i89.i, align 4
  %conv.i90.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i90.i, i32 %offset)
  %cmp.not.i91.i = icmp ugt i32 %conv.i90.i, %offset
  br i1 %cmp.not.i91.i, label %land.lhs.true7.i.mtk_get_regmap.exit100.i_crit_edge, label %land.lhs.true.i97.i

land.lhs.true7.i.mtk_get_regmap.exit100.i_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit100.i

if.then17.i:                                      ; preds = %mtk_pmx_find_gpio_mode.exit
  %type1_start.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 19
  %30 = ptrtoint ptr %type1_start.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %type1_start.i.i, align 4
  %conv.i.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %offset)
  %cmp.not.i.i = icmp ugt i32 %conv.i.i, %offset
  br i1 %cmp.not.i.i, label %if.then17.i.mtk_get_regmap.exit.i_crit_edge, label %land.lhs.true.i.i

if.then17.i.mtk_get_regmap.exit.i_crit_edge:      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit.i

land.lhs.true.i.i:                                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 20
  %32 = ptrtoint ptr %type1_end.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %type1_end.i.i, align 2
  %conv3.i.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i.i, i32 %offset)
  %cmp4.i.i = icmp ugt i32 %conv3.i.i, %offset
  %regmap2.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 1
  %spec.select.i.i = select i1 %cmp4.i.i, ptr %regmap2.i.i, ptr %call
  br label %mtk_get_regmap.exit.i

mtk_get_regmap.exit.i:                            ; preds = %land.lhs.true.i.i, %if.then17.i.mtk_get_regmap.exit.i_crit_edge
  %retval.0.in.i.i = phi ptr [ %call, %if.then17.i.mtk_get_regmap.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %34 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %port_align.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 23
  %35 = ptrtoint ptr %port_align.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port_align.i, align 2
  %call21.i = tail call i32 %13(ptr noundef %retval.0.i.i, i32 noundef %offset, i8 noundef zeroext %36, i32 noundef 1, i32 noundef 12) #8
  br label %cleanup

land.lhs.true.i97.i:                              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i92.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %11, i32 0, i32 20
  %37 = ptrtoint ptr %type1_end.i92.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %type1_end.i92.i, align 2
  %conv3.i93.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i93.i, i32 %offset)
  %cmp4.i94.i = icmp ugt i32 %conv3.i93.i, %offset
  %regmap2.i95.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 1
  %spec.select.i96.i = select i1 %cmp4.i94.i, ptr %regmap2.i95.i, ptr %call
  br label %mtk_get_regmap.exit100.i

mtk_get_regmap.exit100.i:                         ; preds = %land.lhs.true.i97.i, %land.lhs.true7.i.mtk_get_regmap.exit100.i_crit_edge
  %retval.0.in.i98.i = phi ptr [ %call, %land.lhs.true7.i.mtk_get_regmap.exit100.i_crit_edge ], [ %spec.select.i96.i, %land.lhs.true.i97.i ]
  %39 = ptrtoint ptr %retval.0.in.i98.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %retval.0.i99.i = load ptr, ptr %retval.0.in.i98.i, align 4
  %call47.i = tail call i32 @regmap_write(ptr noundef %retval.0.i99.i, i32 noundef %add44.i, i32 noundef %shl.i) #8
  br label %cleanup

cleanup:                                          ; preds = %mtk_get_regmap.exit100.i, %mtk_get_regmap.exit.i, %land.lhs.true.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %mtk_get_regmap.exit.i ], [ 0, %mtk_get_regmap.exit100.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_pmx_set_mode(ptr noundef %pctldev, i32 noundef %pin, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %devdata = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %spec_pinmux_set = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %spec_pinmux_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec_pinmux_set, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %type1_start.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %type1_start.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type1_start.i, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %pin)
  %cmp.not.i = icmp ugt i32 %conv.i, %pin
  br i1 %cmp.not.i, label %if.then.mtk_get_regmap.exit_crit_edge, label %land.lhs.true.i

if.then.mtk_get_regmap.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %type1_end.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type1_end.i, align 2
  %conv3.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %pin)
  %cmp4.i = icmp ugt i32 %conv3.i, %pin
  %regmap2.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 1
  %spec.select.i = select i1 %cmp4.i, ptr %regmap2.i, ptr %call
  br label %mtk_get_regmap.exit

mtk_get_regmap.exit:                              ; preds = %land.lhs.true.i, %if.then.mtk_get_regmap.exit_crit_edge
  %retval.0.in.i = phi ptr [ %call, %if.then.mtk_get_regmap.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %8 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  tail call void %3(ptr noundef %retval.0.i, i32 noundef %pin, i32 noundef %mode) #8
  br label %if.end

if.end:                                           ; preds = %mtk_get_regmap.exit, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devdata, align 4
  %mode_per_reg = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %mode_per_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode_per_reg, align 4
  %port_shf = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %10, i32 0, i32 21
  %13 = ptrtoint ptr %port_shf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_shf, align 4
  %pinmux_offset = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %10, i32 0, i32 18
  %15 = ptrtoint ptr %pinmux_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pinmux_offset, align 4
  %type1_start.i2 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %10, i32 0, i32 19
  %17 = ptrtoint ptr %type1_start.i2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type1_start.i2, align 4
  %conv.i3 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i3, i32 %pin)
  %cmp.not.i4 = icmp ugt i32 %conv.i3, %pin
  br i1 %cmp.not.i4, label %if.end.mtk_get_regmap.exit13_crit_edge, label %land.lhs.true.i10

if.end.mtk_get_regmap.exit13_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit13

land.lhs.true.i10:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i5 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %10, i32 0, i32 20
  %19 = ptrtoint ptr %type1_end.i5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type1_end.i5, align 2
  %conv3.i6 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i6, i32 %pin)
  %cmp4.i7 = icmp ugt i32 %conv3.i6, %pin
  %regmap2.i8 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 1
  %spec.select.i9 = select i1 %cmp4.i7, ptr %regmap2.i8, ptr %call
  br label %mtk_get_regmap.exit13

mtk_get_regmap.exit13:                            ; preds = %land.lhs.true.i10, %if.end.mtk_get_regmap.exit13_crit_edge
  %retval.0.in.i11 = phi ptr [ %call, %if.end.mtk_get_regmap.exit13_crit_edge ], [ %spec.select.i9, %land.lhs.true.i10 ]
  %and = and i32 %mode, 7
  %.frozen = freeze i32 %12
  %div = udiv i32 %pin, %.frozen
  %21 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %pin, %21
  %conv10 = and i32 %rem.decomposed, 255
  %mul = mul nuw nsw i32 %conv10, 3
  %shl14 = shl i32 %and, %mul
  %shl11 = shl i32 7, %mul
  %conv = zext i8 %14 to i32
  %shl = shl i32 %div, %conv
  %add = add i32 %shl, %16
  %22 = ptrtoint ptr %retval.0.in.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %retval.0.i12 = load ptr, ptr %retval.0.in.i11, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %retval.0.i12, i32 noundef %add, i32 noundef %shl11, i32 noundef %shl14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  %reg_addr = alloca i32, align 4
  %read_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_addr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_val) #8
  %0 = ptrtoint ptr %read_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %read_val, align 4
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devdata.i, align 4
  %mode_shf.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 28
  %3 = ptrtoint ptr %mode_shf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode_shf.i, align 4
  %shr.i = lshr i32 %offset, %4
  %port_mask.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 22
  %5 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_mask.i, align 1
  %conv.i = zext i8 %6 to i32
  %and.i = and i32 %shr.i, %conv.i
  %port_shf.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 21
  %7 = ptrtoint ptr %port_shf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_shf.i, align 4
  %conv3.i = zext i8 %8 to i32
  %shl.i = shl i32 %and.i, %conv3.i
  %dir_offset = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 10
  %9 = ptrtoint ptr %dir_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dir_offset, align 4
  %add = add i32 %shl.i, %10
  %11 = ptrtoint ptr %reg_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %reg_addr, align 4
  %mode_mask = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 26
  %12 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_mask, align 4
  %spec_dir_set = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 9
  %14 = ptrtoint ptr %spec_dir_set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec_dir_set, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void %15(ptr noundef nonnull %reg_addr, i32 noundef %offset) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = and i32 %13, %offset
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %18 = ptrtoint ptr %reg_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_addr, align 4
  %call6 = call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %read_val) #8
  %20 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_val, align 4
  %22 = xor i32 %21, -1
  %23 = lshr i32 %22, %and
  %24 = and i32 %23, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_addr) #8
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_direction_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %devdata.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 9
  %0 = ptrtoint ptr %devdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata.i.i, align 4
  %mode_shf.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %mode_shf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_shf.i.i, align 4
  %port_mask.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %port_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_mask.i.i, align 1
  %port_shf.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %port_shf.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_shf.i.i, align 4
  %dout_offset.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %dout_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dout_offset.i, align 4
  %mode_mask.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %mode_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_mask.i, align 4
  %port_align6.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %port_align6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_align6.i, align 2
  %type1_start.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %type1_start.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type1_start.i.i, align 4
  %conv.i22.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i22.i, i32 %offset)
  %cmp.not.i.i = icmp ugt i32 %conv.i22.i, %offset
  br i1 %cmp.not.i.i, label %entry.mtk_gpio_set.exit_crit_edge, label %land.lhs.true.i.i

entry.mtk_gpio_set.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_gpio_set.exit

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %type1_end.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type1_end.i.i, align 2
  %conv3.i23.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i23.i, i32 %offset)
  %cmp4.i.i = icmp ugt i32 %conv3.i23.i, %offset
  %regmap2.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 1
  %spec.select.i.i = select i1 %cmp4.i.i, ptr %regmap2.i.i, ptr %call.i
  br label %mtk_gpio_set.exit

mtk_gpio_set.exit:                                ; preds = %land.lhs.true.i.i, %entry.mtk_gpio_set.exit_crit_edge
  %retval.0.in.i.i = phi ptr [ %call.i, %entry.mtk_gpio_set.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %conv7.i = zext i8 %13 to i32
  %shl8.i = zext i1 %tobool.not.i to i32
  %conv.pn.i = shl nuw nsw i32 %conv7.i, %shl8.i
  %and.i = and i32 %11, %offset
  %shl.i = shl nuw i32 1, %and.i
  %shr.i.i = lshr i32 %offset, %3
  %conv.i.i = zext i8 %5 to i32
  %and.i.i = and i32 %shr.i.i, %conv.i.i
  %conv3.i.i = zext i8 %7 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.i = add i32 %shl.i.i, %9
  %reg_addr.0.i = add i32 %add.i, %conv.pn.i
  %18 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %call11.i = tail call i32 @regmap_write(ptr noundef %retval.0.i.i, i32 noundef %reg_addr.0.i, i32 noundef %shl.i) #8
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base, align 4
  %add = add i32 %20, %offset
  %call = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  %read_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_val) #8
  %0 = ptrtoint ptr %read_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %read_val, align 4
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devdata.i, align 4
  %mode_shf.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 28
  %3 = ptrtoint ptr %mode_shf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode_shf.i, align 4
  %shr.i = lshr i32 %offset, %4
  %port_mask.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 22
  %5 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_mask.i, align 1
  %conv.i = zext i8 %6 to i32
  %and.i = and i32 %shr.i, %conv.i
  %port_shf.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 21
  %7 = ptrtoint ptr %port_shf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_shf.i, align 4
  %conv3.i = zext i8 %8 to i32
  %shl.i = shl i32 %and.i, %conv3.i
  %din_offset = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 17
  %9 = ptrtoint ptr %din_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %din_offset, align 4
  %add = add i32 %shl.i, %10
  %mode_mask = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %2, i32 0, i32 26
  %11 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode_mask, align 4
  %and = and i32 %12, %offset
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %call3 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add, ptr noundef nonnull %read_val) #8
  %15 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_val, align 4
  %17 = lshr i32 %16, %and
  %18 = and i32 %17, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_val) #8
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %devdata = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %eintnum = getelementptr %struct.mtk_desc_pin, ptr %3, i32 %offset, i32 1, i32 1
  %4 = ptrtoint ptr %eintnum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eintnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp2 = icmp eq i8 %5, -1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %config, 8
  %conv9 = zext i8 %5 to i32
  %eint10 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %eint10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eint10, align 4
  %call11 = tail call i32 @mtk_eint_set_debounce(ptr noundef %7, i32 noundef %conv9, i32 noundef %shr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end5 ], [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_to_irq(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %devdata = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %eintnum = getelementptr %struct.mtk_desc_pin, ptr %3, i32 %offset, i32 1, i32 1
  %4 = ptrtoint ptr %eintnum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eintnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp eq i8 %5, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %5 to i32
  %eint5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %eint5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eint5, align 4
  %call6 = tail call i32 @mtk_eint_find_irq(ptr noundef %7, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_set_debounce(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_find_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_do_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_xt_get_gpio_n(ptr nocapture noundef readonly %data, i32 noundef %eint_n, ptr nocapture noundef writeonly %gpio_n, ptr nocapture noundef writeonly %gpio_chip) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %eintnum.i = getelementptr %struct.mtk_desc_pin, ptr %5, i32 %i.011.i, i32 1, i32 1
  %6 = ptrtoint ptr %eintnum.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eintnum.i, align 1
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %eint_n)
  %cmp2.i = icmp eq i32 %conv.i, %eint_n
  br i1 %cmp2.i, label %mtk_find_pin_by_eint_num.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtk_find_pin_by_eint_num.exit:                    ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.mtk_desc_pin, ptr %5, i32 %i.011.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %mtk_find_pin_by_eint_num.exit.cleanup_crit_edge, label %if.end

mtk_find_pin_by_eint_num.exit.cleanup_crit_edge:  ; preds = %mtk_find_pin_by_eint_num.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mtk_find_pin_by_eint_num.exit
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.mtk_pinctrl, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %gpio_chip, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %gpio_n to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %gpio_n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mtk_find_pin_by_eint_num.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %mtk_find_pin_by_eint_num.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_xt_get_gpio_state(ptr nocapture noundef readonly %data, i32 noundef %eint_n) #0 align 64 {
entry:
  %read_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %eintnum.i = getelementptr %struct.mtk_desc_pin, ptr %5, i32 %i.011.i, i32 1, i32 1
  %6 = ptrtoint ptr %eintnum.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eintnum.i, align 1
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %eint_n)
  %cmp2.i = icmp eq i32 %conv.i, %eint_n
  br i1 %cmp2.i, label %mtk_find_pin_by_eint_num.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtk_find_pin_by_eint_num.exit:                    ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.mtk_desc_pin, ptr %5, i32 %i.011.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %mtk_find_pin_by_eint_num.exit.cleanup_crit_edge, label %if.end

mtk_find_pin_by_eint_num.exit.cleanup_crit_edge:  ; preds = %mtk_find_pin_by_eint_num.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mtk_find_pin_by_eint_num.exit
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.mtk_pinctrl, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_val.i) #8
  %12 = ptrtoint ptr %read_val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %read_val.i, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %9) #8
  %devdata.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %devdata.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devdata.i.i, align 4
  %mode_shf.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 28
  %15 = ptrtoint ptr %mode_shf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode_shf.i.i, align 4
  %shr.i.i = lshr i32 %11, %16
  %port_mask.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 22
  %17 = ptrtoint ptr %port_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port_mask.i.i, align 1
  %conv.i.i = zext i8 %18 to i32
  %and.i.i = and i32 %shr.i.i, %conv.i.i
  %port_shf.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 21
  %19 = ptrtoint ptr %port_shf.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_shf.i.i, align 4
  %conv3.i.i = zext i8 %20 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %din_offset.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 17
  %21 = ptrtoint ptr %din_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %din_offset.i, align 4
  %add.i = add i32 %shl.i.i, %22
  %mode_mask.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %14, i32 0, i32 26
  %23 = ptrtoint ptr %mode_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode_mask.i, align 4
  %and.i = and i32 %24, %11
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %26, i32 noundef %add.i, ptr noundef nonnull %read_val.i) #8
  %27 = ptrtoint ptr %read_val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_val.i, align 4
  %29 = lshr i32 %28, %and.i
  %30 = and i32 %29, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_val.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mtk_find_pin_by_eint_num.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.end ], [ -22, %mtk_find_pin_by_eint_num.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_xt_set_gpio_as_eint(ptr nocapture noundef readonly %data, i32 noundef %eint_n) #0 align 64 {
entry:
  %reg_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %eintnum.i = getelementptr %struct.mtk_desc_pin, ptr %5, i32 %i.011.i, i32 1, i32 1
  %6 = ptrtoint ptr %eintnum.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eintnum.i, align 1
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %eint_n)
  %cmp2.i = icmp eq i32 %conv.i, %eint_n
  br i1 %cmp2.i, label %mtk_find_pin_by_eint_num.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtk_find_pin_by_eint_num.exit:                    ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.mtk_desc_pin, ptr %5, i32 %i.011.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %mtk_find_pin_by_eint_num.exit.cleanup_crit_edge, label %if.end

mtk_find_pin_by_eint_num.exit.cleanup_crit_edge:  ; preds = %mtk_find_pin_by_eint_num.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mtk_find_pin_by_eint_num.exit
  %pctl_dev = getelementptr inbounds %struct.mtk_pinctrl, ptr %data, i32 0, i32 8
  %8 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pctl_dev, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %eint = getelementptr %struct.mtk_desc_pin, ptr %5, i32 %i.011.i, i32 1
  %12 = ptrtoint ptr %eint to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eint, align 4
  %conv = zext i8 %13 to i32
  tail call fastcc void @mtk_pmx_set_mode(ptr noundef %9, i32 noundef %11, i32 noundef %conv)
  %14 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pctl_dev, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_addr.i) #8
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %15) #8
  %devdata.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %devdata.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devdata.i.i, align 4
  %mode_shf.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %19, i32 0, i32 28
  %20 = ptrtoint ptr %mode_shf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode_shf.i.i, align 4
  %shr.i.i = lshr i32 %17, %21
  %port_mask.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %19, i32 0, i32 22
  %22 = ptrtoint ptr %port_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_mask.i.i, align 1
  %conv.i.i = zext i8 %23 to i32
  %and.i.i = and i32 %shr.i.i, %conv.i.i
  %port_shf.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %19, i32 0, i32 21
  %24 = ptrtoint ptr %port_shf.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port_shf.i.i, align 4
  %conv3.i.i = zext i8 %25 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %dir_offset.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %19, i32 0, i32 10
  %26 = ptrtoint ptr %dir_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dir_offset.i, align 4
  %add.i = add i32 %shl.i.i, %27
  %28 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i, ptr %reg_addr.i, align 4
  %mode_mask.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %19, i32 0, i32 26
  %29 = ptrtoint ptr %mode_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode_mask.i, align 4
  %spec_dir_set.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %19, i32 0, i32 9
  %31 = ptrtoint ptr %spec_dir_set.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spec_dir_set.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i18

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i18:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void %32(ptr noundef nonnull %reg_addr.i, i32 noundef %17) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i18, %if.end.if.end.i_crit_edge
  %33 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_addr.i, align 4
  %35 = ptrtoint ptr %devdata.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %devdata.i.i, align 4
  %port_align.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %port_align.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %port_align.i, align 2
  %conv.i19 = zext i8 %38 to i32
  %storemerge.v.i = shl nuw nsw i32 %conv.i19, 1
  %storemerge.i = add i32 %storemerge.v.i, %34
  store i32 %storemerge.i, ptr %reg_addr.i, align 4
  %type1_start.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 19
  %39 = ptrtoint ptr %type1_start.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %type1_start.i.i, align 4
  %conv.i29.i = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i29.i)
  %cmp.not.i.i = icmp ult i32 %17, %conv.i29.i
  br i1 %cmp.not.i.i, label %if.end.i.mtk_pmx_gpio_set_direction.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.mtk_pmx_gpio_set_direction.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pmx_gpio_set_direction.exit

land.lhs.true.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %36, i32 0, i32 20
  %41 = ptrtoint ptr %type1_end.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %type1_end.i.i, align 2
  %conv3.i30.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv3.i30.i)
  %cmp4.i.i = icmp ult i32 %17, %conv3.i30.i
  %regmap2.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 1
  %spec.select.i.i = select i1 %cmp4.i.i, ptr %regmap2.i.i, ptr %call.i
  br label %mtk_pmx_gpio_set_direction.exit

mtk_pmx_gpio_set_direction.exit:                  ; preds = %land.lhs.true.i.i, %if.end.i.mtk_pmx_gpio_set_direction.exit_crit_edge
  %retval.0.in.i.i = phi ptr [ %call.i, %if.end.i.mtk_pmx_gpio_set_direction.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %and.i = and i32 %30, %17
  %shl.i = shl nuw i32 1, %and.i
  %43 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %call17.i = call i32 @regmap_write(ptr noundef %retval.0.i.i, i32 noundef %storemerge.i, i32 noundef %shl.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_addr.i) #8
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 4
  %46 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %devdata.i, align 4
  %spec_ies_smt_set.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %spec_ies_smt_set.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spec_ies_smt_set.i, align 4
  %tobool.not.i21 = icmp eq ptr %49, null
  br i1 %tobool.not.i21, label %land.lhs.true.i, label %if.then17.i

land.lhs.true.i:                                  ; preds = %mtk_pmx_gpio_set_direction.exit
  %ies_offset.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 11
  %50 = ptrtoint ptr %ies_offset.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ies_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %51)
  %cmp.i = icmp eq i32 %51, 65535
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %mode_mask.i34 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 26
  %52 = ptrtoint ptr %mode_mask.i34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mode_mask.i34, align 4
  %and.i35 = and i32 %53, %51
  %shl.i36 = shl nuw i32 1, %and.i35
  %mode_shf.i80.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 28
  %54 = ptrtoint ptr %mode_shf.i80.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode_shf.i80.i, align 4
  %shr.i81.i = lshr i32 %45, %55
  %port_mask.i82.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 22
  %56 = ptrtoint ptr %port_mask.i82.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %port_mask.i82.i, align 1
  %conv.i83.i = zext i8 %57 to i32
  %and.i84.i = and i32 %shr.i81.i, %conv.i83.i
  %port_shf.i85.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 21
  %58 = ptrtoint ptr %port_shf.i85.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port_shf.i85.i, align 4
  %conv3.i86.i = zext i8 %59 to i32
  %shl.i87.i = shl i32 %and.i84.i, %conv3.i86.i
  %add39.i = add i32 %shl.i87.i, %51
  %port_align41.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 23
  %60 = ptrtoint ptr %port_align41.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %port_align41.i, align 2
  %conv42.i = zext i8 %61 to i32
  %add44.i = add i32 %add39.i, %conv42.i
  %type1_start.i89.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 19
  %62 = ptrtoint ptr %type1_start.i89.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %type1_start.i89.i, align 4
  %conv.i90.i = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i90.i)
  %cmp.not.i91.i = icmp ult i32 %45, %conv.i90.i
  br i1 %cmp.not.i91.i, label %land.lhs.true7.i.mtk_get_regmap.exit100.i_crit_edge, label %land.lhs.true.i97.i

land.lhs.true7.i.mtk_get_regmap.exit100.i_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit100.i

if.then17.i:                                      ; preds = %mtk_pmx_gpio_set_direction.exit
  %type1_start.i.i22 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 19
  %64 = ptrtoint ptr %type1_start.i.i22 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %type1_start.i.i22, align 4
  %conv.i.i23 = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i.i23)
  %cmp.not.i.i24 = icmp ult i32 %45, %conv.i.i23
  br i1 %cmp.not.i.i24, label %if.then17.i.mtk_get_regmap.exit.i_crit_edge, label %land.lhs.true.i.i30

if.then17.i.mtk_get_regmap.exit.i_crit_edge:      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_get_regmap.exit.i

land.lhs.true.i.i30:                              ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i.i25 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 20
  %66 = ptrtoint ptr %type1_end.i.i25 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %type1_end.i.i25, align 2
  %conv3.i.i26 = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv3.i.i26)
  %cmp4.i.i27 = icmp ult i32 %45, %conv3.i.i26
  %regmap2.i.i28 = getelementptr inbounds %struct.mtk_pinctrl, ptr %data, i32 0, i32 1
  %spec.select.i.i29 = select i1 %cmp4.i.i27, ptr %regmap2.i.i28, ptr %data
  br label %mtk_get_regmap.exit.i

mtk_get_regmap.exit.i:                            ; preds = %land.lhs.true.i.i30, %if.then17.i.mtk_get_regmap.exit.i_crit_edge
  %retval.0.in.i.i31 = phi ptr [ %data, %if.then17.i.mtk_get_regmap.exit.i_crit_edge ], [ %spec.select.i.i29, %land.lhs.true.i.i30 ]
  %68 = ptrtoint ptr %retval.0.in.i.i31 to i32
  call void @__asan_load4_noabort(i32 %68)
  %retval.0.i.i32 = load ptr, ptr %retval.0.in.i.i31, align 4
  %port_align.i33 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 23
  %69 = ptrtoint ptr %port_align.i33 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %port_align.i33, align 2
  %call21.i = call i32 %49(ptr noundef %retval.0.i.i32, i32 noundef %45, i8 noundef zeroext %70, i32 noundef 1, i32 noundef 12) #8
  br label %cleanup

land.lhs.true.i97.i:                              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  %type1_end.i92.i = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 20
  %71 = ptrtoint ptr %type1_end.i92.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %type1_end.i92.i, align 2
  %conv3.i93.i = zext i16 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv3.i93.i)
  %cmp4.i94.i = icmp ult i32 %45, %conv3.i93.i
  %regmap2.i95.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %data, i32 0, i32 1
  %spec.select.i96.i = select i1 %cmp4.i94.i, ptr %regmap2.i95.i, ptr %data
  br label %mtk_get_regmap.exit100.i

mtk_get_regmap.exit100.i:                         ; preds = %land.lhs.true.i97.i, %land.lhs.true7.i.mtk_get_regmap.exit100.i_crit_edge
  %retval.0.in.i98.i = phi ptr [ %data, %land.lhs.true7.i.mtk_get_regmap.exit100.i_crit_edge ], [ %spec.select.i96.i, %land.lhs.true.i97.i ]
  %73 = ptrtoint ptr %retval.0.in.i98.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %retval.0.i99.i = load ptr, ptr %retval.0.in.i98.i, align 4
  %call47.i = call i32 @regmap_write(ptr noundef %retval.0.i99.i, i32 noundef %add44.i, i32 noundef %shl.i36) #8
  br label %cleanup

cleanup:                                          ; preds = %mtk_get_regmap.exit100.i, %mtk_get_regmap.exit.i, %land.lhs.true.i.cleanup_crit_edge, %mtk_find_pin_by_eint_num.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mtk_find_pin_by_eint_num.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %mtk_get_regmap.exit.i ], [ 0, %mtk_get_regmap.exit100.i ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @mtk_eint_pm_ops, !1, !"mtk_eint_pm_ops", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 891, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 1032, i32 30}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 1034, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mtk_pctrl_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_pctrl_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 1038, i32 30}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 1046, i32 3}
!16 = !{ptr @mtk_pctrl_init._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mtk_pctrl_init._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 1061, i32 3}
!20 = !{ptr @mtk_pctrl_init._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_pctrl_init._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 1085, i32 3}
!24 = !{ptr @mtk_pctrl_init._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mtk_pctrl_init._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @mtk_pctrl_init.lock_key, !27, !"lock_key", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 1099, i32 8}
!28 = !{ptr @mtk_pctrl_init.request_key, !27, !"request_key", i1 false, i1 false}
!29 = !{ptr @mtk_pconf_ops, !30, !"mtk_pconf_ops", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 403, i32 33}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 308, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mtk_pconf_set_pull_select._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtk_pconf_set_pull_select._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mtk_pctrl_ops, !37, !"mtk_pctrl_ops", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 640, i32 33}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 506, i32 32}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 508, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 552, i32 4}
!47 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 559, i32 4}
!51 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 478, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mtk_pctrl_dt_node_to_map_func._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mtk_pctrl_dt_node_to_map_func._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 40, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 40, i32 11}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 40, i32 20}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 40, i32 29}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 41, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 41, i32 11}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 41, i32 20}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 41, i32 29}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 42, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 42, i32 11}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 42, i32 20}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 42, i32 30}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 43, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 43, i32 12}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 43, i32 22}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 43, i32 32}
!90 = !{ptr @mtk_gpio_functions, !91, !"mtk_gpio_functions", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 39, i32 27}
!92 = !{ptr @mtk_pmx_ops, !93, !"mtk_pmx_ops", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 769, i32 32}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 722, i32 3}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mtk_pmx_set_mux._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @mtk_pmx_set_mux._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 759, i32 3}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mtk_pmx_gpio_request_enable._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @mtk_pmx_gpio_request_enable._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 741, i32 28}
!106 = !{ptr @mtk_gpio_chip, !107, !"mtk_gpio_chip", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 863, i32 31}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 988, i32 33}
!110 = !{ptr @mtk_eint_xt, !111, !"mtk_eint_xt", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/mediatek/pinctrl-mtk-common.c", i32 978, i32 33}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{!"auto-init"}
