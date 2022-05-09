; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/mediatek/pinctrl-paris.c_pt.bc'
source_filename = "../drivers/pinctrl/mediatek/pinctrl-paris.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtk_pctrl_show_one_pin\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_pctrl_show_one_pin\09\09\09\09"
module asm "\09.long\09__crc_mtk_pctrl_show_one_pin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_pctrl_show_one_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_pctrl_show_one_pin\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_pctrl_show_one_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_paris_pinctrl_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_paris_pinctrl_probe\09\09\09\09"
module asm "\09.long\09__crc_mtk_paris_pinctrl_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_paris_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_paris_pinctrl_probe\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_paris_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pinctrl = type { ptr, ptr, i8, ptr, %struct.gpio_chip, ptr, ptr, ptr, ptr, %struct.spinlock, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtk_pin_soc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i8, i8, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pin_desc = type { i32, ptr, %struct.mtk_eint_desc, i8, ptr }
%struct.mtk_eint_desc = type { i16, i16 }
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
%struct.mtk_pinctrl_group = type { ptr, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.mtk_func_desc = type { ptr, i8 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%03d: %1d%1d%1d%1d%02d%1d%1d%1d%1d\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (%1d %1d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (%1d)\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_pctrl_show_one_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_pctrl_show_one_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_pctrl_show_one_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_pctrl_show_one_pin to i32), ptr @__kstrtab_mtk_pctrl_show_one_pin, ptr @__kstrtabns_mtk_pctrl_show_one_pin }, section "___ksymtab_gpl+mtk_pctrl_show_one_pin", align 4
@mtk_paris_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 972, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SoC should be assigned at least one register base\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_paris_pinctrl_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pinctrl/mediatek/pinctrl-paris.c\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_paris_pinctrl_probe._entry_ptr = internal global ptr @mtk_paris_pinctrl_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mediatek,rsel_resistance_in_si_unit\00", [60 x i8] zeroinitializer }, align 32
@mtk_paris_pinctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&hw->lock\00", [22 x i8] zeroinitializer }, align 32
@mtk_paris_pinctrl_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 1000, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"build state failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_paris_pinctrl_probe._entry_ptr.13 = internal global ptr @mtk_paris_pinctrl_probe._entry.11, section ".printk_index", align 4
@mtk_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.21, ptr null, i32 0, ptr @mtk_pctlops, ptr @mtk_pmxops, ptr @mtk_confops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mtk_custom_bindings = internal constant { [5 x %struct.pinconf_generic_params], [36 x i8] } { [5 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.52, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.53, i32 129, i32 0 }, %struct.pinconf_generic_params { ptr @.str.54, i32 130, i32 1 }, %struct.pinconf_generic_params { ptr @.str.55, i32 131, i32 1 }, %struct.pinconf_generic_params { ptr @.str.56, i32 132, i32 2 }], [36 x i8] zeroinitializer }, align 32
@mtk_conf_items = internal constant { [5 x %struct.pin_config_item], [48 x i8] } { [5 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.57, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.58, ptr null, i8 1 }, %struct.pin_config_item { i32 130, ptr @.str.59, ptr null, i8 1 }, %struct.pin_config_item { i32 131, ptr @.str.60, ptr null, i8 1 }, %struct.pin_config_item { i32 132, ptr @.str.61, ptr null, i8 1 }], [48 x i8] zeroinitializer }, align 32
@mtk_paris_pinctrl_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 1036, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to add EINT, but pinctrl still can work\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_paris_pinctrl_probe._entry_ptr.17 = internal global ptr @mtk_paris_pinctrl_probe._entry.14, section ".printk_index", align 4
@mtk_paris_pinctrl_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1041, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add gpio_chip\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_paris_pinctrl_probe._entry_ptr.20 = internal global ptr @mtk_paris_pinctrl_probe._entry.18, section ".printk_index", align 4
@__kstrtab_mtk_paris_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_paris_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_paris_pinctrl_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_paris_pinctrl_probe to i32), ptr @__kstrtab_mtk_paris_pinctrl_probe, ptr @__kstrtabns_mtk_paris_pinctrl_probe }, section "___ksymtab_gpl+mtk_paris_pinctrl_probe", align 4
@mtk_paris_pinctrl_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_paris_pinctrl_suspend, ptr @mtk_paris_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file223 = internal constant [58 x i8] c"pinctrl_paris.file=drivers/pinctrl/mediatek/pinctrl-paris\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [29 x i8] c"pinctrl_paris.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [66 x i8] c"pinctrl_paris.description=MediaTek Pinctrl Common Driver V2 Paris\00", section ".modinfo", align 1
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinctrl_paris\00", [18 x i8] zeroinitializer }, align 32
@mtk_pctlops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @mtk_pctrl_get_groups_count, ptr @mtk_pctrl_get_group_name, ptr @mtk_pctrl_get_group_pins, ptr @mtk_pctrl_dbg_show, ptr @mtk_pctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@mtk_pmxops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @mtk_pmx_get_funcs_cnt, ptr @mtk_pmx_get_func_name, ptr @mtk_pmx_get_func_groups, ptr @mtk_pmx_set_mux, ptr @mtk_pinmux_gpio_request_enable, ptr null, ptr @mtk_pinmux_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mtk_confops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @mtk_pinconf_get, ptr null, ptr @mtk_pconf_group_get, ptr @mtk_pconf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinmux\00", [25 x i8] zeroinitializer }, align 32
@mtk_pctrl_dt_subnode_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 407, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"missing pins property in node %pOFn .\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_pctrl_dt_subnode_to_map\00", [36 x i8] zeroinitializer }, align 32
@mtk_pctrl_dt_subnode_to_map._entry_ptr = internal global ptr @mtk_pctrl_dt_subnode_to_map._entry, section ".printk_index", align 4
@mtk_pctrl_dt_subnode_to_map._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 449, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid pins value.\0A\00", [43 x i8] zeroinitializer }, align 32
@mtk_pctrl_dt_subnode_to_map._entry_ptr.28 = internal global ptr @mtk_pctrl_dt_subnode_to_map._entry.26, section ".printk_index", align 4
@mtk_pctrl_dt_subnode_to_map._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.6, i32 457, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to match pin %d to group\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_pctrl_dt_subnode_to_map._entry_ptr.31 = internal global ptr @mtk_pctrl_dt_subnode_to_map._entry.29, section ".printk_index", align 4
@mtk_pctrl_dt_node_to_map_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 378, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid function %d on pin %d .\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mtk_pctrl_dt_node_to_map_func\00", [34 x i8] zeroinitializer }, align 32
@mtk_pctrl_dt_node_to_map_func._entry_ptr = internal global ptr @mtk_pctrl_dt_node_to_map_func._entry, section ".printk_index", align 4
@mtk_gpio_functions = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func0\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func1\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func2\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func3\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func4\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func5\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func6\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func7\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func8\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func9\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func10\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func11\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func12\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func13\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func14\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"func15\00", [25 x i8] zeroinitializer }, align 32
@mtk_pmx_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 713, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid function %d on group %d .\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_pmx_set_mux\00", [16 x i8] zeroinitializer }, align 32
@mtk_pmx_set_mux._entry_ptr = internal global ptr @mtk_pmx_set_mux._entry, section ".printk_index", align 4
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mediatek,tdsel\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mediatek,rdsel\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,pull-up-adv\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,pull-down-adv\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mediatek,drive-strength-adv\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tdsel\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdsel\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pu-adv\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pd-adv\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drive-strength-adv\00", [45 x i8] zeroinitializer }, align 32
@mtk_build_gpiochip.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mtk_build_gpiochip.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 101, i64 102, i64 103]
@__sancov_gen_cov_switch_values.62 = internal global [15 x i64] [i64 13, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 14, i64 18, i64 24, i64 128, i64 129, i64 130, i64 131, i64 132]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.64 = internal global [17 x i64] [i64 15, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 13, i64 14, i64 17, i64 18, i64 24, i64 128, i64 129, i64 130, i64 131, i64 132]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 630, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 643, i32 46 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 646, i32 46 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 648, i32 46 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 971, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 991, i32 9 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 996, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1000, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"mtk_desc\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 773, i32 28 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"mtk_custom_bindings\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 26, i32 44 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"mtk_conf_items\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 35, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1035, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1041, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [25 x i8] c"mtk_paris_pinctrl_pm_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1065, i32 25 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 774, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant [12 x i8] c"mtk_pctlops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 667, i32 33 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"mtk_pmxops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 727, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"mtk_confops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 766, i32 33 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 664, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 404, i32 32 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 406, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 449, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 456, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 377, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"mtk_gpio_functions\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 44, i32 27 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 45, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 45, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 45, i32 20 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 45, i32 29 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 46, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 46, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 46, i32 20 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 46, i32 29 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 47, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 47, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 47, i32 20 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 47, i32 30 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 48, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 48, i32 12 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 48, i32 22 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 48, i32 32 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 712, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 27, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 28, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 29, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 30, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 31, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 36, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 37, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 38, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 39, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 40, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.279 = private constant [44 x i8] c"../drivers/pinctrl/mediatek/pinctrl-paris.c\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 918, i32 8 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__ksymtab_mtk_paris_pinctrl_probe, ptr @__ksymtab_mtk_pctrl_show_one_pin, ptr @mtk_paris_pinctrl_probe._entry, ptr @mtk_paris_pinctrl_probe._entry.11, ptr @mtk_paris_pinctrl_probe._entry.14, ptr @mtk_paris_pinctrl_probe._entry.18, ptr @mtk_paris_pinctrl_probe._entry_ptr, ptr @mtk_paris_pinctrl_probe._entry_ptr.13, ptr @mtk_paris_pinctrl_probe._entry_ptr.17, ptr @mtk_paris_pinctrl_probe._entry_ptr.20, ptr @mtk_pctrl_dt_node_to_map_func._entry, ptr @mtk_pctrl_dt_node_to_map_func._entry_ptr, ptr @mtk_pctrl_dt_subnode_to_map._entry, ptr @mtk_pctrl_dt_subnode_to_map._entry.26, ptr @mtk_pctrl_dt_subnode_to_map._entry.29, ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr, ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr.28, ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr.31, ptr @mtk_pmx_set_mux._entry, ptr @mtk_pmx_set_mux._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mtk_paris_pinctrl_probe.__key, ptr @.str.10, ptr @.str.12, ptr @mtk_desc, ptr @mtk_custom_bindings, ptr @mtk_conf_items, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @mtk_paris_pinctrl_pm_ops, ptr @.str.21, ptr @mtk_pctlops, ptr @mtk_pmxops, ptr @mtk_confops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @mtk_gpio_functions, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @mtk_build_gpiochip.lock_key, ptr @mtk_build_gpiochip.request_key], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_paris_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_paris_pinctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_paris_pinctrl_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_custom_bindings to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_conf_items to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_paris_pinctrl_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_paris_pinctrl_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_paris_pinctrl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctlops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmxops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_confops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_dt_subnode_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_dt_subnode_to_map._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_dt_subnode_to_map._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pctrl_dt_node_to_map_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_gpio_functions to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmx_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_build_gpiochip.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_build_gpiochip.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_pctrl_show_one_pin(ptr noundef %hw, i32 noundef %gpio, ptr noundef %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  %value.i186 = alloca i32, align 4
  %value.i174 = alloca i32, align 4
  %value.i162 = alloca i32, align 4
  %value.i150 = alloca i32, align 4
  %value.i138 = alloca i32, align 4
  %value.i126 = alloca i32, align 4
  %value.i = alloca i32, align 4
  %pullup = alloca i32, align 4
  %pullen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pullup) #6
  %0 = ptrtoint ptr %pullup to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pullup, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pullen) #6
  %1 = ptrtoint ptr %pullen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pullen, align 4, !annotation !152
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %gpio)
  %cmp.not = icmp ugt i32 %5, %gpio
  br i1 %cmp.not, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %7, i32 %gpio
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value.i, align 4, !annotation !152
  %call.i = call i32 @mtk_hw_get_value(ptr noundef %hw, ptr noundef %arrayidx, i32 noundef 0, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.mtk_hw_get_value_wrap.exit_crit_edge

if.end.i.mtk_hw_get_value_wrap.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i, align 4
  br label %mtk_hw_get_value_wrap.exit

mtk_hw_get_value_wrap.exit:                       ; preds = %if.end3.i, %if.end.i.mtk_hw_get_value_wrap.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.end3.i ], [ %call.i, %if.end.i.mtk_hw_get_value_wrap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  %11 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc, align 4
  %nfuncs = getelementptr inbounds %struct.mtk_pin_soc, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %nfuncs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nfuncs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %14)
  %cmp3.not = icmp ult i32 %retval.0.i, %14
  %sub = select i1 %cmp3.not, i32 0, i32 %14
  %spec.select = sub i32 %retval.0.i, %sub
  %call8 = call i32 @mtk_pinconf_bias_get_combo(ptr noundef %hw, ptr noundef %arrayidx, ptr noundef nonnull %pullup, ptr noundef nonnull %pullen) #6
  %15 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc, align 4
  %pull_type = getelementptr inbounds %struct.mtk_pin_soc, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %pull_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pull_type, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %mtk_hw_get_value_wrap.exit.if.else_crit_edge, label %if.end14

