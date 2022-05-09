; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/meson/pinctrl-meson.c_pt.bc'
source_filename = "../drivers/pinctrl/meson/pinctrl-meson.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+meson_pmx_get_funcs_count\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_pmx_get_funcs_count\09\09\09\09"
module asm "\09.long\09__crc_meson_pmx_get_funcs_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_pmx_get_funcs_count:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_pmx_get_funcs_count\22\09\09\09\09\09"
module asm "__kstrtabns_meson_pmx_get_funcs_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_pmx_get_func_name\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_pmx_get_func_name\09\09\09\09"
module asm "\09.long\09__crc_meson_pmx_get_func_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_pmx_get_func_name:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_pmx_get_func_name\22\09\09\09\09\09"
module asm "__kstrtabns_meson_pmx_get_func_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_pmx_get_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_pmx_get_groups\09\09\09\09"
module asm "\09.long\09__crc_meson_pmx_get_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_pmx_get_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_pmx_get_groups\22\09\09\09\09\09"
module asm "__kstrtabns_meson_pmx_get_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson8_aobus_parse_dt_extra\22, \22a\22\09"
module asm "\09.weak\09__crc_meson8_aobus_parse_dt_extra\09\09\09\09"
module asm "\09.long\09__crc_meson8_aobus_parse_dt_extra\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson8_aobus_parse_dt_extra:\09\09\09\09\09"
module asm "\09.asciz \09\22meson8_aobus_parse_dt_extra\22\09\09\09\09\09"
module asm "__kstrtabns_meson8_aobus_parse_dt_extra:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_a1_parse_dt_extra\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_a1_parse_dt_extra\09\09\09\09"
module asm "\09.long\09__crc_meson_a1_parse_dt_extra\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_a1_parse_dt_extra:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_a1_parse_dt_extra\22\09\09\09\09\09"
module asm "__kstrtabns_meson_a1_parse_dt_extra:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_pinctrl_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_pinctrl_probe\09\09\09\09"
module asm "\09.long\09__crc_meson_pinctrl_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_pinctrl_probe\22\09\09\09\09\09"
module asm "__kstrtabns_meson_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.meson_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, ptr, ptr, ptr, ptr, ptr, %struct.gpio_chip, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.meson_pinctrl_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.meson_pmx_func = type { ptr, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.meson_pmx_group = type { ptr, ptr, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.meson_bank = type { ptr, i32, i32, i32, i32, [6 x %struct.meson_reg_desc] }
%struct.meson_reg_desc = type { i32, i32 }

