; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinconf-generic.c_pt.bc'
source_filename = "../drivers/pinctrl/pinconf-generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pinconf_generic_dump_config\22, \22a\22\09"
module asm "\09.weak\09__crc_pinconf_generic_dump_config\09\09\09\09"
module asm "\09.long\09__crc_pinconf_generic_dump_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinconf_generic_dump_config:\09\09\09\09\09"
module asm "\09.asciz \09\22pinconf_generic_dump_config\22\09\09\09\09\09"
module asm "__kstrtabns_pinconf_generic_dump_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinconf_generic_parse_dt_config\22, \22a\22\09"
module asm "\09.weak\09__crc_pinconf_generic_parse_dt_config\09\09\09\09"
module asm "\09.long\09__crc_pinconf_generic_parse_dt_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinconf_generic_parse_dt_config:\09\09\09\09\09"
module asm "\09.asciz \09\22pinconf_generic_parse_dt_config\22\09\09\09\09\09"
module asm "__kstrtabns_pinconf_generic_parse_dt_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinconf_generic_dt_subnode_to_map\22, \22a\22\09"
module asm "\09.weak\09__crc_pinconf_generic_dt_subnode_to_map\09\09\09\09"
module asm "\09.long\09__crc_pinconf_generic_dt_subnode_to_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinconf_generic_dt_subnode_to_map:\09\09\09\09\09"
module asm "\09.asciz \09\22pinconf_generic_dt_subnode_to_map\22\09\09\09\09\09"
module asm "__kstrtabns_pinconf_generic_dt_subnode_to_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinconf_generic_dt_node_to_map\22, \22a\22\09"
module asm "\09.weak\09__crc_pinconf_generic_dt_node_to_map\09\09\09\09"
module asm "\09.long\09__crc_pinconf_generic_dt_node_to_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinconf_generic_dt_node_to_map:\09\09\09\09\09"
module asm "\09.asciz \09\22pinconf_generic_dt_node_to_map\22\09\09\09\09\09"
module asm "__kstrtabns_pinconf_generic_dt_node_to_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinconf_generic_dt_free_map\22, \22a\22\09"
module asm "\09.weak\09__crc_pinconf_generic_dt_free_map\09\09\09\09"
module asm "\09.long\09__crc_pinconf_generic_dt_free_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinconf_generic_dt_free_map:\09\09\09\09\09"
module asm "\09.asciz \09\22pinconf_generic_dt_free_map\22\09\09\09\09\09"
module asm "__kstrtabns_pinconf_generic_dt_free_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@conf_items = internal constant { [23 x %struct.pin_config_item], [80 x i8] } { [23 x %struct.pin_config_item] [%struct.pin_config_item { i32 0, ptr @.str.17, ptr null, i8 0 }, %struct.pin_config_item { i32 1, ptr @.str.18, ptr null, i8 0 }, %struct.pin_config_item { i32 2, ptr @.str.19, ptr null, i8 0 }, %struct.pin_config_item { i32 3, ptr @.str.20, ptr null, i8 0 }, %struct.pin_config_item { i32 4, ptr @.str.21, ptr null, i8 0 }, %struct.pin_config_item { i32 5, ptr @.str.22, ptr null, i8 0 }, %struct.pin_config_item { i32 6, ptr @.str.23, ptr null, i8 0 }, %struct.pin_config_item { i32 7, ptr @.str.24, ptr null, i8 0 }, %struct.pin_config_item { i32 8, ptr @.str.25, ptr null, i8 0 }, %struct.pin_config_item { i32 9, ptr @.str.26, ptr @.str.27, i8 1 }, %struct.pin_config_item { i32 10, ptr @.str.26, ptr @.str.28, i8 1 }, %struct.pin_config_item { i32 11, ptr @.str.29, ptr @.str.30, i8 1 }, %struct.pin_config_item { i32 12, ptr @.str.31, ptr null, i8 0 }, %struct.pin_config_item { i32 13, ptr @.str.32, ptr null, i8 0 }, %struct.pin_config_item { i32 14, ptr @.str.33, ptr null, i8 0 }, %struct.pin_config_item { i32 15, ptr @.str.34, ptr @.str.35, i8 1 }, %struct.pin_config_item { i32 18, ptr @.str.36, ptr null, i8 0 }, %struct.pin_config_item { i32 17, ptr @.str.37, ptr @.str.38, i8 1 }, %struct.pin_config_item { i32 19, ptr @.str.39, ptr @.str.40, i8 1 }, %struct.pin_config_item { i32 21, ptr @.str.41, ptr @.str.42, i8 1 }, %struct.pin_config_item { i32 23, ptr @.str.43, ptr null, i8 0 }, %struct.pin_config_item { i32 24, ptr @.str.44, ptr null, i8 1 }, %struct.pin_config_item { i32 22, ptr @.str.45, ptr null, i8 1 }], [80 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: 0x%x\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_pinconf_generic_dump_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinconf_generic_dump_config = external dso_local constant [0 x i8], align 1
@__ksymtab_pinconf_generic_dump_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinconf_generic_dump_config to i32), ptr @__kstrtab_pinconf_generic_dump_config, ptr @__kstrtabns_pinconf_generic_dump_config }, section "___ksymtab_gpl+pinconf_generic_dump_config", align 4
@dt_params = internal constant { [28 x %struct.pinconf_generic_params], [80 x i8] } { [28 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.50, i32 0, i32 0 }, %struct.pinconf_generic_params { ptr @.str.51, i32 1, i32 0 }, %struct.pinconf_generic_params { ptr @.str.52, i32 2, i32 0 }, %struct.pinconf_generic_params { ptr @.str.53, i32 5, i32 1 }, %struct.pinconf_generic_params { ptr @.str.54, i32 4, i32 1 }, %struct.pinconf_generic_params { ptr @.str.55, i32 3, i32 1 }, %struct.pinconf_generic_params { ptr @.str.56, i32 6, i32 0 }, %struct.pinconf_generic_params { ptr @.str.57, i32 7, i32 0 }, %struct.pinconf_generic_params { ptr @.str.58, i32 8, i32 0 }, %struct.pinconf_generic_params { ptr @.str.59, i32 9, i32 0 }, %struct.pinconf_generic_params { ptr @.str.60, i32 10, i32 0 }, %struct.pinconf_generic_params { ptr @.str.61, i32 11, i32 0 }, %struct.pinconf_generic_params { ptr @.str.62, i32 12, i32 0 }, %struct.pinconf_generic_params { ptr @.str.63, i32 12, i32 1 }, %struct.pinconf_generic_params { ptr @.str.64, i32 13, i32 0 }, %struct.pinconf_generic_params { ptr @.str.65, i32 14, i32 0 }, %struct.pinconf_generic_params { ptr @.str.66, i32 14, i32 1 }, %struct.pinconf_generic_params { ptr @.str.67, i32 15, i32 0 }, %struct.pinconf_generic_params { ptr @.str.68, i32 15, i32 1 }, %struct.pinconf_generic_params { ptr @.str.69, i32 18, i32 0 }, %struct.pinconf_generic_params { ptr @.str.70, i32 18, i32 1 }, %struct.pinconf_generic_params { ptr @.str.71, i32 17, i32 1 }, %struct.pinconf_generic_params { ptr @.str.72, i32 19, i32 0 }, %struct.pinconf_generic_params { ptr @.str.73, i32 17, i32 0 }, %struct.pinconf_generic_params { ptr @.str.74, i32 21, i32 0 }, %struct.pinconf_generic_params { ptr @.str.75, i32 23, i32 0 }, %struct.pinconf_generic_params { ptr @.str.76, i32 24, i32 0 }, %struct.pinconf_generic_params { ptr @.str.77, i32 22, i32 0 }], [80 x i8] zeroinitializer }, align 32
@__kstrtab_pinconf_generic_parse_dt_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinconf_generic_parse_dt_config = external dso_local constant [0 x i8], align 1
@__ksymtab_pinconf_generic_parse_dt_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinconf_generic_parse_dt_config to i32), ptr @__kstrtab_pinconf_generic_parse_dt_config, ptr @__kstrtabns_pinconf_generic_parse_dt_config }, section "___ksymtab_gpl+pinconf_generic_parse_dt_config", align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pins\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"groups\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@pinconf_generic_dt_subnode_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 329, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%pOF: could not parse property function\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pinconf_generic_dt_subnode_to_map\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pinctrl/pinconf-generic.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pinconf_generic_dt_subnode_to_map._entry_ptr = internal global ptr @pinconf_generic_dt_subnode_to_map._entry, section ".printk_index", align 4
@pinconf_generic_dt_subnode_to_map._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 336, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%pOF: could not parse node property\0A\00", [59 x i8] zeroinitializer }, align 32
@pinconf_generic_dt_subnode_to_map._entry_ptr.11 = internal global ptr @pinconf_generic_dt_subnode_to_map._entry.9, section ".printk_index", align 4
@__kstrtab_pinconf_generic_dt_subnode_to_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinconf_generic_dt_subnode_to_map = external dso_local constant [0 x i8], align 1
@__ksymtab_pinconf_generic_dt_subnode_to_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinconf_generic_dt_subnode_to_map to i32), ptr @__kstrtab_pinconf_generic_dt_subnode_to_map, ptr @__kstrtabns_pinconf_generic_dt_subnode_to_map }, section "___ksymtab_gpl+pinconf_generic_dt_subnode_to_map", align 4
@__kstrtab_pinconf_generic_dt_node_to_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinconf_generic_dt_node_to_map = external dso_local constant [0 x i8], align 1
@__ksymtab_pinconf_generic_dt_node_to_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinconf_generic_dt_node_to_map to i32), ptr @__kstrtab_pinconf_generic_dt_node_to_map, ptr @__kstrtabns_pinconf_generic_dt_node_to_map }, section "___ksymtab_gpl+pinconf_generic_dt_node_to_map", align 4
@__kstrtab_pinconf_generic_dt_free_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinconf_generic_dt_free_map = external dso_local constant [0 x i8], align 1
@__ksymtab_pinconf_generic_dt_free_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinconf_generic_dt_free_map to i32), ptr @__kstrtab_pinconf_generic_dt_free_map, ptr @__kstrtabns_pinconf_generic_dt_free_map }, section "___ksymtab_gpl+pinconf_generic_dt_free_map", align 4
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ERROR READING CONFIG SETTING %d \00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" (%u\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s)\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"input bias bus hold\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"input bias disabled\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"input bias high impedance\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"input bias pull down\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"input bias pull to pin specific state\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"input bias pull up\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"output drive open drain\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"output drive open source\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"output drive push pull\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"output drive strength\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mA\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"uA\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"input debounce\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usec\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"input enabled\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"input schmitt trigger\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"input schmitt enabled\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pin low power\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"output enabled\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pin output\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"output impedance\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ohms\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pin power source\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"selector\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sleep hardware state\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slew rate\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"skew delay\00", [21 x i8] zeroinitializer }, align 32
@parse_dt_cfg.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.47, ptr @.str.6, ptr @.str.48, i8 0, i8 56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinconf_generic\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"parse_dt_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"found %s with value %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"generic pinconfig core: found %s with value %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bias-bus-hold\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bias-disable\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bias-high-impedance\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bias-pull-up\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bias-pull-pin-default\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bias-pull-down\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drive-open-drain\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drive-open-source\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drive-push-pull\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drive-strength\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drive-strength-microamp\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"input-debounce\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"input-disable\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"input-enable\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"input-schmitt\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"input-schmitt-disable\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"input-schmitt-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"low-power-disable\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"low-power-enable\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"output-disable\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"output-enable\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"output-high\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"output-impedance-ohms\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"output-low\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power-source\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sleep-hardware-state\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slew-rate\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"skew-delay\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966772, i64 4294967274]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"conf_items\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 29, i32 37 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 139, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"dt_params\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 160, i32 44 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 307, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 311, i32 39 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 324, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 328, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 336, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 79, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 84, i32 16 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 89, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 92, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 94, i32 17 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 30, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 31, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 32, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 33, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 34, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 36, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 37, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 38, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 39, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 40, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 41, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 42, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 43, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 44, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 45, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 46, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 47, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 48, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 49, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 50, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 51, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 52, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 53, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 226, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 161, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 162, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 163, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 164, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 165, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 166, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 167, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 168, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 169, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 170, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 171, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 172, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 173, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 174, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 175, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 176, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 177, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 178, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 179, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 180, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 181, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 182, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 183, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 184, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 185, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 186, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 187, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.318 = private constant [37 x i8] c"../drivers/pinctrl/pinconf-generic.c\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 188, i32 4 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__ksymtab_pinconf_generic_dt_free_map, ptr @__ksymtab_pinconf_generic_dt_node_to_map, ptr @__ksymtab_pinconf_generic_dt_subnode_to_map, ptr @__ksymtab_pinconf_generic_dump_config, ptr @__ksymtab_pinconf_generic_parse_dt_config, ptr @pinconf_generic_dt_subnode_to_map._entry, ptr @pinconf_generic_dt_subnode_to_map._entry.9, ptr @pinconf_generic_dt_subnode_to_map._entry_ptr, ptr @pinconf_generic_dt_subnode_to_map._entry_ptr.11, ptr @conf_items, ptr @.str, ptr @dt_params, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conf_items to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_params to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_generic_dt_subnode_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_generic_dt_subnode_to_map._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinconf_generic_dump_pins(ptr noundef %pctldev, ptr noundef %s, ptr noundef %gname, i32 noundef %pin) local_unnamed_addr #0 align 64 {
entry:
  %print_sep = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %confops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %confops, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %print_sep) #6
  %4 = ptrtoint ptr %print_sep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %print_sep, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %3, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @pinconf_generic_dump_one(ptr noundef %pctldev, ptr noundef %s, ptr noundef %gname, i32 noundef %pin, ptr noundef nonnull @conf_items, i32 noundef 23, ptr noundef nonnull %print_sep)
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc, align 4
  %num_custom_params = getelementptr inbounds %struct.pinctrl_desc, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %num_custom_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_custom_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %custom_conf_items = getelementptr inbounds %struct.pinctrl_desc, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %custom_conf_items to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %custom_conf_items, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @pinconf_generic_dump_one(ptr noundef %pctldev, ptr noundef %s, ptr noundef %gname, i32 noundef %pin, ptr noundef nonnull %12, i32 noundef %10, ptr noundef nonnull %print_sep)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %print_sep) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pinconf_generic_dump_one(ptr noundef %pctldev, ptr noundef %s, ptr noundef %gname, i32 noundef %pin, ptr nocapture noundef readonly %items, i32 noundef %nitems, ptr nocapture noundef %print_sep) unnamed_addr #0 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nitems)
  %cmp49 = icmp sgt i32 %nitems, 0
  br i1 %cmp49, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %gname, null
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #6
  %arrayidx = getelementptr %struct.pin_config_item, ptr %items, i32 %i.050
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %1, 255
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.i, ptr %config, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.then.dev_name.exit_crit_edge ]
  %call2 = call i32 @pin_config_group_get(ptr noundef %retval.0.i, ptr noundef nonnull %gname, ptr noundef nonnull %config) #6
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @pin_config_get_for_pin(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %dev_name.exit
  %ret.0 = phi i32 [ %call2, %dev_name.exit ], [ %call3, %if.else ]
  %9 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0, label %if.then9 [
    i32 -22, label %if.end.cleanup_crit_edge
    i32 -524, label %if.end.cleanup_crit_edge52
    i32 0, label %if.end10
  ]

if.end.cleanup_crit_edge52:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %i.050) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %10 = ptrtoint ptr %print_sep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %print_sep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.13) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %12 = ptrtoint ptr %print_sep to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %print_sep, align 4
  %display = getelementptr %struct.pin_config_item, ptr %items, i32 %i.050, i32 1
  %13 = ptrtoint ptr %display to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %display, align 4
  call void @seq_puts(ptr noundef %s, ptr noundef %14) #6
  %has_arg = getelementptr %struct.pin_config_item, ptr %items, i32 %i.050, i32 3
  %15 = ptrtoint ptr %has_arg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_arg, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.then17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %config, align 4
  %shr.i = lshr i32 %18, 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %shr.i) #6
  %format = getelementptr %struct.pin_config_item, ptr %items, i32 %i.050, i32 2
  %19 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %format, align 4
  %tobool20.not = icmp eq ptr %20, null
  br i1 %tobool20.not, label %if.else24, label %if.then21

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, ptr noundef nonnull %20) #6
  br label %cleanup

