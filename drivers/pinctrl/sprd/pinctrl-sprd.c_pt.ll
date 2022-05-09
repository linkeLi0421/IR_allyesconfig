; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/sprd/pinctrl-sprd.c_pt.bc'
source_filename = "../drivers/pinctrl/sprd/pinctrl-sprd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sprd_pinctrl_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_pinctrl_core_probe\09\09\09\09"
module asm "\09.long\09__crc_sprd_pinctrl_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_pinctrl_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_pinctrl_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_pinctrl_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprd_pinctrl_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_pinctrl_remove\09\09\09\09"
module asm "\09.long\09__crc_sprd_pinctrl_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_pinctrl_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_pinctrl_remove\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_pinctrl_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprd_pinctrl_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_pinctrl_shutdown\09\09\09\09"
module asm "\09.long\09__crc_sprd_pinctrl_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_pinctrl_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_pinctrl_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_pinctrl_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sprd_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.sprd_pinctrl_soc_info = type { ptr, i32, ptr, i32, ptr }
%struct.sprd_pin_group = type { ptr, i32, ptr }
%struct.sprd_pin = type { ptr, i32, i32, i32, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.sprd_pins_info = type { ptr, i32, i32, i32, i32, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@sprd_pinctrl_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1073, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fail to add pins information\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sprd_pinctrl_core_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/pinctrl/sprd/pinctrl-sprd.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_pinctrl_core_probe._entry_ptr = internal global ptr @sprd_pinctrl_core_probe._entry, section ".printk_index", align 4
@sprd_pinctrl_core_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1079, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fail to parse dt properties\0A\00", [35 x i8] zeroinitializer }, align 32
@sprd_pinctrl_core_probe._entry_ptr.7 = internal global ptr @sprd_pinctrl_core_probe._entry.5, section ".printk_index", align 4
@sprd_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @sprd_pctrl_ops, ptr @sprd_pmx_ops, ptr @sprd_pinconf_ops, ptr null, i32 2, ptr @sprd_dt_params, ptr @sprd_conf_items, i8 0 }, [52 x i8] zeroinitializer }, align 32
@sprd_pinctrl_core_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not register pinctrl driver\0A\00", [61 x i8] zeroinitializer }, align 32
@sprd_pinctrl_core_probe._entry_ptr.10 = internal global ptr @sprd_pinctrl_core_probe._entry.8, section ".printk_index", align 4
@__kstrtab_sprd_pinctrl_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_pinctrl_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_pinctrl_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_pinctrl_core_probe to i32), ptr @__kstrtab_sprd_pinctrl_core_probe, ptr @__kstrtabns_sprd_pinctrl_core_probe }, section "___ksymtab_gpl+sprd_pinctrl_core_probe", align 4
@__kstrtab_sprd_pinctrl_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_pinctrl_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_pinctrl_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_pinctrl_remove to i32), ptr @__kstrtab_sprd_pinctrl_remove, ptr @__kstrtabns_sprd_pinctrl_remove }, section "___ksymtab_gpl+sprd_pinctrl_remove", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_sprd_pinctrl_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_pinctrl_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_pinctrl_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_pinctrl_shutdown to i32), ptr @__kstrtab_sprd_pinctrl_shutdown, ptr @__kstrtabns_sprd_pinctrl_shutdown }, section "___ksymtab_gpl+sprd_pinctrl_shutdown", align 4
@__UNIQUE_ID_description225 = internal constant [58 x i8] c"pinctrl_sprd.description=SPREADTRUM Pin Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [61 x i8] c"pinctrl_sprd.author=Baolin Wang <baolin.wang@spreadtrum.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [52 x i8] c"pinctrl_sprd.file=drivers/pinctrl/sprd/pinctrl-sprd\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [28 x i8] c"pinctrl_sprd.license=GPL v2\00", section ".modinfo", align 1
@sprd_pinctrl_add_pins.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 1, i8 3, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pinctrl_sprd\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sprd_pinctrl_add_pins\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"pin name[%s-%d], type = %d, bit offset = %ld, bit width = %ld, reg = 0x%lx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pins\00", [27 x i8] zeroinitializer }, align 32
@sprd_pinctrl_parse_groups.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sprd_pinctrl_parse_groups\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Group[%s] contains [%d] pins: id = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sprd_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @sprd_pctrl_group_count, ptr @sprd_pctrl_group_name, ptr @sprd_pctrl_group_pins, ptr @sprd_pctrl_dbg_show, ptr @sprd_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@sprd_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @sprd_pmx_get_function_count, ptr @sprd_pmx_get_function_name, ptr @sprd_pmx_get_function_groups, ptr @sprd_pmx_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sprd_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @sprd_pinconf_get, ptr @sprd_pinconf_set, ptr @sprd_pinconf_group_get, ptr @sprd_pinconf_group_set, ptr @sprd_pinconf_dbg_show, ptr @sprd_pinconf_group_dbg_show, ptr null }, [32 x i8] zeroinitializer }, align 32
@sprd_dt_params = internal constant { [2 x %struct.pinconf_generic_params], [40 x i8] } { [2 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.36, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.37, i32 129, i32 0 }], [40 x i8] zeroinitializer }, align 32
@sprd_conf_items = internal constant { [2 x %struct.pin_config_item], [32 x i8] } { [2 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.38, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.39, ptr null, i8 1 }], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@sprd_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to find group for node %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sprd_dt_node_to_map\00", [44 x i8] zeroinitializer }, align 32
@sprd_dt_node_to_map._entry_ptr = internal global ptr @sprd_dt_node_to_map._entry, section ".printk_index", align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@sprd_dt_node_to_map._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 278, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: could not parse property function\0A\00", [57 x i8] zeroinitializer }, align 32
@sprd_dt_node_to_map._entry_ptr.24 = internal global ptr @sprd_dt_node_to_map._entry.22, section ".printk_index", align 4
@sprd_dt_node_to_map._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: could not parse node property\0A\00", [61 x i8] zeroinitializer }, align 32
@sprd_dt_node_to_map._entry_ptr.27 = internal global ptr @sprd_dt_node_to_map._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func1\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func2\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func3\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func4\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%lx\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: 0x%lx \00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sprd,control\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sprd,sleep-mode\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"global control\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sleep mode\00", [21 x i8] zeroinitializer }, align 32
@switch.table.sprd_pmx_get_function_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@switch.table.sprd_pinconf_set = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 524288, i32 0, i32 1048576, i32 0, i32 1572864, i32 0, i32 2097152, i32 0, i32 2621440, i32 0, i32 3145728, i32 0, i32 3670016, i32 0, i32 0, i32 0, i32 4194304, i32 4718592, i32 0, i32 0, i32 5242880, i32 5767168, i32 0, i32 6291456, i32 0, i32 6815744, i32 0, i32 7340032, i32 0, i32 7864320], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 3, i64 5, i64 9, i64 12, i64 14, i64 18, i64 23, i64 129]
@__sancov_gen_cov_switch_values.41 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 3, i64 5, i64 9, i64 12, i64 14, i64 18, i64 23, i64 129]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 4700, i64 20000]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1073, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1079, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"sprd_pinctrl_desc\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 868, i32 28 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1103, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1128, i32 39 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1034, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 888, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 907, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"sprd_pctrl_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 339, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"sprd_pmx_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 431, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"sprd_pinconf_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 846, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"sprd_dt_params\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 856, i32 44 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"sprd_conf_items\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 862, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 336, i32 16 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 259, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 273, i32 36 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 276, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 285, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 261, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 358, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 360, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 362, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 364, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 366, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 814, i32 16 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 842, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 857, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 858, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 863, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [39 x i8] c"../drivers/pinctrl/sprd/pinctrl-sprd.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 864, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [40 x i8] c"switch.table.sprd_pmx_get_function_name\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [30 x i8] c"switch.table.sprd_pinconf_set\00", align 1
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__ksymtab_sprd_pinctrl_core_probe, ptr @__ksymtab_sprd_pinctrl_remove, ptr @__ksymtab_sprd_pinctrl_shutdown, ptr @sprd_dt_node_to_map._entry, ptr @sprd_dt_node_to_map._entry.22, ptr @sprd_dt_node_to_map._entry.25, ptr @sprd_dt_node_to_map._entry_ptr, ptr @sprd_dt_node_to_map._entry_ptr.24, ptr @sprd_dt_node_to_map._entry_ptr.27, ptr @sprd_pinctrl_core_probe._entry, ptr @sprd_pinctrl_core_probe._entry.5, ptr @sprd_pinctrl_core_probe._entry.8, ptr @sprd_pinctrl_core_probe._entry_ptr, ptr @sprd_pinctrl_core_probe._entry_ptr.10, ptr @sprd_pinctrl_core_probe._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @sprd_pinctrl_desc, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @sprd_pctrl_ops, ptr @sprd_pmx_ops, ptr @sprd_pinconf_ops, ptr @sprd_dt_params, ptr @sprd_conf_items, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @switch.table.sprd_pmx_get_function_name, ptr @switch.table.sprd_pinconf_set], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pinctrl_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pinctrl_core_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pinctrl_core_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dt_params to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_conf_items to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dt_node_to_map._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dt_node_to_map._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sprd_pmx_get_function_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sprd_pinconf_set to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprd_pinctrl_core_probe(ptr noundef %pdev, ptr nocapture noundef readonly %sprd_soc_pin_info, i32 noundef %pins_cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.sprd_pinctrl, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i102 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i102, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %info = getelementptr inbounds %struct.sprd_pinctrl, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i102, ptr %info, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call15 = tail call fastcc i32 @sprd_pinctrl_add_pins(ptr noundef nonnull %call.i, ptr noundef %sprd_soc_pin_info, i32 noundef %pins_cnt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end19.do.end25_crit_edge, label %if.end.i

if.end19.do.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.end.i:                                         ; preds = %if.end19
  %call.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %10, ptr noundef null) #7
  %cmp.not5.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.not5.i.i.i, label %if.end.i.of_get_child_count.exit.i.i_crit_edge, label %if.end.i.for.body.i.i.i_crit_edge

if.end.i.for.body.i.i.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i.i.i

if.end.i.of_get_child_count.exit.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.for.body.i.i.i_crit_edge
  %num.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i.i_crit_edge ]
  %child.06.i.i.i = phi ptr [ %call1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i.i, %if.end.i.for.body.i.i.i_crit_edge ]
  %inc.i.i.i = add i32 %num.07.i.i.i, 1
  %call1.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %10, ptr noundef nonnull %child.06.i.i.i) #7
  %cmp.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit.i.i