mtk_hw_get_value_wrap.exit.if.else_crit_edge:     ; preds = %mtk_hw_get_value_wrap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end14:                                         ; preds = %mtk_hw_get_value_wrap.exit
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr i32, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx13, align 4
  %phi.bo = and i32 %22, 8
  %rsel_si_unit = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 10
  %23 = ptrtoint ptr %rsel_si_unit to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rsel_si_unit, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool15.not = icmp eq i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %tobool16.not = icmp eq i32 %phi.bo, 0
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.end14.if.else_crit_edge, label %if.then17

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %pullen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pullen, align 4
  store i32 1, ptr %pullen, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end14.if.else_crit_edge, %mtk_hw_get_value_wrap.exit.if.else_crit_edge
  %27 = ptrtoint ptr %pullen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pullen, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.else.if.end32_crit_edge [
    i32 100, label %if.then19
    i32 101, label %if.then22
    i32 102, label %if.then25
    i32 103, label %if.then28
  ]

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %pullen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %pullen, align 4
  br label %if.end32

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %pullen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %pullen, align 4
  br label %if.end32

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %pullen to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %pullen, align 4
  br label %if.end32

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %pullen to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %pullen, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then25, %if.then22, %if.then19, %if.else.if.end32_crit_edge
  %r1.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.then22 ], [ 1, %if.then25 ], [ 1, %if.then28 ], [ -1, %if.else.if.end32_crit_edge ]
  %r0.0 = phi i32 [ 0, %if.then19 ], [ 1, %if.then22 ], [ 0, %if.then25 ], [ 1, %if.then28 ], [ -1, %if.else.if.end32_crit_edge ]
  %34 = ptrtoint ptr %pullen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pullen, align 4
  %36 = and i32 %35, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %36)
  %37 = icmp eq i32 %36, 200
  br i1 %37, label %if.then36, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %sub37 = add nsw i32 %35, -200
  %38 = ptrtoint ptr %pullen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %pullen, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge, %if.then17
  %r1.1 = phi i32 [ -1, %if.then17 ], [ %r1.0, %if.then36 ], [ %r1.0, %if.end32.if.end39_crit_edge ]
  %r0.1 = phi i32 [ -1, %if.then17 ], [ %r0.0, %if.then36 ], [ %r0.0, %if.end32.if.end39_crit_edge ]
  %rsel.0 = phi i32 [ %26, %if.then17 ], [ %sub37, %if.then36 ], [ -1, %if.end32.if.end39_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i126) #6
  %39 = ptrtoint ptr %value.i126 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %value.i126, align 4, !annotation !152
  %npins.i128 = getelementptr inbounds %struct.mtk_pin_soc, ptr %16, i32 0, i32 2
  %40 = ptrtoint ptr %npins.i128 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %npins.i128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %gpio)
  %cmp.not.i129 = icmp ugt i32 %41, %gpio
  br i1 %cmp.not.i129, label %if.end.i134, label %if.end39.mtk_hw_get_value_wrap.exit137_crit_edge

if.end39.mtk_hw_get_value_wrap.exit137_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit137

if.end.i134:                                      ; preds = %if.end39
  %pins.i130 = getelementptr inbounds %struct.mtk_pin_soc, ptr %16, i32 0, i32 1
  %42 = ptrtoint ptr %pins.i130 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pins.i130, align 4
  %arrayidx.i131 = getelementptr %struct.mtk_pin_desc, ptr %43, i32 %gpio
  %call.i132 = call i32 @mtk_hw_get_value(ptr noundef %hw, ptr noundef %arrayidx.i131, i32 noundef 1, ptr noundef nonnull %value.i126) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i133, label %if.end3.i135, label %if.end.i134.mtk_hw_get_value_wrap.exit137_crit_edge

if.end.i134.mtk_hw_get_value_wrap.exit137_crit_edge: ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit137

if.end3.i135:                                     ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %value.i126 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value.i126, align 4
  br label %mtk_hw_get_value_wrap.exit137

mtk_hw_get_value_wrap.exit137:                    ; preds = %if.end3.i135, %if.end.i134.mtk_hw_get_value_wrap.exit137_crit_edge, %if.end39.mtk_hw_get_value_wrap.exit137_crit_edge
  %retval.0.i136 = phi i32 [ %45, %if.end3.i135 ], [ -22, %if.end39.mtk_hw_get_value_wrap.exit137_crit_edge ], [ %call.i132, %if.end.i134.mtk_hw_get_value_wrap.exit137_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i126) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i138) #6
  %46 = ptrtoint ptr %value.i138 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %value.i138, align 4, !annotation !152
  %47 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %soc, align 4
  %npins.i140 = getelementptr inbounds %struct.mtk_pin_soc, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %npins.i140 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %npins.i140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %gpio)
  %cmp.not.i141 = icmp ugt i32 %50, %gpio
  br i1 %cmp.not.i141, label %if.end.i146, label %mtk_hw_get_value_wrap.exit137.mtk_hw_get_value_wrap.exit149_crit_edge

mtk_hw_get_value_wrap.exit137.mtk_hw_get_value_wrap.exit149_crit_edge: ; preds = %mtk_hw_get_value_wrap.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit149

if.end.i146:                                      ; preds = %mtk_hw_get_value_wrap.exit137
  %pins.i142 = getelementptr inbounds %struct.mtk_pin_soc, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %pins.i142 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pins.i142, align 4
  %arrayidx.i143 = getelementptr %struct.mtk_pin_desc, ptr %52, i32 %gpio
  %call.i144 = call i32 @mtk_hw_get_value(ptr noundef %hw, ptr noundef %arrayidx.i143, i32 noundef 3, ptr noundef nonnull %value.i138) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i145 = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i145, label %if.end3.i147, label %if.end.i146.mtk_hw_get_value_wrap.exit149_crit_edge

if.end.i146.mtk_hw_get_value_wrap.exit149_crit_edge: ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit149

if.end3.i147:                                     ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %value.i138 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value.i138, align 4
  br label %mtk_hw_get_value_wrap.exit149

mtk_hw_get_value_wrap.exit149:                    ; preds = %if.end3.i147, %if.end.i146.mtk_hw_get_value_wrap.exit149_crit_edge, %mtk_hw_get_value_wrap.exit137.mtk_hw_get_value_wrap.exit149_crit_edge
  %retval.0.i148 = phi i32 [ %54, %if.end3.i147 ], [ -22, %mtk_hw_get_value_wrap.exit137.mtk_hw_get_value_wrap.exit149_crit_edge ], [ %call.i144, %if.end.i146.mtk_hw_get_value_wrap.exit149_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i138) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i150) #6
  %55 = ptrtoint ptr %value.i150 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %value.i150, align 4, !annotation !152
  %56 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %soc, align 4
  %npins.i152 = getelementptr inbounds %struct.mtk_pin_soc, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %npins.i152 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %npins.i152, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %gpio)
  %cmp.not.i153 = icmp ugt i32 %59, %gpio
  br i1 %cmp.not.i153, label %if.end.i158, label %mtk_hw_get_value_wrap.exit149.mtk_hw_get_value_wrap.exit161_crit_edge

mtk_hw_get_value_wrap.exit149.mtk_hw_get_value_wrap.exit161_crit_edge: ; preds = %mtk_hw_get_value_wrap.exit149
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit161

if.end.i158:                                      ; preds = %mtk_hw_get_value_wrap.exit149
  %pins.i154 = getelementptr inbounds %struct.mtk_pin_soc, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %pins.i154 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pins.i154, align 4
  %arrayidx.i155 = getelementptr %struct.mtk_pin_desc, ptr %61, i32 %gpio
  %call.i156 = call i32 @mtk_hw_get_value(ptr noundef %hw, ptr noundef %arrayidx.i155, i32 noundef 2, ptr noundef nonnull %value.i150) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i157, label %if.end3.i159, label %if.end.i158.mtk_hw_get_value_wrap.exit161_crit_edge