if.else24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else24, %if.then21, %if.end13.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #6
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %nitems
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinconf_generic_dump_config(ptr nocapture noundef readonly %pctldev, ptr noundef %s, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %config, 255
  %shr.i = lshr i32 %config, 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [23 x %struct.pin_config_item], ptr @conf_items, i32 0, i32 %i.046
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not = icmp eq i32 %and.i, %1
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %display = getelementptr [23 x %struct.pin_config_item], ptr @conf_items, i32 0, i32 %i.046, i32 1
  %2 = ptrtoint ptr %display to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef %3, i32 noundef %shr.i) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %num_custom_params = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %num_custom_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_custom_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %lor.lhs.false

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %custom_conf_items = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %custom_conf_items to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %custom_conf_items, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond8.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond8.preheader:                              ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %num_custom_params1048 = getelementptr inbounds %struct.pinctrl_desc, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %num_custom_params1048 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_custom_params1048, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1149.not = icmp eq i32 %13, 0
  br i1 %cmp1149.not, label %for.cond8.preheader.cleanup_crit_edge, label %for.cond8.preheader.for.body12_crit_edge

for.cond8.preheader.for.body12_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body12

for.cond8.preheader.cleanup_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body12:                                       ; preds = %for.inc26.for.body12_crit_edge, %for.cond8.preheader.for.body12_crit_edge
  %14 = phi ptr [ %22, %for.inc26.for.body12_crit_edge ], [ %11, %for.cond8.preheader.for.body12_crit_edge ]
  %i.150 = phi i32 [ %inc27, %for.inc26.for.body12_crit_edge ], [ 0, %for.cond8.preheader.for.body12_crit_edge ]
  %custom_conf_items15 = getelementptr inbounds %struct.pinctrl_desc, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %custom_conf_items15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %custom_conf_items15, align 4
  %arrayidx16 = getelementptr %struct.pin_config_item, ptr %16, i32 %i.150
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %18)
  %cmp18.not = icmp eq i32 %and.i, %18
  br i1 %cmp18.not, label %if.end20, label %for.body12.for.inc26_crit_edge