of_get_child_count.exit.i.i:                      ; preds = %for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge, %if.end.i.of_get_child_count.exit.i.i_crit_edge
  %num.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.of_get_child_count.exit.i.i_crit_edge ], [ %inc.i.i.i, %for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge ]
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %10, ptr noundef null) #7
  %cmp.not21.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not21.i.i, label %of_get_child_count.exit.i.i.sprd_pinctrl_get_groups.exit.i_crit_edge, label %of_get_child_count.exit.i.i.for.body.i.i_crit_edge

of_get_child_count.exit.i.i.for.body.i.i_crit_edge: ; preds = %of_get_child_count.exit.i.i
  br label %for.body.i.i

of_get_child_count.exit.i.i.sprd_pinctrl_get_groups.exit.i_crit_edge: ; preds = %of_get_child_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sprd_pinctrl_get_groups.exit.i

for.body.i.i:                                     ; preds = %of_get_child_count.exit20.i.i.for.body.i.i_crit_edge, %of_get_child_count.exit.i.i.for.body.i.i_crit_edge
  %group_cnt.024.i.i = phi i32 [ %add.i.i, %of_get_child_count.exit20.i.i.for.body.i.i_crit_edge ], [ %num.0.lcssa.i.i.i, %of_get_child_count.exit.i.i.for.body.i.i_crit_edge ]
  %child.022.i.i = phi ptr [ %call4.i.i, %of_get_child_count.exit20.i.i.for.body.i.i_crit_edge ], [ %call1.i.i, %of_get_child_count.exit.i.i.for.body.i.i_crit_edge ]
  %call.i11.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.022.i.i, ptr noundef null) #7
  %cmp.not5.i12.i.i = icmp eq ptr %call.i11.i.i, null
  br i1 %cmp.not5.i12.i.i, label %for.body.i.i.of_get_child_count.exit20.i.i_crit_edge, label %for.body.i.i.for.body.i18.i.i_crit_edge

for.body.i.i.for.body.i18.i.i_crit_edge:          ; preds = %for.body.i.i
  br label %for.body.i18.i.i

for.body.i.i.of_get_child_count.exit20.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit20.i.i

for.body.i18.i.i:                                 ; preds = %for.body.i18.i.i.for.body.i18.i.i_crit_edge, %for.body.i.i.for.body.i18.i.i_crit_edge
  %num.07.i13.i.i = phi i32 [ %inc.i15.i.i, %for.body.i18.i.i.for.body.i18.i.i_crit_edge ], [ 0, %for.body.i.i.for.body.i18.i.i_crit_edge ]
  %child.06.i14.i.i = phi ptr [ %call1.i16.i.i, %for.body.i18.i.i.for.body.i18.i.i_crit_edge ], [ %call.i11.i.i, %for.body.i.i.for.body.i18.i.i_crit_edge ]
  %inc.i15.i.i = add i32 %num.07.i13.i.i, 1
  %call1.i16.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.022.i.i, ptr noundef nonnull %child.06.i14.i.i) #7
  %cmp.not.i17.i.i = icmp eq ptr %call1.i16.i.i, null
  br i1 %cmp.not.i17.i.i, label %for.body.i18.i.i.of_get_child_count.exit20.i.i_crit_edge, label %for.body.i18.i.i.for.body.i18.i.i_crit_edge

for.body.i18.i.i.for.body.i18.i.i_crit_edge:      ; preds = %for.body.i18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i18.i.i

for.body.i18.i.i.of_get_child_count.exit20.i.i_crit_edge: ; preds = %for.body.i18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit20.i.i

of_get_child_count.exit20.i.i:                    ; preds = %for.body.i18.i.i.of_get_child_count.exit20.i.i_crit_edge, %for.body.i.i.of_get_child_count.exit20.i.i_crit_edge
  %num.0.lcssa.i19.i.i = phi i32 [ 0, %for.body.i.i.of_get_child_count.exit20.i.i_crit_edge ], [ %inc.i15.i.i, %for.body.i18.i.i.of_get_child_count.exit20.i.i_crit_edge ]
  %add.i.i = add i32 %num.0.lcssa.i19.i.i, %group_cnt.024.i.i
  %call4.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %10, ptr noundef nonnull %child.022.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit20.i.i.sprd_pinctrl_get_groups.exit.i_crit_edge, label %of_get_child_count.exit20.i.i.for.body.i.i_crit_edge

of_get_child_count.exit20.i.i.for.body.i.i_crit_edge: ; preds = %of_get_child_count.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

of_get_child_count.exit20.i.i.sprd_pinctrl_get_groups.exit.i_crit_edge: ; preds = %of_get_child_count.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sprd_pinctrl_get_groups.exit.i

sprd_pinctrl_get_groups.exit.i:                   ; preds = %of_get_child_count.exit20.i.i.sprd_pinctrl_get_groups.exit.i_crit_edge, %of_get_child_count.exit.i.i.sprd_pinctrl_get_groups.exit.i_crit_edge
  %group_cnt.0.lcssa.i.i = phi i32 [ %num.0.lcssa.i.i.i, %of_get_child_count.exit.i.i.sprd_pinctrl_get_groups.exit.i_crit_edge ], [ %add.i.i, %of_get_child_count.exit20.i.i.sprd_pinctrl_get_groups.exit.i_crit_edge ]
  %ngroups.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %group_cnt.0.lcssa.i.i, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group_cnt.0.lcssa.i.i)
  %tobool3.not.i = icmp eq i32 %group_cnt.0.lcssa.i.i, 0
  br i1 %tobool3.not.i, label %sprd_pinctrl_get_groups.exit.i.if.end27_crit_edge, label %if.end5.i

sprd_pinctrl_get_groups.exit.i.if.end27_crit_edge: ; preds = %sprd_pinctrl_get_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end5.i:                                        ; preds = %sprd_pinctrl_get_groups.exit.i
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %group_cnt.0.lcssa.i.i, i32 12) #7
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !104

devm_kcalloc.exit.thread.i:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %6, align 4
  br label %do.end25

devm_kcalloc.exit.i:                              ; preds = %if.end5.i
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %17 = extractvalue { i32, i1 } %12, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef %17, i32 noundef 3520) #7
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i.i, ptr %6, align 4
  %tobool10.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool10.not.i, label %devm_kcalloc.exit.i.do.end25_crit_edge, label %if.end12.i

devm_kcalloc.exit.i.do.end25_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.end12.i:                                       ; preds = %devm_kcalloc.exit.i
  %19 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ngroups.i, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 4) #7
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %devm_kcalloc.exit92.thread.i, label %devm_kcalloc.exit92.i, !prof !104

devm_kcalloc.exit92.thread.i:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %grp_names99.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %6, i32 0, i32 4
  %23 = ptrtoint ptr %grp_names99.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %grp_names99.i, align 4
  br label %do.end25

devm_kcalloc.exit92.i:                            ; preds = %if.end12.i
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %26 = extractvalue { i32, i1 } %21, 0
  %call5.i.i89.i = tail call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef %26, i32 noundef 3520) #7
  %grp_names.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %6, i32 0, i32 4
  %27 = ptrtoint ptr %grp_names.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i89.i, ptr %grp_names.i, align 4
  %tobool17.not.i = icmp eq ptr %call5.i.i89.i, null
  br i1 %tobool17.not.i, label %devm_kcalloc.exit92.i.do.end25_crit_edge, label %if.end19.i

devm_kcalloc.exit92.i.do.end25_crit_edge:         ; preds = %devm_kcalloc.exit92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.end19.i:                                       ; preds = %devm_kcalloc.exit92.i
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 4
  %call22.i = tail call ptr @of_get_next_child(ptr noundef nonnull %10, ptr noundef null) #7
  %cmp.not114.i = icmp eq ptr %call22.i, null
  br i1 %cmp.not114.i, label %if.end19.i.if.end27_crit_edge, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  br label %for.body.i

if.end19.i.if.end27_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.body.i:                                       ; preds = %for.inc44.i.for.body.i_crit_edge, %if.end19.i.for.body.i_crit_edge
  %temp.0119.i = phi ptr [ %temp.2.i, %for.inc44.i.for.body.i_crit_edge ], [ %call5.i.i89.i, %if.end19.i.for.body.i_crit_edge ]
  %grp.0118.i = phi ptr [ %grp.2.i, %for.inc44.i.for.body.i_crit_edge ], [ %29, %if.end19.i.for.body.i_crit_edge ]
  %child.0115.i = phi ptr [ %call45.i, %for.inc44.i.for.body.i_crit_edge ], [ %call22.i, %if.end19.i.for.body.i_crit_edge ]
  %call23.i = tail call fastcc i32 @sprd_pinctrl_parse_groups(ptr noundef nonnull %child.0115.i, ptr noundef nonnull %call.i, ptr noundef %grp.0118.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.then25.i

if.then25.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.0115.i) #7
  br label %do.end25

if.end26.i:                                       ; preds = %for.body.i
  %30 = ptrtoint ptr %grp.0118.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %grp.0118.i, align 4
  %incdec.ptr.i = getelementptr ptr, ptr %temp.0119.i, i32 1
  %32 = ptrtoint ptr %temp.0119.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %temp.0119.i, align 4
  %incdec.ptr27.i = getelementptr %struct.sprd_pin_group, ptr %grp.0118.i, i32 1
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.0115.i, ptr noundef null) #7
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end26.i.for.inc44.i_crit_edge, label %if.end26.i.for.body.i95.i_crit_edge

if.end26.i.for.body.i95.i_crit_edge:              ; preds = %if.end26.i
  br label %for.body.i95.i

if.end26.i.for.inc44.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc44.i

for.body.i95.i:                                   ; preds = %for.body.i95.i.for.body.i95.i_crit_edge, %if.end26.i.for.body.i95.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i95.i.for.body.i95.i_crit_edge ], [ 0, %if.end26.i.for.body.i95.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i93.i, %for.body.i95.i.for.body.i95.i_crit_edge ], [ %call.i.i, %if.end26.i.for.body.i95.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i93.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.0115.i, ptr noundef nonnull %child.06.i.i) #7
  %cmp.not.i94.i = icmp eq ptr %call1.i93.i, null
  br i1 %cmp.not.i94.i, label %of_get_child_count.exit.i, label %for.body.i95.i.for.body.i95.i_crit_edge