@__kstrtab_meson_pmx_get_funcs_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_pmx_get_funcs_count = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_pmx_get_funcs_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_pmx_get_funcs_count to i32), ptr @__kstrtab_meson_pmx_get_funcs_count, ptr @__kstrtabns_meson_pmx_get_funcs_count }, section "___ksymtab_gpl+meson_pmx_get_funcs_count", align 4
@__kstrtab_meson_pmx_get_func_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_pmx_get_func_name = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_pmx_get_func_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_pmx_get_func_name to i32), ptr @__kstrtab_meson_pmx_get_func_name, ptr @__kstrtabns_meson_pmx_get_func_name }, section "___ksymtab_gpl+meson_pmx_get_func_name", align 4
@__kstrtab_meson_pmx_get_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_pmx_get_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_pmx_get_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_pmx_get_groups to i32), ptr @__kstrtab_meson_pmx_get_groups, ptr @__kstrtabns_meson_pmx_get_groups }, section "___ksymtab_gpl+meson_pmx_get_groups", align 4
@__kstrtab_meson8_aobus_parse_dt_extra = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson8_aobus_parse_dt_extra = external dso_local constant [0 x i8], align 1
@__ksymtab_meson8_aobus_parse_dt_extra = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson8_aobus_parse_dt_extra to i32), ptr @__kstrtab_meson8_aobus_parse_dt_extra, ptr @__kstrtabns_meson8_aobus_parse_dt_extra }, section "___ksymtab_gpl+meson8_aobus_parse_dt_extra", align 4
@__kstrtab_meson_a1_parse_dt_extra = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_a1_parse_dt_extra = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_a1_parse_dt_extra = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_a1_parse_dt_extra to i32), ptr @__kstrtab_meson_a1_parse_dt_extra, ptr @__kstrtabns_meson_a1_parse_dt_extra }, section "___ksymtab_gpl+meson_a1_parse_dt_extra", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinctrl-meson\00", [18 x i8] zeroinitializer }, align 32
@meson_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @meson_get_groups_count, ptr @meson_get_group_name, ptr @meson_get_group_pins, ptr @meson_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@meson_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @meson_pinconf_get, ptr @meson_pinconf_set, ptr @meson_pinconf_group_get, ptr @meson_pinconf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@meson_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 768, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't register pinctrl device\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson_pinctrl_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/meson/pinctrl-meson.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_pinctrl_probe._entry_ptr = internal global ptr @meson_pinctrl_probe._entry, section ".printk_index", align 4
@__kstrtab_meson_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_pinctrl_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_pinctrl_probe to i32), ptr @__kstrtab_meson_pinctrl_probe, ptr @__kstrtabns_meson_pinctrl_probe }, section "___ksymtab_gpl+meson_pinctrl_probe", align 4
@__UNIQUE_ID_file226 = internal constant [55 x i8] c"pinctrl_meson.file=drivers/pinctrl/meson/pinctrl-meson\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [29 x i8] c"pinctrl_meson.license=GPL v2\00", section ".modinfo", align 1
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@meson_pinctrl_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 674, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"multiple gpio nodes\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson_pinctrl_parse_dt\00", [41 x i8] zeroinitializer }, align 32
@meson_pinctrl_parse_dt._entry_ptr = internal global ptr @meson_pinctrl_parse_dt._entry, section ".printk_index", align 4
@meson_pinctrl_parse_dt._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no gpio node found\0A\00", [44 x i8] zeroinitializer }, align 32
@meson_pinctrl_parse_dt._entry_ptr.11 = internal global ptr @meson_pinctrl_parse_dt._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mux\00", [28 x i8] zeroinitializer }, align 32
@meson_pinctrl_parse_dt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.3, i32 690, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mux registers not found\0A\00", [39 x i8] zeroinitializer }, align 32
@meson_pinctrl_parse_dt._entry_ptr.15 = internal global ptr @meson_pinctrl_parse_dt._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@meson_pinctrl_parse_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.3, i32 696, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gpio registers not found\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_pinctrl_parse_dt._entry_ptr.19 = internal global ptr @meson_pinctrl_parse_dt._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pull\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pull-enable\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ds\00", [29 x i8] zeroinitializer }, align 32
@meson_pinctrl_parse_dt.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.8, ptr @.str.3, ptr @.str.24, i8 0, i8 -79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinctrl_meson\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ds registers not found - skipping\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@meson_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%pOFn-%s\00", [23 x i8] zeroinitializer }, align 32
@meson_map_resource._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"pinctrl_meson:662:(&meson_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@meson_pinconf_get.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_pinconf_get\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pinconf for pin %u is %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_pinconf_set_drive_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drive-strength not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"meson_pinconf_set_drive_strength\00", [63 x i8] zeroinitializer }, align 32
@meson_pinconf_set_drive_strength._entry_ptr = internal global ptr @meson_pinconf_set_drive_strength._entry, section ".printk_index", align 4
@meson_pinconf_set_drive_strength.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@meson_pinconf_set_drive_strength._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 337, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"pin %u: invalid drive-strength : %d , default to 4mA\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@meson_pinconf_set_drive_strength._entry_ptr.36 = internal global ptr @meson_pinconf_set_drive_strength._entry.33, section ".printk_index", align 4
@meson_pinconf_group_set.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 -123, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_pinconf_group_set\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set pinconf for group %s\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_gpiolib_register.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_gpiolib_register.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_gpiolib_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 627, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't add gpio chip %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson_gpiolib_register\00", [41 x i8] zeroinitializer }, align 32
@meson_gpiolib_register._entry_ptr = internal global ptr @meson_gpiolib_register._entry, section ".printk_index", align 4
@switch.table.meson_pinconf_get = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 500, i32 2500, i32 3000, i32 4000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 5, i64 10, i64 17, i64 18]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 17, i64 18]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 5, i64 10, i64 17, i64 18]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 758, i32 19 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"meson_pctrl_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 140, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"meson_pinconf_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 550, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 768, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 671, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 674, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 682, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 688, i32 48 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 690, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 694, i32 49 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 696, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 700, i32 49 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 704, i32 51 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 708, i32 47 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 710, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 647, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"meson_regmap_config\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 634, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 657, i32 9 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 662, i32 9 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 137, i32 16 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 521, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 316, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 335, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 534, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 624, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [41 x i8] c"../drivers/pinctrl/meson/pinctrl-meson.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 626, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [31 x i8] c"switch.table.meson_pinconf_get\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__ksymtab_meson8_aobus_parse_dt_extra, ptr @__ksymtab_meson_a1_parse_dt_extra, ptr @__ksymtab_meson_pinctrl_probe, ptr @__ksymtab_meson_pmx_get_func_name, ptr @__ksymtab_meson_pmx_get_funcs_count, ptr @__ksymtab_meson_pmx_get_groups, ptr @meson_gpiolib_register._entry, ptr @meson_gpiolib_register._entry_ptr, ptr @meson_pinconf_set_drive_strength._entry, ptr @meson_pinconf_set_drive_strength._entry.33, ptr @meson_pinconf_set_drive_strength._entry_ptr, ptr @meson_pinconf_set_drive_strength._entry_ptr.36, ptr @meson_pinctrl_parse_dt._entry, ptr @meson_pinctrl_parse_dt._entry.13, ptr @meson_pinctrl_parse_dt._entry.17, ptr @meson_pinctrl_parse_dt._entry.9, ptr @meson_pinctrl_parse_dt._entry_ptr, ptr @meson_pinctrl_parse_dt._entry_ptr.11, ptr @meson_pinctrl_parse_dt._entry_ptr.15, ptr @meson_pinctrl_parse_dt._entry_ptr.19, ptr @meson_pinctrl_probe._entry, ptr @meson_pinctrl_probe._entry_ptr, ptr @.str, ptr @meson_pctrl_ops, ptr @meson_pinconf_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @meson_regmap_config, ptr @.str.26, ptr @meson_map_resource._key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @meson_gpiolib_register.lock_key, ptr @meson_gpiolib_register.request_key, ptr @.str.39, ptr @.str.40, ptr @switch.table.meson_pinconf_get], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pinctrl_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pinctrl_parse_dt._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pinctrl_parse_dt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pinctrl_parse_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_map_resource._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pinconf_set_drive_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pinconf_set_drive_strength._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpiolib_register.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpiolib_register.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpiolib_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.meson_pinconf_get to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_pmx_get_funcs_count(ptr noundef %pcdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #7
  %data = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %num_funcs = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_funcs, align 4
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @meson_pmx_get_func_name(ptr noundef %pcdev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #7
  %data = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %funcs = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %arrayidx = getelementptr %struct.meson_pmx_func, ptr %3, i32 %selector
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_pmx_get_groups(ptr noundef %pcdev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #7
  %data = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %funcs = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %groups1 = getelementptr %struct.meson_pmx_func, ptr %3, i32 %selector, i32 1
  %4 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups1, align 4
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %groups, align 4
  %7 = load ptr, ptr %data, align 4
  %funcs3 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %funcs3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs3, align 4
  %num_groups5 = getelementptr %struct.meson_pmx_func, ptr %9, i32 %selector, i32 2
  %10 = ptrtoint ptr %num_groups5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_groups5, align 4
  %12 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @meson8_aobus_parse_dt_extra(ptr nocapture noundef %pc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_pull = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 6
  %0 = ptrtoint ptr %reg_pull to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_pull, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg_pullen = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 5
  %2 = ptrtoint ptr %reg_pullen to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %reg_pullen, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @meson_a1_parse_dt_extra(ptr nocapture noundef %pc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_gpio = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 7
  %0 = ptrtoint ptr %reg_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_gpio, align 4
  %reg_pull = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 6
  %2 = ptrtoint ptr %reg_pull to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %reg_pull, align 4
  %reg_pullen = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 5
  %3 = ptrtoint ptr %reg_pullen to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %reg_pullen, align 4
  %reg_ds = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 8
  %4 = ptrtoint ptr %reg_ds to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %reg_ds, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_pinctrl_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 428, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %data = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %data, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call4 = tail call fastcc i32 @meson_pinctrl_parse_dt(ptr noundef nonnull %call.i, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %desc = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %desc, align 4
  %owner = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 2, i32 6
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  %pctlops = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @meson_pctrl_ops, ptr %pctlops, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %pmx_ops = getelementptr inbounds %struct.meson_pinctrl_data, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %pmx_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pmx_ops, align 4
  %pmxops = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @meson_pinconf_ops, ptr %confops, align 4
  %pins = getelementptr inbounds %struct.meson_pinctrl_data, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pins, align 4
  %pins15 = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %pins15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %pins15, align 4
  %num_pins = getelementptr inbounds %struct.meson_pinctrl_data, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pins, align 4
  %npins = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %npins, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call20 = tail call ptr @devm_pinctrl_register(ptr noundef %20, ptr noundef %desc, ptr noundef nonnull %call.i) #7
  %pcdev = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %pcdev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call20, ptr %pcdev, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.1) #10
  %24 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcdev, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end7
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %chip.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9
  %31 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %chip.i, align 4
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %parent.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %parent.i, align 4
  %request.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 5
  %35 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @gpiochip_generic_request, ptr %request.i, align 4
  %free.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 6
  %36 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @gpiochip_generic_free, ptr %free.i, align 4
  %set_config.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 14
  %37 = ptrtoint ptr %set_config.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @gpiochip_generic_config, ptr %set_config.i, align 4
  %get_direction.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 7
  %38 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @meson_gpio_get_direction, ptr %get_direction.i, align 4
  %direction_input.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 8
  %39 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @meson_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 9
  %40 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @meson_gpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 10
  %41 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @meson_gpio_get, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 12
  %42 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @meson_gpio_set, ptr %set.i, align 4
  %base.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 19
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %base.i, align 4
  %num_pins.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %28, i32 0, i32 4
  %44 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_pins.i, align 4
  %conv.i = trunc i32 %45 to i16
  %ngpio.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 20
  %46 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 23
  %47 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %can_sleep.i, align 4
  %of_node.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 10
  %48 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node.i, align 4
  %of_node15.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 39
  %50 = ptrtoint ptr %of_node15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %of_node15.i, align 4
  %of_gpio_n_cells.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call.i, i32 0, i32 9, i32 40
  %51 = ptrtoint ptr %of_gpio_n_cells.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %of_gpio_n_cells.i, align 4
  %call.i56 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip.i, ptr noundef nonnull %call.i, ptr noundef nonnull @meson_gpiolib_register.lock_key, ptr noundef nonnull @meson_gpiolib_register.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i, label %if.end27.cleanup_crit_edge, label %do.end.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.39, ptr noundef %57) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end27.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ %call.i56, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_pinctrl_parse_dt(ptr noundef %pc, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_next_child(ptr noundef %node, ptr noundef null) #7
  %cmp.not134 = icmp eq ptr %call, null
  br i1 %cmp.not134, label %entry.do.end10_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.0136 = phi ptr [ %call5, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %gpio_np.0135 = phi ptr [ %gpio_np.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @of_find_property(ptr noundef nonnull %np.0136, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %tobool2.not = icmp eq ptr %gpio_np.0135, null
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %do.end

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #10
  tail call void @of_node_put(ptr noundef nonnull %np.0136) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %gpio_np.1 = phi ptr [ %gpio_np.0135, %for.body.for.inc_crit_edge ], [ %np.0136, %if.end.for.inc_crit_edge ]
  %call5 = tail call ptr @of_get_next_child(ptr noundef %node, ptr noundef nonnull %np.0136) #7
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool6.not = icmp eq ptr %gpio_np.1, null
  br i1 %tobool6.not, label %for.end.do.end10_crit_edge, label %if.end12

for.end.do.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end10:                                         ; preds = %for.end.do.end10_crit_edge, %entry.do.end10_crit_edge
  %2 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end12:                                         ; preds = %for.end
  %of_node = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 10
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %gpio_np.1, ptr %of_node, align 4
  %call13 = tail call fastcc ptr @meson_map_resource(ptr noundef %pc, ptr noundef nonnull %gpio_np.1, ptr noundef nonnull @.str.12)
  %reg_mux = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 4
  %5 = ptrtoint ptr %reg_mux to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %reg_mux, align 4
  %tobool.not.i = icmp eq ptr %call13, null
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end19, label %if.end25

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14) #10
  %8 = ptrtoint ptr %reg_mux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mux, align 4
  %tobool22.not = icmp eq ptr %9, null
  %10 = ptrtoint ptr %9 to i32
  %spec.select = select i1 %tobool22.not, i32 -2, i32 %10
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  %call26 = tail call fastcc ptr @meson_map_resource(ptr noundef %pc, ptr noundef nonnull %gpio_np.1, ptr noundef nonnull @.str.16)
  %reg_gpio = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 7
  %11 = ptrtoint ptr %reg_gpio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call26, ptr %reg_gpio, align 4
  %tobool.not.i123 = icmp eq ptr %call26, null
  %cmp.i124 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %spec.select.i125 = or i1 %tobool.not.i123, %cmp.i124
  br i1 %spec.select.i125, label %do.end32, label %if.end42

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18) #10
  %14 = ptrtoint ptr %reg_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_gpio, align 4
  %tobool35.not = icmp eq ptr %15, null
  %16 = ptrtoint ptr %15 to i32
  %spec.select130 = select i1 %tobool35.not, i32 -2, i32 %16
  br label %cleanup

if.end42:                                         ; preds = %if.end25
  %call43 = tail call fastcc ptr @meson_map_resource(ptr noundef %pc, ptr noundef nonnull %gpio_np.1, ptr noundef nonnull @.str.20)
  %reg_pull = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 6
  %cmp.i126 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i126, ptr null, ptr %call43
  %17 = ptrtoint ptr %reg_pull to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.store.select, ptr %reg_pull, align 4
  %call49 = tail call fastcc ptr @meson_map_resource(ptr noundef %pc, ptr noundef nonnull %gpio_np.1, ptr noundef nonnull @.str.21)
  %reg_pullen = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 5
  %cmp.i127 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  %spec.store.select131 = select i1 %cmp.i127, ptr null, ptr %call49
  %18 = ptrtoint ptr %reg_pullen to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.store.select131, ptr %reg_pullen, align 4
  %call55 = tail call fastcc ptr @meson_map_resource(ptr noundef %pc, ptr noundef nonnull %gpio_np.1, ptr noundef nonnull @.str.22)
  %reg_ds = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 8
  %19 = ptrtoint ptr %reg_ds to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call55, ptr %reg_ds, align 4
  %cmp.i128 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %do.body59, label %if.end42.if.end71_crit_edge

if.end42.if.end71_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

do.body59:                                        ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_pinctrl_parse_dt.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_pinctrl_parse_dt, %do.end69)) #7
          to label %if.then65 [label %do.end69], !srcloc !111

if.then65:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_pinctrl_parse_dt.__UNIQUE_ID_ddebug225, ptr noundef %21, ptr noundef nonnull @.str.24) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body59
  %22 = ptrtoint ptr %reg_ds to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %reg_ds, align 4
  br label %if.end71

if.end71:                                         ; preds = %do.end69, %if.end42.if.end71_crit_edge
  %data = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 3
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %parse_dt = getelementptr inbounds %struct.meson_pinctrl_data, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %parse_dt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parse_dt, align 4
  %tobool72.not = icmp eq ptr %26, null
  br i1 %tobool72.not, label %if.end71.cleanup_crit_edge, label %if.then73

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %call76 = tail call i32 %26(ptr noundef %pc) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end71.cleanup_crit_edge, %do.end32, %do.end19, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call76, %if.then73 ], [ -22, %do.end10 ], [ 0, %if.end71.cleanup_crit_edge ], [ %spec.select, %do.end19 ], [ %spec.select130, %do.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @meson_map_resource(ptr nocapture noundef readonly %pc, ptr noundef %node, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = tail call i32 @of_property_match_string(ptr noundef %node, ptr noundef nonnull @.str.25, ptr noundef %name) #7
  %call1 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef %call, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pc, align 4
  %call2 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %res) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %0, align 4
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res, align 4
  %add.i = add i32 %5, -3
  %sub = sub i32 %add.i, %7
  store i32 %sub, ptr getelementptr inbounds (%struct.regmap_config, ptr @meson_regmap_config, i32 0, i32 19), align 4
  %8 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pc, align 4
  %call9 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %9, i32 noundef 3264, ptr noundef nonnull @.str.26, ptr noundef %node, ptr noundef %name) #7
  store ptr %call9, ptr @meson_regmap_config, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pc, align 4
  %call15 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %11, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @meson_regmap_config, ptr noundef nonnull @meson_map_resource._key, ptr noundef nonnull @.str.27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call15, %if.end13 ], [ null, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_get_groups_count(ptr noundef %pcdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #7
  %data = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %num_groups = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_groups, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @meson_get_group_name(ptr noundef %pcdev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #7
  %data = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %groups = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.meson_pmx_group, ptr %3, i32 %selector
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_get_group_pins(ptr noundef %pcdev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #7
  %data = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %groups = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.meson_pmx_group, ptr %3, i32 %selector, i32 1
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %data, align 4
  %groups3 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %groups3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %groups3, align 4
  %num_pins5 = getelementptr %struct.meson_pmx_group, ptr %9, i32 %selector, i32 2
  %10 = ptrtoint ptr %num_pins5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pins5, align 4
  %12 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_pin_dbg_show(ptr nocapture noundef readonly %pcdev, ptr noundef %s, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pcdev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pinconf_get(ptr noundef %pcdev, i32 noundef %pin, ptr nocapture noundef %config) #0 align 64 {
entry:
  %val.i.i115 = alloca i32, align 4
  %val.i.i81 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i54 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #7
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %entry.sw.bb_crit_edge
    i8 3, label %entry.sw.bb_crit_edge251
    i8 5, label %entry.sw.bb_crit_edge252
    i8 10, label %sw.bb3
    i8 18, label %sw.bb7
    i8 17, label %sw.bb12
  ]

entry.sw.bb_crit_edge252:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge251:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge251, %entry.sw.bb_crit_edge252
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !112
  %data.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %num_banks.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %num_banks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_banks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp18.not.i.i, label %sw.bb.meson_pinconf_get_pull.exit.thread_crit_edge, label %for.body.lr.ph.i.i

sw.bb.meson_pinconf_get_pull.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_pull.exit.thread

for.body.lr.ph.i.i:                               ; preds = %sw.bb
  %banks.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %banks.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %banks.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %first.i.i = getelementptr %struct.meson_bank, ptr %9, i32 %i.019.i.i, i32 1
  %10 = ptrtoint ptr %first.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %first.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %pin)
  %cmp2.not.i.i = icmp ugt i32 %11, %pin
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %last.i.i = getelementptr %struct.meson_bank, ptr %9, i32 %i.019.i.i, i32 2
  %12 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %pin)
  %cmp6.not.i.i = icmp ult i32 %13, %pin
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.end.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.inc.i.i.meson_pinconf_get_pull.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.meson_pinconf_get_pull.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_pull.exit.thread

if.end.i:                                         ; preds = %land.lhs.true.i.i
  %arrayidx.i.i = getelementptr %struct.meson_bank, ptr %9, i32 %i.019.i.i, i32 5, i32 0
  %bit1.i.i = getelementptr %struct.meson_bank, ptr %9, i32 %i.019.i.i, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %bit1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bit1.i.i, align 4
  %add.i.i = sub i32 %pin, %11
  %sub.i.i = add i32 %add.i.i, %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %div11.i.i = lshr i32 %sub.i.i, 5
  %add4.i.i = add i32 %div11.i.i, %17
  %mul5.i.i = shl i32 %add4.i.i, 2
  %reg_pullen.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 5
  %18 = ptrtoint ptr %reg_pullen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_pullen.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %19, i32 noundef %mul5.i.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.meson_pinconf_get_pull.exit_crit_edge

if.end.i.meson_pinconf_get_pull.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_pull.exit

if.end4.i:                                        ; preds = %if.end.i
  %and.i.i = and i32 %sub.i.i, 31
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  %shl.i = shl nuw i32 1, %and.i.i
  %and.i52 = and i32 %21, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool5.not.i = icmp eq i32 %and.i52, 0
  br i1 %tobool5.not.i, label %if.end4.i.meson_pinconf_get_pull.exit_crit_edge, label %if.else.i

if.end4.i.meson_pinconf_get_pull.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_pull.exit

if.else.i:                                        ; preds = %if.end4.i
  %arrayidx.i33.i = getelementptr %struct.meson_bank, ptr %9, i32 %i.019.i.i, i32 5, i32 1
  %bit1.i34.i = getelementptr %struct.meson_bank, ptr %9, i32 %i.019.i.i, i32 5, i32 1, i32 1
  %22 = ptrtoint ptr %bit1.i34.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bit1.i34.i, align 4
  %add.i35.i = add i32 %23, %pin
  %24 = ptrtoint ptr %first.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %first.i.i, align 4
  %sub.i37.i = sub i32 %add.i35.i, %25
  %26 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i33.i, align 4
  %div11.i38.i = lshr i32 %sub.i37.i, 5
  %add4.i39.i = add i32 %div11.i38.i, %27
  %mul5.i40.i = shl i32 %add4.i39.i, 2
  %reg_pull.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 6
  %28 = ptrtoint ptr %reg_pull.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_pull.i, align 4
  %call7.i = call i32 @regmap_read(ptr noundef %29, i32 noundef %mul5.i40.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.else.i.meson_pinconf_get_pull.exit_crit_edge

if.else.i.meson_pinconf_get_pull.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_pull.exit

if.end10.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i41.i = and i32 %sub.i37.i, 31
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i, align 4
  %shl11.i = shl nuw i32 1, %and.i41.i
  %and12.i = and i32 %31, %shl11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %..i = select i1 %tobool13.not.i, i32 3, i32 5
  br label %meson_pinconf_get_pull.exit

meson_pinconf_get_pull.exit.thread:               ; preds = %for.inc.i.i.meson_pinconf_get_pull.exit.thread_crit_edge, %sw.bb.meson_pinconf_get_pull.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

meson_pinconf_get_pull.exit:                      ; preds = %if.end10.i, %if.else.i.meson_pinconf_get_pull.exit_crit_edge, %if.end4.i.meson_pinconf_get_pull.exit_crit_edge, %if.end.i.meson_pinconf_get_pull.exit_crit_edge
  %retval.0.i53 = phi i32 [ %call1.i, %if.end.i.meson_pinconf_get_pull.exit_crit_edge ], [ %call7.i, %if.else.i.meson_pinconf_get_pull.exit_crit_edge ], [ 1, %if.end4.i.meson_pinconf_get_pull.exit_crit_edge ], [ %..i, %if.end10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i53, i32 %and.i)
  %cmp = icmp eq i32 %retval.0.i53, %and.i
  br i1 %cmp, label %meson_pinconf_get_pull.exit.sw.epilog_crit_edge, label %meson_pinconf_get_pull.exit.cleanup_crit_edge

meson_pinconf_get_pull.exit.cleanup_crit_edge:    ; preds = %meson_pinconf_get_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

meson_pinconf_get_pull.exit.sw.epilog_crit_edge:  ; preds = %meson_pinconf_get_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i54) #7
  %32 = ptrtoint ptr %val.i54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i54, align 4, !annotation !112
  %reg_ds.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 8
  %33 = ptrtoint ptr %reg_ds.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_ds.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %sw.bb3.meson_pinconf_get_drive_strength.exit_crit_edge, label %if.end.i58

sw.bb3.meson_pinconf_get_drive_strength.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_drive_strength.exit

if.end.i58:                                       ; preds = %sw.bb3
  %data.i.i55 = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %35 = ptrtoint ptr %data.i.i55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i55, align 4
  %num_banks.i.i56 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %num_banks.i.i56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_banks.i.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp18.not.i.i57 = icmp eq i32 %38, 0
  br i1 %cmp18.not.i.i57, label %if.end.i58.meson_pinconf_get_drive_strength.exit_crit_edge, label %for.body.lr.ph.i.i60

if.end.i58.meson_pinconf_get_drive_strength.exit_crit_edge: ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_drive_strength.exit

for.body.lr.ph.i.i60:                             ; preds = %if.end.i58
  %banks.i.i59 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %36, i32 0, i32 7
  %39 = ptrtoint ptr %banks.i.i59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %banks.i.i59, align 4
  br label %for.body.i.i64

for.body.i.i64:                                   ; preds = %for.inc.i.i70.for.body.i.i64_crit_edge, %for.body.lr.ph.i.i60
  %i.019.i.i61 = phi i32 [ 0, %for.body.lr.ph.i.i60 ], [ %inc.i.i68, %for.inc.i.i70.for.body.i.i64_crit_edge ]
  %first.i.i62 = getelementptr %struct.meson_bank, ptr %40, i32 %i.019.i.i61, i32 1
  %41 = ptrtoint ptr %first.i.i62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %first.i.i62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %pin)
  %cmp2.not.i.i63 = icmp ugt i32 %42, %pin
  br i1 %cmp2.not.i.i63, label %for.body.i.i64.for.inc.i.i70_crit_edge, label %land.lhs.true.i.i67

for.body.i.i64.for.inc.i.i70_crit_edge:           ; preds = %for.body.i.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i70

land.lhs.true.i.i67:                              ; preds = %for.body.i.i64
  %last.i.i65 = getelementptr %struct.meson_bank, ptr %40, i32 %i.019.i.i61, i32 2
  %43 = ptrtoint ptr %last.i.i65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %last.i.i65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %pin)
  %cmp6.not.i.i66 = icmp ult i32 %44, %pin
  br i1 %cmp6.not.i.i66, label %land.lhs.true.i.i67.for.inc.i.i70_crit_edge, label %if.end3.i