for.body12.for.inc26_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc26

if.end20:                                         ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  %display24 = getelementptr %struct.pin_config_item, ptr %16, i32 %i.150, i32 1
  %19 = ptrtoint ptr %display24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %display24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef %20, i32 noundef %shr.i) #6
  br label %for.inc26

for.inc26:                                        ; preds = %if.end20, %for.body12.for.inc26_crit_edge
  %inc27 = add nuw i32 %i.150, 1
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc, align 4
  %num_custom_params10 = getelementptr inbounds %struct.pinctrl_desc, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %num_custom_params10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_custom_params10, align 4
  %cmp11 = icmp ult i32 %inc27, %24
  br i1 %cmp11, label %for.inc26.for.body12_crit_edge, label %for.inc26.cleanup_crit_edge

for.inc26.cleanup_crit_edge:                      ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc26.for.body12_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

cleanup:                                          ; preds = %for.inc26.cleanup_crit_edge, %for.cond8.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef %np, ptr noundef readonly %pctldev, ptr nocapture noundef writeonly %configs, ptr nocapture noundef writeonly %nconfigs) #0 align 64 {
entry:
  %val.i47 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %np, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %pctldev, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %num_custom_params = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %num_custom_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_custom_params, align 4
  %add = add i32 %3, 28
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %max_cfg.0 = phi i32 [ %add, %if.then2 ], [ 28, %if.end.if.end3_crit_edge ]
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_cfg.0, i32 4) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end3.cleanup_crit_edge, label %if.end7.i.i, !prof !168

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end3
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7.i.i.for.body.i_crit_edge