for.body.i95.i.for.body.i95.i_crit_edge:          ; preds = %for.body.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i95.i

of_get_child_count.exit.i:                        ; preds = %for.body.i95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %num.07.i.i)
  %cmp29.i = icmp ult i32 %num.07.i.i, 2147483647
  br i1 %cmp29.i, label %if.then30.i, label %of_get_child_count.exit.i.for.inc44.i_crit_edge

of_get_child_count.exit.i.for.inc44.i_crit_edge:  ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc44.i

if.then30.i:                                      ; preds = %of_get_child_count.exit.i
  %call31.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.0115.i, ptr noundef null) #7
  %cmp33.not109.i = icmp eq ptr %call31.i, null
  br i1 %cmp33.not109.i, label %if.then30.i.for.inc44.i_crit_edge, label %if.then30.i.for.body34.i_crit_edge

if.then30.i.for.body34.i_crit_edge:               ; preds = %if.then30.i
  br label %for.body34.i

if.then30.i.for.inc44.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc44.i

for.body34.i:                                     ; preds = %if.end38.i.for.body34.i_crit_edge, %if.then30.i.for.body34.i_crit_edge
  %temp.1112.i = phi ptr [ %incdec.ptr40.i, %if.end38.i.for.body34.i_crit_edge ], [ %incdec.ptr.i, %if.then30.i.for.body34.i_crit_edge ]
  %grp.1111.i = phi ptr [ %incdec.ptr41.i, %if.end38.i.for.body34.i_crit_edge ], [ %incdec.ptr27.i, %if.then30.i.for.body34.i_crit_edge ]
  %sub_child.0110.i = phi ptr [ %call42.i, %if.end38.i.for.body34.i_crit_edge ], [ %call31.i, %if.then30.i.for.body34.i_crit_edge ]
  %call35.i = tail call fastcc i32 @sprd_pinctrl_parse_groups(ptr noundef nonnull %sub_child.0110.i, ptr noundef nonnull %call.i, ptr noundef %grp.1111.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.then37.i

if.then37.i:                                      ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %sub_child.0110.i) #7
  tail call void @of_node_put(ptr noundef nonnull %child.0115.i) #7
  br label %do.end25

if.end38.i:                                       ; preds = %for.body34.i
  %33 = ptrtoint ptr %grp.1111.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %grp.1111.i, align 4
  %incdec.ptr40.i = getelementptr ptr, ptr %temp.1112.i, i32 1
  %35 = ptrtoint ptr %temp.1112.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %temp.1112.i, align 4
  %incdec.ptr41.i = getelementptr %struct.sprd_pin_group, ptr %grp.1111.i, i32 1
  %call42.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.0115.i, ptr noundef nonnull %sub_child.0110.i) #7
  %cmp33.not.i = icmp eq ptr %call42.i, null
  br i1 %cmp33.not.i, label %if.end38.i.for.inc44.i_crit_edge, label %if.end38.i.for.body34.i_crit_edge

if.end38.i.for.body34.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34.i

if.end38.i.for.inc44.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc44.i

for.inc44.i:                                      ; preds = %if.end38.i.for.inc44.i_crit_edge, %if.then30.i.for.inc44.i_crit_edge, %of_get_child_count.exit.i.for.inc44.i_crit_edge, %if.end26.i.for.inc44.i_crit_edge
  %grp.2.i = phi ptr [ %incdec.ptr27.i, %of_get_child_count.exit.i.for.inc44.i_crit_edge ], [ %incdec.ptr27.i, %if.end26.i.for.inc44.i_crit_edge ], [ %incdec.ptr27.i, %if.then30.i.for.inc44.i_crit_edge ], [ %incdec.ptr41.i, %if.end38.i.for.inc44.i_crit_edge ]
  %temp.2.i = phi ptr [ %incdec.ptr.i, %of_get_child_count.exit.i.for.inc44.i_crit_edge ], [ %incdec.ptr.i, %if.end26.i.for.inc44.i_crit_edge ], [ %incdec.ptr.i, %if.then30.i.for.inc44.i_crit_edge ], [ %incdec.ptr40.i, %if.end38.i.for.inc44.i_crit_edge ]
  %call45.i = tail call ptr @of_get_next_child(ptr noundef nonnull %10, ptr noundef nonnull %child.0115.i) #7
  %cmp.not.i = icmp eq ptr %call45.i, null
  br i1 %cmp.not.i, label %for.inc44.i.if.end27_crit_edge, label %for.inc44.i.for.body.i_crit_edge

for.inc44.i.for.body.i_crit_edge:                 ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc44.i.if.end27_crit_edge:                   ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end25:                                         ; preds = %if.then37.i, %if.then25.i, %devm_kcalloc.exit92.i.do.end25_crit_edge, %devm_kcalloc.exit92.thread.i, %devm_kcalloc.exit.i.do.end25_crit_edge, %devm_kcalloc.exit.thread.i, %if.end19.do.end25_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit92.thread.i ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit92.i.do.end25_crit_edge ], [ -12, %devm_kcalloc.exit.i.do.end25_crit_edge ], [ -19, %if.end19.do.end25_crit_edge ], [ %call35.i, %if.then37.i ], [ %call23.i, %if.then25.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end27:                                         ; preds = %for.inc44.i.if.end27_crit_edge, %if.end19.i.if.end27_crit_edge, %sprd_pinctrl_get_groups.exit.i.if.end27_crit_edge
  %npins = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %call.i102, i32 0, i32 3
  %36 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %npins, align 4
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 12) #7
  %39 = extractvalue { i32, i1 } %38, 1
  br i1 %39, label %if.end27.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !104

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end27
  %40 = extractvalue { i32, i1 } %38, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %40, i32 noundef 3520) #7
  %tobool30.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool30.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %41 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp118.not = icmp eq i32 %42, 0
  br i1 %cmp118.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pins = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %call.i102, i32 0, i32 2
  %43 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pins, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %number = getelementptr %struct.sprd_pin, ptr %44, i32 %i.0119, i32 1
  %45 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %number, align 4
  %arrayidx34 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0119
  %47 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx34, align 4
  %arrayidx37 = getelementptr %struct.sprd_pin, ptr %44, i32 %i.0119
  %48 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx37, align 4
  %name39 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0119, i32 1
  %50 = ptrtoint ptr %name39 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %name39, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0119, i32 2
  %51 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i102, ptr %drv_data, align 4
  %inc = add nuw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, %42
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  store ptr %call5.i.i, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @sprd_pinctrl_desc, i32 0, i32 1), align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i103 = icmp eq ptr %53, null
  br i1 %tobool.not.i103, label %if.end.i104, label %for.end.dev_name.exit_crit_edge

for.end.dev_name.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i104:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i104, %for.end.dev_name.exit_crit_edge
  %retval.0.i105 = phi ptr [ %55, %if.end.i104 ], [ %53, %for.end.dev_name.exit_crit_edge ]
  store ptr %retval.0.i105, ptr @sprd_pinctrl_desc, align 4
  store i32 %42, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @sprd_pinctrl_desc, i32 0, i32 2), align 4
  %call45 = tail call ptr @pinctrl_register(ptr noundef nonnull @sprd_pinctrl_desc, ptr noundef %dev, ptr noundef nonnull %call.i) #7
  %pctl = getelementptr inbounds %struct.sprd_pinctrl, ptr %call.i, i32 0, i32 1
  %56 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call45, ptr %pctl, align 4
  %cmp.i106 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %do.end51, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end51:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %57 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pctl, align 4
  %59 = ptrtoint ptr %58 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %dev_name.exit.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end25, %do.end, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call15, %do.end ], [ %retval.0.i.ph, %do.end25 ], [ %59, %do.end51 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_pinctrl_add_pins(ptr nocapture noundef readonly %sprd_pctl, ptr nocapture noundef readonly %sprd_soc_pin_info, i32 noundef %pins_cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.sprd_pinctrl, ptr %sprd_pctl, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %npins = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %pins_cnt, ptr %npins, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %pins_cnt, i32 24) #7
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !104

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pins121 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pins121 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pins121, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %6 = ptrtoint ptr %sprd_pctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sprd_pctl, align 4
  %8 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %8, i32 noundef 3520) #7
  %pins = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %pins, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp124.not = icmp eq i32 %11, 0
  br i1 %cmp124.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %base33 = getelementptr inbounds %struct.sprd_pinctrl, ptr %sprd_pctl, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %for.body.lr.ph
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc43, %if.end42.for.body_crit_edge ]
  %pin.0127 = phi ptr [ %call5.i.i, %for.body.lr.ph ], [ %incdec.ptr, %if.end42.for.body_crit_edge ]
  %com_pin.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %com_pin.1, %if.end42.for.body_crit_edge ]
  %ctrl_pin.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %ctrl_pin.1, %if.end42.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sprd_pins_info, ptr %sprd_soc_pin_info, i32 %i.0129
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %pin.0127 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %pin.0127, align 4
  %type = getelementptr %struct.sprd_pins_info, ptr %sprd_soc_pin_info, i32 %i.0129, i32 2
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %type8 = getelementptr inbounds %struct.sprd_pin, ptr %pin.0127, i32 0, i32 2
  %17 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %type8, align 4
  %num = getelementptr %struct.sprd_pins_info, ptr %sprd_soc_pin_info, i32 %i.0129, i32 1
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num, align 4
  %number = getelementptr inbounds %struct.sprd_pin, ptr %pin.0127, i32 0, i32 1
  %20 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %number, align 4
  %21 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %for.body.if.end42_crit_edge [
    i32 0, label %if.then14
    i32 1, label %if.then22
    i32 2, label %if.then32
  ]

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %reg11 = getelementptr %struct.sprd_pins_info, ptr %sprd_soc_pin_info, i32 %i.0129, i32 5
  %22 = ptrtoint ptr %reg11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg11, align 4
  %24 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base33, align 4
  %26 = ptrtoint ptr %25 to i32
  %mul = shl i32 %23, 2
  %add = add i32 %mul, %26
  %reg15 = getelementptr inbounds %struct.sprd_pin, ptr %pin.0127, i32 0, i32 3
  %27 = ptrtoint ptr %reg15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %reg15, align 4
  %bit_offset = getelementptr %struct.sprd_pins_info, ptr %sprd_soc_pin_info, i32 %i.0129, i32 3
  %28 = ptrtoint ptr %bit_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bit_offset, align 4
  %bit_offset17 = getelementptr inbounds %struct.sprd_pin, ptr %pin.0127, i32 0, i32 4
  %30 = ptrtoint ptr %bit_offset17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %bit_offset17, align 4
  %bit_width = getelementptr %struct.sprd_pins_info, ptr %sprd_soc_pin_info, i32 %i.0129, i32 4
  %31 = ptrtoint ptr %bit_width to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bit_width, align 4
  %bit_width19 = getelementptr inbounds %struct.sprd_pin, ptr %pin.0127, i32 0, i32 5
  %33 = ptrtoint ptr %bit_width19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %bit_width19, align 4
  %inc = add i32 %ctrl_pin.0125, 1
  br label %if.end42

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base33, align 4
  %36 = ptrtoint ptr %35 to i32
  %sub = sub i32 %i.0129, %ctrl_pin.0125
  %mul25 = shl i32 %sub, 2
  %add24 = add i32 %mul25, 32
  %add26 = add i32 %add24, %36
  %reg27 = getelementptr inbounds %struct.sprd_pin, ptr %pin.0127, i32 0, i32 3
  %37 = ptrtoint ptr %reg27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add26, ptr %reg27, align 4
  %inc28 = add i32 %com_pin.0126, 1
  br label %if.end42

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base33, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = add i32 %com_pin.0126, %ctrl_pin.0125
  %sub36 = sub i32 %i.0129, %41
  %mul37 = shl i32 %sub36, 2
  %add34 = add i32 %mul37, 16416
  %add38 = add i32 %add34, %40
  %reg39 = getelementptr inbounds %struct.sprd_pin, ptr %pin.0127, i32 0, i32 3
  %42 = ptrtoint ptr %reg39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add38, ptr %reg39, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then32, %if.then22, %if.then14, %for.body.if.end42_crit_edge
  %ctrl_pin.1 = phi i32 [ %inc, %if.then14 ], [ %ctrl_pin.0125, %if.then22 ], [ %ctrl_pin.0125, %if.then32 ], [ %ctrl_pin.0125, %for.body.if.end42_crit_edge ]
  %com_pin.1 = phi i32 [ %com_pin.0126, %if.then14 ], [ %inc28, %if.then22 ], [ %com_pin.0126, %if.then32 ], [ %com_pin.0126, %for.body.if.end42_crit_edge ]
  %inc43 = add nuw i32 %i.0129, 1
  %incdec.ptr = getelementptr %struct.sprd_pin, ptr %pin.0127, i32 1
  %43 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc43, %44
  br i1 %cmp, label %if.end42.for.body_crit_edge, label %for.end

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp47131.not = icmp eq i32 %44, 0
  br i1 %cmp47131.not, label %for.end.cleanup_crit_edge, label %do.body.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %for.end
  %45 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pins, align 4
  br label %do.body