land.lhs.true.i.i67.for.inc.i.i70_crit_edge:      ; preds = %land.lhs.true.i.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i70

for.inc.i.i70:                                    ; preds = %land.lhs.true.i.i67.for.inc.i.i70_crit_edge, %for.body.i.i64.for.inc.i.i70_crit_edge
  %inc.i.i68 = add nuw i32 %i.019.i.i61, 1
  %exitcond.not.i.i69 = icmp eq i32 %inc.i.i68, %38
  br i1 %exitcond.not.i.i69, label %for.inc.i.i70.meson_pinconf_get_drive_strength.exit_crit_edge, label %for.inc.i.i70.for.body.i.i64_crit_edge

for.inc.i.i70.for.body.i.i64_crit_edge:           ; preds = %for.inc.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i64

for.inc.i.i70.meson_pinconf_get_drive_strength.exit_crit_edge: ; preds = %for.inc.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_drive_strength.exit

if.end3.i:                                        ; preds = %land.lhs.true.i.i67
  %arrayidx.i.i71 = getelementptr %struct.meson_bank, ptr %40, i32 %i.019.i.i61, i32 5, i32 5
  %bit1.i.i72 = getelementptr %struct.meson_bank, ptr %40, i32 %i.019.i.i61, i32 5, i32 5, i32 1
  %45 = ptrtoint ptr %bit1.i.i72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bit1.i.i72, align 4
  %add.i.i73 = sub i32 %pin, %42
  %sub.i.i74 = add i32 %add.i.i73, %46
  %mul.i.i = shl i32 %sub.i.i74, 1
  %47 = ptrtoint ptr %arrayidx.i.i71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i71, align 4
  %div11.i.i75 = lshr i32 %mul.i.i, 5
  %add4.i.i76 = add i32 %div11.i.i75, %48
  %mul5.i.i77 = shl i32 %add4.i.i76, 2
  %call5.i = call i32 @regmap_read(ptr noundef nonnull %34, i32 noundef %mul5.i.i77, ptr noundef nonnull %val.i54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end3.i.meson_pinconf_get_drive_strength.exit_crit_edge

if.end3.i.meson_pinconf_get_drive_strength.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_drive_strength.exit

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i78 = and i32 %mul.i.i, 30
  %49 = ptrtoint ptr %val.i54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i54, align 4
  %shr.i = lshr i32 %50, %and.i.i78
  %and.i79 = and i32 %shr.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.meson_pinconf_get, i32 0, i32 %and.i79
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i54) #7
  br label %sw.epilog