if.end7.i.i.for.body.i_crit_edge:                 ; preds = %if.end7.i.i
  br label %for.body.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end7.i.i.for.body.i_crit_edge
  %ncfg.0 = phi i32 [ %ncfg.1, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end7.i.i.for.body.i_crit_edge ]
  %i.026.i = phi i32 [ %inc16.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end7.i.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !169
  %arrayidx.i = getelementptr %struct.pinconf_generic_params, ptr @dt_params, i32 %i.026.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np, ptr noundef %9, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #6
  %10 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %10, label %if.then2.i [
    i32 -22, label %for.body.i.cleanup.i_crit_edge
    i32 0, label %for.body.i.do.body.i_crit_edge
  ]

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %default_value.i = getelementptr %struct.pinconf_generic_params, ptr @dt_params, i32 %i.026.i, i32 2
  %12 = ptrtoint ptr %default_value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %default_value.i, align 4
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %for.body.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_dt_cfg.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinconf_generic_parse_dt_config, %do.end.i)) #6
          to label %if.then9.i [label %do.end.i], !srcloc !170

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_dt_cfg.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.49, ptr noundef %9, i32 noundef %16) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %do.body.i
  %param.i = getelementptr %struct.pinconf_generic_params, ptr @dt_params, i32 %i.026.i, i32 1
  %17 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param.i, align 4
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %shl.i.i = shl i32 %20, 8
  %and.i.i = and i32 %18, 255
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %arrayidx13.i = getelementptr i32, ptr %call8.i.i, i32 %ncfg.0
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i.i, ptr %arrayidx13.i, align 4
  %inc.i = add i32 %ncfg.0, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %for.body.i.cleanup.i_crit_edge
  %ncfg.1 = phi i32 [ %inc.i, %do.end.i ], [ %ncfg.0, %for.body.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %inc16.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc16.i, 28
  br i1 %exitcond.not.i, label %parse_dt_cfg.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

parse_dt_cfg.exit:                                ; preds = %cleanup.i
  br i1 %tobool1.not, label %parse_dt_cfg.exit.if.end19_crit_edge, label %land.lhs.true

parse_dt_cfg.exit.if.end19_crit_edge:             ; preds = %parse_dt_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %parse_dt_cfg.exit
  %desc8 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %22 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc8, align 4
  %num_custom_params9 = getelementptr inbounds %struct.pinctrl_desc, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %num_custom_params9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_custom_params9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool10.not = icmp eq i32 %25, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true11

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true11:                                  ; preds = %land.lhs.true
  %custom_params = getelementptr inbounds %struct.pinctrl_desc, ptr %23, i32 0, i32 8
  %26 = ptrtoint ptr %custom_params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %custom_params, align 4
  %tobool13.not = icmp eq ptr %27, null
  br i1 %tobool13.not, label %land.lhs.true11.if.end19_crit_edge, label %land.lhs.true11.for.body.i51_crit_edge

land.lhs.true11.for.body.i51_crit_edge:           ; preds = %land.lhs.true11
  br label %for.body.i51

land.lhs.true11.if.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.body.i51:                                     ; preds = %cleanup.i65.for.body.i51_crit_edge, %land.lhs.true11.for.body.i51_crit_edge
  %ncfg.2 = phi i32 [ %ncfg.3, %cleanup.i65.for.body.i51_crit_edge ], [ %ncfg.1, %land.lhs.true11.for.body.i51_crit_edge ]
  %i.026.i48 = phi i32 [ %inc16.i63, %cleanup.i65.for.body.i51_crit_edge ], [ 0, %land.lhs.true11.for.body.i51_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i47) #6
  %28 = ptrtoint ptr %val.i47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i47, align 4, !annotation !169
  %arrayidx.i49 = getelementptr %struct.pinconf_generic_params, ptr %27, i32 %i.026.i48
  %29 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i49, align 4
  %call.i.i.i50 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np, ptr noundef %30, ptr noundef nonnull %val.i47, i32 noundef 1, i32 noundef 0) #6
  %31 = call i32 @llvm.smin.i32(i32 %call.i.i.i50, i32 0) #6
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %31, label %if.then2.i53 [
    i32 -22, label %for.body.i51.cleanup.i65_crit_edge
    i32 0, label %for.body.i51.do.body.i54_crit_edge
  ]