do.body:                                          ; preds = %for.inc63.do.body_crit_edge, %do.body.preheader
  %i.1134 = phi i32 [ %inc65, %for.inc63.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %pin.1132 = phi ptr [ %incdec.ptr64, %for.inc63.do.body_crit_edge ], [ %46, %do.body.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sprd_pinctrl_add_pins.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sprd_pinctrl_add_pins, %for.inc63)) #7
          to label %if.then54 [label %for.inc63], !srcloc !105

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %sprd_pctl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sprd_pctl, align 4
  %49 = ptrtoint ptr %pin.1132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pin.1132, align 4
  %number57 = getelementptr inbounds %struct.sprd_pin, ptr %pin.1132, i32 0, i32 1
  %51 = ptrtoint ptr %number57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %number57, align 4
  %type58 = getelementptr inbounds %struct.sprd_pin, ptr %pin.1132, i32 0, i32 2
  %53 = ptrtoint ptr %type58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type58, align 4
  %bit_offset59 = getelementptr inbounds %struct.sprd_pin, ptr %pin.1132, i32 0, i32 4
  %55 = ptrtoint ptr %bit_offset59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bit_offset59, align 4
  %bit_width60 = getelementptr inbounds %struct.sprd_pin, ptr %pin.1132, i32 0, i32 5
  %57 = ptrtoint ptr %bit_width60 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bit_width60, align 4
  %reg61 = getelementptr inbounds %struct.sprd_pin, ptr %pin.1132, i32 0, i32 3
  %59 = ptrtoint ptr %reg61 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sprd_pinctrl_add_pins.__UNIQUE_ID_ddebug224, ptr noundef %48, ptr noundef nonnull @.str.14, ptr noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #7
  br label %for.inc63

for.inc63:                                        ; preds = %if.then54, %do.body
  %incdec.ptr64 = getelementptr %struct.sprd_pin, ptr %pin.1132, i32 1
  %inc65 = add nuw i32 %i.1134, 1
  %61 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %npins, align 4
  %cmp47 = icmp ult i32 %inc65, %62
  br i1 %cmp47, label %for.inc63.do.body_crit_edge, label %for.inc63.cleanup_crit_edge

for.inc63.cleanup_crit_edge:                      ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc63.do.body_crit_edge:                      ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %for.inc63.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprd_pinctrl_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pctl = getelementptr inbounds %struct.sprd_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl, align 4
  tail call void @pinctrl_unregister(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sprd_pinctrl_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @pinctrl_lookup_state(ptr noundef %call, ptr noundef nonnull @.str.11) #7
  %cmp.i11 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i11, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @pinctrl_select_state(ptr noundef %call, ptr noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_pinctrl_parse_groups(ptr noundef %np, ptr nocapture noundef readonly %sprd_pctl, ptr nocapture noundef %grp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %2 = ptrtoint ptr %grp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %grp, align 4
  %npins = getelementptr inbounds %struct.sprd_pin_group, ptr %grp, i32 0, i32 1
  %3 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %npins, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #7
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !104

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pins64 = getelementptr inbounds %struct.sprd_pin_group, ptr %grp, i32 0, i32 2
  %6 = ptrtoint ptr %pins64 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pins64, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %7 = ptrtoint ptr %sprd_pctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sprd_pctl, align 4
  %9 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %9, i32 noundef 3520) #7
  %pins = getelementptr inbounds %struct.sprd_pin_group, ptr %grp, i32 0, i32 2
  %10 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %pins, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end6

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %devm_kcalloc.exit
  %call7 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %call8 = tail call ptr @of_prop_next_string(ptr noundef %call7, ptr noundef null) #7
  %tobool9.not70 = icmp eq ptr %call8, null
  br i1 %tobool9.not70, label %if.end6.for.cond16.preheader_crit_edge, label %for.body.lr.ph

if.end6.for.cond16.preheader_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

for.body.lr.ph:                                   ; preds = %if.end6
  %info1.i = getelementptr inbounds %struct.sprd_pinctrl, ptr %sprd_pctl, i32 0, i32 3
  br label %for.body

for.cond16.preheader:                             ; preds = %for.inc.for.cond16.preheader_crit_edge, %if.end6.for.cond16.preheader_crit_edge
  %11 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1874.not = icmp eq i32 %12, 0
  br i1 %cmp1874.not, label %for.cond16.preheader.cleanup_crit_edge, label %for.cond16.preheader.do.body_crit_edge

for.cond16.preheader.do.body_crit_edge:           ; preds = %for.cond16.preheader
  br label %do.body

for.cond16.preheader.cleanup_crit_edge:           ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc.for.body_crit_edge ]
  %pin_name.071 = phi ptr [ %call8, %for.body.lr.ph ], [ %call15, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info1.i, align 4
  %npins.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp12.not.i = icmp eq i32 %16, 0
  br i1 %cmp12.not.i, label %for.body.for.inc_crit_edge, label %for.body.lr.ph.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %for.body
  %pins.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pins.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sprd_pin, ptr %18, i32 %i.013.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call.i61 = tail call i32 @strcmp(ptr noundef %20, ptr noundef nonnull %pin_name.071) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i, label %sprd_pinctrl_get_id_by_name.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %16
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sprd_pinctrl_get_id_by_name.exit:                 ; preds = %for.body.i
  %number.i = getelementptr %struct.sprd_pin, ptr %18, i32 %i.013.i, i32 1
  %21 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp11 = icmp sgt i32 %22, -1
  br i1 %cmp11, label %if.then12, label %sprd_pinctrl_get_id_by_name.exit.for.inc_crit_edge

sprd_pinctrl_get_id_by_name.exit.for.inc_crit_edge: ; preds = %sprd_pinctrl_get_id_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %sprd_pinctrl_get_id_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pins, align 4
  %inc = add i32 %i.073, 1
  %arrayidx = getelementptr i32, ptr %24, i32 %i.073
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %sprd_pinctrl_get_id_by_name.exit.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %if.then12 ], [ %i.073, %sprd_pinctrl_get_id_by_name.exit.for.inc_crit_edge ], [ %i.073, %for.body.for.inc_crit_edge ], [ %i.073, %for.inc.i.for.inc_crit_edge ]
  %call15 = tail call ptr @of_prop_next_string(ptr noundef %call7, ptr noundef nonnull %pin_name.071) #7
  %tobool9.not = icmp eq ptr %call15, null
  br i1 %tobool9.not, label %for.inc.for.cond16.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.cond16.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

do.body:                                          ; preds = %for.inc32.do.body_crit_edge, %for.cond16.preheader.do.body_crit_edge
  %i.275 = phi i32 [ %inc33, %for.inc32.do.body_crit_edge ], [ 0, %for.cond16.preheader.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sprd_pinctrl_parse_groups.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sprd_pinctrl_parse_groups, %for.inc32)) #7
          to label %if.then25 [label %for.inc32], !srcloc !105

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %sprd_pctl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sprd_pctl, align 4
  %28 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %grp, align 4
  %30 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %npins, align 4
  %32 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pins, align 4
  %arrayidx30 = getelementptr i32, ptr %33, i32 %i.275
  %34 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sprd_pinctrl_parse_groups.__UNIQUE_ID_ddebug223, ptr noundef %27, ptr noundef nonnull @.str.17, ptr noundef %29, i32 noundef %31, i32 noundef %35) #7
  br label %for.inc32