meson_pinconf_get_drive_strength.exit:            ; preds = %if.end3.i.meson_pinconf_get_drive_strength.exit_crit_edge, %for.inc.i.i70.meson_pinconf_get_drive_strength.exit_crit_edge, %if.end.i58.meson_pinconf_get_drive_strength.exit_crit_edge, %sw.bb3.meson_pinconf_get_drive_strength.exit_crit_edge
  %retval.0.i80 = phi i32 [ -524, %sw.bb3.meson_pinconf_get_drive_strength.exit_crit_edge ], [ %call5.i, %if.end3.i.meson_pinconf_get_drive_strength.exit_crit_edge ], [ -22, %if.end.i58.meson_pinconf_get_drive_strength.exit_crit_edge ], [ -22, %for.inc.i.i70.meson_pinconf_get_drive_strength.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i54) #7
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %52 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %val.i.i, align 4, !annotation !112
  %data.i.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %53 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i, align 4
  %num_banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %num_banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_banks.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp18.not.i.i.i = icmp eq i32 %56, 0
  br i1 %cmp18.not.i.i.i, label %sw.bb7.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i.i

sw.bb7.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_gpio_bit.exit.thread.i

for.body.lr.ph.i.i.i:                             ; preds = %sw.bb7
  %banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %54, i32 0, i32 7
  %57 = ptrtoint ptr %banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %banks.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.019.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %first.i.i.i = getelementptr %struct.meson_bank, ptr %58, i32 %i.019.i.i.i, i32 1
  %59 = ptrtoint ptr %first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %pin)
  %cmp2.not.i.i.i = icmp ugt i32 %60, %pin
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %last.i.i.i = getelementptr %struct.meson_bank, ptr %58, i32 %i.019.i.i.i, i32 2
  %61 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %last.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %pin)
  %cmp6.not.i.i.i = icmp ult i32 %62, %pin
  br i1 %cmp6.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.019.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %56
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_gpio_bit.exit.thread.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.meson_bank, ptr %58, i32 %i.019.i.i.i, i32 5, i32 2
  %bit1.i.i.i = getelementptr %struct.meson_bank, ptr %58, i32 %i.019.i.i.i, i32 5, i32 2, i32 1
  %63 = ptrtoint ptr %bit1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bit1.i.i.i, align 4
  %add.i.i.i = sub i32 %pin, %60
  %sub.i.i.i = add i32 %64, %add.i.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i, align 4
  %div11.i.i.i = lshr i32 %sub.i.i.i, 5
  %add4.i.i.i = add i32 %div11.i.i.i, %66
  %mul5.i.i.i = shl i32 %add4.i.i.i, 2
  %reg_gpio.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 7
  %67 = ptrtoint ptr %reg_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_gpio.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %68, i32 noundef %mul5.i.i.i, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %meson_pinconf_get_output.exit, label %meson_pinconf_get_gpio_bit.exit.i

meson_pinconf_get_gpio_bit.exit.thread.i:         ; preds = %for.inc.i.i.i.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge, %sw.bb7.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %cleanup

meson_pinconf_get_gpio_bit.exit.i:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %cleanup

meson_pinconf_get_output.exit:                    ; preds = %if.end.i.i
  %and.i.i.i = and i32 %sub.i.i.i, 31
  %69 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %71 = shl nuw i32 1, %and.i.i.i
  %72 = and i32 %70, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp9.not.not.not = icmp eq i32 %72, 0
  br i1 %cmp9.not.not.not, label %meson_pinconf_get_output.exit.sw.epilog_crit_edge, label %meson_pinconf_get_output.exit.cleanup_crit_edge

meson_pinconf_get_output.exit.cleanup_crit_edge:  ; preds = %meson_pinconf_get_output.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

meson_pinconf_get_output.exit.sw.epilog_crit_edge: ; preds = %meson_pinconf_get_output.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i81) #7
  %73 = ptrtoint ptr %val.i.i81 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %val.i.i81, align 4, !annotation !112
  %data.i.i.i82 = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %74 = ptrtoint ptr %data.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i.i.i82, align 4
  %num_banks.i.i.i83 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %num_banks.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_banks.i.i.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp18.not.i.i.i84 = icmp eq i32 %77, 0
  br i1 %cmp18.not.i.i.i84, label %sw.bb12.meson_pinconf_get_gpio_bit.exit.thread.i110_crit_edge, label %for.body.lr.ph.i.i.i86

sw.bb12.meson_pinconf_get_gpio_bit.exit.thread.i110_crit_edge: ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_gpio_bit.exit.thread.i110

for.body.lr.ph.i.i.i86:                           ; preds = %sw.bb12
  %banks.i.i.i85 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %75, i32 0, i32 7
  %78 = ptrtoint ptr %banks.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %banks.i.i.i85, align 4
  br label %for.body.i.i.i90

for.body.i.i.i90:                                 ; preds = %for.inc.i.i.i96.for.body.i.i.i90_crit_edge, %for.body.lr.ph.i.i.i86
  %i.019.i.i.i87 = phi i32 [ 0, %for.body.lr.ph.i.i.i86 ], [ %inc.i.i.i94, %for.inc.i.i.i96.for.body.i.i.i90_crit_edge ]
  %first.i.i.i88 = getelementptr %struct.meson_bank, ptr %79, i32 %i.019.i.i.i87, i32 1
  %80 = ptrtoint ptr %first.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %first.i.i.i88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %pin)
  %cmp2.not.i.i.i89 = icmp ugt i32 %81, %pin
  br i1 %cmp2.not.i.i.i89, label %for.body.i.i.i90.for.inc.i.i.i96_crit_edge, label %land.lhs.true.i.i.i93

for.body.i.i.i90.for.inc.i.i.i96_crit_edge:       ; preds = %for.body.i.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i96

land.lhs.true.i.i.i93:                            ; preds = %for.body.i.i.i90
  %last.i.i.i91 = getelementptr %struct.meson_bank, ptr %79, i32 %i.019.i.i.i87, i32 2
  %82 = ptrtoint ptr %last.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %last.i.i.i91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %pin)
  %cmp6.not.i.i.i92 = icmp ult i32 %83, %pin
  br i1 %cmp6.not.i.i.i92, label %land.lhs.true.i.i.i93.for.inc.i.i.i96_crit_edge, label %if.end.i.i107

land.lhs.true.i.i.i93.for.inc.i.i.i96_crit_edge:  ; preds = %land.lhs.true.i.i.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i96

for.inc.i.i.i96:                                  ; preds = %land.lhs.true.i.i.i93.for.inc.i.i.i96_crit_edge, %for.body.i.i.i90.for.inc.i.i.i96_crit_edge
  %inc.i.i.i94 = add nuw i32 %i.019.i.i.i87, 1
  %exitcond.not.i.i.i95 = icmp eq i32 %inc.i.i.i94, %77
  br i1 %exitcond.not.i.i.i95, label %for.inc.i.i.i96.meson_pinconf_get_gpio_bit.exit.thread.i110_crit_edge, label %for.inc.i.i.i96.for.body.i.i.i90_crit_edge

for.inc.i.i.i96.for.body.i.i.i90_crit_edge:       ; preds = %for.inc.i.i.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i90

for.inc.i.i.i96.meson_pinconf_get_gpio_bit.exit.thread.i110_crit_edge: ; preds = %for.inc.i.i.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_gpio_bit.exit.thread.i110

if.end.i.i107:                                    ; preds = %land.lhs.true.i.i.i93
  %arrayidx.i.i.i97 = getelementptr %struct.meson_bank, ptr %79, i32 %i.019.i.i.i87, i32 5, i32 2
  %bit1.i.i.i98 = getelementptr %struct.meson_bank, ptr %79, i32 %i.019.i.i.i87, i32 5, i32 2, i32 1
  %84 = ptrtoint ptr %bit1.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bit1.i.i.i98, align 4
  %add.i.i.i99 = sub i32 %pin, %81
  %sub.i.i.i100 = add i32 %85, %add.i.i.i99
  %86 = ptrtoint ptr %arrayidx.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i.i97, align 4
  %div11.i.i.i101 = lshr i32 %sub.i.i.i100, 5
  %add4.i.i.i102 = add i32 %div11.i.i.i101, %87
  %mul5.i.i.i103 = shl i32 %add4.i.i.i102, 2
  %reg_gpio.i.i104 = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 7
  %88 = ptrtoint ptr %reg_gpio.i.i104 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_gpio.i.i104, align 4
  %call1.i.i105 = call i32 @regmap_read(ptr noundef %89, i32 noundef %mul5.i.i.i103, ptr noundef nonnull %val.i.i81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i105)
  %tobool2.not.i.i106 = icmp eq i32 %call1.i.i105, 0
  br i1 %tobool2.not.i.i106, label %meson_pinconf_get_output.exit114, label %meson_pinconf_get_gpio_bit.exit.i112

meson_pinconf_get_gpio_bit.exit.thread.i110:      ; preds = %for.inc.i.i.i96.meson_pinconf_get_gpio_bit.exit.thread.i110_crit_edge, %sw.bb12.meson_pinconf_get_gpio_bit.exit.thread.i110_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i81) #7
  br label %cleanup

meson_pinconf_get_gpio_bit.exit.i112:             ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i81) #7
  br label %cleanup

meson_pinconf_get_output.exit114:                 ; preds = %if.end.i.i107
  %and.i.i.i108 = and i32 %sub.i.i.i100, 31
  %90 = ptrtoint ptr %val.i.i81 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %val.i.i81, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i81) #7
  %92 = shl nuw i32 1, %and.i.i.i108
  %93 = and i32 %91, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp14.not.not.not = icmp eq i32 %93, 0
  br i1 %cmp14.not.not.not, label %if.end16, label %meson_pinconf_get_output.exit114.cleanup_crit_edge

meson_pinconf_get_output.exit114.cleanup_crit_edge: ; preds = %meson_pinconf_get_output.exit114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %meson_pinconf_get_output.exit114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i115) #7
  %94 = ptrtoint ptr %val.i.i115 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %val.i.i115, align 4, !annotation !112
  %95 = ptrtoint ptr %data.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i.i82, align 4
  %num_banks.i.i.i117 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %num_banks.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_banks.i.i.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp18.not.i.i.i118 = icmp eq i32 %98, 0
  br i1 %cmp18.not.i.i.i118, label %if.end16.meson_pinconf_get_drive.exit.thread_crit_edge, label %for.body.lr.ph.i.i.i120

if.end16.meson_pinconf_get_drive.exit.thread_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_drive.exit.thread