if.end.i158.mtk_hw_get_value_wrap.exit161_crit_edge: ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit161

if.end3.i159:                                     ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %value.i150 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value.i150, align 4
  br label %mtk_hw_get_value_wrap.exit161

mtk_hw_get_value_wrap.exit161:                    ; preds = %if.end3.i159, %if.end.i158.mtk_hw_get_value_wrap.exit161_crit_edge, %mtk_hw_get_value_wrap.exit149.mtk_hw_get_value_wrap.exit161_crit_edge
  %retval.0.i160 = phi i32 [ %63, %if.end3.i159 ], [ -22, %mtk_hw_get_value_wrap.exit149.mtk_hw_get_value_wrap.exit161_crit_edge ], [ %call.i156, %if.end.i158.mtk_hw_get_value_wrap.exit161_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i150) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i162) #6
  %64 = ptrtoint ptr %value.i162 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %value.i162, align 4, !annotation !152
  %65 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %soc, align 4
  %npins.i164 = getelementptr inbounds %struct.mtk_pin_soc, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %npins.i164 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %npins.i164, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %gpio)
  %cmp.not.i165 = icmp ugt i32 %68, %gpio
  br i1 %cmp.not.i165, label %if.end.i170, label %mtk_hw_get_value_wrap.exit161.mtk_hw_get_value_wrap.exit173_crit_edge

mtk_hw_get_value_wrap.exit161.mtk_hw_get_value_wrap.exit173_crit_edge: ; preds = %mtk_hw_get_value_wrap.exit161
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit173

if.end.i170:                                      ; preds = %mtk_hw_get_value_wrap.exit161
  %pins.i166 = getelementptr inbounds %struct.mtk_pin_soc, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %pins.i166 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pins.i166, align 4
  %arrayidx.i167 = getelementptr %struct.mtk_pin_desc, ptr %70, i32 %gpio
  %call.i168 = call i32 @mtk_hw_get_value(ptr noundef %hw, ptr noundef %arrayidx.i167, i32 noundef 12, ptr noundef nonnull %value.i162) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.end3.i171, label %if.end.i170.mtk_hw_get_value_wrap.exit173_crit_edge

if.end.i170.mtk_hw_get_value_wrap.exit173_crit_edge: ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit173

if.end3.i171:                                     ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %value.i162 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %value.i162, align 4
  br label %mtk_hw_get_value_wrap.exit173

mtk_hw_get_value_wrap.exit173:                    ; preds = %if.end3.i171, %if.end.i170.mtk_hw_get_value_wrap.exit173_crit_edge, %mtk_hw_get_value_wrap.exit161.mtk_hw_get_value_wrap.exit173_crit_edge
  %retval.0.i172 = phi i32 [ %72, %if.end3.i171 ], [ -22, %mtk_hw_get_value_wrap.exit161.mtk_hw_get_value_wrap.exit173_crit_edge ], [ %call.i168, %if.end.i170.mtk_hw_get_value_wrap.exit173_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i162) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i174) #6
  %73 = ptrtoint ptr %value.i174 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %value.i174, align 4, !annotation !152
  %74 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %soc, align 4
  %npins.i176 = getelementptr inbounds %struct.mtk_pin_soc, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %npins.i176 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %npins.i176, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %gpio)
  %cmp.not.i177 = icmp ugt i32 %77, %gpio
  br i1 %cmp.not.i177, label %if.end.i182, label %mtk_hw_get_value_wrap.exit173.mtk_hw_get_value_wrap.exit185_crit_edge

mtk_hw_get_value_wrap.exit173.mtk_hw_get_value_wrap.exit185_crit_edge: ; preds = %mtk_hw_get_value_wrap.exit173
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit185

if.end.i182:                                      ; preds = %mtk_hw_get_value_wrap.exit173
  %pins.i178 = getelementptr inbounds %struct.mtk_pin_soc, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %pins.i178 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pins.i178, align 4
  %arrayidx.i179 = getelementptr %struct.mtk_pin_desc, ptr %79, i32 %gpio
  %call.i180 = call i32 @mtk_hw_get_value(ptr noundef %hw, ptr noundef %arrayidx.i179, i32 noundef 5, ptr noundef nonnull %value.i174) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool.not.i181 = icmp eq i32 %call.i180, 0
  br i1 %tobool.not.i181, label %if.end3.i183, label %if.end.i182.mtk_hw_get_value_wrap.exit185_crit_edge

if.end.i182.mtk_hw_get_value_wrap.exit185_crit_edge: ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit185

if.end3.i183:                                     ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %value.i174 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %value.i174, align 4
  br label %mtk_hw_get_value_wrap.exit185

mtk_hw_get_value_wrap.exit185:                    ; preds = %if.end3.i183, %if.end.i182.mtk_hw_get_value_wrap.exit185_crit_edge, %mtk_hw_get_value_wrap.exit173.mtk_hw_get_value_wrap.exit185_crit_edge
  %retval.0.i184 = phi i32 [ %81, %if.end3.i183 ], [ -22, %mtk_hw_get_value_wrap.exit173.mtk_hw_get_value_wrap.exit185_crit_edge ], [ %call.i180, %if.end.i182.mtk_hw_get_value_wrap.exit185_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i174) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i186) #6
  %82 = ptrtoint ptr %value.i186 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %value.i186, align 4, !annotation !152
  %83 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %soc, align 4
  %npins.i188 = getelementptr inbounds %struct.mtk_pin_soc, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %npins.i188 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %npins.i188, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %gpio)
  %cmp.not.i189 = icmp ugt i32 %86, %gpio
  br i1 %cmp.not.i189, label %if.end.i194, label %mtk_hw_get_value_wrap.exit185.mtk_hw_get_value_wrap.exit197_crit_edge

mtk_hw_get_value_wrap.exit185.mtk_hw_get_value_wrap.exit197_crit_edge: ; preds = %mtk_hw_get_value_wrap.exit185
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit197

if.end.i194:                                      ; preds = %mtk_hw_get_value_wrap.exit185
  %pins.i190 = getelementptr inbounds %struct.mtk_pin_soc, ptr %84, i32 0, i32 1
  %87 = ptrtoint ptr %pins.i190 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pins.i190, align 4
  %arrayidx.i191 = getelementptr %struct.mtk_pin_desc, ptr %88, i32 %gpio
  %call.i192 = call i32 @mtk_hw_get_value(ptr noundef %hw, ptr noundef %arrayidx.i191, i32 noundef 16, ptr noundef nonnull %value.i186) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool.not.i193 = icmp eq i32 %call.i192, 0
  br i1 %tobool.not.i193, label %if.end3.i195, label %if.end.i194.mtk_hw_get_value_wrap.exit197_crit_edge

if.end.i194.mtk_hw_get_value_wrap.exit197_crit_edge: ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_hw_get_value_wrap.exit197

if.end3.i195:                                     ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %value.i186 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %value.i186, align 4
  br label %mtk_hw_get_value_wrap.exit197

mtk_hw_get_value_wrap.exit197:                    ; preds = %if.end3.i195, %if.end.i194.mtk_hw_get_value_wrap.exit197_crit_edge, %mtk_hw_get_value_wrap.exit185.mtk_hw_get_value_wrap.exit197_crit_edge
  %retval.0.i196 = phi i32 [ %90, %if.end3.i195 ], [ -22, %mtk_hw_get_value_wrap.exit185.mtk_hw_get_value_wrap.exit197_crit_edge ], [ %call.i192, %if.end.i194.mtk_hw_get_value_wrap.exit197_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i186) #6
  %91 = ptrtoint ptr %pullen to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pullen, align 4
  %93 = ptrtoint ptr %pullup to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pullup, align 4
  %call47 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %buf_len, ptr noundef nonnull @.str, i32 noundef %gpio, i32 noundef %spec.select, i32 noundef %retval.0.i136, i32 noundef %retval.0.i148, i32 noundef %retval.0.i160, i32 noundef %retval.0.i172, i32 noundef %retval.0.i184, i32 noundef %retval.0.i196, i32 noundef %92, i32 noundef %94) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %r1.1)
  %cmp48.not = icmp eq i32 %r1.1, -1
  br i1 %cmp48.not, label %if.else54, label %if.then49

if.then49:                                        ; preds = %mtk_hw_get_value_wrap.exit197
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr50 = getelementptr i8, ptr %buf, i32 %call47
  %sub51 = sub i32 %buf_len, %call47
  %call52 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.1, i32 noundef %r1.1, i32 noundef %r0.1) #6
  br label %if.end67

if.else54:                                        ; preds = %mtk_hw_get_value_wrap.exit197
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rsel.0)
  %cmp55.not = icmp eq i32 %rsel.0, -1
  %add.ptr62 = getelementptr i8, ptr %buf, i32 %call47
  %sub63 = sub i32 %buf_len, %call47
  br i1 %cmp55.not, label %if.else61, label %if.then56

if.then56:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #8
  %call59 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.2, i32 noundef %rsel.0) #6
  br label %if.end67

if.else61:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.3) #6
  br label %if.end67

if.end67:                                         ; preds = %if.else61, %if.then56, %if.then49
  %call52.pn = phi i32 [ %call52, %if.then49 ], [ %call59, %if.then56 ], [ %call64, %if.else61 ]
  %len.0 = add i32 %call52.pn, %call47
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.0, %if.end67 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pullen) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pullup) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_pinconf_bias_get_combo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_paris_pinctrl_probe(ptr noundef %pdev, ptr noundef %soc) #0 align 64 {
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
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %soc1 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %soc1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %soc, ptr %soc1, align 4
  %dev3 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev3, align 4
  %nbase_names = getelementptr inbounds %struct.mtk_pin_soc, ptr %soc, i32 0, i32 12
  %3 = ptrtoint ptr %nbase_names to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbase_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #6
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !154

devm_kmalloc_array.exit.thread:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %base181 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %base181 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %base181, align 4
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.end8
  %8 = extractvalue { i32, i1 } %5, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3264) #6
  %base = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i, ptr %base, align 4
  %tobool14.not = icmp eq ptr %call5.i, null
  br i1 %tobool14.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit
  %10 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc1, align 4
  %nbase_names18191 = getelementptr inbounds %struct.mtk_pin_soc, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %nbase_names18191 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbase_names18191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp192.not = icmp eq i32 %13, 0
  br i1 %cmp192.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0193, 1
  %14 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc1, align 4
  %nbase_names18 = getelementptr inbounds %struct.mtk_pin_soc, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %nbase_names18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbase_names18, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end.loopexit

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %18 = phi ptr [ %15, %for.cond.for.body_crit_edge ], [ %11, %for.cond.preheader.for.body_crit_edge ]
  %i.0193 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %base_names = getelementptr inbounds %struct.mtk_pin_soc, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %base_names to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_names, align 4
  %arrayidx = getelementptr ptr, ptr %20, i32 %i.0193
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call20 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef %22) #6
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %arrayidx22 = getelementptr ptr, ptr %24, i32 %i.0193
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call20, ptr %arrayidx22, align 4
  %26 = load ptr, ptr %base, align 4
  %arrayidx24 = getelementptr ptr, ptr %26, i32 %i.0193
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx24, align 4
  %cmp.i = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %for.cond

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %28 to i32
  br label %cleanup