for.inc32:                                        ; preds = %if.then25, %do.body
  %inc33 = add nuw i32 %i.275, 1
  %36 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %npins, align 4
  %cmp18 = icmp ult i32 %inc33, %37
  br i1 %cmp18, label %for.inc32.do.body_crit_edge, label %for.inc32.cleanup_crit_edge

for.inc32.cleanup_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc32.do.body_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %for.inc32.cleanup_crit_edge, %for.cond16.preheader.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %for.cond16.preheader.cleanup_crit_edge ], [ 0, %for.inc32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pctrl_group_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %ngroups = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sprd_pctrl_group_name(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.sprd_pin_group, ptr %3, i32 %selector
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pctrl_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %npins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %ngroups = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %selector)
  %cmp.not = icmp ugt i32 %3, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %pins2 = getelementptr %struct.sprd_pin_group, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %pins2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins2, align 4
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pins, align 4
  %9 = load ptr, ptr %1, align 4
  %npins5 = getelementptr %struct.sprd_pin_group, ptr %9, i32 %selector, i32 1
  %10 = ptrtoint ptr %npins5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins5, align 4
  %12 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %npins, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pctrl_dbg_show(ptr nocapture noundef readonly %pctldev, ptr noundef %s, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr noundef %map, ptr noundef %num_maps) #0 align 64 {
entry:
  %configs = alloca ptr, align 4
  %num_configs = alloca i32, align 4
  %reserved_maps = alloca i32, align 4
  %function = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs) #7
  %0 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %configs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs) #7
  %1 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_configs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #7
  %2 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserved_maps, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function) #7
  %3 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %function, align 4, !annotation !106
  %4 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %np, align 4
  %info1.i = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info1.i, align 4
  %ngroups.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10.not.i = icmp eq i32 %9, 0
  br i1 %cmp10.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sprd_pin_group, ptr %11, i32 %i.011.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sprd_pinctrl_find_group_by_name.exit, label %for.cond.i

sprd_pinctrl_find_group_by_name.exit:             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %sprd_pinctrl_find_group_by_name.exit.do.end_crit_edge, label %if.end

sprd_pinctrl_find_group_by_name.exit.do.end_crit_edge: ; preds = %sprd_pinctrl_find_group_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %sprd_pinctrl_find_group_by_name.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %tobool.not.i102 = icmp eq ptr %np, null
  br i1 %tobool.not.i102, label %do.end.of_node_full_name.exit_crit_edge, label %cond.true.i

do.end.of_node_full_name.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %16 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %do.end.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %17, %cond.true.i ], [ @.str.28, %do.end.of_node_full_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.19, ptr noundef %cond.i) #10
  br label %cleanup

if.end:                                           ; preds = %sprd_pinctrl_find_group_by_name.exit
  %call.i103 = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp = icmp slt i32 %call.i103, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i103)
  %cmp6 = icmp eq i32 %call.i103, 1
  %. = select i1 %cmp6, i32 3, i32 4
  %call9 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.21, ptr noundef nonnull %function) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end5.if.end20_crit_edge

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call9)
  %cmp12.not = icmp eq i32 %call9, -22
  br i1 %cmp12.not, label %if.then11.if.end19_crit_edge, label %do.end16

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end16:                                         ; preds = %if.then11
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %tobool.not.i104 = icmp eq ptr %np, null
  br i1 %tobool.not.i104, label %do.end16.of_node_full_name.exit108_crit_edge, label %cond.true.i106

do.end16.of_node_full_name.exit108_crit_edge:     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_node_full_name.exit108

cond.true.i106:                                   ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %full_name.i105 = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %20 = ptrtoint ptr %full_name.i105 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %full_name.i105, align 4
  br label %of_node_full_name.exit108

of_node_full_name.exit108:                        ; preds = %cond.true.i106, %do.end16.of_node_full_name.exit108_crit_edge
  %cond.i107 = phi ptr [ %21, %cond.true.i106 ], [ @.str.28, %do.end16.of_node_full_name.exit108_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23, ptr noundef %cond.i107) #10
  br label %if.end19

if.end19:                                         ; preds = %of_node_full_name.exit108, %if.then11.if.end19_crit_edge
  %22 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %function, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end5.if.end20_crit_edge
  %call21 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %np, ptr noundef %pctldev, ptr noundef nonnull %configs, ptr noundef nonnull %num_configs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end20
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  %tobool.not.i109 = icmp eq ptr %np, null
  br i1 %tobool.not.i109, label %do.end26.of_node_full_name.exit113_crit_edge, label %cond.true.i111

do.end26.of_node_full_name.exit113_crit_edge:     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_node_full_name.exit113

cond.true.i111:                                   ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %full_name.i110 = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %25 = ptrtoint ptr %full_name.i110 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %full_name.i110, align 4
  br label %of_node_full_name.exit113

of_node_full_name.exit113:                        ; preds = %cond.true.i111, %do.end26.of_node_full_name.exit113_crit_edge
  %cond.i112 = phi ptr [ %26, %cond.true.i111 ], [ @.str.28, %do.end26.of_node_full_name.exit113_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.26, ptr noundef %cond.i112) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %27 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %map, align 4
  %28 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %num_maps, align 4
  %29 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %function, align 4
  %cmp30.not = icmp ne ptr %30, null
  %spec.select = zext i1 %cmp30.not to i32
  %31 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool33.not = icmp eq i32 %32, 0
  %inc35 = select i1 %cmp30.not, i32 2, i32 1
  %reserve.1 = select i1 %tobool33.not, i32 %spec.select, i32 %inc35
  %call37 = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %reserve.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end29.out_crit_edge, label %if.end40

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end40:                                         ; preds = %if.end29
  %33 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %function, align 4
  %tobool41.not = icmp eq ptr %34, null
  br i1 %tobool41.not, label %if.end40.if.end48_crit_edge, label %if.then42

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then42:                                        ; preds = %if.end40
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %call44 = call i32 @pinctrl_utils_add_map_mux(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef %36, ptr noundef nonnull %34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then42.out_crit_edge, label %if.then42.if.end48_crit_edge

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end48:                                         ; preds = %if.then42.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  %ret.0 = phi i32 [ %call44, %if.then42.if.end48_crit_edge ], [ %call37, %if.end40.if.end48_crit_edge ]
  %37 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool49.not = icmp eq i32 %38, 0
  br i1 %tobool49.not, label %if.end48.out_crit_edge, label %if.then50

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then50:                                        ; preds = %if.end48
  br i1 %cmp6, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %pins = getelementptr %struct.sprd_pin_group, ptr %11, i32 %i.011.i, i32 2
  %39 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pins, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %call53 = call ptr @pin_get_name(ptr noundef %pctldev, i32 noundef %42) #7
  br label %if.end56

if.else54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then52
  %group_or_pin.0 = phi ptr [ %call53, %if.then52 ], [ %44, %if.else54 ]
  %45 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %configs, align 4
  %47 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_configs, align 4
  %call57 = call i32 @pinctrl_utils_add_map_configs(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef %group_or_pin.0, ptr noundef %46, i32 noundef %48, i32 noundef %.) #7
  br label %out

out:                                              ; preds = %if.end56, %if.end48.out_crit_edge, %if.then42.out_crit_edge, %if.end29.out_crit_edge
  %ret.1 = phi i32 [ %call37, %if.end29.out_crit_edge ], [ %call44, %if.then42.out_crit_edge ], [ %call57, %if.end56 ], [ %ret.0, %if.end48.out_crit_edge ]
  %49 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %configs, align 4
  call void @kfree(ptr noundef %50) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %of_node_full_name.exit113, %if.end.cleanup_crit_edge, %of_node_full_name.exit
  %retval.0 = phi i32 [ %call21, %of_node_full_name.exit113 ], [ %ret.1, %out ], [ -22, %of_node_full_name.exit ], [ %call.i103, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pin_get_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_pmx_get_function_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @sprd_pmx_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %selector)
  %0 = icmp ult i32 %selector, 4
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.sprd_pmx_get_function_name, i32 0, i32 %selector
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.33, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmx_get_function_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %grp_names = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %grp_names to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grp_names, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %ngroups = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ngroups, align 4
  %7 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmx_set_mux(ptr noundef %pctldev, i32 noundef %func_selector, i32 noundef %group_selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %npins = getelementptr %struct.sprd_pin_group, ptr %3, i32 %group_selector, i32 1
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  %ngroups = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %group_selector)
  %cmp.not = icmp ugt i32 %7, %group_selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %func_selector, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.mult = shl i32 %switch.tableidx, 4
  %switch.offset = add i32 %switch.idx.mult, 16
  %val.0 = select i1 %8, i32 %switch.offset, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp745.not = icmp eq i32 %5, 0
  br i1 %cmp745.not, label %if.end.cleanup20_crit_edge, label %for.body.lr.ph

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.body.lr.ph:                                   ; preds = %if.end
  %pins = getelementptr %struct.sprd_pin_group, ptr %3, i32 %group_selector, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %9 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pins, align 4
  %arrayidx8 = getelementptr i32, ptr %10, i32 %i.046
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %13 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info1, align 4
  %npins.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11.not.i = icmp eq i32 %16, 0
  br i1 %cmp11.not.i, label %for.body.cleanup_crit_edge, label %for.body.lr.ph.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.body
  %pins.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pins.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %number.i = getelementptr %struct.sprd_pin, ptr %18, i32 %i.012.i, i32 1
  %19 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %12)
  %cmp2.i = icmp eq i32 %20, %12
  br i1 %cmp2.i, label %sprd_pinctrl_get_pin_by_id.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %16
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sprd_pinctrl_get_pin_by_id.exit:                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.sprd_pin, ptr %18, i32 %i.012.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %sprd_pinctrl_get_pin_by_id.exit.cleanup_crit_edge, label %lor.lhs.false