for.body.lr.ph.i.i.i120:                          ; preds = %if.end16
  %banks.i.i.i119 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %96, i32 0, i32 7
  %99 = ptrtoint ptr %banks.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %banks.i.i.i119, align 4
  br label %for.body.i.i.i124

for.body.i.i.i124:                                ; preds = %for.inc.i.i.i130.for.body.i.i.i124_crit_edge, %for.body.lr.ph.i.i.i120
  %i.019.i.i.i121 = phi i32 [ 0, %for.body.lr.ph.i.i.i120 ], [ %inc.i.i.i128, %for.inc.i.i.i130.for.body.i.i.i124_crit_edge ]
  %first.i.i.i122 = getelementptr %struct.meson_bank, ptr %100, i32 %i.019.i.i.i121, i32 1
  %101 = ptrtoint ptr %first.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %first.i.i.i122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %pin)
  %cmp2.not.i.i.i123 = icmp ugt i32 %102, %pin
  br i1 %cmp2.not.i.i.i123, label %for.body.i.i.i124.for.inc.i.i.i130_crit_edge, label %land.lhs.true.i.i.i127

for.body.i.i.i124.for.inc.i.i.i130_crit_edge:     ; preds = %for.body.i.i.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i130

land.lhs.true.i.i.i127:                           ; preds = %for.body.i.i.i124
  %last.i.i.i125 = getelementptr %struct.meson_bank, ptr %100, i32 %i.019.i.i.i121, i32 2
  %103 = ptrtoint ptr %last.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %last.i.i.i125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %pin)
  %cmp6.not.i.i.i126 = icmp ult i32 %104, %pin
  br i1 %cmp6.not.i.i.i126, label %land.lhs.true.i.i.i127.for.inc.i.i.i130_crit_edge, label %if.end.i.i141

land.lhs.true.i.i.i127.for.inc.i.i.i130_crit_edge: ; preds = %land.lhs.true.i.i.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i130

for.inc.i.i.i130:                                 ; preds = %land.lhs.true.i.i.i127.for.inc.i.i.i130_crit_edge, %for.body.i.i.i124.for.inc.i.i.i130_crit_edge
  %inc.i.i.i128 = add nuw i32 %i.019.i.i.i121, 1
  %exitcond.not.i.i.i129 = icmp eq i32 %inc.i.i.i128, %98
  br i1 %exitcond.not.i.i.i129, label %for.inc.i.i.i130.meson_pinconf_get_drive.exit.thread_crit_edge, label %for.inc.i.i.i130.for.body.i.i.i124_crit_edge

for.inc.i.i.i130.for.body.i.i.i124_crit_edge:     ; preds = %for.inc.i.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i124

for.inc.i.i.i130.meson_pinconf_get_drive.exit.thread_crit_edge: ; preds = %for.inc.i.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_drive.exit.thread

if.end.i.i141:                                    ; preds = %land.lhs.true.i.i.i127
  %arrayidx.i.i.i131 = getelementptr %struct.meson_bank, ptr %100, i32 %i.019.i.i.i121, i32 5, i32 3
  %bit1.i.i.i132 = getelementptr %struct.meson_bank, ptr %100, i32 %i.019.i.i.i121, i32 5, i32 3, i32 1
  %105 = ptrtoint ptr %bit1.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bit1.i.i.i132, align 4
  %add.i.i.i133 = sub i32 %pin, %102
  %sub.i.i.i134 = add i32 %106, %add.i.i.i133
  %107 = ptrtoint ptr %arrayidx.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i.i.i131, align 4
  %div11.i.i.i135 = lshr i32 %sub.i.i.i134, 5
  %add4.i.i.i136 = add i32 %div11.i.i.i135, %108
  %mul5.i.i.i137 = shl i32 %add4.i.i.i136, 2
  %109 = ptrtoint ptr %reg_gpio.i.i104 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg_gpio.i.i104, align 4
  %call1.i.i139 = call i32 @regmap_read(ptr noundef %110, i32 noundef %mul5.i.i.i137, ptr noundef nonnull %val.i.i115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i139)
  %tobool2.not.i.i140 = icmp eq i32 %call1.i.i139, 0
  br i1 %tobool2.not.i.i140, label %meson_pinconf_get_drive.exit.thread154, label %meson_pinconf_get_drive.exit

meson_pinconf_get_drive.exit.thread154:           ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i142 = and i32 %sub.i.i.i134, 31
  %111 = ptrtoint ptr %val.i.i115 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val.i.i115, align 4
  %113 = lshr i32 %112, %and.i.i.i142
  %114 = and i32 %113, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i115) #7
  br label %sw.epilog

meson_pinconf_get_drive.exit.thread:              ; preds = %for.inc.i.i.i130.meson_pinconf_get_drive.exit.thread_crit_edge, %if.end16.meson_pinconf_get_drive.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i115) #7
  br label %cleanup

meson_pinconf_get_drive.exit:                     ; preds = %if.end.i.i141
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i139)
  %cmp18 = icmp slt i32 %call1.i.i139, 0
  br i1 %cmp18, label %meson_pinconf_get_drive.exit.cleanup_crit_edge, label %meson_pinconf_get_drive.exit.sw.epilog_crit_edge

meson_pinconf_get_drive.exit.sw.epilog_crit_edge: ; preds = %meson_pinconf_get_drive.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

meson_pinconf_get_drive.exit.cleanup_crit_edge:   ; preds = %meson_pinconf_get_drive.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %meson_pinconf_get_drive.exit.sw.epilog_crit_edge, %meson_pinconf_get_drive.exit.thread154, %meson_pinconf_get_output.exit.sw.epilog_crit_edge, %if.end8.i, %meson_pinconf_get_pull.exit.sw.epilog_crit_edge
  %arg.1 = phi i32 [ 1, %meson_pinconf_get_pull.exit.sw.epilog_crit_edge ], [ %switch.load, %if.end8.i ], [ 1, %meson_pinconf_get_output.exit.sw.epilog_crit_edge ], [ %114, %meson_pinconf_get_drive.exit.thread154 ], [ %call1.i.i139, %meson_pinconf_get_drive.exit.sw.epilog_crit_edge ]
  %conv21 = shl i32 %arg.1, 8
  %shl.i144 = and i32 %conv21, 16776960
  %or.i = or i32 %shl.i144, %and.i
  %115 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i, ptr %config, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_pinconf_get.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_pinconf_get, %cleanup)) #7
          to label %if.then28 [label %cleanup], !srcloc !111

if.then28:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call, align 4
  %118 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %config, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_pinconf_get.__UNIQUE_ID_ddebug223, ptr noundef %117, ptr noundef nonnull @.str.30, i32 noundef %pin, i32 noundef %119) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %sw.epilog, %meson_pinconf_get_drive.exit.cleanup_crit_edge, %meson_pinconf_get_drive.exit.thread, %meson_pinconf_get_output.exit114.cleanup_crit_edge, %meson_pinconf_get_gpio_bit.exit.i112, %meson_pinconf_get_gpio_bit.exit.thread.i110, %meson_pinconf_get_output.exit.cleanup_crit_edge, %meson_pinconf_get_gpio_bit.exit.i, %meson_pinconf_get_gpio_bit.exit.thread.i, %meson_pinconf_get_drive_strength.exit, %meson_pinconf_get_pull.exit.cleanup_crit_edge, %meson_pinconf_get_pull.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %meson_pinconf_get_pull.exit.cleanup_crit_edge ], [ %retval.0.i80, %meson_pinconf_get_drive_strength.exit ], [ -22, %meson_pinconf_get_output.exit.cleanup_crit_edge ], [ -22, %meson_pinconf_get_output.exit114.cleanup_crit_edge ], [ -22, %meson_pinconf_get_drive.exit.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ], [ 0, %if.then28 ], [ -22, %meson_pinconf_get_pull.exit.thread ], [ -22, %meson_pinconf_get_drive.exit.thread ], [ -22, %meson_pinconf_get_gpio_bit.exit.i ], [ -22, %meson_pinconf_get_gpio_bit.exit.thread.i ], [ -22, %meson_pinconf_get_gpio_bit.exit.i112 ], [ -22, %meson_pinconf_get_gpio_bit.exit.thread.i110 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pinconf_set(ptr noundef %pcdev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp84.not = icmp eq i32 %num_configs, 0
  br i1 %cmp84.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %reg_gpio.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 7
  %reg_ds.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 8
  %reg_pullen.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %sw.epilog18
  %inc = add nuw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arg.085 = phi i32 [ 0, %for.body.lr.ph ], [ %arg.1, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.086
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %trunc, label %for.body.sw.epilog_crit_edge [
    i8 10, label %for.body.sw.bb_crit_edge
    i8 18, label %for.body.sw.bb_crit_edge144
    i8 17, label %for.body.sw.bb_crit_edge145
  ]

for.body.sw.bb_crit_edge145:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge144:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge144, %for.body.sw.bb_crit_edge145
  %shr.i = lshr i32 %1, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body.sw.epilog_crit_edge
  %arg.1 = phi i32 [ %arg.085, %for.body.sw.epilog_crit_edge ], [ %shr.i, %sw.bb ]
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %trunc, label %sw.epilog.cleanup_crit_edge [
    i8 1, label %sw.bb4
    i8 5, label %sw.bb6
    i8 3, label %sw.bb8
    i8 10, label %sw.bb10
    i8 18, label %sw.bb12
    i8 17, label %sw.bb14
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.epilog
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %num_banks.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %num_banks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_banks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp18.not.i.i, label %sw.bb4.cleanup_crit_edge, label %for.body.lr.ph.i.i

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %sw.bb4
  %banks.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %banks.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %banks.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %first.i.i = getelementptr %struct.meson_bank, ptr %9, i32 %i.019.i.i, i32 1
  %10 = ptrtoint ptr %first.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %first.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %pin)
  %cmp2.not.i.i = icmp ugt i32 %11, %pin
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %last.i.i = getelementptr %struct.meson_bank, ptr %9, i32 %i.019.i.i, i32 2
  %12 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %pin)
  %cmp6.not.i.i = icmp ult i32 %13, %pin
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.end.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.meson_bank, ptr %9, i32 %i.019.i.i, i32 5, i32 0
  %bit1.i.i = getelementptr %struct.meson_bank, ptr %9, i32 %i.019.i.i, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %bit1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bit1.i.i, align 4
  %add.i.i = sub i32 %pin, %11
  %sub.i.i = add i32 %add.i.i, %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %div11.i.i = lshr i32 %sub.i.i, 5
  %add4.i.i = add i32 %div11.i.i, %17
  %mul5.i.i = shl i32 %add4.i.i, 2
  %and.i.i = and i32 %sub.i.i, 31
  %18 = ptrtoint ptr %reg_pullen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_pullen.i, align 4
  %shl.i = shl nuw i32 1, %and.i.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %mul5.i.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog18

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @meson_pinconf_enable_bias(ptr noundef %call, i32 noundef %pin, i1 noundef zeroext true)
  br label %sw.epilog18

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @meson_pinconf_enable_bias(ptr noundef %call, i32 noundef %pin, i1 noundef zeroext false)
  br label %sw.epilog18

sw.bb10:                                          ; preds = %sw.epilog
  %conv = trunc i32 %arg.1 to i16
  %20 = ptrtoint ptr %reg_ds.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_ds.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i45

do.end.i:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end.i45:                                       ; preds = %sw.bb10
  %24 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i, align 4
  %num_banks.i.i43 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %num_banks.i.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_banks.i.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp18.not.i.i44 = icmp eq i32 %27, 0
  br i1 %cmp18.not.i.i44, label %if.end.i45.cleanup_crit_edge, label %for.body.lr.ph.i.i47

if.end.i45.cleanup_crit_edge:                     ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i.i47:                             ; preds = %if.end.i45
  %banks.i.i46 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %25, i32 0, i32 7
  %28 = ptrtoint ptr %banks.i.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %banks.i.i46, align 4
  br label %for.body.i.i51

for.body.i.i51:                                   ; preds = %for.inc.i.i57.for.body.i.i51_crit_edge, %for.body.lr.ph.i.i47
  %i.019.i.i48 = phi i32 [ 0, %for.body.lr.ph.i.i47 ], [ %inc.i.i55, %for.inc.i.i57.for.body.i.i51_crit_edge ]
  %first.i.i49 = getelementptr %struct.meson_bank, ptr %29, i32 %i.019.i.i48, i32 1
  %30 = ptrtoint ptr %first.i.i49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %first.i.i49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %pin)
  %cmp2.not.i.i50 = icmp ugt i32 %31, %pin
  br i1 %cmp2.not.i.i50, label %for.body.i.i51.for.inc.i.i57_crit_edge, label %land.lhs.true.i.i54

for.body.i.i51.for.inc.i.i57_crit_edge:           ; preds = %for.body.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i57

land.lhs.true.i.i54:                              ; preds = %for.body.i.i51
  %last.i.i52 = getelementptr %struct.meson_bank, ptr %29, i32 %i.019.i.i48, i32 2
  %32 = ptrtoint ptr %last.i.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %last.i.i52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %pin)
  %cmp6.not.i.i53 = icmp ult i32 %33, %pin
  br i1 %cmp6.not.i.i53, label %land.lhs.true.i.i54.for.inc.i.i57_crit_edge, label %if.end3.i