for.body.i51.do.body.i54_crit_edge:               ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i54

for.body.i51.cleanup.i65_crit_edge:               ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i65

if.then2.i53:                                     ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #8
  %default_value.i52 = getelementptr %struct.pinconf_generic_params, ptr %27, i32 %i.026.i48, i32 2
  %33 = ptrtoint ptr %default_value.i52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %default_value.i52, align 4
  %35 = ptrtoint ptr %val.i47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val.i47, align 4
  br label %do.body.i54

do.body.i54:                                      ; preds = %if.then2.i53, %for.body.i51.do.body.i54_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_dt_cfg.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinconf_generic_parse_dt_config, %do.end.i62)) #6
          to label %if.then9.i55 [label %do.end.i62], !srcloc !170

if.then9.i55:                                     ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i49, align 4
  %38 = ptrtoint ptr %val.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i47, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_dt_cfg.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.49, ptr noundef %37, i32 noundef %39) #6
  br label %do.end.i62

do.end.i62:                                       ; preds = %if.then9.i55, %do.body.i54
  %param.i56 = getelementptr %struct.pinconf_generic_params, ptr %27, i32 %i.026.i48, i32 1
  %40 = ptrtoint ptr %param.i56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %param.i56, align 4
  %42 = ptrtoint ptr %val.i47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i47, align 4
  %shl.i.i57 = shl i32 %43, 8
  %and.i.i58 = and i32 %41, 255
  %or.i.i59 = or i32 %shl.i.i57, %and.i.i58
  %arrayidx13.i60 = getelementptr i32, ptr %call8.i.i, i32 %ncfg.2
  %44 = ptrtoint ptr %arrayidx13.i60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i.i59, ptr %arrayidx13.i60, align 4
  %inc.i61 = add i32 %ncfg.2, 1
  br label %cleanup.i65