sprd_pinctrl_get_pin_by_id.exit.cleanup_crit_edge: ; preds = %sprd_pinctrl_get_pin_by_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %sprd_pinctrl_get_pin_by_id.exit
  %type = getelementptr %struct.sprd_pin, ptr %18, i32 %i.012.i, i32 2
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp10.not = icmp eq i32 %22, 1
  br i1 %cmp10.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %reg13 = getelementptr %struct.sprd_pin, ptr %18, i32 %i.012.i, i32 3
  %23 = ptrtoint ptr %reg13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg13, align 4
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %27 = and i32 %26, -805306369
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %or17 = or i32 %28, %val.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %30 = ptrtoint ptr %reg13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg13, align 4
  %32 = inttoptr i32 %31 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #7, !srcloc !110
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false.cleanup_crit_edge, %sprd_pinctrl_get_pin_by_id.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %cleanup.cleanup20_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.cleanup20_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup.cleanup20_crit_edge, %if.end.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup20_crit_edge ], [ 0, %if.end.cleanup20_crit_edge ], [ 0, %cleanup.cleanup20_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pinconf_get(ptr noundef %pctldev, i32 noundef %pin_id, ptr nocapture noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1.i = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1.i, align 4
  %npins.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %pins.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %number.i = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 1
  %6 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin_id)
  %cmp2.i = icmp eq i32 %7, %pin_id
  br i1 %cmp2.i, label %sprd_pinctrl_get_pin_by_id.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sprd_pinctrl_get_pin_by_id.exit:                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 4
  %and.i = and i32 %9, 255
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %sprd_pinctrl_get_pin_by_id.exit.cleanup_crit_edge, label %if.end

sprd_pinctrl_get_pin_by_id.exit.cleanup_crit_edge: ; preds = %sprd_pinctrl_get_pin_by_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sprd_pinctrl_get_pin_by_id.exit
  %type = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %reg4 = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 3
  %12 = ptrtoint ptr %reg4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg4, align 4
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp, label %if.then3, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bit_offset = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 4
  %17 = ptrtoint ptr %bit_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bit_offset, align 4
  %shr = lshr i32 %16, %18
  %bit_width = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 5
  %19 = ptrtoint ptr %bit_width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bit_width, align 4
  %shl = shl nsw i32 -1, %20
  %neg = xor i32 %shl, -1
  %and = and i32 %shr, %neg
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.end.if.end13_crit_edge
  %reg.0 = phi i32 [ %and, %if.then3 ], [ %16, %if.end.if.end13_crit_edge ]
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp15 = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and.i)
  %cmp16 = icmp eq i32 %and.i, 128
  %or.cond = select i1 %cmp15, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.end13.if.end69_crit_edge, label %if.else18

if.end13.if.end69_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.else18:                                        ; preds = %if.end13
  %.off = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then23, label %if.else18.cleanup_crit_edge

if.else18.cleanup_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.else18
  %trunc = trunc i32 %9 to i8
  %23 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %trunc, label %if.then23.cleanup_crit_edge [
    i8 -127, label %sw.bb
    i8 12, label %sw.bb26
    i8 18, label %sw.bb29
    i8 2, label %sw.bb31
    i8 9, label %sw.bb39
    i8 3, label %sw.bb42
    i8 14, label %sw.bb48
    i8 5, label %sw.bb51
    i8 1, label %sw.bb58
    i8 23, label %if.then23.if.end69_crit_edge
  ]

if.then23.if.end69_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shr24 = lshr i32 %reg.0, 13
  %and25 = and i32 %shr24, 63
  br label %if.end69

sw.bb26:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shr27 = lshr i32 %reg.0, 1
  %and28 = and i32 %shr27, 1
  br label %if.end69

sw.bb29:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %and30 = and i32 %reg.0, 1
  br label %if.end69

sw.bb31:                                          ; preds = %if.then23
  %24 = and i32 %reg.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %sw.bb31.if.end69_crit_edge, label %sw.bb31.cleanup_crit_edge

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb31.if.end69_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

sw.bb39:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shr40 = lshr i32 %reg.0, 19
  %and41 = and i32 %shr40, 15
  br label %if.end69

sw.bb42:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %26 = shl i32 %reg.0, 14
  %shl45 = and i32 %26, 65536
  %shr46 = lshr i32 %reg.0, 6
  %and47 = and i32 %shr46, 1
  %or = or i32 %shl45, %and47
  br label %if.end69

sw.bb48:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shr49 = lshr i32 %reg.0, 11
  %and50 = and i32 %shr49, 1
  br label %if.end69

sw.bb51:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %27 = shl i32 %reg.0, 13
  %shl54 = and i32 %27, 65536
  %shr55 = lshr i32 %reg.0, 7
  %and56 = and i32 %shr55, 33
  %or57 = or i32 %shl54, %and56
  br label %if.end69

sw.bb58:                                          ; preds = %if.then23
  %28 = and i32 %reg.0, 4300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %sw.bb58.if.end69_crit_edge, label %sw.bb58.cleanup_crit_edge

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb58.if.end69_crit_edge:                       ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.end69:                                         ; preds = %sw.bb58.if.end69_crit_edge, %sw.bb51, %sw.bb48, %sw.bb42, %sw.bb39, %sw.bb31.if.end69_crit_edge, %sw.bb29, %sw.bb26, %sw.bb, %if.then23.if.end69_crit_edge, %if.end13.if.end69_crit_edge
  %and.i106 = phi i32 [ 5, %sw.bb51 ], [ 14, %sw.bb48 ], [ 3, %sw.bb42 ], [ 9, %sw.bb39 ], [ 18, %sw.bb29 ], [ 12, %sw.bb26 ], [ 129, %sw.bb ], [ 128, %if.end13.if.end69_crit_edge ], [ 2, %sw.bb31.if.end69_crit_edge ], [ 1, %sw.bb58.if.end69_crit_edge ], [ 23, %if.then23.if.end69_crit_edge ]
  %arg.0 = phi i32 [ %or57, %sw.bb51 ], [ %and50, %sw.bb48 ], [ %or, %sw.bb42 ], [ %and41, %sw.bb39 ], [ %and30, %sw.bb29 ], [ %and28, %sw.bb26 ], [ %and25, %sw.bb ], [ %reg.0, %if.end13.if.end69_crit_edge ], [ 1, %sw.bb31.if.end69_crit_edge ], [ 1, %sw.bb58.if.end69_crit_edge ], [ 0, %if.then23.if.end69_crit_edge ]
  %shl.i = shl i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i106
  %30 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %sw.bb58.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.else18.cleanup_crit_edge, %sprd_pinctrl_get_pin_by_id.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end69 ], [ -22, %sprd_pinctrl_get_pin_by_id.exit.cleanup_crit_edge ], [ -22, %sw.bb31.cleanup_crit_edge ], [ -22, %sw.bb58.cleanup_crit_edge ], [ -524, %if.then23.cleanup_crit_edge ], [ -524, %if.else18.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pinconf_set(ptr noundef %pctldev, i32 noundef %pin_id, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1.i = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1.i, align 4
  %npins.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.cleanup165_crit_edge, label %for.body.lr.ph.i

entry.cleanup165_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup165

for.body.lr.ph.i:                                 ; preds = %entry
  %pins.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %number.i = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 1
  %6 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin_id)
  %cmp2.i = icmp eq i32 %7, %pin_id
  br i1 %cmp2.i, label %sprd_pinctrl_get_pin_by_id.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup165_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup165_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup165

sprd_pinctrl_get_pin_by_id.exit:                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %sprd_pinctrl_get_pin_by_id.exit.cleanup165_crit_edge, label %if.end

sprd_pinctrl_get_pin_by_id.exit.cleanup165_crit_edge: ; preds = %sprd_pinctrl_get_pin_by_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup165

if.end:                                           ; preds = %sprd_pinctrl_get_pin_by_id.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp5.not.i = icmp eq i32 %num_configs, 0
  br i1 %cmp5.not.i, label %if.end.cleanup165_crit_edge, label %for.body.i239.preheader

if.end.cleanup165_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup165

for.body.i239.preheader:                          ; preds = %if.end
  %8 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %configs, align 4
  %and.i.i246 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %and.i.i246)
  %cmp1.i247 = icmp eq i32 %and.i.i246, 23
  br i1 %cmp1.i247, label %for.body.lr.ph.thread, label %for.body.i239.preheader.for.cond.i_crit_edge

for.body.i239.preheader.for.cond.i_crit_edge:     ; preds = %for.body.i239.preheader
  br label %for.cond.i

for.body.lr.ph.thread:                            ; preds = %for.body.i239.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %type263 = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 2
  br label %12

for.cond.i:                                       ; preds = %for.body.i239.for.cond.i_crit_edge, %for.body.i239.preheader.for.cond.i_crit_edge
  %i.06.i248 = phi i32 [ %inc.i236, %for.body.i239.for.cond.i_crit_edge ], [ 0, %for.body.i239.preheader.for.cond.i_crit_edge ]
  %inc.i236 = add nuw i32 %i.06.i248, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i236, i32 %num_configs)
  %exitcond.not.i237 = icmp eq i32 %inc.i236, %num_configs
  br i1 %exitcond.not.i237, label %for.cond.i.sprd_pinctrl_check_sleep_config.exit_crit_edge, label %for.body.i239

for.cond.i.sprd_pinctrl_check_sleep_config.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sprd_pinctrl_check_sleep_config.exit

for.body.i239:                                    ; preds = %for.cond.i
  %arrayidx.i238 = getelementptr i32, ptr %configs, i32 %inc.i236
  %10 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i238, align 4
  %and.i.i = and i32 %11, 255
  %cmp1.i = icmp eq i32 %and.i.i, 23
  br i1 %cmp1.i, label %for.body.i239.sprd_pinctrl_check_sleep_config.exit_crit_edge, label %for.body.i239.for.cond.i_crit_edge

for.body.i239.for.cond.i_crit_edge:               ; preds = %for.body.i239
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i239.sprd_pinctrl_check_sleep_config.exit_crit_edge: ; preds = %for.body.i239
  call void @__sanitizer_cov_trace_pc() #9
  br label %sprd_pinctrl_check_sleep_config.exit

sprd_pinctrl_check_sleep_config.exit:             ; preds = %for.body.i239.sprd_pinctrl_check_sleep_config.exit_crit_edge, %for.cond.i.sprd_pinctrl_check_sleep_config.exit_crit_edge
  br i1 %cmp5.not.i, label %sprd_pinctrl_check_sleep_config.exit.cleanup165_crit_edge, label %for.body.lr.ph

sprd_pinctrl_check_sleep_config.exit.cleanup165_crit_edge: ; preds = %sprd_pinctrl_check_sleep_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup165