for.end.loopexit:                                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = trunc i32 %17 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa188 = phi i8 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %nbase = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %nbase to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.lcssa188, ptr %nbase, align 4
  %31 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %call34 = tail call ptr @of_find_property(ptr noundef %34, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool35.not = icmp ne ptr %call34, null
  %spec.select = zext i1 %tobool35.not to i8
  %35 = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 10
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.select, ptr %35, align 4
  %lock = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mtk_paris_pinctrl_probe.__key, i16 noundef signext 3) #6
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i, align 4
  %soc.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %soc.i, align 4
  %ngrps.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ngrps.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ngrps.i, align 4
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 12) #6
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %devm_kmalloc_array.exit.thread.i, label %devm_kmalloc_array.exit.i, !prof !154

devm_kmalloc_array.exit.thread.i:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %groups43.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %38, i32 0, i32 7
  br label %cleanup.sink.split.i

devm_kmalloc_array.exit.i:                        ; preds = %for.end
  %45 = extractvalue { i32, i1 } %43, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %45, i32 noundef 3264) #6
  %groups.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %38, i32 0, i32 7
  %46 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call5.i.i, ptr %groups.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i, label %devm_kmalloc_array.exit.i.do.end48_crit_edge, label %if.end.i172

devm_kmalloc_array.exit.i.do.end48_crit_edge:     ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

if.end.i172:                                      ; preds = %devm_kmalloc_array.exit.i
  %47 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %soc.i, align 4
  %ngrps5.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ngrps5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ngrps5.i, align 4
  %51 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 4) #6
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %devm_kmalloc_array.exit41.thread.i, label %devm_kmalloc_array.exit41.i, !prof !154

devm_kmalloc_array.exit41.thread.i:               ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #8
  %grp_names46.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %38, i32 0, i32 8
  br label %cleanup.sink.split.i

devm_kmalloc_array.exit41.i:                      ; preds = %if.end.i172
  %53 = extractvalue { i32, i1 } %51, 0
  %call5.i38.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %53, i32 noundef 3264) #6
  %grp_names.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %38, i32 0, i32 8
  %54 = ptrtoint ptr %grp_names.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call5.i38.i, ptr %grp_names.i, align 4
  %tobool8.not.i = icmp eq ptr %call5.i38.i, null
  br i1 %tobool8.not.i, label %devm_kmalloc_array.exit41.i.do.end48_crit_edge, label %for.cond.preheader.i

devm_kmalloc_array.exit41.i.do.end48_crit_edge:   ; preds = %devm_kmalloc_array.exit41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

for.cond.preheader.i:                             ; preds = %devm_kmalloc_array.exit41.i
  %55 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %soc.i, align 4
  %npins48.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %npins48.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %npins48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp49.not.i = icmp eq i32 %58, 0
  br i1 %cmp49.not.i, label %for.cond.preheader.i.if.end50_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end50_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %59 = phi ptr [ %75, %for.body.i.for.body.i_crit_edge ], [ %56, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.050.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %pins.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pins.i, align 4
  %add.ptr.i = getelementptr %struct.mtk_pin_desc, ptr %61, i32 %i.050.i
  %62 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %groups.i, align 4
  %add.ptr14.i = getelementptr %struct.mtk_pinctrl_group, ptr %63, i32 %i.050.i
  %name.i = getelementptr %struct.mtk_pin_desc, ptr %61, i32 %i.050.i, i32 1
  %64 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name.i, align 4
  %66 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %add.ptr14.i, align 4
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i, align 4
  %pin16.i = getelementptr %struct.mtk_pinctrl_group, ptr %63, i32 %i.050.i, i32 2
  %69 = ptrtoint ptr %pin16.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %pin16.i, align 4
  %70 = load ptr, ptr %name.i, align 4
  %71 = ptrtoint ptr %grp_names.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %grp_names.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %72, i32 %i.050.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.050.i, 1
  %74 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %soc.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %npins.i, align 4
  %cmp.i173 = icmp ult i32 %inc.i, %77
  br i1 %cmp.i173, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end50_crit_edge

for.body.i.if.end50_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.sink.split.i:                             ; preds = %devm_kmalloc_array.exit41.thread.i, %devm_kmalloc_array.exit.thread.i
  %grp_names46.sink.i = phi ptr [ %grp_names46.i, %devm_kmalloc_array.exit41.thread.i ], [ %groups43.i, %devm_kmalloc_array.exit.thread.i ]
  %78 = ptrtoint ptr %grp_names46.sink.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %grp_names46.sink.i, align 4
  br label %do.end48

do.end48:                                         ; preds = %cleanup.sink.split.i, %devm_kmalloc_array.exit41.i.do.end48_crit_edge, %devm_kmalloc_array.exit.i.do.end48_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef -12) #9
  br label %cleanup

if.end50:                                         ; preds = %for.body.i.if.end50_crit_edge, %for.cond.preheader.i.if.end50_crit_edge
  %79 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %soc1, align 4
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %npins, align 4
  %83 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %82, i32 12) #6
  %84 = extractvalue { i32, i1 } %83, 1
  br i1 %84, label %if.end50.cleanup_crit_edge, label %devm_kmalloc_array.exit178, !prof !154

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kmalloc_array.exit178:                       ; preds = %if.end50
  %85 = extractvalue { i32, i1 } %83, 0
  %call5.i175 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %85, i32 noundef 3264) #6
  %tobool54.not = icmp eq ptr %call5.i175, null
  br i1 %tobool54.not, label %devm_kmalloc_array.exit178.cleanup_crit_edge, label %for.cond57.preheader

devm_kmalloc_array.exit178.cleanup_crit_edge:     ; preds = %devm_kmalloc_array.exit178
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond57.preheader:                             ; preds = %devm_kmalloc_array.exit178
  %86 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %soc1, align 4
  %npins59 = getelementptr inbounds %struct.mtk_pin_soc, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %npins59 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %npins59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp60194.not = icmp eq i32 %89, 0
  br i1 %cmp60194.not, label %for.cond57.preheader.for.end75_crit_edge, label %for.body62.lr.ph

for.cond57.preheader.for.end75_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end75

for.body62.lr.ph:                                 ; preds = %for.cond57.preheader
  %pins64 = getelementptr inbounds %struct.mtk_pin_soc, ptr %87, i32 0, i32 1
  br label %for.body62

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %for.body62.lr.ph
  %i.1195 = phi i32 [ 0, %for.body62.lr.ph ], [ %inc74, %for.body62.for.body62_crit_edge ]
  %90 = ptrtoint ptr %pins64 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pins64, align 4
  %arrayidx65 = getelementptr %struct.mtk_pin_desc, ptr %91, i32 %i.1195
  %92 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx65, align 4
  %arrayidx66 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i175, i32 %i.1195
  %94 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx66, align 4
  %95 = load ptr, ptr %pins64, align 4
  %name = getelementptr %struct.mtk_pin_desc, ptr %95, i32 %i.1195, i32 1
  %96 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name, align 4
  %name72 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i175, i32 %i.1195, i32 1
  %98 = ptrtoint ptr %name72 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %name72, align 4
  %inc74 = add nuw i32 %i.1195, 1
  %99 = ptrtoint ptr %npins59 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %npins59, align 4
  %cmp60 = icmp ult i32 %inc74, %100
  br i1 %cmp60, label %for.body62.for.body62_crit_edge, label %for.body62.for.end75_crit_edge

for.body62.for.end75_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end75

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body62

for.end75:                                        ; preds = %for.body62.for.end75_crit_edge, %for.cond57.preheader.for.end75_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond57.preheader.for.end75_crit_edge ], [ %100, %for.body62.for.end75_crit_edge ]
  store ptr %call5.i175, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 1), align 4
  store i32 %.lcssa, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 2), align 4
  store i32 5, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 7), align 4
  store ptr @mtk_custom_bindings, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 8), align 4
  store ptr @mtk_conf_items, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 9), align 4
  %call79 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %dev, ptr noundef nonnull @mtk_desc, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %for.end75.cleanup_crit_edge