cleanup.i65:                                      ; preds = %do.end.i62, %for.body.i51.cleanup.i65_crit_edge
  %ncfg.3 = phi i32 [ %inc.i61, %do.end.i62 ], [ %ncfg.2, %for.body.i51.cleanup.i65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i47) #6
  %inc16.i63 = add nuw i32 %i.026.i48, 1
  %exitcond.not.i64 = icmp eq i32 %inc16.i63, %25
  br i1 %exitcond.not.i64, label %cleanup.i65.if.end19_crit_edge, label %cleanup.i65.for.body.i51_crit_edge

cleanup.i65.for.body.i51_crit_edge:               ; preds = %cleanup.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i51

cleanup.i65.if.end19_crit_edge:                   ; preds = %cleanup.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %cleanup.i65.if.end19_crit_edge, %land.lhs.true11.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %parse_dt_cfg.exit.if.end19_crit_edge
  %ncfg.5 = phi i32 [ %ncfg.1, %parse_dt_cfg.exit.if.end19_crit_edge ], [ %ncfg.1, %land.lhs.true.if.end19_crit_edge ], [ %ncfg.1, %land.lhs.true11.if.end19_crit_edge ], [ %ncfg.3, %cleanup.i65.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncfg.5)
  %cmp = icmp eq i32 %ncfg.5, 0
  br i1 %cmp, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %configs, align 4
  br label %out.sink.split

if.end21:                                         ; preds = %if.end19
  %mul = shl i32 %ncfg.5, 2
  %call22 = call ptr @kmemdup(ptr noundef nonnull %call8.i.i, i32 noundef %mul, i32 noundef 3264) #6
  %46 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call22, ptr %configs, align 4
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.out_crit_edge, label %if.end21.out.sink.split_crit_edge