for.body.lr.ph:                                   ; preds = %sprd_pinctrl_check_sleep_config.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i236, i32 %num_configs)
  %cmp.i.le = icmp ult i32 %inc.i236, %num_configs
  %type = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 2
  br i1 %cmp.i.le, label %for.body.lr.ph._crit_edge, label %for.body.lr.ph._crit_edge297

for.body.lr.ph._crit_edge297:                     ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %13

for.body.lr.ph._crit_edge:                        ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %12

12:                                               ; preds = %for.body.lr.ph._crit_edge, %for.body.lr.ph.thread
  %type267 = phi ptr [ %type263, %for.body.lr.ph.thread ], [ %type, %for.body.lr.ph._crit_edge ]
  br label %13

13:                                               ; preds = %12, %for.body.lr.ph._crit_edge297
  %14 = phi i32 [ 4, %12 ], [ 64, %for.body.lr.ph._crit_edge297 ]
  %15 = phi i32 [ 12, %12 ], [ 4288, %for.body.lr.ph._crit_edge297 ]
  %cmp.lcssa.i261264272277286 = phi i1 [ true, %12 ], [ false, %for.body.lr.ph._crit_edge297 ]
  %type266270279284 = phi ptr [ %type267, %12 ], [ %type, %for.body.lr.ph._crit_edge297 ]
  %16 = phi i32 [ 2, %12 ], [ 6, %for.body.lr.ph._crit_edge297 ]
  %17 = phi i32 [ 3, %12 ], [ 0, %for.body.lr.ph._crit_edge297 ]
  %reg148 = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 3
  %bit_width = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 5
  %bit_offset = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %13
  %i.0251 = phi i32 [ 0, %13 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0251
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %19, 255
  %shr.i = lshr i32 %19, 8
  %20 = ptrtoint ptr %type266270279284 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type266270279284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp6 = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and.i)
  %cmp7 = icmp eq i32 %and.i, 128
  %or.cond = select i1 %cmp6, i1 %cmp7, i1 false
  br i1 %or.cond, label %for.body.if.end126_crit_edge, label %if.else

for.body.if.end126_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.else:                                          ; preds = %for.body
  %.off = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then13, label %if.else.cleanup165_crit_edge

if.else.cleanup165_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup165

if.then13:                                        ; preds = %if.else
  %trunc = trunc i32 %19 to i8
  %22 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %trunc, label %if.then13.cleanup165_crit_edge [
    i8 -127, label %sw.bb
    i8 12, label %sw.bb37
    i8 18, label %sw.bb50
    i8 2, label %if.then13.if.end126_crit_edge
    i8 9, label %sw.bb71
    i8 3, label %sw.bb80
    i8 14, label %sw.bb90
    i8 5, label %sw.bb98
    i8 1, label %sw.bb115
    i8 23, label %if.then13.for.inc_crit_edge
  ]

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then13.if.end126_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then13.cleanup165_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup165

sw.bb:                                            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %23 = shl i32 %19, 5
  %24 = and i32 %23, 253952
  br label %if.end126

sw.bb37:                                          ; preds = %if.then13
  br i1 %cmp.lcssa.i261264272277286, label %if.then41, label %sw.bb37.if.end126_crit_edge

sw.bb37.if.end126_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then41:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %19)
  %cmp42.not = icmp ult i32 %19, 256
  %. = select i1 %cmp42.not, i32 0, i32 2
  br label %if.end126

sw.bb50:                                          ; preds = %if.then13
  br i1 %cmp.lcssa.i261264272277286, label %if.then55, label %sw.bb50.if.end126_crit_edge

sw.bb50.if.end126_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then55:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %cmp56.not = icmp ugt i32 %19, 255
  %.229 = zext i1 %cmp56.not to i32
  br label %if.end126

sw.bb71:                                          ; preds = %if.then13
  %25 = add i32 %19, -15616
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15104, i32 %25)
  %26 = icmp ult i32 %25, -15104
  br i1 %26, label %sw.bb71.cleanup165_crit_edge, label %if.end78

sw.bb71.cleanup165_crit_edge:                     ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup165

if.end78:                                         ; preds = %sw.bb71
  %switch.tableidx = add nsw i32 %shr.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %switch.tableidx)
  %27 = icmp ult i32 %switch.tableidx, 30
  br i1 %27, label %switch.lookup, label %if.end78.if.end126_crit_edge

if.end78.if.end126_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

sw.bb80:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

sw.bb90:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %19)
  %cmp91.not = icmp ult i32 %19, 256
  %.234 = select i1 %cmp91.not, i32 0, i32 2048
  br label %if.end126

sw.bb98:                                          ; preds = %if.then13
  br i1 %cmp.lcssa.i261264272277286, label %sw.bb98.if.end126_crit_edge, label %if.else102

sw.bb98.if.end126_crit_edge:                      ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.else102:                                       ; preds = %sw.bb98
  %28 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %shr.i, label %if.end113.fold.split [
    i32 20000, label %if.else102.if.end126_crit_edge
    i32 4700, label %if.then110
  ]

if.else102.if.end126_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then110:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.end113.fold.split:                             ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

sw.bb115:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

switch.lookup:                                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [30 x i32], ptr @switch.table.sprd_pinconf_set, i32 0, i32 %switch.tableidx
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end126

if.end126:                                        ; preds = %switch.lookup, %sw.bb115, %if.end113.fold.split, %if.then110, %if.else102.if.end126_crit_edge, %sw.bb98.if.end126_crit_edge, %sw.bb90, %sw.bb80, %if.end78.if.end126_crit_edge, %if.then55, %sw.bb50.if.end126_crit_edge, %if.then41, %sw.bb37.if.end126_crit_edge, %sw.bb, %if.then13.if.end126_crit_edge, %for.body.if.end126_crit_edge
  %shift.0 = phi i32 [ 11, %sw.bb90 ], [ 0, %if.then55 ], [ 0, %sw.bb50.if.end126_crit_edge ], [ 1, %if.then41 ], [ 0, %sw.bb37.if.end126_crit_edge ], [ 13, %sw.bb ], [ 0, %for.body.if.end126_crit_edge ], [ %16, %sw.bb80 ], [ 3, %sw.bb98.if.end126_crit_edge ], [ 7, %if.else102.if.end126_crit_edge ], [ 7, %if.end113.fold.split ], [ 7, %if.then110 ], [ 0, %sw.bb115 ], [ 19, %if.end78.if.end126_crit_edge ], [ 0, %if.then13.if.end126_crit_edge ], [ 19, %switch.lookup ]
  %mask.0 = phi i32 [ 1, %sw.bb90 ], [ 1, %if.then55 ], [ 0, %sw.bb50.if.end126_crit_edge ], [ 1, %if.then41 ], [ 0, %sw.bb37.if.end126_crit_edge ], [ 63, %sw.bb ], [ 0, %for.body.if.end126_crit_edge ], [ 1, %sw.bb80 ], [ 1, %sw.bb98.if.end126_crit_edge ], [ 33, %if.else102.if.end126_crit_edge ], [ 33, %if.end113.fold.split ], [ 33, %if.then110 ], [ %15, %sw.bb115 ], [ 15, %if.end78.if.end126_crit_edge ], [ %17, %if.then13.if.end126_crit_edge ], [ 15, %switch.lookup ]
  %val.9 = phi i32 [ %.234, %sw.bb90 ], [ %.229, %if.then55 ], [ 0, %sw.bb50.if.end126_crit_edge ], [ %., %if.then41 ], [ 0, %sw.bb37.if.end126_crit_edge ], [ %24, %sw.bb ], [ %shr.i, %for.body.if.end126_crit_edge ], [ %14, %sw.bb80 ], [ 8, %sw.bb98.if.end126_crit_edge ], [ 128, %if.else102.if.end126_crit_edge ], [ 0, %if.end113.fold.split ], [ 4224, %if.then110 ], [ 0, %sw.bb115 ], [ 0, %if.end78.if.end126_crit_edge ], [ 0, %if.then13.if.end126_crit_edge ], [ %switch.load, %switch.lookup ]
  %30 = ptrtoint ptr %reg148 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg148, align 4
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp6, label %if.then130, label %if.else145

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %bit_width to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bit_width, align 4
  %shl = shl nsw i32 -1, %36
  %neg = xor i32 %shl, -1
  %37 = ptrtoint ptr %bit_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bit_offset, align 4
  %shl134 = shl i32 %neg, %38
  %neg135 = xor i32 %shl134, -1
  %and136 = and i32 %34, %neg135
  %and140 = and i32 %val.9, %neg
  %shl142 = shl i32 %and140, %38
  %or143 = or i32 %and136, %shl142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %or143)
  %40 = ptrtoint ptr %reg148 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg148, align 4
  %42 = inttoptr i32 %41 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %39) #7, !srcloc !110
  br label %for.inc

if.else145:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %shl152 = shl nuw i32 %mask.0, %shift.0
  %neg153 = xor i32 %shl152, -1
  %and154 = and i32 %34, %neg153
  %or155 = or i32 %and154, %val.9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %or155)
  %44 = ptrtoint ptr %reg148 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg148, align 4
  %46 = inttoptr i32 %45 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %43) #7, !srcloc !110
  br label %for.inc

for.inc:                                          ; preds = %if.else145, %if.then130, %if.then13.for.inc_crit_edge
  %inc = add nuw i32 %i.0251, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup165_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup165_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup165