land.lhs.true.i.i54.for.inc.i.i57_crit_edge:      ; preds = %land.lhs.true.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i57

for.inc.i.i57:                                    ; preds = %land.lhs.true.i.i54.for.inc.i.i57_crit_edge, %for.body.i.i51.for.inc.i.i57_crit_edge
  %inc.i.i55 = add nuw i32 %i.019.i.i48, 1
  %exitcond.not.i.i56 = icmp eq i32 %inc.i.i55, %27
  br i1 %exitcond.not.i.i56, label %for.inc.i.i57.cleanup_crit_edge, label %for.inc.i.i57.for.body.i.i51_crit_edge

for.inc.i.i57.for.body.i.i51_crit_edge:           ; preds = %for.inc.i.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i51

for.inc.i.i57.cleanup_crit_edge:                  ; preds = %for.inc.i.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %land.lhs.true.i.i54
  %arrayidx.i.i58 = getelementptr %struct.meson_bank, ptr %29, i32 %i.019.i.i48, i32 5, i32 5
  %bit1.i.i59 = getelementptr %struct.meson_bank, ptr %29, i32 %i.019.i.i48, i32 5, i32 5, i32 1
  %34 = ptrtoint ptr %bit1.i.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bit1.i.i59, align 4
  %add.i.i60 = sub i32 %pin, %31
  %sub.i.i61 = add i32 %add.i.i60, %35
  %mul.i.i = shl i32 %sub.i.i61, 1
  %36 = ptrtoint ptr %arrayidx.i.i58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i58, align 4
  %div11.i.i62 = lshr i32 %mul.i.i, 5
  %add4.i.i63 = add i32 %div11.i.i62, %37
  %mul5.i.i64 = shl i32 %add4.i.i63, 2
  %and.i.i65 = and i32 %mul.i.i, 30
  %conv.i = and i32 %arg.1, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 501, i16 %conv)
  %cmp.i = icmp ult i16 %conv, 501
  br i1 %cmp.i, label %if.end3.i.if.end35.i_crit_edge, label %if.else.i

if.end3.i.if.end35.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2501, i16 %conv)
  %cmp7.i = icmp ult i16 %conv, 2501
  br i1 %cmp7.i, label %if.else.i.if.end35.i_crit_edge, label %if.else10.i

if.else.i.if.end35.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3001, i16 %conv)
  %cmp12.i = icmp ult i16 %conv, 3001
  br i1 %cmp12.i, label %if.else10.i.if.end35.i_crit_edge, label %if.else15.i

if.else10.i.if.end35.i_crit_edge:                 ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.else15.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4001, i16 %conv)
  %cmp17.i = icmp ult i16 %conv, 4001
  br i1 %cmp17.i, label %if.else15.i.if.end35.i_crit_edge, label %do.body21.i

if.else15.i.if.end35.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

do.body21.i:                                      ; preds = %if.else15.i
  %.b59.i = load i1, ptr @meson_pinconf_set_drive_strength.__print_once, align 1
  br i1 %.b59.i, label %do.body21.i.if.end35.i_crit_edge, label %if.then23.i

do.body21.i.if.end35.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then23.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @meson_pinconf_set_drive_strength.__print_once, align 1
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.34, i32 noundef %pin, i32 noundef %conv.i) #10
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then23.i, %do.body21.i.if.end35.i_crit_edge, %if.else15.i.if.end35.i_crit_edge, %if.else10.i.if.end35.i_crit_edge, %if.else.i.if.end35.i_crit_edge, %if.end3.i.if.end35.i_crit_edge
  %ds_val.0.i = phi i32 [ 0, %if.end3.i.if.end35.i_crit_edge ], [ 1, %if.else.i.if.end35.i_crit_edge ], [ 2, %if.else10.i.if.end35.i_crit_edge ], [ 3, %if.else15.i.if.end35.i_crit_edge ], [ 3, %if.then23.i ], [ 3, %do.body21.i.if.end35.i_crit_edge ]
  %40 = ptrtoint ptr %reg_ds.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_ds.i, align 4
  %shl.i66 = shl nuw i32 3, %and.i.i65
  %shl37.i = shl nuw i32 %ds_val.0.i, %and.i.i65
  %call.i.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %mul5.i.i64, i32 noundef %shl.i66, i32 noundef %shl37.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog18

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg.1)
  %tobool.not = icmp eq i32 %arg.1, 0
  %42 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i, align 4
  %num_banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %num_banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_banks.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp18.not.i.i.i = icmp eq i32 %45, 0
  br i1 %cmp18.not.i.i.i, label %sw.bb12.cleanup_crit_edge, label %for.body.lr.ph.i.i.i

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i.i.i:                             ; preds = %sw.bb12
  %banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %43, i32 0, i32 7
  %46 = ptrtoint ptr %banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %banks.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.019.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %first.i.i.i = getelementptr %struct.meson_bank, ptr %47, i32 %i.019.i.i.i, i32 1
  %48 = ptrtoint ptr %first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %pin)
  %cmp2.not.i.i.i = icmp ugt i32 %49, %pin
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %last.i.i.i = getelementptr %struct.meson_bank, ptr %47, i32 %i.019.i.i.i, i32 2
  %50 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %last.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %pin)
  %cmp6.not.i.i.i = icmp ult i32 %51, %pin
  br i1 %cmp6.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.019.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %45
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.cleanup_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.cleanup_crit_edge:                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr %struct.meson_bank, ptr %47, i32 %i.019.i.i.i, i32 5, i32 2
  %bit1.i.i.i = getelementptr %struct.meson_bank, ptr %47, i32 %i.019.i.i.i, i32 5, i32 2, i32 1
  %52 = ptrtoint ptr %bit1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bit1.i.i.i, align 4
  %add.i.i.i = sub i32 %pin, %49
  %sub.i.i.i = add i32 %53, %add.i.i.i
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i.i, align 4
  %div11.i.i.i = lshr i32 %sub.i.i.i, 5
  %add4.i.i.i = add i32 %div11.i.i.i, %55
  %mul5.i.i.i = shl i32 %add4.i.i.i, 2
  %and.i.i.i = and i32 %sub.i.i.i, 31
  %56 = ptrtoint ptr %reg_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_gpio.i.i, align 4
  %shl.i.i = shl nuw i32 1, %and.i.i.i
  %spec.select.i.i = select i1 %tobool.not, i32 %shl.i.i, i32 0
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef %mul5.i.i.i, i32 noundef %shl.i.i, i32 noundef %spec.select.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog18

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg.1)
  %tobool15 = icmp ne i32 %arg.1, 0
  %call16 = tail call fastcc i32 @meson_pinconf_set_output_drive(ptr noundef %call, i32 noundef %pin, i1 noundef zeroext %tobool15)
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb14, %if.end.i.i, %if.end35.i, %sw.bb8, %sw.bb6, %if.end.i
  %ret.0 = phi i32 [ %call16, %sw.bb14 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call.i.i, %if.end.i ], [ %call.i.i67, %if.end35.i ], [ %call.i.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %for.cond, label %sw.epilog18.cleanup_crit_edge

sw.epilog18.cleanup_crit_edge:                    ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog18.cleanup_crit_edge, %for.inc.i.i.i.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %for.inc.i.i57.cleanup_crit_edge, %if.end.i45.cleanup_crit_edge, %do.end.i, %for.inc.i.i.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end.i ], [ 0, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ], [ -22, %for.inc.i.i57.cleanup_crit_edge ], [ -22, %for.inc.i.i.i.cleanup_crit_edge ], [ %ret.0, %sw.epilog18.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -524, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %if.end.i45.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_pinconf_group_get(ptr nocapture noundef readnone %pcdev, i32 noundef %group, ptr nocapture noundef readnone %config) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pinconf_group_set(ptr noundef %pcdev, i32 noundef %num_group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #7
  %data = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %groups = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_pinconf_group_set.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_pinconf_group_set, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.meson_pmx_group, ptr %3, i32 %num_group
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_pinconf_group_set.__UNIQUE_ID_ddebug224, ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_pins = getelementptr %struct.meson_pmx_group, ptr %3, i32 %num_group, i32 2
  %8 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14.not = icmp eq i32 %9, 0
  br i1 %cmp14.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %pins = getelementptr %struct.meson_pmx_group, ptr %3, i32 %num_group, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pins, align 4
  %arrayidx5 = getelementptr i32, ptr %11, i32 %i.015
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call i32 @meson_pinconf_set(ptr noundef %pcdev, i32 noundef %13, ptr noundef %configs, i32 noundef %num_configs)
  %inc = add nuw i32 %i.015, 1
  %14 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pins, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_pinconf_enable_bias(ptr nocapture noundef readonly %pc, i32 noundef %pin, i1 noundef zeroext %pull_up) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 3
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %num_banks.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num_banks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_banks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not.i = icmp eq i32 %3, 0
  br i1 %cmp18.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %banks.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %banks.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %first.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i, i32 1
  %6 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin)
  %cmp2.not.i = icmp ugt i32 %7, %pin
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %last.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i, i32 2
  %8 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %pin)
  %cmp6.not.i = icmp ult i32 %9, %pin
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.end

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i, i32 5, i32 1
  %bit1.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %bit1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit1.i, align 4
  %add.i = add i32 %11, %pin
  %12 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %first.i, align 4
  %sub.i = sub i32 %add.i, %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %div11.i = lshr i32 %sub.i, 5
  %add4.i = add i32 %div11.i, %15
  %mul5.i = shl i32 %add4.i, 2
  %and.i = and i32 %sub.i, 31
  %shl = shl nuw i32 1, %and.i
  %spec.select = select i1 %pull_up, i32 %shl, i32 0
  %reg_pull = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 6
  %16 = ptrtoint ptr %reg_pull to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_pull, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %mul5.i, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i29 = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i, i32 5, i32 0
  %bit1.i30 = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %bit1.i30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bit1.i30, align 4
  %add.i31 = add i32 %19, %pin
  %20 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %first.i, align 4
  %sub.i33 = sub i32 %add.i31, %21
  %22 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i29, align 4
  %div11.i34 = lshr i32 %sub.i33, 5
  %add4.i35 = add i32 %div11.i34, %23
  %mul5.i36 = shl i32 %add4.i35, 2
  %and.i37 = and i32 %sub.i33, 31
  %reg_pullen = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 5
  %24 = ptrtoint ptr %reg_pullen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_pullen, align 4
  %shl9 = shl nuw i32 1, %and.i37
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %mul5.i36, i32 noundef %shl9, i32 noundef %shl9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i38, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_pinconf_set_output_drive(ptr nocapture noundef readonly %pc, i32 noundef %pin, i1 noundef zeroext %high) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 3
  %0 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i.i, align 4
  %num_banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num_banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_banks.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not.i.i.i = icmp eq i32 %3, 0
  br i1 %cmp18.not.i.i.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i.i.i:                             ; preds = %entry
  %banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %banks.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.019.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %first.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 1
  %6 = ptrtoint ptr %first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin)
  %cmp2.not.i.i.i = icmp ugt i32 %7, %pin
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %last.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 2
  %8 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %pin)
  %cmp6.not.i.i.i = icmp ult i32 %9, %pin
  br i1 %cmp6.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %meson_pinconf_set_output.exit

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.019.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %3
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.cleanup_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.cleanup_crit_edge:                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