for.end75.cleanup_crit_edge:                      ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82:                                         ; preds = %for.end75
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  %call84 = tail call i32 @pinctrl_enable(ptr noundef %102) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end87:                                         ; preds = %if.end82
  %call88 = tail call i32 @mtk_build_eint(ptr noundef nonnull %call.i, ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end87.if.end95_crit_edge, label %do.end93

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %if.end95

if.end95:                                         ; preds = %do.end93, %if.end87.if.end95_crit_edge
  %call96 = tail call fastcc i32 @mtk_build_gpiochip(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end103, label %do.end101

do.end101:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end103:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %do.end101, %if.end82.cleanup_crit_edge, %for.end75.cleanup_crit_edge, %devm_kmalloc_array.exit178.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end48, %if.then26, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kmalloc_array.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.then26 ], [ -22, %do.end48 ], [ %call96, %do.end101 ], [ 0, %if.end103 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit178.cleanup_crit_edge ], [ %call79, %for.end75.cleanup_crit_edge ], [ %call84, %if.end82.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ], [ -12, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_build_eint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_build_gpiochip(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.21, ptr %chip1, align 4
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
  %get_direction = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mtk_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mtk_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 9
  %8 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mtk_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 10
  %9 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mtk_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 12
  %10 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mtk_gpio_set, ptr %set, align 4
  %to_irq = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 15
  %11 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mtk_gpio_to_irq, ptr %to_irq, align 4
  %set_config = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 14
  %12 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mtk_gpio_set_config, ptr %set_config, align 4
  %base = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 19
  %13 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %base, align 4
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 5
  %14 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc, align 4
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npins, align 4
  %conv = trunc i32 %17 to i16
  %ngpio = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 20
  %18 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %ngpio, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.mtk_pinctrl, ptr %hw, i32 0, i32 4, i32 40
  %19 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %call = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip1, ptr noundef %hw, ptr noundef nonnull @mtk_build_gpiochip.lock_key, ptr noundef nonnull @mtk_build_gpiochip.request_key) #6
  %20 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_paris_pinctrl_suspend(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %eint = getelementptr inbounds %struct.mtk_pinctrl, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eint, align 4
  %call1 = tail call i32 @mtk_eint_do_suspend(ptr noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_paris_pinctrl_resume(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %eint = getelementptr inbounds %struct.mtk_pinctrl, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eint, align 4
  %call1 = tail call i32 @mtk_eint_do_resume(ptr noundef %3) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_hw_get_value(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pctrl_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %ngrps = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ngrps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngrps, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_pctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 7
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 7
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
define internal void @mtk_pctrl_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %gpio) #0 align 64 {
entry:
  %buf = alloca [96 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 96)
  %call1 = call i32 @mtk_pctrl_show_one_pin(ptr noundef %call, i32 noundef %gpio, ptr noundef nonnull %buf, i32 noundef 96)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pctrl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #0 align 64 {
entry:
  %num_configs.i = alloca i32, align 4
  %configs.i = alloca ptr, align 4
  %pinfunc.i = alloca i32, align 4
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #6
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %map, align 4
  %1 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_maps, align 4
  %2 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserved_maps, align 4
  %call = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #6
  %cmp.not41 = icmp eq ptr %call, null
  br i1 %cmp.not41, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.042 = phi ptr [ %call3, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs.i) #6
  %3 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %num_configs.i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs.i) #6
  %4 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %configs.i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pinfunc.i) #6
  %5 = ptrtoint ptr %pinfunc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pinfunc.i, align 4, !annotation !152
  %call1.i = call ptr @of_find_property(ptr noundef nonnull %np.042, ptr noundef nonnull @.str.23, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %mtk_pctrl_dt_subnode_to_map.exit.thread, label %if.end.i

mtk_pctrl_dt_subnode_to_map.exit.thread:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef nonnull %np.042) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinfunc.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #6
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %call2.i = call i32 @pinconf_generic_parse_dt_config(ptr noundef nonnull %np.042, ptr noundef %pctldev, ptr noundef nonnull %configs.i, ptr noundef nonnull %num_configs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.mtk_pctrl_dt_subnode_to_map.exit_crit_edge

if.end.i.mtk_pctrl_dt_subnode_to_map.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.i

if.end19.i:                                       ; preds = %if.end5.i
  %maps_per_pin.1.i = select i1 %tobool6.not.i, i32 1, i32 2
  %mul.i = mul nuw nsw i32 %maps_per_pin.1.i, %div112.i
  %call20.i = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %mul.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.end19.i.exit.i_crit_edge, label %for.body.lr.ph.i

if.end19.i.exit.i_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.i

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %soc.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 5
  %groups.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 7
  %smax.i = call i32 @llvm.smax.i32(i32 %div112.i, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0138.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc57.i, %for.inc.i.for.body.i_crit_edge ]
  %call25.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %np.042, ptr noundef nonnull @.str.23, i32 noundef %i.0138.i, ptr noundef nonnull %pinfunc.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %for.body.i.exit.i_crit_edge

for.body.i.exit.i_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.i

if.end28.i:                                       ; preds = %for.body.i
  %12 = ptrtoint ptr %pinfunc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pinfunc.i, align 4
  %shr.i = lshr i32 %13, 8
  %and.i = and i32 %13, 15
  %14 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %17)
  %cmp29.not.i = icmp ult i32 %shr.i, %17
  br i1 %cmp29.not.i, label %if.end37.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev36.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %dev36.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev36.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.27) #9
  br label %exit.i

if.end37.i:                                       ; preds = %if.end28.i
  %ngrps.i.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %ngrps.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ngrps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp10.not.i.i, label %if.end37.i.do.end43.i_crit_edge, label %for.body.lr.ph.i.i

if.end37.i.do.end43.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.do.end43.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43.i

mtk_pctrl_find_group_by_pin.exit.i:               ; preds = %for.body.i.i
  %add.ptr.le.i.i = getelementptr %struct.mtk_pinctrl_group, ptr %23, i32 %i.011.i.i
  %tobool39.not.i = icmp eq ptr %add.ptr.le.i.i, null
  br i1 %tobool39.not.i, label %mtk_pctrl_find_group_by_pin.exit.i.do.end43.i_crit_edge, label %if.end45.i

mtk_pctrl_find_group_by_pin.exit.i.do.end43.i_crit_edge: ; preds = %mtk_pctrl_find_group_by_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43.i

do.end43.i:                                       ; preds = %mtk_pctrl_find_group_by_pin.exit.i.do.end43.i_crit_edge, %for.inc.i.i.do.end43.i_crit_edge, %if.end37.i.do.end43.i_crit_edge
  %dev44.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %dev44.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev44.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.30, i32 noundef %shr.i) #9
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
  call void @__sanitizer_cov_trace_pc() #8
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
  %41 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %soc.i, align 4
  %npins.i.i.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %npins.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %npins.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp22.not.i.i.i = icmp eq i32 %44, 0
  br i1 %cmp22.not.i.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i
  %pins.i.i.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %pins.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pins.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.023.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.mtk_pin_desc, ptr %46, i32 %i.023.i.i.i
  %47 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %shr.i)
  %cmp2.i.i.i = icmp eq i32 %48, %shr.i
  br i1 %cmp2.i.i.i, label %if.then.i.i.i, label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %funcs.i.i.i = getelementptr %struct.mtk_pin_desc, ptr %46, i32 %i.023.i.i.i, i32 4
  %49 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool.not24.i.i.i = icmp eq ptr %50, null
  br i1 %tobool.not24.i.i.i, label %if.then.i.i.i.do.end.i.i_crit_edge, label %if.then.i.i.i.land.rhs.i.i.i_crit_edge

if.then.i.i.i.land.rhs.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  br label %land.rhs.i.i.i

if.then.i.i.i.do.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.mtk_func_desc, ptr %func.025.i.i.i, i32 1
  %tobool.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.do.end.i.i_crit_edge, label %while.cond.i.i.i.land.rhs.i.i.i_crit_edge

while.cond.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i.i

while.cond.i.i.i.do.end.i.i_crit_edge:            ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

land.rhs.i.i.i:                                   ; preds = %while.cond.i.i.i.land.rhs.i.i.i_crit_edge, %if.then.i.i.i.land.rhs.i.i.i_crit_edge
  %func.025.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.cond.i.i.i.land.rhs.i.i.i_crit_edge ], [ %50, %if.then.i.i.i.land.rhs.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %func.025.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %func.025.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool3.not.i.i.i, label %land.rhs.i.i.i.do.end.i.i_crit_edge, label %while.body.i.i.i

land.rhs.i.i.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %muxval.i.i.i = getelementptr inbounds %struct.mtk_func_desc, ptr %func.025.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %muxval.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %muxval.i.i.i, align 4
  %conv.i.i.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv.i.i.i)
  %cmp4.i.i.i = icmp eq i32 %and.i, %conv.i.i.i
  br i1 %cmp4.i.i.i, label %if.end49.i, label %while.cond.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.023.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %44
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.inc.i.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i.i.do.end.i.i_crit_edge, %land.rhs.i.i.i.do.end.i.i_crit_edge, %while.cond.i.i.i.do.end.i.i_crit_edge, %if.then.i.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 3
  %55 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.32, i32 noundef %and.i, i32 noundef %shr.i) #9
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
  call void @__sanitizer_cov_trace_pc() #8
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
  %call52.i = call i32 @pinctrl_utils_add_map_configs(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef %66, ptr noundef %68, i32 noundef %70, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %if.then51.i.exit.i_crit_edge, label %if.then51.i.for.inc.i_crit_edge

if.then51.i.for.inc.i_crit_edge:                  ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then51.i.exit.i_crit_edge:                     ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.i

for.inc.i:                                        ; preds = %if.then51.i.for.inc.i_crit_edge, %if.end49.i.for.inc.i_crit_edge
  %inc57.i = add nuw nsw i32 %i.0138.i, 1
  %exitcond.not.i = icmp eq i32 %inc57.i, %smax.i
  br i1 %exitcond.not.i, label %for.inc.i.exit.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.exit.i_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.i

exit.i:                                           ; preds = %for.inc.i.exit.i_crit_edge, %if.then51.i.exit.i_crit_edge, %do.end.i.i, %if.end45.i.exit.i_crit_edge, %do.end43.i, %do.end35.i, %for.body.i.exit.i_crit_edge, %if.end19.i.exit.i_crit_edge, %if.end5.i.exit.i_crit_edge
  %err.0.i = phi i32 [ %call20.i, %if.end19.i.exit.i_crit_edge ], [ -22, %do.end35.i ], [ -22, %do.end43.i ], [ -22, %if.end5.i.exit.i_crit_edge ], [ -22, %do.end.i.i ], [ -28, %if.end45.i.exit.i_crit_edge ], [ 0, %for.inc.i.exit.i_crit_edge ], [ %call52.i, %if.then51.i.exit.i_crit_edge ], [ %call25.i, %for.body.i.exit.i_crit_edge ]
  %71 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %configs.i, align 4
  call void @kfree(ptr noundef %72) #6
  br label %mtk_pctrl_dt_subnode_to_map.exit

mtk_pctrl_dt_subnode_to_map.exit:                 ; preds = %exit.i, %if.end.i.mtk_pctrl_dt_subnode_to_map.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %exit.i ], [ %call2.i, %if.end.i.mtk_pctrl_dt_subnode_to_map.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinfunc.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %mtk_pctrl_dt_subnode_to_map.exit.if.then_crit_edge, label %for.inc

mtk_pctrl_dt_subnode_to_map.exit.if.then_crit_edge: ; preds = %mtk_pctrl_dt_subnode_to_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %mtk_pctrl_dt_subnode_to_map.exit.if.then_crit_edge, %mtk_pctrl_dt_subnode_to_map.exit.thread
  %retval.0.i18 = phi i32 [ -22, %mtk_pctrl_dt_subnode_to_map.exit.thread ], [ %retval.0.i, %mtk_pctrl_dt_subnode_to_map.exit.if.then_crit_edge ]
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 4
  %75 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_maps, align 4
  call void @pinctrl_utils_free_map(ptr noundef %pctldev, ptr noundef %74, i32 noundef %76) #6
  call void @of_node_put(ptr noundef nonnull %np.042) #6
  br label %cleanup

for.inc:                                          ; preds = %mtk_pctrl_dt_subnode_to_map.exit
  %call3 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %np.042) #6
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i18, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mtk_pmx_get_func_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %grp_names = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %grp_names to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grp_names, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc, align 4
  %ngrps = getelementptr inbounds %struct.mtk_pin_soc, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ngrps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ngrps, align 4
  %7 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pmx_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.mtk_pinctrl_group, ptr %1, i32 %group, i32 2
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin, align 4
  %soc.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp22.not.i = icmp eq i32 %7, 0
  br i1 %cmp22.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %pins.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.mtk_pin_desc, ptr %9, i32 %i.023.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp2.i = icmp eq i32 %11, %3
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %funcs.i = getelementptr %struct.mtk_pin_desc, ptr %9, i32 %i.023.i, i32 4
  %12 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs.i, align 4
  %tobool.not24.i = icmp eq ptr %13, null
  br i1 %tobool.not24.i, label %if.then.i.do.end_crit_edge, label %if.then.i.land.rhs.i_crit_edge