if.end21.out.sink.split_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out.sink.split:                                   ; preds = %if.end21.out.sink.split_crit_edge, %if.then20
  %ncfg.5.sink = phi i32 [ 0, %if.then20 ], [ %ncfg.5, %if.end21.out.sink.split_crit_edge ]
  %47 = ptrtoint ptr %nconfigs to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %ncfg.5.sink, ptr %nconfigs, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end21.out_crit_edge
  %ret.0 = phi i32 [ -12, %if.end21.out_crit_edge ], [ 0, %out.sink.split ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinconf_generic_dt_subnode_to_map(ptr noundef %pctldev, ptr noundef %np, ptr noundef %map, ptr noundef %reserved_maps, ptr noundef %num_maps, i32 noundef %type) #0 align 64 {
entry:
  %function = alloca ptr, align 4
  %configs = alloca ptr, align 4
  %num_configs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function) #6
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %function, align 4, !annotation !169
  %dev1 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs) #6
  %3 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %configs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs) #6
  %4 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_configs, align 4
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %call.i101 = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp3 = icmp slt i32 %call.i101, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %.sink = phi i32 [ 4, %if.then.if.end11_crit_edge ], [ 3, %entry.if.end11_crit_edge ]
  %ret.0 = phi i32 [ %call.i101, %if.then.if.end11_crit_edge ], [ %call.i, %entry.if.end11_crit_edge ]
  %subnode_target_type.0 = phi ptr [ @.str.2, %if.then.if.end11_crit_edge ], [ @.str.1, %entry.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp8 = icmp eq i32 %type, 0
  %spec.store.select63 = select i1 %cmp8, i32 %.sink, i32 %type
  %call12 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef nonnull %function) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call12)
  %cmp15.not = icmp eq i32 %call12, -22
  br i1 %cmp15.not, label %if.then14.if.end17_crit_edge, label %do.end

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %np) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then14.if.end17_crit_edge
  %5 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %function, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end11.if.end18_crit_edge
  %call19 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %np, ptr noundef %pctldev, ptr noundef nonnull %configs, ptr noundef nonnull %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %np) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %6 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %function, align 4
  %cmp26.not = icmp ne ptr %7, null
  %spec.select = zext i1 %cmp26.not to i32
  %8 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %inc30 = select i1 %cmp26.not, i32 2, i32 1
  %reserve.1 = select i1 %tobool.not, i32 %spec.select, i32 %inc30
  %mul = mul nuw i32 %reserve.1, %ret.0
  %call32 = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef %reserved_maps, ptr noundef %num_maps, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end25.exit_crit_edge, label %if.end35