meson_pinconf_set_output.exit:                    ; preds = %land.lhs.true.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 5, i32 2
  %bit1.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 5, i32 2, i32 1
  %10 = ptrtoint ptr %bit1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit1.i.i.i, align 4
  %add.i.i.i = sub i32 %pin, %7
  %sub.i.i.i = add i32 %11, %add.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %div11.i.i.i = lshr i32 %sub.i.i.i, 5
  %add4.i.i.i = add i32 %div11.i.i.i, %13
  %mul5.i.i.i = shl i32 %add4.i.i.i, 2
  %and.i.i.i = and i32 %sub.i.i.i, 31
  %reg_gpio.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %pc, i32 0, i32 7
  %14 = ptrtoint ptr %reg_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_gpio.i.i, align 4
  %shl.i.i = shl nuw i32 1, %and.i.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %mul5.i.i.i, i32 noundef %shl.i.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %meson_pinconf_set_output.exit.cleanup_crit_edge

meson_pinconf_set_output.exit.cleanup_crit_edge:  ; preds = %meson_pinconf_set_output.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %meson_pinconf_set_output.exit
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  %num_banks.i.i.i7 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %num_banks.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_banks.i.i.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18.not.i.i.i8 = icmp eq i32 %19, 0
  br i1 %cmp18.not.i.i.i8, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i.i.i10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i.i.i10:                           ; preds = %if.end
  %banks.i.i.i9 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %17, i32 0, i32 7
  %20 = ptrtoint ptr %banks.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %banks.i.i.i9, align 4
  br label %for.body.i.i.i14

for.body.i.i.i14:                                 ; preds = %for.inc.i.i.i20.for.body.i.i.i14_crit_edge, %for.body.lr.ph.i.i.i10
  %i.019.i.i.i11 = phi i32 [ 0, %for.body.lr.ph.i.i.i10 ], [ %inc.i.i.i18, %for.inc.i.i.i20.for.body.i.i.i14_crit_edge ]
  %first.i.i.i12 = getelementptr %struct.meson_bank, ptr %21, i32 %i.019.i.i.i11, i32 1
  %22 = ptrtoint ptr %first.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %first.i.i.i12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %pin)
  %cmp2.not.i.i.i13 = icmp ugt i32 %23, %pin
  br i1 %cmp2.not.i.i.i13, label %for.body.i.i.i14.for.inc.i.i.i20_crit_edge, label %land.lhs.true.i.i.i17

for.body.i.i.i14.for.inc.i.i.i20_crit_edge:       ; preds = %for.body.i.i.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i20

land.lhs.true.i.i.i17:                            ; preds = %for.body.i.i.i14
  %last.i.i.i15 = getelementptr %struct.meson_bank, ptr %21, i32 %i.019.i.i.i11, i32 2
  %24 = ptrtoint ptr %last.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last.i.i.i15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %pin)
  %cmp6.not.i.i.i16 = icmp ult i32 %25, %pin
  br i1 %cmp6.not.i.i.i16, label %land.lhs.true.i.i.i17.for.inc.i.i.i20_crit_edge, label %if.end.i.i32

land.lhs.true.i.i.i17.for.inc.i.i.i20_crit_edge:  ; preds = %land.lhs.true.i.i.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i20

for.inc.i.i.i20:                                  ; preds = %land.lhs.true.i.i.i17.for.inc.i.i.i20_crit_edge, %for.body.i.i.i14.for.inc.i.i.i20_crit_edge
  %inc.i.i.i18 = add nuw i32 %i.019.i.i.i11, 1
  %exitcond.not.i.i.i19 = icmp eq i32 %inc.i.i.i18, %19
  br i1 %exitcond.not.i.i.i19, label %for.inc.i.i.i20.cleanup_crit_edge, label %for.inc.i.i.i20.for.body.i.i.i14_crit_edge

for.inc.i.i.i20.for.body.i.i.i14_crit_edge:       ; preds = %for.inc.i.i.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i14

for.inc.i.i.i20.cleanup_crit_edge:                ; preds = %for.inc.i.i.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i32:                                     ; preds = %land.lhs.true.i.i.i17
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i21 = getelementptr %struct.meson_bank, ptr %21, i32 %i.019.i.i.i11, i32 5, i32 3
  %bit1.i.i.i22 = getelementptr %struct.meson_bank, ptr %21, i32 %i.019.i.i.i11, i32 5, i32 3, i32 1
  %26 = ptrtoint ptr %bit1.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bit1.i.i.i22, align 4
  %add.i.i.i23 = sub i32 %pin, %23
  %sub.i.i.i24 = add i32 %27, %add.i.i.i23
  %28 = ptrtoint ptr %arrayidx.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i21, align 4
  %div11.i.i.i25 = lshr i32 %sub.i.i.i24, 5
  %add4.i.i.i26 = add i32 %div11.i.i.i25, %29
  %mul5.i.i.i27 = shl i32 %add4.i.i.i26, 2
  %and.i.i.i28 = and i32 %sub.i.i.i24, 31
  %30 = ptrtoint ptr %reg_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_gpio.i.i, align 4
  %shl.i.i30 = shl nuw i32 1, %and.i.i.i28
  %spec.select.i.i = select i1 %high, i32 %shl.i.i30, i32 0
  %call.i.i.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %mul5.i.i.i27, i32 noundef %shl.i.i30, i32 noundef %spec.select.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i32, %for.inc.i.i.i20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %meson_pinconf_set_output.exit.cleanup_crit_edge, %for.inc.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %meson_pinconf_set_output.exit.cleanup_crit_edge ], [ %call.i.i.i31, %if.end.i.i32 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.i.i20.cleanup_crit_edge ], [ -22, %for.inc.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gpio_get_direction(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i.i, align 4, !annotation !112
  %data.i.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i.i.i, align 4
  %num_banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %num_banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_banks.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp18.not.i.i.i = icmp eq i32 %4, 0
  br i1 %cmp18.not.i.i.i, label %entry.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i.i

entry.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_gpio_bit.exit.thread.i

for.body.lr.ph.i.i.i:                             ; preds = %entry
  %banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %banks.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.019.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %first.i.i.i = getelementptr %struct.meson_bank, ptr %6, i32 %i.019.i.i.i, i32 1
  %7 = ptrtoint ptr %first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %gpio)
  %cmp2.not.i.i.i = icmp ugt i32 %8, %gpio
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %last.i.i.i = getelementptr %struct.meson_bank, ptr %6, i32 %i.019.i.i.i, i32 2
  %9 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %gpio)
  %cmp6.not.i.i.i = icmp ult i32 %10, %gpio
  br i1 %cmp6.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.019.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %4
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_gpio_bit.exit.thread.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.meson_bank, ptr %6, i32 %i.019.i.i.i, i32 5, i32 2
  %bit1.i.i.i = getelementptr %struct.meson_bank, ptr %6, i32 %i.019.i.i.i, i32 5, i32 2, i32 1
  %11 = ptrtoint ptr %bit1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bit1.i.i.i, align 4
  %add.i.i.i = sub i32 %gpio, %8
  %sub.i.i.i = add i32 %12, %add.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  %div11.i.i.i = lshr i32 %sub.i.i.i, 5
  %add4.i.i.i = add i32 %div11.i.i.i, %14
  %mul5.i.i.i = shl i32 %add4.i.i.i, 2
  %reg_gpio.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 7
  %15 = ptrtoint ptr %reg_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_gpio.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %16, i32 noundef %mul5.i.i.i, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %meson_pinconf_get_gpio_bit.exit.thread8.i, label %meson_pinconf_get_gpio_bit.exit.i

meson_pinconf_get_gpio_bit.exit.thread8.i:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i = and i32 %sub.i.i.i, 31
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %19 = lshr i32 %18, %and.i.i.i
  %20 = and i32 %19, 1
  br label %meson_pinconf_get_output.exit.thread

meson_pinconf_get_gpio_bit.exit.thread.i:         ; preds = %for.inc.i.i.i.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge, %entry.meson_pinconf_get_gpio_bit.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %21

meson_pinconf_get_gpio_bit.exit.i:                ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %meson_pinconf_get_gpio_bit.exit.i._crit_edge, label %meson_pinconf_get_gpio_bit.exit.i.meson_pinconf_get_output.exit.thread_crit_edge