if.then.i.land.rhs.i_crit_edge:                   ; preds = %if.then.i
  br label %land.rhs.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.mtk_func_desc, ptr %func.025.i, i32 1
  %tobool.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i, label %while.cond.i.do.end_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

while.cond.i.do.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %if.then.i.land.rhs.i_crit_edge
  %func.025.i = phi ptr [ %incdec.ptr.i, %while.cond.i.land.rhs.i_crit_edge ], [ %13, %if.then.i.land.rhs.i_crit_edge ]
  %14 = ptrtoint ptr %func.025.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func.025.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %land.rhs.i.do.end_crit_edge, label %while.body.i

land.rhs.i.do.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

while.body.i:                                     ; preds = %land.rhs.i
  %muxval.i = getelementptr inbounds %struct.mtk_func_desc, ptr %func.025.i, i32 0, i32 1
  %16 = ptrtoint ptr %muxval.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %muxval.i, align 4
  %conv.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %function)
  %cmp4.i = icmp eq i32 %conv.i, %function
  br i1 %cmp4.i, label %if.end, label %while.cond.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %land.rhs.i.do.end_crit_edge, %while.cond.i.do.end_crit_edge, %if.then.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.50, i32 noundef %function, i32 noundef %group) #9
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  %20 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pins.i, align 4
  %funcs.i26 = getelementptr %struct.mtk_pin_desc, ptr %21, i32 %3, i32 4
  %22 = ptrtoint ptr %funcs.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs.i26, align 4
  %tobool.not8.i = icmp eq ptr %23, null
  br i1 %tobool.not8.i, label %if.end.cleanup_crit_edge, label %if.end.land.rhs.i27_crit_edge

if.end.land.rhs.i27_crit_edge:                    ; preds = %if.end
  br label %land.rhs.i27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs.i27:                                     ; preds = %if.end.i.land.rhs.i27_crit_edge, %if.end.land.rhs.i27_crit_edge
  %func.09.i = phi ptr [ %incdec.ptr.i31, %if.end.i.land.rhs.i27_crit_edge ], [ %23, %if.end.land.rhs.i27_crit_edge ]
  %24 = ptrtoint ptr %func.09.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %func.09.i, align 4
  %tobool1.not.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i, label %land.rhs.i27.cleanup_crit_edge, label %while.body.i30

land.rhs.i27.cleanup_crit_edge:                   ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i30:                                   ; preds = %land.rhs.i27
  %muxval.i28 = getelementptr inbounds %struct.mtk_func_desc, ptr %func.09.i, i32 0, i32 1
  %26 = ptrtoint ptr %muxval.i28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %muxval.i28, align 4
  %conv.i29 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i29, i32 %function)
  %cmp.i = icmp eq i32 %conv.i29, %function
  br i1 %cmp.i, label %if.end6, label %if.end.i

if.end.i:                                         ; preds = %while.body.i30
  %incdec.ptr.i31 = getelementptr %struct.mtk_func_desc, ptr %func.09.i, i32 1
  %tobool.not.i32 = icmp eq ptr %incdec.ptr.i31, null
  br i1 %tobool.not.i32, label %if.end.i.cleanup_crit_edge, label %if.end.i.land.rhs.i27_crit_edge

if.end.i.land.rhs.i27_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i27

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %while.body.i30
  call void @__sanitizer_cov_trace_pc() #8
  %muxval.i28.le = getelementptr inbounds %struct.mtk_func_desc, ptr %func.09.i, i32 0, i32 1
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %21, i32 %3
  %28 = ptrtoint ptr %muxval.i28.le to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %muxval.i28.le, align 4
  %conv = zext i8 %29 to i32
  %call8 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 0, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.i.cleanup_crit_edge, %land.rhs.i27.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.rhs.i27.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
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
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %pin
  %gpio_m = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %gpio_m to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gpio_m, align 4
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 0, i32 noundef %conv) #6
  ret i32 %call2
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
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %3, i32 %pin
  %lnot = xor i1 %input, true
  %lnot.ext = zext i1 %lnot to i32
  %call1 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, i32 noundef %lnot.ext) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_hw_set_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #0 align 64 {
entry:
  %pullup = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pullup) #6
  %2 = ptrtoint ptr %pullup to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pullup, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #6
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %ret, align 4
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin)
  %cmp.not = icmp ugt i32 %7, %pin
  br i1 %cmp.not, label %if.end, label %entry.if.end87_crit_edge

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.end:                                           ; preds = %entry
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %9, i32 %pin
  %trunc = trunc i32 %1 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %trunc, label %if.end.if.end87_crit_edge [
    i8 1, label %if.end.sw.bb_crit_edge
    i8 5, label %if.end.sw.bb_crit_edge140
    i8 3, label %if.end.sw.bb_crit_edge141
    i8 24, label %sw.bb32
    i8 12, label %if.end.sw.bb34_crit_edge
    i8 18, label %if.end.sw.bb34_crit_edge142
    i8 14, label %sw.bb43
    i8 9, label %sw.bb52
    i8 -128, label %if.end.sw.bb61_crit_edge
    i8 -127, label %if.end.sw.bb61_crit_edge143
    i8 -126, label %if.end.sw.bb64_crit_edge
    i8 -125, label %if.end.sw.bb64_crit_edge144
    i8 -124, label %sw.bb75
  ]

if.end.sw.bb64_crit_edge144:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb64

if.end.sw.bb64_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb64

if.end.sw.bb61_crit_edge143:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb61

if.end.sw.bb61_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb61

if.end.sw.bb34_crit_edge142:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb34

if.end.sw.bb34_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb34

if.end.sw.bb_crit_edge141:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge140:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.if.end87_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge140, %if.end.sw.bb_crit_edge141
  %bias_get_combo = getelementptr inbounds %struct.mtk_pin_soc, ptr %5, i32 0, i32 21
  %11 = ptrtoint ptr %bias_get_combo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bias_get_combo, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %sw.bb.if.end87_crit_edge, label %if.then4

sw.bb.if.end87_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then4:                                         ; preds = %sw.bb
  %call7 = call i32 %12(ptr noundef %call, ptr noundef %arrayidx, ptr noundef nonnull %pullup, ptr noundef nonnull %ret) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then4.if.end87_crit_edge

if.then4.if.end87_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.end10:                                         ; preds = %if.then4
  %13 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %trunc, label %if.end10.if.then85_crit_edge [
    i8 1, label %if.then12
    i8 5, label %if.then17
    i8 3, label %if.then23
  ]

if.end10.if.then85_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then85

if.then12:                                        ; preds = %if.end10
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %15)
  %cmp13 = icmp eq i32 %15, 100
  br i1 %cmp13, label %if.then14, label %if.then12.if.then85_crit_edge

if.then12.if.then85_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then85

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ret, align 4
  br label %if.then85

if.then17:                                        ; preds = %if.end10
  %17 = ptrtoint ptr %pullup to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %if.then17.if.end87_crit_edge, label %if.then17.if.then85_crit_edge

if.then17.if.then85_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then85

if.then17.if.end87_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then23:                                        ; preds = %if.end10
  %19 = ptrtoint ptr %pullup to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool24.not = icmp eq i32 %20, 0
  br i1 %tobool24.not, label %if.then23.if.then85_crit_edge, label %if.then23.if.end87_crit_edge

if.then23.if.end87_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then23.if.then85_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then85

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 4, ptr noundef nonnull %ret) #6
  br label %out

sw.bb34:                                          ; preds = %if.end.sw.bb34_crit_edge, %if.end.sw.bb34_crit_edge142
  %call35 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, ptr noundef nonnull %ret) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %sw.bb34.if.end87_crit_edge

sw.bb34.if.end87_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.end38:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and.i)
  %cmp39 = icmp eq i32 %and.i, 12
  br i1 %cmp39, label %if.then40, label %if.end38.if.then85_crit_edge

if.end38.if.then85_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then85

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool41.not = icmp eq i32 %22, 0
  %lnot.ext = zext i1 %tobool41.not to i32
  %23 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %lnot.ext, ptr %ret, align 4
  br label %if.then85

sw.bb43:                                          ; preds = %if.end
  %call44 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, ptr noundef nonnull %ret) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %sw.bb43.if.end87_crit_edge

sw.bb43.if.end87_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.end47:                                         ; preds = %sw.bb43
  %24 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool48.not = icmp eq i32 %25, 0
  br i1 %tobool48.not, label %if.end50, label %if.end47.if.end87_crit_edge

if.end47.if.end87_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.end50:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 5, ptr noundef nonnull %ret) #6
  br label %out

sw.bb52:                                          ; preds = %if.end
  %drive_get = getelementptr inbounds %struct.mtk_pin_soc, ptr %5, i32 0, i32 23
  %26 = ptrtoint ptr %drive_get to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drive_get, align 4
  %tobool54.not = icmp eq ptr %27, null
  br i1 %tobool54.not, label %sw.bb52.if.end87_crit_edge, label %if.then55

sw.bb52.if.end87_crit_edge:                       ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then55:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  %call58 = call i32 %27(ptr noundef %call, ptr noundef %arrayidx, ptr noundef nonnull %ret) #6
  br label %out

sw.bb61:                                          ; preds = %if.end.sw.bb61_crit_edge, %if.end.sw.bb61_crit_edge143
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and.i)
  %cmp62 = icmp eq i32 %and.i, 128
  %cond = select i1 %cmp62, i32 10, i32 11
  %call63 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef %cond, ptr noundef nonnull %ret) #6
  br label %out