if.end25.exit_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end35:                                         ; preds = %if.end25
  %call36 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull %subnode_target_type.0, ptr noundef null) #6
  %call37 = call ptr @of_prop_next_string(ptr noundef %call36, ptr noundef null) #6
  %tobool38.not102 = icmp eq ptr %call37, null
  br i1 %tobool38.not102, label %if.end35.exit_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.exit_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %group.0103 = phi ptr [ %call53, %for.inc.for.body_crit_edge ], [ %call37, %if.end35.for.body_crit_edge ]
  %10 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %function, align 4
  %tobool39.not = icmp eq ptr %11, null
  br i1 %tobool39.not, label %for.body.if.end45_crit_edge, label %if.then40

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then40:                                        ; preds = %for.body
  %call41 = call i32 @pinctrl_utils_add_map_mux(ptr noundef %pctldev, ptr noundef %map, ptr noundef %reserved_maps, ptr noundef %num_maps, ptr noundef nonnull %group.0103, ptr noundef nonnull %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then40.exit_crit_edge, label %if.then40.if.end45_crit_edge

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then40.exit_crit_edge:                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end45:                                         ; preds = %if.then40.if.end45_crit_edge, %for.body.if.end45_crit_edge
  br i1 %tobool.not, label %if.end45.for.inc_crit_edge, label %if.then47

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then47:                                        ; preds = %if.end45
  %12 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %configs, align 4
  %call48 = call i32 @pinctrl_utils_add_map_configs(ptr noundef %pctldev, ptr noundef %map, ptr noundef %reserved_maps, ptr noundef %num_maps, ptr noundef nonnull %group.0103, ptr noundef %13, i32 noundef %9, i32 noundef %spec.store.select63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then47.exit_crit_edge, label %if.then47.for.inc_crit_edge

if.then47.for.inc_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then47.exit_crit_edge:                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

for.inc:                                          ; preds = %if.then47.for.inc_crit_edge, %if.end45.for.inc_crit_edge
  %call53 = call ptr @of_prop_next_string(ptr noundef %call36, ptr noundef nonnull %group.0103) #6
  %tobool38.not = icmp eq ptr %call53, null
  br i1 %tobool38.not, label %for.inc.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.exit_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

exit:                                             ; preds = %for.inc.exit_crit_edge, %if.then47.exit_crit_edge, %if.then40.exit_crit_edge, %if.end35.exit_crit_edge, %if.end25.exit_crit_edge
  %ret.1 = phi i32 [ %call32, %if.end25.exit_crit_edge ], [ 0, %if.end35.exit_crit_edge ], [ %call41, %if.then40.exit_crit_edge ], [ %call48, %if.then47.exit_crit_edge ], [ 0, %for.inc.exit_crit_edge ]
  %14 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %configs, align 4
  call void @kfree(ptr noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end24, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end24 ], [ %ret.1, %exit ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef %type) #0 align 64 {
entry:
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #6
  %0 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reserved_maps, align 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %map, align 4
  %2 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_maps, align 4
  %call = call i32 @pinconf_generic_dt_subnode_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = call ptr @of_get_next_available_child(ptr noundef %np_config, ptr noundef null) #6
  %cmp2.not25 = icmp eq ptr %call1, null
  br i1 %cmp2.not25, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %np.026 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  %call3 = call i32 @pinconf_generic_dt_subnode_to_map(ptr noundef %pctldev, ptr noundef nonnull %np.026, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.body.exit_crit_edge, label %for.inc

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

for.inc:                                          ; preds = %for.body
  %call7 = call ptr @of_get_next_available_child(ptr noundef %np_config, ptr noundef nonnull %np.026) #6
  %cmp2.not = icmp eq ptr %call7, null
  br i1 %cmp2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

exit:                                             ; preds = %for.body.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call, %entry.exit_crit_edge ], [ %call3, %for.body.exit_crit_edge ]
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %5 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_maps, align 4
  call void @pinctrl_utils_free_map(ptr noundef %pctldev, ptr noundef %4, i32 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %exit, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinconf_generic_dt_free_map(ptr noundef %pctldev, ptr noundef %map, i32 noundef %num_maps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pinctrl_utils_free_map(ptr noundef %pctldev, ptr noundef %map, i32 noundef %num_maps) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_config_group_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_config_get_for_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !66, !68, !70, !72, !74, !75, !77, !79, !80, !82, !83, !85, !86, !88, !90, !92, !94, !96, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 139, i32 17}
!2 = !{ptr @__ksymtab_pinconf_generic_dump_config, !3, !"__ksymtab_pinconf_generic_dump_config", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 156, i32 1}
!4 = !{ptr @__ksymtab_pinconf_generic_parse_dt_config, !5, !"__ksymtab_pinconf_generic_parse_dt_config", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 292, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 307, i32 36}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 311, i32 39}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 324, i32 36}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 328, i32 4}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pinconf_generic_dt_subnode_to_map._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @pinconf_generic_dt_subnode_to_map._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 336, i32 3}
!22 = !{ptr @pinconf_generic_dt_subnode_to_map._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @pinconf_generic_dt_subnode_to_map._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_pinconf_generic_dt_subnode_to_map, !25, !"__ksymtab_pinconf_generic_dt_subnode_to_map", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 376, i32 1}
!26 = !{ptr @__ksymtab_pinconf_generic_dt_node_to_map, !27, !"__ksymtab_pinconf_generic_dt_node_to_map", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 407, i32 1}
!28 = !{ptr @__ksymtab_pinconf_generic_dt_free_map, !29, !"__ksymtab_pinconf_generic_dt_free_map", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 415, i32 1}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 79, i32 18}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 84, i32 16}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 89, i32 18}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 92, i32 19}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 94, i32 17}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 30, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 31, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 32, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 33, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 34, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 36, i32 2}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 37, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 38, i32 2}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 39, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 40, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 41, i32 2}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 42, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 43, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 44, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 45, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 46, i32 2}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 47, i32 2}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 48, i32 2}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 49, i32 2}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 50, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 51, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 52, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 53, i32 2}
!92 = !{ptr @conf_items, !93, !"conf_items", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 29, i32 37}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 226, i32 3}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @parse_dt_cfg.__UNIQUE_ID_ddebug223, !95, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!99 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 161, i32 4}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 162, i32 4}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 163, i32 4}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 164, i32 4}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 165, i32 4}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 166, i32 4}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 167, i32 4}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 168, i32 4}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 169, i32 4}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 170, i32 4}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 171, i32 4}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 172, i32 4}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 173, i32 4}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 174, i32 4}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 175, i32 4}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 176, i32 4}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 177, i32 4}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 178, i32 4}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 179, i32 4}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 180, i32 4}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 181, i32 4}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 182, i32 4}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 183, i32 4}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 184, i32 4}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 185, i32 4}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 186, i32 4}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 187, i32 4}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 188, i32 4}
!156 = !{ptr @dt_params, !157, !"dt_params", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/pinconf-generic.c", i32 160, i32 44}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i8 0, i8 2}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{!"auto-init"}
!170 = !{i64 2148702396, i64 2148702401, i64 2148702414, i64 2148702458, i64 2148702492, i64 2148702513}