meson_pinconf_get_gpio_bit.exit.i.meson_pinconf_get_output.exit.thread_crit_edge: ; preds = %meson_pinconf_get_gpio_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_get_output.exit.thread

meson_pinconf_get_gpio_bit.exit.i._crit_edge:     ; preds = %meson_pinconf_get_gpio_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %21

21:                                               ; preds = %meson_pinconf_get_gpio_bit.exit.i._crit_edge, %meson_pinconf_get_gpio_bit.exit.thread.i
  %retval.0.i7.i = phi i32 [ -22, %meson_pinconf_get_gpio_bit.exit.thread.i ], [ %call1.i.i, %meson_pinconf_get_gpio_bit.exit.i._crit_edge ]
  br label %meson_pinconf_get_output.exit.thread

meson_pinconf_get_output.exit.thread:             ; preds = %21, %meson_pinconf_get_gpio_bit.exit.i.meson_pinconf_get_output.exit.thread_crit_edge, %meson_pinconf_get_gpio_bit.exit.thread8.i
  %22 = phi i32 [ %retval.0.i7.i, %21 ], [ %20, %meson_pinconf_get_gpio_bit.exit.thread8.i ], [ 1, %meson_pinconf_get_gpio_bit.exit.i.meson_pinconf_get_output.exit.thread_crit_edge ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gpio_direction_input(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %data.i.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i.i, align 4
  %num_banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num_banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_banks.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not.i.i.i = icmp eq i32 %3, 0
  br i1 %cmp18.not.i.i.i, label %entry.meson_pinconf_set_output.exit_crit_edge, label %for.body.lr.ph.i.i.i

entry.meson_pinconf_set_output.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_set_output.exit

for.body.lr.ph.i.i.i:                             ; preds = %entry
  %banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %banks.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.019.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %first.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 1
  %6 = ptrtoint ptr %first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %gpio)
  %cmp2.not.i.i.i = icmp ugt i32 %7, %gpio
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %last.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 2
  %8 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %gpio)
  %cmp6.not.i.i.i = icmp ult i32 %9, %gpio
  br i1 %cmp6.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.019.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %3
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.meson_pinconf_set_output.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.meson_pinconf_set_output.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_set_output.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 5, i32 2
  %bit1.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 5, i32 2, i32 1
  %10 = ptrtoint ptr %bit1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit1.i.i.i, align 4
  %add.i.i.i = sub i32 %gpio, %7
  %sub.i.i.i = add i32 %11, %add.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %div11.i.i.i = lshr i32 %sub.i.i.i, 5
  %add4.i.i.i = add i32 %div11.i.i.i, %13
  %mul5.i.i.i = shl i32 %add4.i.i.i, 2
  %and.i.i.i = and i32 %sub.i.i.i, 31
  %reg_gpio.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %reg_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_gpio.i.i, align 4
  %shl.i.i = shl nuw i32 1, %and.i.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %mul5.i.i.i, i32 noundef %shl.i.i, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %meson_pinconf_set_output.exit

meson_pinconf_set_output.exit:                    ; preds = %if.end.i.i, %for.inc.i.i.i.meson_pinconf_set_output.exit_crit_edge, %entry.meson_pinconf_set_output.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i, %if.end.i.i ], [ -22, %entry.meson_pinconf_set_output.exit_crit_edge ], [ -22, %for.inc.i.i.i.meson_pinconf_set_output.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gpio_direction_output(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %call1 = tail call fastcc i32 @meson_pinconf_set_output_drive(ptr noundef %call, i32 noundef %gpio, i1 noundef zeroext %tobool)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gpio_get(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !112
  %data.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %num_banks.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %num_banks.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_banks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp18.not.i = icmp eq i32 %4, 0
  br i1 %cmp18.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %banks.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %banks.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %first.i = getelementptr %struct.meson_bank, ptr %6, i32 %i.019.i, i32 1
  %7 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %first.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %gpio)
  %cmp2.not.i = icmp ugt i32 %8, %gpio
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %last.i = getelementptr %struct.meson_bank, ptr %6, i32 %i.019.i, i32 2
  %9 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %gpio)
  %cmp6.not.i = icmp ult i32 %10, %gpio
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.end

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.meson_bank, ptr %6, i32 %i.019.i, i32 5, i32 4
  %bit1.i = getelementptr %struct.meson_bank, ptr %6, i32 %i.019.i, i32 5, i32 4, i32 1
  %11 = ptrtoint ptr %bit1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bit1.i, align 4
  %add.i = add i32 %12, %gpio
  %13 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %first.i, align 4
  %sub.i = sub i32 %add.i, %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %div11.i = lshr i32 %sub.i, 5
  %add4.i = add i32 %div11.i, %16
  %mul5.i = shl i32 %add4.i, 2
  %and.i = and i32 %sub.i, 31
  %reg_gpio = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 7
  %17 = ptrtoint ptr %reg_gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_gpio, align 4
  %call2 = call i32 @regmap_read(ptr noundef %18, i32 noundef %mul5.i, ptr noundef nonnull %val) #7
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = lshr i32 %20, %and.i
  %22 = and i32 %21, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_gpio_set(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %data.i.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i.i, align 4
  %num_banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num_banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_banks.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not.i.i.i = icmp eq i32 %3, 0
  br i1 %cmp18.not.i.i.i, label %entry.meson_pinconf_set_drive.exit_crit_edge, label %for.body.lr.ph.i.i.i

entry.meson_pinconf_set_drive.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_set_drive.exit

for.body.lr.ph.i.i.i:                             ; preds = %entry
  %banks.i.i.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %banks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %banks.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.019.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %first.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 1
  %6 = ptrtoint ptr %first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %gpio)
  %cmp2.not.i.i.i = icmp ugt i32 %7, %gpio
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %last.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 2
  %8 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %gpio)
  %cmp6.not.i.i.i = icmp ult i32 %9, %gpio
  br i1 %cmp6.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.019.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %3
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.meson_pinconf_set_drive.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.meson_pinconf_set_drive.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pinconf_set_drive.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 5, i32 3
  %bit1.i.i.i = getelementptr %struct.meson_bank, ptr %5, i32 %i.019.i.i.i, i32 5, i32 3, i32 1
  %10 = ptrtoint ptr %bit1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit1.i.i.i, align 4
  %add.i.i.i = sub i32 %gpio, %7
  %sub.i.i.i = add i32 %11, %add.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %div11.i.i.i = lshr i32 %sub.i.i.i, 5
  %add4.i.i.i = add i32 %div11.i.i.i, %13
  %mul5.i.i.i = shl i32 %add4.i.i.i, 2
  %and.i.i.i = and i32 %sub.i.i.i, 31
  %reg_gpio.i.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %reg_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_gpio.i.i, align 4
  %shl.i.i = shl nuw i32 1, %and.i.i.i
  %spec.select.i.i = select i1 %tobool.not, i32 0, i32 %shl.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %mul5.i.i.i, i32 noundef %shl.i.i, i32 noundef %spec.select.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %meson_pinconf_set_drive.exit

meson_pinconf_set_drive.exit:                     ; preds = %if.end.i.i, %for.inc.i.i.i.meson_pinconf_set_drive.exit_crit_edge, %entry.meson_pinconf_set_drive.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !60, !62, !64, !65, !67, !69, !71, !73, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__ksymtab_meson_pmx_get_funcs_count, !1, !"__ksymtab_meson_pmx_get_funcs_count", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 155, i32 1}
!2 = !{ptr @__ksymtab_meson_pmx_get_func_name, !3, !"__ksymtab_meson_pmx_get_func_name", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 164, i32 1}
!4 = !{ptr @__ksymtab_meson_pmx_get_groups, !5, !"__ksymtab_meson_pmx_get_groups", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 177, i32 1}
!6 = !{ptr @__ksymtab_meson8_aobus_parse_dt_extra, !7, !"__ksymtab_meson8_aobus_parse_dt_extra", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 729, i32 1}
!8 = !{ptr @__ksymtab_meson_a1_parse_dt_extra, !9, !"__ksymtab_meson_a1_parse_dt_extra", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 739, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 758, i32 19}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 768, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @meson_pinctrl_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @meson_pinctrl_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_meson_pinctrl_probe, !21, !"__ksymtab_meson_pinctrl_probe", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 774, i32 1}
!22 = !{ptr @__UNIQUE_ID_file226, !23, !"__UNIQUE_ID_file226", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 776, i32 1}
!24 = !{ptr @__UNIQUE_ID_license227, !23, !"__UNIQUE_ID_license227", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 671, i32 29}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 674, i32 4}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @meson_pinctrl_parse_dt._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @meson_pinctrl_parse_dt._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 682, i32 3}
!34 = !{ptr @meson_pinctrl_parse_dt._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @meson_pinctrl_parse_dt._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 688, i32 48}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 690, i32 3}
!40 = !{ptr @meson_pinctrl_parse_dt._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @meson_pinctrl_parse_dt._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 694, i32 49}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 696, i32 3}
!46 = !{ptr @meson_pinctrl_parse_dt._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @meson_pinctrl_parse_dt._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 700, i32 49}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 704, i32 51}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 708, i32 47}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 710, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @meson_pinctrl_parse_dt.__UNIQUE_ID_ddebug225, !55, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 647, i32 37}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 657, i32 9}
!62 = !{ptr @meson_map_resource._key, !63, !"_key", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 662, i32 9}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @meson_regmap_config, !66, !"meson_regmap_config", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 634, i32 29}
!67 = !{ptr @meson_pctrl_ops, !68, !"meson_pctrl_ops", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 140, i32 33}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 137, i32 16}
!71 = !{ptr @meson_pinconf_ops, !72, !"meson_pinconf_ops", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 550, i32 33}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 521, i32 2}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @meson_pinconf_get.__UNIQUE_ID_ddebug223, !74, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!77 = distinct !{null, !78, !"meson_bit_strides", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 59, i32 27}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 316, i32 3}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @meson_pinconf_set_drive_strength._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @meson_pinconf_set_drive_strength._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"__print_once", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 335, i32 3}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @meson_pinconf_set_drive_strength._entry.33, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @meson_pinconf_set_drive_strength._entry_ptr.36, !85, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 534, i32 2}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @meson_pinconf_group_set.__UNIQUE_ID_ddebug224, !91, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!94 = !{ptr @meson_gpiolib_register.lock_key, !95, !"lock_key", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 624, i32 8}
!96 = !{ptr @meson_gpiolib_register.request_key, !95, !"request_key", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/meson/pinctrl-meson.c", i32 626, i32 3}
!99 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @meson_gpiolib_register._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @meson_gpiolib_register._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2148294406, i64 2148294411, i64 2148294424, i64 2148294468, i64 2148294502, i64 2148294523}
!112 = !{!"auto-init"}