sw.bb64:                                          ; preds = %if.end.sw.bb64_crit_edge, %if.end.sw.bb64_crit_edge144
  %adv_pull_get = getelementptr inbounds %struct.mtk_pin_soc, ptr %5, i32 0, i32 25
  %28 = ptrtoint ptr %adv_pull_get to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adv_pull_get, align 4
  %tobool66.not = icmp eq ptr %29, null
  br i1 %tobool66.not, label %sw.bb64.if.end87_crit_edge, label %if.then67

sw.bb64.if.end87_crit_edge:                       ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then67:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %and.i)
  %cmp68 = icmp eq i32 %and.i, 130
  %conv = zext i1 %cmp68 to i32
  %30 = ptrtoint ptr %pullup to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %pullup, align 4
  %call72 = call i32 %29(ptr noundef %call, ptr noundef %arrayidx, i1 noundef zeroext %cmp68, ptr noundef nonnull %ret) #6
  br label %out

sw.bb75:                                          ; preds = %if.end
  %adv_drive_get = getelementptr inbounds %struct.mtk_pin_soc, ptr %5, i32 0, i32 27
  %31 = ptrtoint ptr %adv_drive_get to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adv_drive_get, align 4
  %tobool77.not = icmp eq ptr %32, null
  br i1 %tobool77.not, label %sw.bb75.if.end87_crit_edge, label %if.then78

sw.bb75.if.end87_crit_edge:                       ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then78:                                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = call i32 %32(ptr noundef %call, ptr noundef %arrayidx, ptr noundef nonnull %ret) #6
  br label %out

out:                                              ; preds = %if.then78, %if.then67, %sw.bb61, %if.then55, %if.end50, %sw.bb32
  %err.0 = phi i32 [ %call81, %if.then78 ], [ %call72, %if.then67 ], [ %call63, %sw.bb61 ], [ %call58, %if.then55 ], [ %call51, %if.end50 ], [ %call33, %sw.bb32 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool84.not = icmp eq i32 %err.0, 0
  br i1 %tobool84.not, label %out.if.then85_crit_edge, label %out.if.end87_crit_edge

out.if.end87_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

out.if.then85_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then85

if.then85:                                        ; preds = %out.if.then85_crit_edge, %if.then40, %if.end38.if.then85_crit_edge, %if.then23.if.then85_crit_edge, %if.then17.if.then85_crit_edge, %if.then14, %if.then12.if.then85_crit_edge, %if.end10.if.then85_crit_edge
  %33 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ret, align 4
  %shl.i = shl i32 %34, 8
  %or.i = or i32 %shl.i, %and.i
  %35 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %config, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %out.if.end87_crit_edge, %sw.bb75.if.end87_crit_edge, %sw.bb64.if.end87_crit_edge, %sw.bb52.if.end87_crit_edge, %if.end47.if.end87_crit_edge, %sw.bb43.if.end87_crit_edge, %sw.bb34.if.end87_crit_edge, %if.then23.if.end87_crit_edge, %if.then17.if.end87_crit_edge, %if.then4.if.end87_crit_edge, %sw.bb.if.end87_crit_edge, %if.end.if.end87_crit_edge, %entry.if.end87_crit_edge
  %err.0133 = phi i32 [ 0, %if.then85 ], [ %err.0, %out.if.end87_crit_edge ], [ -524, %if.end.if.end87_crit_edge ], [ -524, %sw.bb75.if.end87_crit_edge ], [ -524, %sw.bb64.if.end87_crit_edge ], [ -524, %sw.bb52.if.end87_crit_edge ], [ -22, %if.end47.if.end87_crit_edge ], [ -524, %sw.bb.if.end87_crit_edge ], [ -22, %if.then23.if.end87_crit_edge ], [ -22, %entry.if.end87_crit_edge ], [ %call7, %if.then4.if.end87_crit_edge ], [ %call35, %sw.bb34.if.end87_crit_edge ], [ %call44, %sw.bb43.if.end87_crit_edge ], [ -22, %if.then17.if.end87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pullup) #6
  ret i32 %err.0133
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 7
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.mtk_pinctrl_group, ptr %1, i32 %group, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp22.not = icmp eq i32 %num_configs, 0
  br i1 %cmp22.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %config = getelementptr %struct.mtk_pinctrl_group, ptr %1, i32 %group, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin, align 4
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.023
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %and.i = and i32 %5, 255
  %shr.i = lshr i32 %5, 8
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %soc.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp.not.i = icmp ugt i32 %9, %3
  br i1 %cmp.not.i, label %if.end.i, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %pins.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pins.i, align 4
  %arrayidx.i = getelementptr %struct.mtk_pin_desc, ptr %11, i32 %3
  %trunc = trunc i32 %5 to i8
  %12 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %trunc, label %if.end.i.cleanup_crit_edge [
    i8 1, label %sw.bb.i
    i8 5, label %sw.bb8.i
    i8 3, label %sw.bb18.i
    i8 18, label %sw.bb28.i
    i8 12, label %sw.bb34.i
    i8 24, label %sw.bb42.i
    i8 17, label %sw.bb49.i
    i8 13, label %if.end.i.sw.bb55.i_crit_edge
    i8 14, label %if.end.i.sw.bb55.i_crit_edge33
    i8 9, label %sw.bb69.i
    i8 -128, label %if.end.i.sw.bb78.i_crit_edge
    i8 -127, label %if.end.i.sw.bb78.i_crit_edge34
    i8 -126, label %if.end.i.sw.bb81.i_crit_edge
    i8 -125, label %if.end.i.sw.bb81.i_crit_edge35
    i8 -124, label %sw.bb92.i
  ]

if.end.i.sw.bb81.i_crit_edge35:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb81.i

if.end.i.sw.bb81.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb81.i

if.end.i.sw.bb78.i_crit_edge34:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb78.i

if.end.i.sw.bb78.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb78.i

if.end.i.sw.bb55.i_crit_edge33:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb55.i

if.end.i.sw.bb55.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb55.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %bias_set_combo.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %7, i32 0, i32 20
  %13 = ptrtoint ptr %bias_set_combo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bias_set_combo.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.then3.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 %14(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef 0) #6
  br label %mtk_pinconf_set.exit

sw.bb8.i:                                         ; preds = %if.end.i
  %bias_set_combo10.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %7, i32 0, i32 20
  %15 = ptrtoint ptr %bias_set_combo10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bias_set_combo10.i, align 4
  %tobool11.not.i = icmp eq ptr %16, null
  br i1 %tobool11.not.i, label %sw.bb8.i.cleanup_crit_edge, label %if.then12.i

sw.bb8.i.cleanup_crit_edge:                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = tail call i32 %16(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef %shr.i) #6
  br label %mtk_pinconf_set.exit

sw.bb18.i:                                        ; preds = %if.end.i
  %bias_set_combo20.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %7, i32 0, i32 20
  %17 = ptrtoint ptr %bias_set_combo20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bias_set_combo20.i, align 4
  %tobool21.not.i = icmp eq ptr %18, null
  br i1 %tobool21.not.i, label %sw.bb18.i.cleanup_crit_edge, label %if.then22.i

sw.bb18.i.cleanup_crit_edge:                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  %call25.i = tail call i32 %18(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef %shr.i) #6
  br label %mtk_pinconf_set.exit

sw.bb28.i:                                        ; preds = %if.end.i
  %call29.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call29.i)
  %cmp30.not.i = icmp eq i32 %call29.i, -524
  br i1 %cmp30.not.i, label %if.end32.i, label %sw.bb28.i.mtk_pinconf_set.exit_crit_edge

sw.bb28.i.mtk_pinconf_set.exit_crit_edge:         ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_pinconf_set.exit

if.end32.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef 1) #6
  br label %mtk_pinconf_set.exit

sw.bb34.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %tobool35.i = icmp ugt i32 %5, 255
  %lnot.ext.i = zext i1 %tobool35.i to i32
  %call37.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 16, i32 noundef %lnot.ext.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %sw.bb34.i.mtk_pinconf_set.exit_crit_edge

sw.bb34.i.mtk_pinconf_set.exit_crit_edge:         ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_pinconf_set.exit

if.end40.i:                                       ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call41.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef 0) #6
  br label %mtk_pinconf_set.exit

sw.bb42.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %tobool43.i = icmp ugt i32 %5, 255
  %lnot.ext47.i = zext i1 %tobool43.i to i32
  %call48.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 4, i32 noundef %lnot.ext47.i) #6
  br label %mtk_pinconf_set.exit

sw.bb49.i:                                        ; preds = %if.end.i
  %call50.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 3, i32 noundef %shr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %sw.bb49.i.mtk_pinconf_set.exit_crit_edge

sw.bb49.i.mtk_pinconf_set.exit_crit_edge:         ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_pinconf_set.exit

if.end53.i:                                       ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #8
  %call54.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef 1) #6
  br label %mtk_pinconf_set.exit

sw.bb55.i:                                        ; preds = %if.end.i.sw.bb55.i_crit_edge, %if.end.i.sw.bb55.i_crit_edge33
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %tobool56.i = icmp ugt i32 %5, 255
  %lnot57.i = xor i1 %tobool56.i, true
  %lnot.ext58.i = zext i1 %lnot57.i to i32
  %call59.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef %lnot.ext58.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %sw.bb55.i.mtk_pinconf_set.exit_crit_edge

sw.bb55.i.mtk_pinconf_set.exit_crit_edge:         ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_pinconf_set.exit

if.end62.i:                                       ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #8
  %lnot.ext67.i = zext i1 %tobool56.i to i32
  %call68.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 5, i32 noundef %lnot.ext67.i) #6
  br label %mtk_pinconf_set.exit

sw.bb69.i:                                        ; preds = %if.end.i
  %drive_set.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %7, i32 0, i32 22
  %19 = ptrtoint ptr %drive_set.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drive_set.i, align 4
  %tobool71.not.i = icmp eq ptr %20, null
  br i1 %tobool71.not.i, label %sw.bb69.i.cleanup_crit_edge, label %if.then72.i

sw.bb69.i.cleanup_crit_edge:                      ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then72.i:                                      ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #8
  %call75.i = tail call i32 %20(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef %shr.i) #6
  br label %mtk_pinconf_set.exit

sw.bb78.i:                                        ; preds = %if.end.i.sw.bb78.i_crit_edge, %if.end.i.sw.bb78.i_crit_edge34
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and.i)
  %cmp79.i = icmp eq i32 %and.i, 128
  %cond.i = select i1 %cmp79.i, i32 10, i32 11
  %call80.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef %cond.i, i32 noundef %shr.i) #6
  br label %mtk_pinconf_set.exit