cleanup165:                                       ; preds = %for.inc.cleanup165_crit_edge, %sw.bb71.cleanup165_crit_edge, %if.then13.cleanup165_crit_edge, %if.else.cleanup165_crit_edge, %sprd_pinctrl_check_sleep_config.exit.cleanup165_crit_edge, %if.end.cleanup165_crit_edge, %sprd_pinctrl_get_pin_by_id.exit.cleanup165_crit_edge, %for.inc.i.cleanup165_crit_edge, %entry.cleanup165_crit_edge
  %retval.2 = phi i32 [ -22, %sprd_pinctrl_get_pin_by_id.exit.cleanup165_crit_edge ], [ -22, %entry.cleanup165_crit_edge ], [ 0, %sprd_pinctrl_check_sleep_config.exit.cleanup165_crit_edge ], [ 0, %if.end.cleanup165_crit_edge ], [ 0, %for.inc.cleanup165_crit_edge ], [ -22, %sw.bb71.cleanup165_crit_edge ], [ -524, %if.else.cleanup165_crit_edge ], [ -524, %if.then13.cleanup165_crit_edge ], [ -22, %for.inc.i.cleanup165_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pinconf_group_get(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %ngroups = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %selector)
  %cmp.not = icmp ugt i32 %3, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %pins = getelementptr %struct.sprd_pin_group, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call3 = tail call i32 @sprd_pinconf_get(ptr noundef %pctldev, i32 noundef %9, ptr noundef %config)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pinconf_group_set(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %ngroups = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %selector)
  %cmp.not = icmp ugt i32 %3, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup7_crit_edge

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup7

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %pins = getelementptr %struct.sprd_pin_group, ptr %5, i32 %selector, i32 2
  %npins = getelementptr %struct.sprd_pin_group, ptr %5, i32 %selector, i32 1
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp219.not = icmp eq i32 %7, 0
  br i1 %cmp219.not, label %if.end.cleanup7_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup7

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.020, 1
  %8 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins, align 4
  %cmp2 = icmp ult i32 %inc, %9
  br i1 %cmp2, label %for.cond.for.body_crit_edge, label %for.cond.cleanup7_crit_edge

for.cond.cleanup7_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup7

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pins, align 4
  %arrayidx3 = getelementptr i32, ptr %11, i32 %i.020
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  %call4 = tail call i32 @sprd_pinconf_set(ptr noundef %pctldev, i32 noundef %13, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup7_crit_edge

for.body.cleanup7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup7

cleanup7:                                         ; preds = %for.body.cleanup7_crit_edge, %for.cond.cleanup7_crit_edge, %if.end.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup7_crit_edge ], [ 0, %if.end.cleanup7_crit_edge ], [ %call4, %for.body.cleanup7_crit_edge ], [ 0, %for.cond.cleanup7_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pinconf_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1.i.i = getelementptr inbounds %struct.sprd_pinctrl, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1.i.i, align 4
  %npins.i.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %entry
  %pins.i.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %number.i.i = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i.i, i32 1
  %6 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin_id)
  %cmp2.i.i = icmp eq i32 %7, %pin_id
  br i1 %cmp2.i.i, label %sprd_pinctrl_get_pin_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sprd_pinctrl_get_pin_by_id.exit.i:                ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %sprd_pinctrl_get_pin_by_id.exit.i.cleanup_crit_edge, label %if.end.i

sprd_pinctrl_get_pin_by_id.exit.i.cleanup_crit_edge: ; preds = %sprd_pinctrl_get_pin_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sprd_pinctrl_get_pin_by_id.exit.i
  %type.i = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i.i, i32 2
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %reg.i = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i.i, i32 3
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %bit_offset.i = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i.i, i32 4
  %15 = ptrtoint ptr %bit_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bit_offset.i, align 4
  %shr.i = lshr i32 %14, %16
  %bit_width.i = getelementptr %struct.sprd_pin, ptr %5, i32 %i.012.i.i, i32 5
  %17 = ptrtoint ptr %bit_width.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bit_width.i, align 4
  %shl.i = shl nsw i32 -1, %18
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %shr.i, %neg.i
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %if.end.i.if.end_crit_edge
  %config.0 = phi i32 [ %and.i, %if.then2.i ], [ %14, %if.end.i.if.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %config.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sprd_pinctrl_get_pin_by_id.exit.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pinconf_group_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.sprd_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %ngroups = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %selector)
  %cmp.not = icmp ugt i32 %3, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup9_crit_edge

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #7
  %npins = getelementptr %struct.sprd_pin_group, ptr %5, i32 %selector, i32 1
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp233.not = icmp eq i32 %7, 0
  br i1 %cmp233.not, label %if.end.cleanup9_crit_edge, label %for.body.lr.ph

if.end.cleanup9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

for.body.lr.ph:                                   ; preds = %if.end
  %pins = getelementptr %struct.sprd_pin_group, ptr %5, i32 %selector, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end7.for.body_crit_edge ]
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %arrayidx3 = getelementptr i32, ptr %9, i32 %i.034
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %call4 = tail call ptr @pin_get_name(ptr noundef %pctldev, i32 noundef %11) #7
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1.i.i = getelementptr inbounds %struct.sprd_pinctrl, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info1.i.i, align 4
  %npins.i.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp11.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp11.not.i.i, label %for.body.cleanup9_crit_edge, label %for.body.lr.ph.i.i

for.body.cleanup9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

for.body.lr.ph.i.i:                               ; preds = %for.body
  %pins.i.i = getelementptr inbounds %struct.sprd_pinctrl_soc_info, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pins.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %number.i.i = getelementptr %struct.sprd_pin, ptr %17, i32 %i.012.i.i, i32 1
  %18 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp2.i.i = icmp eq i32 %19, %11
  br i1 %cmp2.i.i, label %sprd_pinctrl_get_pin_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %15
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup9_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.cleanup9_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

sprd_pinctrl_get_pin_by_id.exit.i:                ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.sprd_pin, ptr %17, i32 %i.012.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %sprd_pinctrl_get_pin_by_id.exit.i.cleanup9_crit_edge, label %if.end.i

sprd_pinctrl_get_pin_by_id.exit.i.cleanup9_crit_edge: ; preds = %sprd_pinctrl_get_pin_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

if.end.i:                                         ; preds = %sprd_pinctrl_get_pin_by_id.exit.i
  %type.i = getelementptr %struct.sprd_pin, ptr %17, i32 %i.012.i.i, i32 2
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  %reg.i = getelementptr %struct.sprd_pin, ptr %17, i32 %i.012.i.i, i32 3
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg.i, align 4
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end7_crit_edge

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %bit_offset.i = getelementptr %struct.sprd_pin, ptr %17, i32 %i.012.i.i, i32 4
  %27 = ptrtoint ptr %bit_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bit_offset.i, align 4
  %shr.i = lshr i32 %26, %28
  %bit_width.i = getelementptr %struct.sprd_pin, ptr %17, i32 %i.012.i.i, i32 5
  %29 = ptrtoint ptr %bit_width.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bit_width.i, align 4
  %shl.i = shl nsw i32 -1, %30
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %shr.i, %neg.i
  br label %if.end7

if.end7:                                          ; preds = %if.then2.i, %if.end.i.if.end7_crit_edge
  %config.1 = phi i32 [ %and.i, %if.then2.i ], [ %26, %if.end.i.if.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef %call4, i32 noundef %config.1) #7
  %inc = add nuw i32 %i.034, 1
  %31 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %npins, align 4
  %cmp2 = icmp ult i32 %inc, %32
  br i1 %cmp2, label %if.end7.for.body_crit_edge, label %if.end7.cleanup9_crit_edge

if.end7.cleanup9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup9:                                         ; preds = %if.end7.cleanup9_crit_edge, %sprd_pinctrl_get_pin_by_id.exit.i.cleanup9_crit_edge, %for.inc.i.i.cleanup9_crit_edge, %for.body.cleanup9_crit_edge, %if.end.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1073, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sprd_pinctrl_core_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sprd_pinctrl_core_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1079, i32 3}
!10 = !{ptr @sprd_pinctrl_core_probe._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sprd_pinctrl_core_probe._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1103, i32 3}
!14 = !{ptr @sprd_pinctrl_core_probe._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sprd_pinctrl_core_probe._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_sprd_pinctrl_core_probe, !17, !"__ksymtab_sprd_pinctrl_core_probe", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1109, i32 1}
!18 = !{ptr @__ksymtab_sprd_pinctrl_remove, !19, !"__ksymtab_sprd_pinctrl_remove", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1118, i32 1}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1128, i32 39}
!22 = !{ptr @__ksymtab_sprd_pinctrl_shutdown, !23, !"__ksymtab_sprd_pinctrl_shutdown", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1133, i32 1}
!24 = !{ptr @__UNIQUE_ID_description225, !25, !"__UNIQUE_ID_description225", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1135, i32 1}
!26 = !{ptr @__UNIQUE_ID_author226, !27, !"__UNIQUE_ID_author226", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1136, i32 1}
!28 = !{ptr @__UNIQUE_ID_file227, !29, !"__UNIQUE_ID_file227", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1137, i32 1}
!30 = !{ptr @__UNIQUE_ID_license228, !29, !"__UNIQUE_ID_license228", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 1034, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sprd_pinctrl_add_pins.__UNIQUE_ID_ddebug224, !32, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 888, i32 38}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 907, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sprd_pinctrl_parse_groups.__UNIQUE_ID_ddebug223, !39, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!42 = !{ptr @sprd_pinctrl_desc, !43, !"sprd_pinctrl_desc", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 868, i32 28}
!44 = !{ptr @sprd_pctrl_ops, !45, !"sprd_pctrl_ops", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 339, i32 33}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 336, i32 16}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 259, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sprd_dt_node_to_map._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @sprd_dt_node_to_map._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 273, i32 36}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 276, i32 4}
!57 = !{ptr @sprd_dt_node_to_map._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sprd_dt_node_to_map._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 285, i32 3}
!61 = !{ptr @sprd_dt_node_to_map._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sprd_dt_node_to_map._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/of.h", i32 261, i32 30}
!65 = !{ptr @sprd_pmx_ops, !66, !"sprd_pmx_ops", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 431, i32 32}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 358, i32 10}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 360, i32 10}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 362, i32 10}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 364, i32 10}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 366, i32 10}
!77 = !{ptr @sprd_pinconf_ops, !78, !"sprd_pinconf_ops", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 846, i32 33}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 814, i32 16}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 842, i32 17}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 857, i32 3}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 858, i32 3}
!87 = !{ptr @sprd_dt_params, !88, !"sprd_dt_params", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 856, i32 44}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 863, i32 2}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 864, i32 2}
!93 = !{ptr @sprd_conf_items, !94, !"sprd_conf_items", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/sprd/pinctrl-sprd.c", i32 862, i32 37}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i64 2148513596, i64 2148513601, i64 2148513614, i64 2148513658, i64 2148513692, i64 2148513713}
!106 = !{!"auto-init"}
!107 = !{i64 5123311}
!108 = !{i64 2153746582}
!109 = !{i64 2153746971}
!110 = !{i64 5122893}
!111 = !{i64 2153757103}
!112 = !{i64 2153758020}