sw.bb81.i:                                        ; preds = %if.end.i.sw.bb81.i_crit_edge, %if.end.i.sw.bb81.i_crit_edge35
  %adv_pull_set.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %7, i32 0, i32 24
  %21 = ptrtoint ptr %adv_pull_set.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adv_pull_set.i, align 4
  %tobool83.not.i = icmp eq ptr %22, null
  br i1 %tobool83.not.i, label %sw.bb81.i.cleanup_crit_edge, label %if.then84.i

sw.bb81.i.cleanup_crit_edge:                      ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then84.i:                                      ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %and.i)
  %cmp85.i = icmp eq i32 %and.i, 130
  %call89.i = tail call i32 %22(ptr noundef %call.i, ptr noundef %arrayidx.i, i1 noundef zeroext %cmp85.i, i32 noundef %shr.i) #6
  br label %mtk_pinconf_set.exit

sw.bb92.i:                                        ; preds = %if.end.i
  %adv_drive_set.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %7, i32 0, i32 26
  %23 = ptrtoint ptr %adv_drive_set.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adv_drive_set.i, align 4
  %tobool94.not.i = icmp eq ptr %24, null
  br i1 %tobool94.not.i, label %sw.bb92.i.cleanup_crit_edge, label %if.then95.i

sw.bb92.i.cleanup_crit_edge:                      ; preds = %sw.bb92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then95.i:                                      ; preds = %sw.bb92.i
  call void @__sanitizer_cov_trace_pc() #8
  %call98.i = tail call i32 %24(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef %shr.i) #6
  br label %mtk_pinconf_set.exit

mtk_pinconf_set.exit:                             ; preds = %if.then95.i, %if.then84.i, %sw.bb78.i, %if.then72.i, %if.end62.i, %sw.bb55.i.mtk_pinconf_set.exit_crit_edge, %if.end53.i, %sw.bb49.i.mtk_pinconf_set.exit_crit_edge, %sw.bb42.i, %if.end40.i, %sw.bb34.i.mtk_pinconf_set.exit_crit_edge, %if.end32.i, %sw.bb28.i.mtk_pinconf_set.exit_crit_edge, %if.then22.i, %if.then12.i, %if.then3.i
  %err.0.i = phi i32 [ %call98.i, %if.then95.i ], [ %call89.i, %if.then84.i ], [ %call80.i, %sw.bb78.i ], [ %call75.i, %if.then72.i ], [ %call59.i, %sw.bb55.i.mtk_pinconf_set.exit_crit_edge ], [ %call68.i, %if.end62.i ], [ %call50.i, %sw.bb49.i.mtk_pinconf_set.exit_crit_edge ], [ %call54.i, %if.end53.i ], [ %call48.i, %sw.bb42.i ], [ %call37.i, %sw.bb34.i.mtk_pinconf_set.exit_crit_edge ], [ %call41.i, %if.end40.i ], [ %call29.i, %sw.bb28.i.mtk_pinconf_set.exit_crit_edge ], [ %call33.i, %if.end32.i ], [ %call25.i, %if.then22.i ], [ %call15.i, %if.then12.i ], [ %call6.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp6 = icmp slt i32 %err.0.i, 0
  br i1 %cmp6, label %mtk_pinconf_set.exit.cleanup_crit_edge, label %if.end

mtk_pinconf_set.exit.cleanup_crit_edge:           ; preds = %mtk_pinconf_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mtk_pinconf_set.exit
  %25 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1, align 4
  %27 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %config, align 4
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %mtk_pinconf_set.exit.cleanup_crit_edge, %sw.bb92.i.cleanup_crit_edge, %sw.bb81.i.cleanup_crit_edge, %sw.bb69.i.cleanup_crit_edge, %sw.bb18.i.cleanup_crit_edge, %sw.bb8.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -524, %if.end.i.cleanup_crit_edge ], [ -524, %sw.bb92.i.cleanup_crit_edge ], [ -524, %sw.bb81.i.cleanup_crit_edge ], [ -524, %sw.bb69.i.cleanup_crit_edge ], [ -524, %sw.bb18.i.cleanup_crit_edge ], [ -524, %sw.bb8.i.cleanup_crit_edge ], [ -524, %sw.bb.i.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %err.0.i, %mtk_pinconf_set.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_get_direction(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !152
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soc, align 4
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %gpio)
  %cmp.not = icmp ugt i32 %4, %gpio
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @mtk_is_virt_gpio(ptr noundef %call, i32 noundef %gpio) #6
  br i1 %call1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soc, align 4
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %gpio
  %call5 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 1, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  %. = zext i1 %tobool8.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %., %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_direction_input(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %gpio)
  %cmp.not = icmp ugt i32 %3, %gpio
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %add = add i32 %5, %gpio
  %call1 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpio_direction_output(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %gpio)
  %cmp.not = icmp ugt i32 %3, %gpio
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc.i = getelementptr inbounds %struct.mtk_pinctrl, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i, align 4
  %npins.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %gpio)
  %cmp.not.i = icmp ugt i32 %7, %gpio
  br i1 %cmp.not.i, label %if.end.i, label %if.end.mtk_gpio_set.exit_crit_edge

if.end.mtk_gpio_set.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_gpio_set.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pins.i = getelementptr inbounds %struct.mtk_pin_soc, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins.i, align 4
  %arrayidx.i = getelementptr %struct.mtk_pin_desc, ptr %9, i32 %gpio
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.i = icmp ne i32 %value, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %call3.i = tail call i32 @mtk_hw_set_value(ptr noundef %call.i, ptr noundef %arrayidx.i, i32 noundef 3, i32 noundef %lnot.ext.i) #6
  br label %mtk_gpio_set.exit

mtk_gpio_set.exit:                                ; preds = %if.end.i, %if.end.mtk_gpio_set.exit_crit_edge
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 4
  %add = add i32 %11, %gpio
  %call1 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #6
  br label %cleanup

cleanup:                                          ; preds = %mtk_gpio_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %mtk_gpio_set.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
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
  store i32 -1, ptr %value, align 4, !annotation !152
  %soc = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soc, align 4
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %gpio)
  %cmp.not = icmp ugt i32 %4, %gpio
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %6, i32 %gpio
  %call2 = call i32 @mtk_hw_get_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 2, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

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
  %retval.0 = phi i32 [ %lnot.ext, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
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
  %npins = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %gpio)
  %cmp.not = icmp ugt i32 %3, %gpio
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pins = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.mtk_pin_desc, ptr %5, i32 %gpio
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %lnot.ext = zext i1 %tobool to i32
  %call3 = tail call i32 @mtk_hw_set_value(ptr noundef %call, ptr noundef %arrayidx, i32 noundef 3, i32 noundef %lnot.ext) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
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
  %eint = getelementptr inbounds %struct.mtk_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eint, align 4
  %tobool.not = icmp ne ptr %1, null
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 11
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %lor.lhs.false2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
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
  %cmp4 = icmp eq i16 %7, -1
  br i1 %cmp4, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %config, 8
  %conv10 = zext i16 %7 to i32
  %call11 = tail call i32 @mtk_eint_set_debounce(ptr noundef nonnull %1, i32 noundef %conv10, i32 noundef %shr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -524, %lor.lhs.false2.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mtk_is_virt_gpio(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_find_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_set_debounce(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_do_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_do_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 630, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 643, i32 46}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 646, i32 46}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 648, i32 46}
!8 = !{ptr @__ksymtab_mtk_pctrl_show_one_pin, !9, !"__ksymtab_mtk_pctrl_show_one_pin", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 653, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 971, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mtk_paris_pinctrl_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @mtk_paris_pinctrl_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 991, i32 9}
!20 = !{ptr @mtk_paris_pinctrl_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 996, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 1000, i32 3}
!25 = !{ptr @mtk_paris_pinctrl_probe._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @mtk_paris_pinctrl_probe._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 1035, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mtk_paris_pinctrl_probe._entry.14, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_paris_pinctrl_probe._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 1041, i32 3}
!34 = !{ptr @mtk_paris_pinctrl_probe._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtk_paris_pinctrl_probe._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_mtk_paris_pinctrl_probe, !37, !"__ksymtab_mtk_paris_pinctrl_probe", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 1049, i32 1}
!38 = !{ptr @mtk_paris_pinctrl_pm_ops, !39, !"mtk_paris_pinctrl_pm_ops", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 1065, i32 25}
!40 = !{ptr @__UNIQUE_ID_file223, !41, !"__UNIQUE_ID_file223", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 1070, i32 1}
!42 = !{ptr @__UNIQUE_ID_license224, !41, !"__UNIQUE_ID_license224", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_description225, !44, !"__UNIQUE_ID_description225", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 1071, i32 1}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 774, i32 10}
!47 = !{ptr @mtk_desc, !48, !"mtk_desc", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 773, i32 28}
!49 = !{ptr @mtk_pctlops, !50, !"mtk_pctlops", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 667, i32 33}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 664, i32 16}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 404, i32 32}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 406, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 449, i32 4}
!62 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 456, i32 4}
!66 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtk_pctrl_dt_subnode_to_map._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 377, i32 3}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mtk_pctrl_dt_node_to_map_func._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtk_pctrl_dt_node_to_map_func._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 45, i32 2}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 45, i32 11}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 45, i32 20}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 45, i32 29}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 46, i32 2}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 46, i32 11}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 46, i32 20}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 46, i32 29}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 47, i32 2}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 47, i32 11}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 47, i32 20}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 47, i32 30}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 48, i32 2}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 48, i32 12}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 48, i32 22}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 48, i32 32}
!105 = !{ptr @mtk_gpio_functions, !106, !"mtk_gpio_functions", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 44, i32 27}
!107 = !{ptr @mtk_pmxops, !108, !"mtk_pmxops", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 727, i32 32}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 712, i32 3}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mtk_pmx_set_mux._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mtk_pmx_set_mux._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @mtk_confops, !115, !"mtk_confops", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 766, i32 33}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 27, i32 3}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 28, i32 3}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 29, i32 3}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 30, i32 3}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 31, i32 3}
!126 = !{ptr @mtk_custom_bindings, !127, !"mtk_custom_bindings", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 26, i32 44}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 36, i32 2}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 37, i32 2}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 38, i32 2}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 39, i32 2}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 40, i32 2}
!138 = !{ptr @mtk_conf_items, !139, !"mtk_conf_items", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 35, i32 37}
!140 = !{ptr @mtk_build_gpiochip.lock_key, !141, !"lock_key", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/mediatek/pinctrl-paris.c", i32 918, i32 8}
!142 = !{ptr @mtk_build_gpiochip.request_key, !141, !"request_key", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{i8 0, i8 2}
!154 = !{!"branch_weights", i32 1, i32 2000}
