; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinmux.c_pt.bc'
source_filename = "../drivers/pinctrl/pinmux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pinmux_generic_get_function_count\22, \22a\22\09"
module asm "\09.weak\09__crc_pinmux_generic_get_function_count\09\09\09\09"
module asm "\09.long\09__crc_pinmux_generic_get_function_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_get_function_count:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_get_function_count\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_get_function_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinmux_generic_get_function_name\22, \22a\22\09"
module asm "\09.weak\09__crc_pinmux_generic_get_function_name\09\09\09\09"
module asm "\09.long\09__crc_pinmux_generic_get_function_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_get_function_name:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_get_function_name\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_get_function_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinmux_generic_get_function_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_pinmux_generic_get_function_groups\09\09\09\09"
module asm "\09.long\09__crc_pinmux_generic_get_function_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_get_function_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_get_function_groups\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_get_function_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinmux_generic_get_function\22, \22a\22\09"
module asm "\09.weak\09__crc_pinmux_generic_get_function\09\09\09\09"
module asm "\09.long\09__crc_pinmux_generic_get_function\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_get_function:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_get_function\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_get_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinmux_generic_add_function\22, \22a\22\09"
module asm "\09.weak\09__crc_pinmux_generic_add_function\09\09\09\09"
module asm "\09.long\09__crc_pinmux_generic_add_function\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_add_function:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_add_function\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_add_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinmux_generic_remove_function\22, \22a\22\09"
module asm "\09.weak\09__crc_pinmux_generic_remove_function\09\09\09\09"
module asm "\09.long\09__crc_pinmux_generic_remove_function\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinmux_generic_remove_function:\09\09\09\09\09"
module asm "\09.asciz \09\22pinmux_generic_remove_function\22\09\09\09\09\09"
module asm "__kstrtabns_pinmux_generic_remove_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.pinctrl_setting = type { %struct.list_head, i32, ptr, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.pinctrl_setting_configs }
%struct.pinctrl_setting_configs = type { i32, ptr, i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_setting_mux = type { i32, i32 }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@pinmux_check_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pinmux ops lacks necessary functions\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pinmux_check_ops\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/pinctrl/pinmux.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pinmux_check_ops._entry_ptr = internal global ptr @pinmux_check_ops._entry, section ".printk_index", align 4
@pinmux_check_ops._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pinmux ops has no name for function%u\0A\00", [57 x i8] zeroinitializer }, align 32
@pinmux_check_ops._entry_ptr.7 = internal global ptr @pinmux_check_ops._entry.5, section ".printk_index", align 4
@pinmux_validate_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013pinmux core: failed to register map %s (%d): no function given\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pinmux_validate_map\00", [44 x i8] zeroinitializer }, align 32
@pinmux_validate_map._entry_ptr = internal global ptr @pinmux_validate_map._entry, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%d\00", [26 x i8] zeroinitializer }, align 32
@pinmux_map_to_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 351, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"does not support mux function\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pinmux_map_to_setting\00", [42 x i8] zeroinitializer }, align 32
@pinmux_map_to_setting._entry_ptr = internal global ptr @pinmux_map_to_setting._entry, section ".printk_index", align 4
@pinmux_map_to_setting._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 358, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid function %s in map table\0A\00", [62 x i8] zeroinitializer }, align 32
@pinmux_map_to_setting._entry_ptr.15 = internal global ptr @pinmux_map_to_setting._entry.13, section ".printk_index", align 4
@pinmux_map_to_setting._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't query groups for function %s\0A\00", [60 x i8] zeroinitializer }, align 32
@pinmux_map_to_setting._entry_ptr.18 = internal global ptr @pinmux_map_to_setting._entry.16, section ".printk_index", align 4
@pinmux_map_to_setting._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"function %s can't be selected on any group\0A\00", [52 x i8] zeroinitializer }, align 32
@pinmux_map_to_setting._entry_ptr.21 = internal global ptr @pinmux_map_to_setting._entry.19, section ".printk_index", align 4
@pinmux_map_to_setting._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid group \22%s\22 for function \22%s\22\0A\00", [58 x i8] zeroinitializer }, align 32
@pinmux_map_to_setting._entry_ptr.24 = internal global ptr @pinmux_map_to_setting._entry.22, section ".printk_index", align 4
@pinmux_map_to_setting._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.2, i32 392, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid group %s in map table\0A\00", [33 x i8] zeroinitializer }, align 32
@pinmux_map_to_setting._entry_ptr.27 = internal global ptr @pinmux_map_to_setting._entry.25, section ".printk_index", align 4
@pinmux_enable_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 428, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not get pins for group %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pinmux_enable_setting\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pinmux_enable_setting._entry_ptr = internal global ptr @pinmux_enable_setting._entry, section ".printk_index", align 4
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"non-existing\00", [19 x i8] zeroinitializer }, align 32
@pinmux_enable_setting._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.2, i32 447, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"could not request pin %d (%s) from group %s  on device %s\0A\00", [37 x i8] zeroinitializer }, align 32
@pinmux_enable_setting._entry_ptr.34 = internal global ptr @pinmux_enable_setting._entry.32, section ".printk_index", align 4
@pinmux_enable_setting._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.2, i32 458, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not get pin desc for pin %d\0A\00", [61 x i8] zeroinitializer }, align 32
@pinmux_enable_setting._entry_ptr.37 = internal global ptr @pinmux_enable_setting._entry.35, section ".printk_index", align 4
@pinmux_disable_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.38, ptr @.str.2, i32 507, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pinmux_disable_setting\00", [41 x i8] zeroinitializer }, align 32
@pinmux_disable_setting._entry_ptr = internal global ptr @pinmux_disable_setting._entry, section ".printk_index", align 4
@pinmux_disable_setting._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.38, ptr @.str.2, i32 517, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pinmux_disable_setting._entry_ptr.40 = internal global ptr @pinmux_disable_setting._entry.39, section ".printk_index", align 4
@pinmux_disable_setting._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.2, i32 531, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"not freeing pin %d (%s) as part of deactivating group %s - it is already used for some other setting\00", [59 x i8] zeroinitializer }, align 32
@pinmux_disable_setting._entry_ptr.43 = internal global ptr @pinmux_disable_setting._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"group %s\0Afunction %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(default)\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"group: %s (%u) function: %s (%u)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pinmux-functions\00", [47 x i8] zeroinitializer }, align 32
@pinmux_functions_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pinmux_functions_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pinmux-pins\00", [20 x i8] zeroinitializer }, align 32
@pinmux_pins_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pinmux_pins_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinmux-select\00", [18 x i8] zeroinitializer }, align 32
@pinmux_select_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @pinmux_select, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pinmux_select_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_pinmux_generic_get_function_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_get_function_count = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_get_function_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_get_function_count to i32), ptr @__kstrtab_pinmux_generic_get_function_count, ptr @__kstrtabns_pinmux_generic_get_function_count }, section "___ksymtab_gpl+pinmux_generic_get_function_count", align 4
@__kstrtab_pinmux_generic_get_function_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_get_function_name = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_get_function_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_get_function_name to i32), ptr @__kstrtab_pinmux_generic_get_function_name, ptr @__kstrtabns_pinmux_generic_get_function_name }, section "___ksymtab_gpl+pinmux_generic_get_function_name", align 4
@pinmux_generic_get_function_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 839, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s could not find function%i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pinmux_generic_get_function_groups\00", [61 x i8] zeroinitializer }, align 32
@pinmux_generic_get_function_groups._entry_ptr = internal global ptr @pinmux_generic_get_function_groups._entry, section ".printk_index", align 4
@__kstrtab_pinmux_generic_get_function_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_get_function_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_get_function_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_get_function_groups to i32), ptr @__kstrtab_pinmux_generic_get_function_groups, ptr @__kstrtabns_pinmux_generic_get_function_groups }, section "___ksymtab_gpl+pinmux_generic_get_function_groups", align 4
@__kstrtab_pinmux_generic_get_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_get_function = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_get_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_get_function to i32), ptr @__kstrtab_pinmux_generic_get_function, ptr @__kstrtabns_pinmux_generic_get_function }, section "___ksymtab_gpl+pinmux_generic_get_function", align 4
@__kstrtab_pinmux_generic_add_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_add_function = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_add_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_add_function to i32), ptr @__kstrtab_pinmux_generic_add_function, ptr @__kstrtabns_pinmux_generic_add_function }, section "___ksymtab_gpl+pinmux_generic_add_function", align 4
@__kstrtab_pinmux_generic_remove_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinmux_generic_remove_function = external dso_local constant [0 x i8], align 1
@__ksymtab_pinmux_generic_remove_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinmux_generic_remove_function to i32), ptr @__kstrtab_pinmux_generic_remove_function, ptr @__kstrtabns_pinmux_generic_remove_function }, section "___ksymtab_gpl+pinmux_generic_remove_function", align 4
@pin_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pin %d is not registered so it cannot be requested\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pin_request\00", [20 x i8] zeroinitializer }, align 32
@pin_request._entry_ptr = internal global ptr @pin_request._entry, section ".printk_index", align 4
@pin_request.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 31, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinmux\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"request pin %d (%s) for %s\0A\00", [36 x i8] zeroinitializer }, align 32
@pin_request._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.53, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"pin %s already requested by %s; cannot claim for %s\0A\00", [43 x i8] zeroinitializer }, align 32
@pin_request._entry_ptr.58 = internal global ptr @pin_request._entry.56, section ".printk_index", align 4
@pin_request._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.53, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pin_request._entry_ptr.60 = internal global ptr @pin_request._entry.59, section ".printk_index", align 4
@pin_request._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.53, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"could not increase module refcount for pin %d\0A\00", [49 x i8] zeroinitializer }, align 32
@pin_request._entry_ptr.63 = internal global ptr @pin_request._entry.61, section ".printk_index", align 4
@pin_request._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.53, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request() failed for pin %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pin_request._entry_ptr.66 = internal global ptr @pin_request._entry.64, section ".printk_index", align 4
@pin_request._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.53, ptr @.str.2, i32 191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pin-%d (%s) status %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pin_request._entry_ptr.69 = internal global ptr @pin_request._entry.67, section ".printk_index", align 4
@pin_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pin is not registered so it cannot be freed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pin_free\00", [23 x i8] zeroinitializer }, align 32
@pin_free._entry_ptr = internal global ptr @pin_free._entry, section ".printk_index", align 4
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"function %s: COULD NOT GET GROUPS\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"function %d: %s, groups = [ \00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Pinmux settings per pin\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Format: pin (name): mux_owner|gpio_owner (strict) hog?\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Format: pin (name): mux_owner gpio_owner hog?\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pin %d (%s): device %s%s\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" (HOG)\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pin %d (%s): GPIO %s\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pin %d (%s): UNCLAIMED\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pin %d (%s): %s %s%s\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(MUX UNCLAIMED)\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(GPIO UNCLAIMED)\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" function %s group %s\0A\00", [41 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@pinmux_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.88, ptr @.str.2, i32 726, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinmux_select\00", [18 x i8] zeroinitializer }, align 32
@pinmux_select._entry_ptr = internal global ptr @pinmux_select._entry, section ".printk_index", align 4
@pinmux_select._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 733, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no groups for function %d (%s)\00", [33 x i8] zeroinitializer }, align 32
@pinmux_select._entry_ptr.91 = internal global ptr @pinmux_select._entry.89, section ".printk_index", align 4
@pinmux_select._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.2, i32 739, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid group %s\00", [47 x i8] zeroinitializer }, align 32
@pinmux_select._entry_ptr.94 = internal global ptr @pinmux_select._entry.92, section ".printk_index", align 4
@pinmux_select._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.2, i32 745, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get group selector for %s\00", [60 x i8] zeroinitializer }, align 32
@pinmux_select._entry_ptr.97 = internal global ptr @pinmux_select._entry.95, section ".printk_index", align 4
@pinmux_select._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.2, i32 752, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_mux() failed: %d\00", [43 x i8] zeroinitializer }, align 32
@pinmux_select._entry_ptr.100 = internal global ptr @pinmux_select._entry.98, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 44, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 53, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 66, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 270, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 351, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 357, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 366, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 371, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 380, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 391, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 426, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 440, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 443, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 456, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 505, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 515, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 527, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 655, i32 16 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 656, i32 47 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 667, i32 16 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 779, i32 22 }
@___asan_gen_.230 = private unnamed_addr constant [22 x i8] c"pinmux_functions_fops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 674, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 781, i32 22 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"pinmux_pins_fops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 675, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 783, i32 22 }
@___asan_gen_.242 = private unnamed_addr constant [18 x i8] c"pinmux_select_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 768, i32 37 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 838, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 118, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 124, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 129, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 136, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 154, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 174, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 190, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 216, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 562, i32 18 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 568, i32 17 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 570, i32 18 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 571, i32 15 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 591, i32 14 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 594, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 597, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 618, i32 19 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 620, i32 18 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 620, i32 29 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 622, i32 19 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 625, i32 19 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 629, i32 18 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 631, i32 10 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 633, i32 10 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 639, i32 18 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 726, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 733, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 739, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 745, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.381 = private constant [28 x i8] c"../drivers/pinctrl/pinmux.c\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 752, i32 3 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @__ksymtab_pinmux_generic_add_function, ptr @__ksymtab_pinmux_generic_get_function, ptr @__ksymtab_pinmux_generic_get_function_count, ptr @__ksymtab_pinmux_generic_get_function_groups, ptr @__ksymtab_pinmux_generic_get_function_name, ptr @__ksymtab_pinmux_generic_remove_function, ptr @pin_free._entry, ptr @pin_free._entry_ptr, ptr @pin_request._entry, ptr @pin_request._entry.56, ptr @pin_request._entry.59, ptr @pin_request._entry.61, ptr @pin_request._entry.64, ptr @pin_request._entry.67, ptr @pin_request._entry_ptr, ptr @pin_request._entry_ptr.58, ptr @pin_request._entry_ptr.60, ptr @pin_request._entry_ptr.63, ptr @pin_request._entry_ptr.66, ptr @pin_request._entry_ptr.69, ptr @pinmux_check_ops._entry, ptr @pinmux_check_ops._entry.5, ptr @pinmux_check_ops._entry_ptr, ptr @pinmux_check_ops._entry_ptr.7, ptr @pinmux_disable_setting._entry, ptr @pinmux_disable_setting._entry.39, ptr @pinmux_disable_setting._entry.41, ptr @pinmux_disable_setting._entry_ptr, ptr @pinmux_disable_setting._entry_ptr.40, ptr @pinmux_disable_setting._entry_ptr.43, ptr @pinmux_enable_setting._entry, ptr @pinmux_enable_setting._entry.32, ptr @pinmux_enable_setting._entry.35, ptr @pinmux_enable_setting._entry_ptr, ptr @pinmux_enable_setting._entry_ptr.34, ptr @pinmux_enable_setting._entry_ptr.37, ptr @pinmux_generic_get_function_groups._entry, ptr @pinmux_generic_get_function_groups._entry_ptr, ptr @pinmux_map_to_setting._entry, ptr @pinmux_map_to_setting._entry.13, ptr @pinmux_map_to_setting._entry.16, ptr @pinmux_map_to_setting._entry.19, ptr @pinmux_map_to_setting._entry.22, ptr @pinmux_map_to_setting._entry.25, ptr @pinmux_map_to_setting._entry_ptr, ptr @pinmux_map_to_setting._entry_ptr.15, ptr @pinmux_map_to_setting._entry_ptr.18, ptr @pinmux_map_to_setting._entry_ptr.21, ptr @pinmux_map_to_setting._entry_ptr.24, ptr @pinmux_map_to_setting._entry_ptr.27, ptr @pinmux_select._entry, ptr @pinmux_select._entry.89, ptr @pinmux_select._entry.92, ptr @pinmux_select._entry.95, ptr @pinmux_select._entry.98, ptr @pinmux_select._entry_ptr, ptr @pinmux_select._entry_ptr.100, ptr @pinmux_select._entry_ptr.91, ptr @pinmux_select._entry_ptr.94, ptr @pinmux_select._entry_ptr.97, ptr @pinmux_validate_map._entry, ptr @pinmux_validate_map._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @pinmux_functions_fops, ptr @.str.48, ptr @pinmux_pins_fops, ptr @.str.49, ptr @pinmux_select_ops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_check_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_check_ops._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_validate_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_map_to_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_map_to_setting._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_map_to_setting._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_map_to_setting._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_map_to_setting._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_map_to_setting._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_enable_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_enable_setting._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_enable_setting._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_disable_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_disable_setting._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_disable_setting._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_functions_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_pins_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_select_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_generic_get_function_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_request._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_request._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_request._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_request._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_request._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_select._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_select._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_select._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinmux_select._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinmux_check_ops(ptr noundef %pctldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pmxops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmxops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %get_functions_count = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_functions_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_functions_count, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %get_function_name = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %get_function_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_function_name, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %lor.lhs.false4

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %get_function_groups = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %get_function_groups to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_function_groups, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false4.do.end_crit_edge, label %lor.lhs.false6

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %set_mux = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %set_mux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_mux, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %lor.lhs.false6.do.end_crit_edge, label %if.end

lor.lhs.false6.do.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false6.do.end_crit_edge, %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str) #11
  br label %cleanup18

if.end:                                           ; preds = %lor.lhs.false6
  %call = tail call i32 %5(ptr noundef %pctldev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp37.not = icmp eq i32 %call, 0
  br i1 %cmp37.not, label %if.end.cleanup18_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %selector.038 = phi i32 [ %inc, %cleanup.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %14 = ptrtoint ptr %get_function_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_function_name, align 4
  %call10 = tail call ptr %15(ptr noundef %pctldev, i32 noundef %selector.038) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %16 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %selector.038) #11
  br label %cleanup18

cleanup:                                          ; preds = %while.body
  %inc = add nuw i32 %selector.038, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %cleanup.cleanup18_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.cleanup18_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup.cleanup18_crit_edge, %cleanup.thread, %if.end.cleanup18_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ -22, %cleanup.thread ], [ 0, %if.end.cleanup18_crit_edge ], [ 0, %cleanup.cleanup18_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinmux_validate_map(ptr nocapture noundef readonly %map, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %function = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %function, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %3, i32 noundef %i) #11
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pinmux_can_be_used_for_gpio(ptr noundef %pctldev, i32 noundef %pin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_desc_tree.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i, i32 noundef %pin) #8
  %desc1 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pmxops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmxops, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %strict = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %strict to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %strict, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %mux_usecount = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %mux_usecount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mux_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.rhs, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_owner = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %gpio_owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_owner, align 4
  %tobool9 = icmp eq ptr %9, null
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ %tobool9, %land.rhs ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinmux_request_gpio(ptr noundef %pctldev, ptr noundef %range, i32 noundef %pin, i32 noundef %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, ptr noundef %1, i32 noundef %gpio) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @pin_request(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %call, ptr noundef %range)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.then2 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pin_request(ptr noundef %pctldev, i32 noundef %pin, ptr noundef %owner, ptr noundef %gpio_range) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pmxops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmxops, align 4
  %pin_desc_tree.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i, i32 noundef %pin) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52, i32 noundef %pin) #11
  br label %do.end98

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pin_request.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pin_request, %do.end11)) #8
          to label %if.then7 [label %do.end11], !srcloc !201

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  %name = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pin_request.__UNIQUE_ID_ddebug223, ptr noundef %7, ptr noundef nonnull @.str.55, i32 noundef %pin, ptr noundef %9, ptr noundef %owner) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body2
  %tobool12.not = icmp eq ptr %gpio_range, null
  br i1 %tobool12.not, label %do.end11.land.lhs.true_crit_edge, label %lor.lhs.false

do.end11.land.lhs.true_crit_edge:                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %do.end11
  %strict = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %strict to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %strict, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %lor.lhs.false.land.lhs.true30_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false.land.lhs.true30_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true30

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %do.end11.land.lhs.true_crit_edge
  %mux_usecount = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %mux_usecount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mux_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true15

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true15:                                  ; preds = %land.lhs.true
  %mux_owner = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %mux_owner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux_owner, align 4
  %call16 = tail call i32 @strcmp(ptr noundef %15, ptr noundef %owner) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.if.end25_crit_edge, label %do.end21

land.lhs.true15.if.end25_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end21:                                         ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %16 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev22, align 4
  %name23 = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.57, ptr noundef %19, ptr noundef %15, ptr noundef %owner) #11
  br label %do.end98

if.end25:                                         ; preds = %land.lhs.true15.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge
  br i1 %tobool12.not, label %lor.lhs.false27, label %if.end25.land.lhs.true30_crit_edge

if.end25.land.lhs.true30_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true30

lor.lhs.false27:                                  ; preds = %if.end25
  %strict28 = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %strict28 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %strict28, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool29.not = icmp eq i8 %21, 0
  br i1 %tobool29.not, label %lor.lhs.false27.if.else_crit_edge, label %land.lhs.true30.thread

lor.lhs.false27.if.else_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true30:                                  ; preds = %if.end25.land.lhs.true30_crit_edge, %lor.lhs.false.land.lhs.true30_crit_edge
  %gpio_owner = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %gpio_owner to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpio_owner, align 4
  %tobool31.not = icmp eq ptr %23, null
  br i1 %tobool31.not, label %if.end49.thread, label %land.lhs.true30.do.end35_crit_edge

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

land.lhs.true30.thread:                           ; preds = %lor.lhs.false27
  %gpio_owner161 = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %gpio_owner161 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gpio_owner161, align 4
  %tobool31.not162 = icmp eq ptr %25, null
  br i1 %tobool31.not162, label %land.lhs.true30.thread.if.else_crit_edge, label %land.lhs.true30.thread.do.end35_crit_edge

land.lhs.true30.thread.do.end35_crit_edge:        ; preds = %land.lhs.true30.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

land.lhs.true30.thread.if.else_crit_edge:         ; preds = %land.lhs.true30.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

do.end35:                                         ; preds = %land.lhs.true30.thread.do.end35_crit_edge, %land.lhs.true30.do.end35_crit_edge
  %26 = phi ptr [ %25, %land.lhs.true30.thread.do.end35_crit_edge ], [ %23, %land.lhs.true30.do.end35_crit_edge ]
  %dev36 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %27 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev36, align 4
  %name37 = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %name37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.57, ptr noundef %30, ptr noundef nonnull %26, ptr noundef %owner) #11
  br label %do.end98

if.else:                                          ; preds = %land.lhs.true30.thread.if.else_crit_edge, %lor.lhs.false27.if.else_crit_edge
  %31 = ptrtoint ptr %mux_usecount to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mux_usecount, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %mux_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp45 = icmp ugt i32 %inc, 1
  br i1 %cmp45, label %if.else.cleanup_crit_edge, label %if.end49

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.else
  %mux_owner48 = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %mux_owner48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %owner, ptr %mux_owner48, align 4
  %owner50 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 9
  %34 = ptrtoint ptr %owner50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %owner50, align 4
  %call51 = tail call zeroext i1 @try_module_get(ptr noundef %35) #8
  br i1 %call51, label %if.end49.if.else64_crit_edge, label %if.end49.do.end55_crit_edge

if.end49.do.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

if.end49.if.else64_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else64

if.end49.thread:                                  ; preds = %land.lhs.true30
  %36 = ptrtoint ptr %gpio_owner to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %owner, ptr %gpio_owner, align 4
  %owner50165 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 9
  %37 = ptrtoint ptr %owner50165 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %owner50165, align 4
  %call51166 = tail call zeroext i1 @try_module_get(ptr noundef %38) #8
  br i1 %call51166, label %land.lhs.true59, label %if.end49.thread.do.end55_crit_edge

if.end49.thread.do.end55_crit_edge:               ; preds = %if.end49.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

do.end55:                                         ; preds = %if.end49.thread.do.end55_crit_edge, %if.end49.do.end55_crit_edge
  %dev56 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %39 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.62, i32 noundef %pin) #11
  br label %if.then81

land.lhs.true59:                                  ; preds = %if.end49.thread
  %gpio_request_enable = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %gpio_request_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gpio_request_enable, align 4
  %tobool60.not = icmp eq ptr %42, null
  br i1 %tobool60.not, label %land.lhs.true59.if.else64_crit_edge, label %if.then61

land.lhs.true59.if.else64_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else64

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = tail call i32 %42(ptr noundef %pctldev, ptr noundef nonnull %gpio_range, i32 noundef %pin) #8
  br label %if.end71

if.else64:                                        ; preds = %land.lhs.true59.if.else64_crit_edge, %if.end49.if.else64_crit_edge
  %owner50167171 = phi ptr [ %owner50165, %land.lhs.true59.if.else64_crit_edge ], [ %owner50, %if.end49.if.else64_crit_edge ]
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %tobool65.not = icmp eq ptr %44, null
  br i1 %tobool65.not, label %if.else64.cleanup_crit_edge, label %if.then66

if.else64.cleanup_crit_edge:                      ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then66:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  %call68 = tail call i32 %44(ptr noundef %pctldev, i32 noundef %pin) #8
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.then61
  %owner50167169 = phi ptr [ %owner50165, %if.then61 ], [ %owner50167171, %if.then66 ]
  %status.0 = phi i32 [ %call63, %if.then61 ], [ %call68, %if.then66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool72.not = icmp eq i32 %status.0, 0
  br i1 %tobool72.not, label %if.end71.cleanup_crit_edge, label %do.end76

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end76:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %dev77 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %45 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev77, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.65, i32 noundef %pin) #11
  %47 = ptrtoint ptr %owner50167169 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %owner50167169, align 4
  tail call void @module_put(ptr noundef %48) #8
  br label %if.then81

if.then81:                                        ; preds = %do.end76, %do.end55
  %status.1 = phi i32 [ %status.0, %do.end76 ], [ -22, %do.end55 ]
  br i1 %tobool12.not, label %if.else85, label %if.then83

if.then83:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_owner84 = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 7
  %49 = ptrtoint ptr %gpio_owner84 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %gpio_owner84, align 4
  br label %do.end98

if.else85:                                        ; preds = %if.then81
  %mux_usecount86 = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %mux_usecount86 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mux_usecount86, align 4
  %dec = add i32 %51, -1
  store i32 %dec, ptr %mux_usecount86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool88.not = icmp eq i32 %dec, 0
  br i1 %tobool88.not, label %if.then89, label %if.else85.do.end98_crit_edge

if.else85.do.end98_crit_edge:                     ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

if.then89:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  %mux_owner90 = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 5
  %52 = ptrtoint ptr %mux_owner90 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %mux_owner90, align 4
  br label %do.end98

do.end98:                                         ; preds = %if.then89, %if.else85.do.end98_crit_edge, %if.then83, %do.end35, %do.end21, %do.end
  %status.2.ph = phi i32 [ %status.1, %if.then89 ], [ %status.1, %if.else85.do.end98_crit_edge ], [ %status.1, %if.then83 ], [ -22, %do.end35 ], [ -22, %do.end21 ], [ -22, %do.end ]
  %dev99 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %53 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev99, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.68, i32 noundef %pin, ptr noundef %owner, i32 noundef %status.2.ph) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %if.end71.cleanup_crit_edge, %if.else64.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ %status.2.ph, %do.end98 ], [ 0, %if.end71.cleanup_crit_edge ], [ 0, %if.else64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinmux_free_gpio(ptr noundef %pctldev, i32 noundef %pin, ptr noundef %range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pin_free(ptr noundef %pctldev, i32 noundef %pin, ptr noundef %range)
  tail call void @kfree(ptr noundef %call) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pin_free(ptr noundef %pctldev, i32 noundef %pin, ptr noundef %gpio_range) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pmxops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmxops, align 4
  %pin_desc_tree.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i, i32 noundef %pin) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.70) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %gpio_range, null
  br i1 %tobool.not, label %if.then2, label %land.lhs.true.critedge

if.then2:                                         ; preds = %if.end
  %mux_usecount = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %mux_usecount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mux_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %do.end16, label %if.end31, !prof !202

do.end16:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 225, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end31:                                         ; preds = %if.then2
  %dec = add i32 %7, -1
  %8 = ptrtoint ptr %mux_usecount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec, ptr %mux_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool34.not = icmp eq i32 %dec, 0
  br i1 %tobool34.not, label %if.end31.if.else_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31.if.else_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.critedge:                           ; preds = %if.end
  %gpio_disable_free = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %gpio_disable_free to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio_disable_free, align 4
  %tobool39.not = icmp eq ptr %10, null
  br i1 %tobool39.not, label %land.lhs.true.critedge.if.else_crit_edge, label %if.then40

land.lhs.true.critedge.if.else_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then40:                                        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %10(ptr noundef %pctldev, ptr noundef nonnull %gpio_range, i32 noundef %pin) #8
  br label %if.then49

if.else:                                          ; preds = %land.lhs.true.critedge.if.else_crit_edge, %if.end31.if.else_crit_edge
  %free = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %free, align 4
  %tobool42.not = icmp eq ptr %12, null
  br i1 %tobool42.not, label %if.else.if.end47_crit_edge, label %if.then43

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 %12(ptr noundef %pctldev, i32 noundef %pin) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.else.if.end47_crit_edge
  br i1 %tobool.not, label %if.else51, label %if.end47.if.then49_crit_edge

if.end47.if.then49_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

if.then49:                                        ; preds = %if.end47.if.then49_crit_edge, %if.then40
  %gpio_owner = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %gpio_owner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_owner, align 4
  br label %if.end53

if.else51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %mux_owner = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %mux_owner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mux_owner, align 4
  store ptr null, ptr %mux_owner, align 4
  %mux_setting = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 6
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then49
  %mux_setting.sink = phi ptr [ %mux_setting, %if.else51 ], [ %gpio_owner, %if.then49 ]
  %owner.0 = phi ptr [ %16, %if.else51 ], [ %14, %if.then49 ]
  %17 = ptrtoint ptr %mux_setting.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %mux_setting.sink, align 4
  %owner54 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 9
  %18 = ptrtoint ptr %owner54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %owner54, align 4
  tail call void @module_put(ptr noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end31.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %owner.0, %if.end53 ], [ null, %do.end16 ], [ null, %if.end31.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinmux_gpio_direction(ptr noundef %pctldev, ptr noundef %range, i32 noundef %pin, i1 noundef zeroext %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pmxops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmxops, align 4
  %gpio_set_direction = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %gpio_set_direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_set_direction, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %5(ptr noundef %pctldev, ptr noundef %range, i32 noundef %pin, i1 noundef zeroext %input) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinmux_map_to_setting(ptr nocapture noundef readonly %map, ptr nocapture noundef %setting) local_unnamed_addr #0 align 64 {
entry:
  %groups = alloca ptr, align 4
  %num_groups = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pctldev1 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 2
  %0 = ptrtoint ptr %pctldev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctldev1, align 4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pmxops2 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pmxops2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmxops2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %groups) #8
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %groups, align 4, !annotation !203
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_groups) #8
  %7 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %num_groups, align 4, !annotation !203
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4
  %function = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %function, align 4
  %get_functions_count.i = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %get_functions_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_functions_count.i, align 4
  %call.i = tail call i32 %13(ptr noundef %1) #8
  %get_function_name.i = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %selector.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.0.i, i32 %call.i)
  %exitcond.not.i = icmp eq i32 %selector.0.i, %call.i
  br i1 %exitcond.not.i, label %while.cond.i.do.end6_crit_edge, label %while.body.i

while.cond.i.do.end6_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

while.body.i:                                     ; preds = %while.cond.i
  %14 = ptrtoint ptr %get_function_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_function_name.i, align 4
  %call1.i = tail call ptr %15(ptr noundef %1, i32 noundef %selector.0.i) #8
  %call2.i = tail call i32 @strcmp(ptr noundef %11, ptr noundef %call1.i) #13
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %inc.i = add i32 %selector.0.i, 1
  br i1 %tobool.not.i, label %pinmux_func_name_to_selector.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

pinmux_func_name_to_selector.exit:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %selector.0.i)
  %cmp = icmp slt i32 %selector.0.i, 0
  br i1 %cmp, label %pinmux_func_name_to_selector.exit.do.end6_crit_edge, label %if.end10

pinmux_func_name_to_selector.exit.do.end6_crit_edge: ; preds = %pinmux_func_name_to_selector.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end6:                                          ; preds = %pinmux_func_name_to_selector.exit.do.end6_crit_edge, %while.cond.i.do.end6_crit_edge
  %retval.2.i102 = phi i32 [ %selector.0.i, %pinmux_func_name_to_selector.exit.do.end6_crit_edge ], [ -22, %while.cond.i.do.end6_crit_edge ]
  %dev7 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %18 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %function, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14, ptr noundef %19) #11
  br label %cleanup

if.end10:                                         ; preds = %pinmux_func_name_to_selector.exit
  %data11 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %func = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %selector.0.i, ptr %func, align 4
  %get_function_groups = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %get_function_groups to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_function_groups, align 4
  %call14 = call i32 %22(ptr noundef %1, i32 noundef %selector.0.i, ptr noundef nonnull %groups, ptr noundef nonnull %num_groups) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev20, align 4
  %25 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %function, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.17, ptr noundef %26) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  %27 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %dev29 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev29, align 4
  %31 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %function, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.20, ptr noundef %32) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %tobool35.not = icmp eq ptr %34, null
  %35 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %groups, align 4
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end32
  %call39 = call i32 @match_string(ptr noundef %36, i32 noundef %28, ptr noundef nonnull %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.then36.if.end49_crit_edge

if.then36.if.end49_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end44:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev45, align 4
  %39 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %function, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.23, ptr noundef nonnull %34, ptr noundef %40) #11
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then36.if.end49_crit_edge
  %group.0 = phi ptr [ %34, %if.then36.if.end49_crit_edge ], [ %42, %if.else ]
  %call50 = call i32 @pinctrl_get_group_selector(ptr noundef %1, ptr noundef %group.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %if.end59

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev56, align 4
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.26, ptr noundef %46) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call50, ptr %data11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %do.end55, %do.end44, %do.end28, %do.end19, %do.end6, %do.end
  %retval.0 = phi i32 [ %retval.2.i102, %do.end6 ], [ %call14, %do.end19 ], [ %call39, %do.end44 ], [ %call50, %do.end55 ], [ 0, %if.end59 ], [ -22, %do.end28 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_groups) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %groups) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_get_group_selector(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pinmux_free_setting(ptr nocapture noundef %setting) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinmux_enable_setting(ptr noundef %setting) local_unnamed_addr #0 align 64 {
entry:
  %pins = alloca ptr, align 4
  %num_pins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pctldev1 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 2
  %0 = ptrtoint ptr %pctldev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctldev1, align 4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pctlops2 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pctlops2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pctlops2, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %pmxops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmxops, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #8
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pins, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_pins) #8
  %9 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_pins, align 4
  %get_group_pins = getelementptr inbounds %struct.pinctrl_ops, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %get_group_pins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_group_pins, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end11.thread_crit_edge, label %if.then

entry.if.end11.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.thread

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %call = call i32 %11(ptr noundef %1, i32 noundef %13, ptr noundef nonnull %pins, ptr noundef nonnull %num_pins) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %phi.cmp = icmp eq i32 %call, 0
  br i1 %phi.cmp, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %get_group_name = getelementptr inbounds %struct.pinctrl_ops, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %get_group_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_group_name, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  %call10 = call ptr %15(ptr noundef %1, i32 noundef %17) #8
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.28, ptr noundef %call10) #11
  %20 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %num_pins, align 4
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.then7, %entry.if.end11.thread_crit_edge
  %21 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr140 = load i32, ptr %num_pins, align 4
  br label %for.cond30.preheader

if.end11:                                         ; preds = %if.then
  %22 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp127.not = icmp eq i32 %.pr, 0
  br i1 %cmp127.not, label %if.end11.for.end46_crit_edge, label %for.body.lr.ph

if.end11.for.end46_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.body.lr.ph:                                   ; preds = %if.end11
  %dev_name = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 3
  br label %for.body

for.cond30.preheader:                             ; preds = %for.inc.for.cond30.preheader_crit_edge, %if.end11.thread
  %23 = phi i32 [ %.pr140, %if.end11.thread ], [ %47, %for.inc.for.cond30.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp31129.not = icmp eq i32 %23, 0
  br i1 %cmp31129.not, label %for.cond30.preheader.for.end46_crit_edge, label %for.body32.lr.ph

for.cond30.preheader.for.end46_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.body32.lr.ph:                                 ; preds = %for.cond30.preheader
  %pin_desc_tree.i122 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 2
  %data43 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %dev40 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  br label %for.body32

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %25, i32 %i.0128
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_name, align 4
  %call12 = call fastcc i32 @pin_request(ptr noundef %1, i32 noundef %27, ptr noundef %29, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.inc, label %if.then14

if.then14:                                        ; preds = %for.body
  %30 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pins, align 4
  %arrayidx16 = getelementptr i32, ptr %31, i32 %i.0128
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx16, align 4
  %pin_desc_tree.i = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 2
  %call.i = call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i, i32 noundef %33) #8
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.then14.cond.end_crit_edge, label %cond.true

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then14.cond.end_crit_edge
  %cond = phi ptr [ %35, %cond.true ], [ @.str.31, %if.then14.cond.end_crit_edge ]
  %get_group_name19 = getelementptr inbounds %struct.pinctrl_ops, ptr %5, i32 0, i32 1
  %36 = ptrtoint ptr %get_group_name19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_group_name19, align 4
  %data20 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %38 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data20, align 4
  %call22 = call ptr %37(ptr noundef %1, i32 noundef %39) #8
  %dev26 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev26, align 4
  %42 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pins, align 4
  %arrayidx27 = getelementptr i32, ptr %43, i32 %i.0128
  %44 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx27, align 4
  %call28 = call ptr @pinctrl_dev_get_name(ptr noundef %1) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.33, i32 noundef %45, ptr noundef %cond, ptr noundef %call22, ptr noundef %call28) #11
  br label %err_pin_request

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0128, 1
  %46 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_pins, align 4
  %cmp = icmp ult i32 %inc, %47
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond30.preheader_crit_edge

for.inc.for.cond30.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond30.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body32:                                       ; preds = %for.inc44.for.body32_crit_edge, %for.body32.lr.ph
  %i.1130 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc45, %for.inc44.for.body32_crit_edge ]
  %48 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pins, align 4
  %arrayidx33 = getelementptr i32, ptr %49, i32 %i.1130
  %50 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx33, align 4
  %call.i123 = call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i122, i32 noundef %51) #8
  %cmp35 = icmp eq ptr %call.i123, null
  br i1 %cmp35, label %do.end39, label %if.end42

do.end39:                                         ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev40, align 4
  %54 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pins, align 4
  %arrayidx41 = getelementptr i32, ptr %55, i32 %i.1130
  %56 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx41, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.36, i32 noundef %57) #11
  br label %for.inc44

if.end42:                                         ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #10
  %mux_setting = getelementptr inbounds %struct.pin_desc, ptr %call.i123, i32 0, i32 6
  %58 = ptrtoint ptr %mux_setting to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %data43, ptr %mux_setting, align 4
  br label %for.inc44

for.inc44:                                        ; preds = %if.end42, %do.end39
  %inc45 = add nuw i32 %i.1130, 1
  %59 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_pins, align 4
  %cmp31 = icmp ult i32 %inc45, %60
  br i1 %cmp31, label %for.inc44.for.body32_crit_edge, label %for.inc44.for.end46_crit_edge

for.inc44.for.end46_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.inc44.for.body32_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body32

for.end46:                                        ; preds = %for.inc44.for.end46_crit_edge, %for.cond30.preheader.for.end46_crit_edge, %if.end11.for.end46_crit_edge
  %set_mux = getelementptr inbounds %struct.pinmux_ops, ptr %7, i32 0, i32 5
  %61 = ptrtoint ptr %set_mux to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_mux, align 4
  %data47 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %func = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 1
  %63 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %func, align 4
  %65 = ptrtoint ptr %data47 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data47, align 4
  %call50 = call i32 %62(ptr noundef %1, i32 noundef %64, i32 noundef %66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.end46.cleanup_crit_edge, label %for.cond54.preheader

for.end46.cleanup_crit_edge:                      ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond54.preheader:                             ; preds = %for.end46
  %67 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp55132.not = icmp eq i32 %68, 0
  br i1 %cmp55132.not, label %for.cond54.preheader.cleanup_crit_edge, label %for.body56.lr.ph

for.cond54.preheader.cleanup_crit_edge:           ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body56.lr.ph:                                 ; preds = %for.cond54.preheader
  %pin_desc_tree.i124 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 2
  br label %for.body56

for.body56:                                       ; preds = %for.inc63.for.body56_crit_edge, %for.body56.lr.ph
  %i.2133 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc64, %for.inc63.for.body56_crit_edge ]
  %69 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pins, align 4
  %arrayidx57 = getelementptr i32, ptr %70, i32 %i.2133
  %71 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx57, align 4
  %call.i125 = call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i124, i32 noundef %72) #8
  %tobool59.not = icmp eq ptr %call.i125, null
  br i1 %tobool59.not, label %for.body56.for.inc63_crit_edge, label %if.then60

for.body56.for.inc63_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc63

if.then60:                                        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  %mux_setting61 = getelementptr inbounds %struct.pin_desc, ptr %call.i125, i32 0, i32 6
  %73 = ptrtoint ptr %mux_setting61 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %mux_setting61, align 4
  br label %for.inc63

for.inc63:                                        ; preds = %if.then60, %for.body56.for.inc63_crit_edge
  %inc64 = add nuw i32 %i.2133, 1
  %74 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_pins, align 4
  %cmp55 = icmp ult i32 %inc64, %75
  br i1 %cmp55, label %for.inc63.for.body56_crit_edge, label %for.inc63.err_pin_request_crit_edge

for.inc63.err_pin_request_crit_edge:              ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pin_request

for.inc63.for.body56_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56

err_pin_request:                                  ; preds = %for.inc63.err_pin_request_crit_edge, %cond.end
  %ret.1 = phi i32 [ %call12, %cond.end ], [ %call50, %for.inc63.err_pin_request_crit_edge ]
  %i.3 = phi i32 [ %i.0128, %cond.end ], [ %inc64, %for.inc63.err_pin_request_crit_edge ]
  %dec134 = add i32 %i.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec134)
  %cmp66135 = icmp sgt i32 %dec134, -1
  br i1 %cmp66135, label %err_pin_request.while.body_crit_edge, label %err_pin_request.cleanup_crit_edge

err_pin_request.cleanup_crit_edge:                ; preds = %err_pin_request
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_pin_request.while.body_crit_edge:             ; preds = %err_pin_request
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_pin_request.while.body_crit_edge
  %dec136 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec134, %err_pin_request.while.body_crit_edge ]
  %76 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pins, align 4
  %arrayidx67 = getelementptr i32, ptr %77, i32 %dec136
  %78 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx67, align 4
  %call68 = call fastcc ptr @pin_free(ptr noundef %1, i32 noundef %79, ptr noundef null)
  %dec = add nsw i32 %dec136, -1
  %cmp66 = icmp sgt i32 %dec136, 0
  br i1 %cmp66, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_pin_request.cleanup_crit_edge, %for.cond54.preheader.cleanup_crit_edge, %for.end46.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end46.cleanup_crit_edge ], [ %ret.1, %err_pin_request.cleanup_crit_edge ], [ %call50, %for.cond54.preheader.cleanup_crit_edge ], [ %ret.1, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_pins) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinmux_disable_setting(ptr noundef readonly %setting) local_unnamed_addr #0 align 64 {
entry:
  %pins = alloca ptr, align 4
  %num_pins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pctldev1 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 2
  %0 = ptrtoint ptr %pctldev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctldev1, align 4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pctlops2 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pctlops2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pctlops2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #8
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pins, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_pins) #8
  %7 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_pins, align 4
  %get_group_pins = getelementptr inbounds %struct.pinctrl_ops, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %get_group_pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_group_pins, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.then

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %call = call i32 %9(ptr noundef %1, i32 noundef %11, ptr noundef nonnull %pins, ptr noundef nonnull %num_pins) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %phi.cmp = icmp eq i32 %call, 0
  br i1 %phi.cmp, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %get_group_name = getelementptr inbounds %struct.pinctrl_ops, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %get_group_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_group_name, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %call9 = call ptr %13(ptr noundef %1, i32 noundef %15) #8
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.28, ptr noundef %call9) #11
  br label %for.end

if.end10:                                         ; preds = %if.then
  %18 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp58.not = icmp eq i32 %.pr, 0
  br i1 %cmp58.not, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %pin_desc_tree.i = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 2
  %data20 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %get_group_name26 = getelementptr inbounds %struct.pinctrl_ops, ptr %5, i32 0, i32 1
  %dev33 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %19 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %20, i32 %i.059
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %call.i = call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i, i32 noundef %22) #8
  %cmp12 = icmp eq ptr %call.i, null
  br i1 %cmp12, label %do.end16, label %if.end19

do.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev33, align 4
  %25 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pins, align 4
  %arrayidx18 = getelementptr i32, ptr %26, i32 %i.059
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx18, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.36, i32 noundef %28) #11
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %mux_setting = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %mux_setting to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mux_setting, align 4
  %cmp21 = icmp eq ptr %30, %data20
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pins, align 4
  %arrayidx23 = getelementptr i32, ptr %32, i32 %i.059
  %33 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx23, align 4
  %call24 = call fastcc ptr @pin_free(ptr noundef %1, i32 noundef %34, ptr noundef null)
  br label %for.inc

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %get_group_name26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_group_name26, align 4
  %37 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data20, align 4
  %call29 = call ptr %36(ptr noundef %1, i32 noundef %38) #8
  %39 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev33, align 4
  %41 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pins, align 4
  %arrayidx34 = getelementptr i32, ptr %42, i32 %i.059
  %43 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx34, align 4
  %name = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.42, i32 noundef %44, ptr noundef %46, ptr noundef %call29) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then22, %do.end16
  %inc = add nuw i32 %i.059, 1
  %47 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_pins, align 4
  %cmp = icmp ult i32 %inc, %48
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge, %if.then6, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_pins) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinmux_show_map(ptr noundef %s, ptr nocapture noundef readonly %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @.str.45, ptr %1
  %function = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %function, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, ptr noundef nonnull %spec.select, ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinmux_show_setting(ptr noundef %s, ptr nocapture noundef readonly %setting) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pctldev1 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 2
  %0 = ptrtoint ptr %pctldev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctldev1, align 4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pmxops2 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pmxops2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmxops2, align 4
  %pctlops4 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %pctlops4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pctlops4, align 4
  %get_group_name = getelementptr inbounds %struct.pinctrl_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %get_group_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_group_name, align 4
  %data = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %call = tail call ptr %9(ptr noundef %1, i32 noundef %11) #8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %get_function_name = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %get_function_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_function_name, align 4
  %func = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %func, align 4
  %call8 = tail call ptr %15(ptr noundef %1, i32 noundef %17) #8
  %18 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %func, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, ptr noundef %call, i32 noundef %13, ptr noundef %call8, i32 noundef %19) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinmux_init_device_debugfs(ptr noundef %devroot, ptr noundef %pctldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext 292, ptr noundef %devroot, ptr noundef %pctldev, ptr noundef nonnull @pinmux_functions_fops) #8
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 292, ptr noundef %devroot, ptr noundef %pctldev, ptr noundef nonnull @pinmux_pins_fops) #8
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 128, ptr noundef %devroot, ptr noundef %pctldev, ptr noundef nonnull @pinmux_select_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pinmux_generic_get_function_count(ptr nocapture noundef readonly %pctldev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_functions = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 6
  %0 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_functions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pinmux_generic_get_function_name(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_function_tree = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 5
  %call = tail call ptr @radix_tree_lookup(ptr noundef %pin_function_tree, i32 noundef %selector) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinmux_generic_get_function_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_function_tree = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 5
  %call = tail call ptr @radix_tree_lookup(ptr noundef %pin_function_tree, i32 noundef %selector) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %selector) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %group_names = getelementptr inbounds %struct.function_desc, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %group_names to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group_names, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %num_group_names = getelementptr inbounds %struct.function_desc, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %num_group_names to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_group_names, align 4
  %7 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %num_groups, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pinmux_generic_get_function(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_function_tree = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 5
  %call = tail call ptr @radix_tree_lookup(ptr noundef %pin_function_tree, i32 noundef %selector) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinmux_generic_add_function(ptr noundef %pctldev, ptr noundef %name, ptr noundef %groups, i32 noundef %num_groups, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 4
  %pmxops.i = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pmxops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmxops.i, align 4
  %get_functions_count.i = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_functions_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_functions_count.i, align 4
  %call.i = tail call i32 %5(ptr noundef %pctldev) #8
  %get_function_name.i = getelementptr inbounds %struct.pinmux_ops, ptr %3, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %selector.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.0.i, i32 %call.i)
  %exitcond.not.i = icmp eq i32 %selector.0.i, %call.i
  br i1 %exitcond.not.i, label %while.cond.i.if.end2_crit_edge, label %while.body.i

while.cond.i.if.end2_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

while.body.i:                                     ; preds = %while.cond.i
  %6 = ptrtoint ptr %get_function_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_function_name.i, align 4
  %call1.i = tail call ptr %7(ptr noundef %pctldev, i32 noundef %selector.0.i) #8
  %call2.i = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %call1.i) #13
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %inc.i = add i32 %selector.0.i, 1
  br i1 %tobool.not.i, label %pinmux_func_name_to_selector.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

pinmux_func_name_to_selector.exit:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %selector.0.i)
  %cmp = icmp sgt i32 %selector.0.i, -1
  br i1 %cmp, label %pinmux_func_name_to_selector.exit.cleanup_crit_edge, label %pinmux_func_name_to_selector.exit.if.end2_crit_edge

pinmux_func_name_to_selector.exit.if.end2_crit_edge: ; preds = %pinmux_func_name_to_selector.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

pinmux_func_name_to_selector.exit.cleanup_crit_edge: ; preds = %pinmux_func_name_to_selector.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %pinmux_func_name_to_selector.exit.if.end2_crit_edge, %while.cond.i.if.end2_crit_edge
  %num_functions = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 6
  %8 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_functions, align 4
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i26 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 16, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i26, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call.i26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %call.i26, align 4
  %group_names = getelementptr inbounds %struct.function_desc, ptr %call.i26, i32 0, i32 1
  %13 = ptrtoint ptr %group_names to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %groups, ptr %group_names, align 4
  %num_group_names = getelementptr inbounds %struct.function_desc, ptr %call.i26, i32 0, i32 2
  %14 = ptrtoint ptr %num_group_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %num_groups, ptr %num_group_names, align 4
  %data8 = getelementptr inbounds %struct.function_desc, ptr %call.i26, i32 0, i32 3
  %15 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data, ptr %data8, align 4
  %pin_function_tree = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 5
  %call9 = tail call i32 @radix_tree_insert(ptr noundef %pin_function_tree, i32 noundef %9, ptr noundef nonnull %call.i26) #8
  %16 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_functions, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %num_functions, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end2.cleanup_crit_edge, %pinmux_func_name_to_selector.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %selector.0.i, %pinmux_func_name_to_selector.exit.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinmux_generic_remove_function(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_function_tree = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 5
  %call = tail call ptr @radix_tree_lookup(ptr noundef %pin_function_tree, i32 noundef %selector) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call ptr @radix_tree_delete(ptr noundef %pin_function_tree, i32 noundef %selector) #8
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %call) #8
  %num_functions = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 6
  %2 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_functions, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %num_functions, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinmux_generic_free_functions(ptr noundef %pctldev) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #8
  %0 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %iter, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %3 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %iter, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  %pin_function_tree = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 5
  br label %for.cond

for.cond.loopexit:                                ; preds = %while.body.i.for.cond.loopexit_crit_edge, %while.cond.i.for.cond.loopexit_crit_edge
  %slot.0.ph = phi ptr [ null, %while.cond.i.for.cond.loopexit_crit_edge ], [ %incdec.ptr29.i, %while.body.i.for.cond.loopexit_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  %slot.0 = phi ptr [ null, %entry ], [ %slot.0.ph, %for.cond.loopexit ]
  %tobool.not = icmp eq ptr %slot.0, null
  br i1 %tobool.not, label %lor.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call1 = call ptr @radix_tree_next_chunk(ptr noundef %pin_function_tree, ptr noundef nonnull %iter, i32 noundef 0) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %for.end, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %slot.1 = phi ptr [ %slot.0, %for.cond.for.body_crit_edge ], [ %call1, %lor.rhs.for.body_crit_edge ]
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iter, align 4
  %call4 = call ptr @radix_tree_delete(ptr noundef %pin_function_tree, i32 noundef %6) #8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %9 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iter, align 4
  %sub.i.i = sub i32 %8, %10
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.body
  %slot.addr.0.i = phi ptr [ %slot.1, %for.body ], [ %incdec.ptr29.i, %while.body.i.while.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %sub.i.i, %for.body ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.for.cond.loopexit_crit_edge

while.cond.i.for.cond.loopexit_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr29.i = getelementptr ptr, ptr %slot.addr.0.i, i32 1
  %11 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iter, align 4
  %add.i.i = add i32 %12, 1
  store i32 %add.i.i, ptr %iter, align 4
  %13 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr29.i, align 4
  %tobool32.not.i = icmp eq ptr %14, null
  br i1 %tobool32.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.cond.loopexit_crit_edge, !prof !202

while.body.i.for.cond.loopexit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

for.end:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %num_functions = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 6
  %15 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %num_functions, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinmux_functions_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @pinmux_functions_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinmux_functions_show(ptr noundef %s, ptr nocapture noundef readnone %what) #0 align 64 {
entry:
  %groups = alloca ptr, align 4
  %num_groups = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pmxops1 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pmxops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmxops1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup15_crit_edge, label %if.end

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup15

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %get_functions_count = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %get_functions_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_functions_count, align 4
  %call = tail call i32 %7(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp41.not = icmp eq i32 %call, 0
  br i1 %cmp41.not, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %get_function_name = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 3
  %get_function_groups = getelementptr inbounds %struct.pinmux_ops, ptr %5, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %func_selector.042 = phi i32 [ 0, %while.body.lr.ph ], [ %func_selector.1, %cleanup.while.body_crit_edge ]
  %8 = ptrtoint ptr %get_function_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_function_name, align 4
  %call2 = call ptr %9(ptr noundef %1, i32 noundef %func_selector.042) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %groups) #8
  %10 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %groups, align 4, !annotation !203
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_groups) #8
  %11 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %num_groups, align 4, !annotation !203
  %12 = ptrtoint ptr %get_function_groups to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_function_groups, align 4
  %call3 = call i32 %13(ptr noundef %1, i32 noundef %func_selector.042, ptr noundef nonnull %groups, ptr noundef nonnull %num_groups) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, ptr noundef %call2) #8
  br label %cleanup

if.end6:                                          ; preds = %while.body
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, i32 noundef %func_selector.042, ptr noundef %call2) #8
  %14 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp739.not = icmp eq i32 %15, 0
  br i1 %cmp739.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.040 = phi i32 [ %inc8, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %16 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.040
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.74, ptr noundef %19) #8
  %inc8 = add nuw i32 %i.040, 1
  %20 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_groups, align 4
  %cmp7 = icmp ult i32 %inc8, %21
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.75) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then5
  %func_selector.1 = add nuw i32 %func_selector.042, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_groups) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %groups) #8
  %exitcond.not = icmp eq i32 %func_selector.1, %call
  br i1 %exitcond.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup15

cleanup15:                                        ; preds = %while.end, %entry.cleanup15_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinmux_pins_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @pinmux_pins_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinmux_pins_show(ptr noundef %s, ptr nocapture noundef readnone %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pctlops1 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pctlops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pctlops1, align 4
  %pmxops3 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %pmxops3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmxops3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end:                                           ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.76) #8
  %strict = getelementptr inbounds %struct.pinmux_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %strict to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %strict, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  %.str.78..str.77 = select i1 %tobool4.not, ptr @.str.78, ptr @.str.77
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.78..str.77) #8
  %mutex = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %npins120 = getelementptr inbounds %struct.pinctrl_desc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %npins120 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npins120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp121.not = icmp eq i32 %13, 0
  br i1 %cmp121.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pin_desc_tree.i = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 2
  %get_function_name = getelementptr inbounds %struct.pinmux_ops, ptr %7, i32 0, i32 3
  %get_group_name = getelementptr inbounds %struct.pinctrl_ops, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %14 = phi ptr [ %11, %for.body.lr.ph ], [ %50, %cleanup.for.body_crit_edge ]
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %16, i32 %i.0122
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i, i32 noundef %18) #8
  %cmp10 = icmp eq ptr %call.i, null
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %if.end12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %mux_owner = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %mux_owner to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mux_owner, align 4
  %tobool13.not = icmp eq ptr %20, null
  br i1 %tobool13.not, label %if.end12.if.end19_crit_edge, label %land.lhs.true

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call ptr @pinctrl_dev_get_name(ptr noundef %1) #8
  %call16 = tail call i32 @strcmp(ptr noundef nonnull %20, ptr noundef %call15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %spec.select = select i1 %tobool17.not, ptr @.str.80, ptr @.str.81
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.end12.if.end19_crit_edge
  %is_hog.0.off0 = phi ptr [ @.str.81, %if.end12.if.end19_crit_edge ], [ %spec.select, %land.lhs.true ]
  %21 = ptrtoint ptr %strict to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %strict, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  br i1 %tobool21.not, label %if.else37, label %if.then22

if.then22:                                        ; preds = %if.end19
  %23 = ptrtoint ptr %mux_owner to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mux_owner, align 4
  %tobool24.not = icmp eq ptr %24, null
  br i1 %tobool24.not, label %if.else28, label %if.then25

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, i32 noundef %18, ptr noundef %26, ptr noundef nonnull %24, ptr noundef nonnull %is_hog.0.off0) #8
  br label %if.end52

if.else28:                                        ; preds = %if.then22
  %gpio_owner = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %gpio_owner to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpio_owner, align 4
  %tobool29.not = icmp eq ptr %28, null
  %name34 = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %name34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name34, align 4
  br i1 %tobool29.not, label %if.else33, label %if.then30

if.then30:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i32 noundef %18, ptr noundef %30, ptr noundef nonnull %28) #8
  br label %if.end52

if.else33:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.83, i32 noundef %18, ptr noundef %30) #8
  br label %if.end52

if.else37:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %name38 = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %name38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name38, align 4
  %33 = ptrtoint ptr %mux_owner to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mux_owner, align 4
  %tobool40.not = icmp eq ptr %34, null
  %spec.select119 = select i1 %tobool40.not, ptr @.str.85, ptr %34
  %gpio_owner43 = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %gpio_owner43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpio_owner43, align 4
  %tobool44.not = icmp eq ptr %36, null
  %cond49 = select i1 %tobool44.not, ptr @.str.86, ptr %36
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.84, i32 noundef %18, ptr noundef %32, ptr noundef nonnull %spec.select119, ptr noundef nonnull %cond49, ptr noundef nonnull %is_hog.0.off0) #8
  br label %if.end52

if.end52:                                         ; preds = %if.else37, %if.else33, %if.then30, %if.then25
  %mux_setting = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %mux_setting to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mux_setting, align 4
  %tobool53.not = icmp eq ptr %38, null
  br i1 %tobool53.not, label %if.else59, label %if.then54

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %get_function_name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_function_name, align 4
  %func = getelementptr inbounds %struct.pinctrl_setting_mux, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %func, align 4
  %call56 = tail call ptr %40(ptr noundef %1, i32 noundef %42) #8
  %43 = ptrtoint ptr %get_group_name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_group_name, align 4
  %45 = ptrtoint ptr %mux_setting to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mux_setting, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %call58 = tail call ptr %44(ptr noundef %1, i32 noundef %48) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, ptr noundef %call56, ptr noundef %call58) #8
  br label %cleanup

if.else59:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else59, %if.then54, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0122, 1
  %49 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %52
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup63

cleanup63:                                        ; preds = %for.end, %entry.cleanup63_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinmux_select(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %groups = alloca ptr, align 4
  %num_groups = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %pmxops1 = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pmxops1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmxops1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %groups) #8
  %8 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %groups, align 4, !annotation !203
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_groups) #8
  %9 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %num_groups, align 4, !annotation !203
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp = icmp ugt i32 %len, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 128) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @strncpy_from_user(ptr noundef nonnull %call7.i.i, ptr noundef %user_buf, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.exit_free_buf_crit_edge, label %if.end7

if.end3.exit_free_buf_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_free_buf

if.end7:                                          ; preds = %if.end3
  %sub = add nsw i32 %len, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %call.i = tail call ptr @strim(ptr noundef nonnull %call7.i.i) #8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp9 = icmp eq i8 %13, 0
  br i1 %cmp9, label %if.end7.exit_free_buf_crit_edge, label %for.cond.preheader

if.end7.exit_free_buf_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_free_buf

for.cond.preheader:                               ; preds = %if.end7
  %conv13124 = zext i8 %13 to i32
  %arrayidx14125 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv13124
  %14 = ptrtoint ptr %arrayidx14125 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14125, align 1
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp16.not126 = icmp eq i8 %16, 0
  br i1 %cmp16.not126, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %fname.0127 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call.i, %for.cond.preheader.for.body_crit_edge ]
  %17 = phi i8 [ %.pr, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp19 = icmp eq i8 %17, 0
  br i1 %cmp19, label %for.body.exit_free_buf_crit_edge, label %for.inc

for.body.exit_free_buf_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_free_buf

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %fname.0127, i32 1
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %incdec.ptr, align 1
  %conv13 = zext i8 %.pr to i32
  %arrayidx14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv13
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14, align 1
  %21 = and i8 %20, 32
  %cmp16.not = icmp eq i8 %21, 0
  br i1 %cmp16.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %fname.0.lcssa = phi ptr [ %call.i, %for.cond.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %22 = ptrtoint ptr %fname.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %fname.0.lcssa, align 1
  %add.ptr = getelementptr i8, ptr %fname.0.lcssa, i32 1
  %call23 = tail call ptr @skip_spaces(ptr noundef %add.ptr) #8
  %23 = ptrtoint ptr %call23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp25 = icmp eq i8 %24, 0
  br i1 %cmp25, label %for.end.exit_free_buf_crit_edge, label %if.end28

for.end.exit_free_buf_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_free_buf

if.end28:                                         ; preds = %for.end
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 4
  %pmxops.i = getelementptr inbounds %struct.pinctrl_desc, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %pmxops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pmxops.i, align 4
  %get_functions_count.i = getelementptr inbounds %struct.pinmux_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %get_functions_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_functions_count.i, align 4
  %call.i118 = tail call i32 %30(ptr noundef %3) #8
  %get_function_name.i = getelementptr inbounds %struct.pinmux_ops, ptr %28, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end28
  %selector.0.i = phi i32 [ 0, %if.end28 ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.0.i, i32 %call.i118)
  %exitcond.not.i = icmp eq i32 %selector.0.i, %call.i118
  br i1 %exitcond.not.i, label %while.cond.i.do.end_crit_edge, label %while.body.i

while.cond.i.do.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.body.i:                                     ; preds = %while.cond.i
  %31 = ptrtoint ptr %get_function_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_function_name.i, align 4
  %call1.i = tail call ptr %32(ptr noundef %3, i32 noundef %selector.0.i) #8
  %call2.i = tail call i32 @strcmp(ptr noundef %call23, ptr noundef %call1.i) #13
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %inc.i = add i32 %selector.0.i, 1
  br i1 %tobool.not.i, label %pinmux_func_name_to_selector.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

pinmux_func_name_to_selector.exit:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %selector.0.i)
  %cmp30 = icmp slt i32 %selector.0.i, 0
  br i1 %cmp30, label %pinmux_func_name_to_selector.exit.do.end_crit_edge, label %if.end33

pinmux_func_name_to_selector.exit.do.end_crit_edge: ; preds = %pinmux_func_name_to_selector.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %pinmux_func_name_to_selector.exit.do.end_crit_edge, %while.cond.i.do.end_crit_edge
  %retval.2.i121 = phi i32 [ %selector.0.i, %pinmux_func_name_to_selector.exit.do.end_crit_edge ], [ -22, %while.cond.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.14, ptr noundef %call23) #11
  br label %exit_free_buf

if.end33:                                         ; preds = %pinmux_func_name_to_selector.exit
  %get_function_groups = getelementptr inbounds %struct.pinmux_ops, ptr %7, i32 0, i32 4
  %35 = ptrtoint ptr %get_function_groups to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_function_groups, align 4
  %call34 = call i32 %36(ptr noundef %3, i32 noundef %selector.0.i, ptr noundef nonnull %groups, ptr noundef nonnull %num_groups) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 8
  %37 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.90, i32 noundef %selector.0.i, ptr noundef %call23) #11
  br label %exit_free_buf

if.end41:                                         ; preds = %if.end33
  %39 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %groups, align 4
  %41 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_groups, align 4
  %call42 = call i32 @match_string(ptr noundef %40, i32 noundef %42, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 8
  %43 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev49, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.93, ptr noundef %call.i) #11
  br label %exit_free_buf

if.end50:                                         ; preds = %if.end41
  %call51 = call i32 @pinctrl_get_group_selector(ptr noundef %3, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %dev58 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 8
  %45 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev58, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.96, ptr noundef %call.i) #11
  br label %exit_free_buf

if.end59:                                         ; preds = %if.end50
  %set_mux = getelementptr inbounds %struct.pinmux_ops, ptr %7, i32 0, i32 5
  %47 = ptrtoint ptr %set_mux to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_mux, align 4
  %call60 = call i32 %48(ptr noundef %3, i32 noundef %selector.0.i, i32 noundef %call51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end59.exit_free_buf_crit_edge, label %do.end65

if.end59.exit_free_buf_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_free_buf

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %dev66 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 8
  %49 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev66, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.99, i32 noundef %call60) #11
  br label %exit_free_buf

exit_free_buf:                                    ; preds = %do.end65, %if.end59.exit_free_buf_crit_edge, %do.end57, %do.end48, %do.end39, %do.end, %for.end.exit_free_buf_crit_edge, %for.body.exit_free_buf_crit_edge, %if.end7.exit_free_buf_crit_edge, %if.end3.exit_free_buf_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end3.exit_free_buf_crit_edge ], [ %retval.2.i121, %do.end ], [ %call34, %do.end39 ], [ %call42, %do.end48 ], [ %call51, %do.end57 ], [ %call60, %do.end65 ], [ -22, %if.end7.exit_free_buf_crit_edge ], [ -22, %for.end.exit_free_buf_crit_edge ], [ %len, %if.end59.exit_free_buf_crit_edge ], [ -22, %for.body.exit_free_buf_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_free_buf, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit_free_buf ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_groups) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %groups) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinmux_select_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef null, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinmux.c", i32 44, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pinmux_check_ops._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pinmux_check_ops._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinmux.c", i32 53, i32 4}
!10 = !{ptr @pinmux_check_ops._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @pinmux_check_ops._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinmux.c", i32 66, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pinmux_validate_map._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @pinmux_validate_map._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/pinmux.c", i32 270, i32 32}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/pinmux.c", i32 351, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pinmux_map_to_setting._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @pinmux_map_to_setting._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinmux.c", i32 357, i32 3}
!26 = !{ptr @pinmux_map_to_setting._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pinmux_map_to_setting._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinmux.c", i32 366, i32 3}
!30 = !{ptr @pinmux_map_to_setting._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pinmux_map_to_setting._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinmux.c", i32 371, i32 3}
!34 = !{ptr @pinmux_map_to_setting._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pinmux_map_to_setting._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinmux.c", i32 380, i32 4}
!38 = !{ptr @pinmux_map_to_setting._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pinmux_map_to_setting._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinmux.c", i32 391, i32 3}
!42 = !{ptr @pinmux_map_to_setting._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pinmux_map_to_setting._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinmux.c", i32 426, i32 3}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pinmux_enable_setting._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @pinmux_enable_setting._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinmux.c", i32 440, i32 32}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinmux.c", i32 443, i32 4}
!54 = !{ptr @pinmux_enable_setting._entry.32, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pinmux_enable_setting._entry_ptr.34, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinmux.c", i32 456, i32 4}
!58 = !{ptr @pinmux_enable_setting._entry.35, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pinmux_enable_setting._entry_ptr.37, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinmux.c", i32 505, i32 3}
!62 = !{ptr @pinmux_disable_setting._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pinmux_disable_setting._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @pinmux_disable_setting._entry.39, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinmux.c", i32 515, i32 4}
!66 = !{ptr @pinmux_disable_setting._entry_ptr.40, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/pinmux.c", i32 527, i32 4}
!69 = !{ptr @pinmux_disable_setting._entry.41, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pinmux_disable_setting._entry_ptr.43, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/pinmux.c", i32 655, i32 16}
!73 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/pinmux.c", i32 656, i32 47}
!75 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinmux.c", i32 667, i32 16}
!77 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinmux.c", i32 779, i32 22}
!79 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/pinmux.c", i32 781, i32 22}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/pinmux.c", i32 783, i32 22}
!83 = !{ptr @__ksymtab_pinmux_generic_get_function_count, !84, !"__ksymtab_pinmux_generic_get_function_count", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/pinmux.c", i32 799, i32 1}
!85 = !{ptr @__ksymtab_pinmux_generic_get_function_name, !86, !"__ksymtab_pinmux_generic_get_function_name", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/pinmux.c", i32 819, i32 1}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/pinmux.c", i32 838, i32 3}
!89 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @pinmux_generic_get_function_groups._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @pinmux_generic_get_function_groups._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @__ksymtab_pinmux_generic_get_function_groups, !93, !"__ksymtab_pinmux_generic_get_function_groups", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinmux.c", i32 847, i32 1}
!94 = !{ptr @__ksymtab_pinmux_generic_get_function, !95, !"__ksymtab_pinmux_generic_get_function", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinmux.c", i32 866, i32 1}
!96 = !{ptr @__ksymtab_pinmux_generic_add_function, !97, !"__ksymtab_pinmux_generic_add_function", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/pinmux.c", i32 909, i32 1}
!98 = !{ptr @__ksymtab_pinmux_generic_remove_function, !99, !"__ksymtab_pinmux_generic_remove_function", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinmux.c", i32 935, i32 1}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinmux.c", i32 118, i32 3}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @pin_request._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @pin_request._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/pinmux.c", i32 124, i32 2}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @pin_request.__UNIQUE_ID_ddebug223, !106, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/pinmux.c", i32 129, i32 3}
!111 = !{ptr @pin_request._entry.56, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @pin_request._entry_ptr.58, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @pin_request._entry.59, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/pinmux.c", i32 136, i32 3}
!115 = !{ptr @pin_request._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/pinmux.c", i32 154, i32 3}
!118 = !{ptr @pin_request._entry.61, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @pin_request._entry_ptr.63, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinmux.c", i32 174, i32 3}
!122 = !{ptr @pin_request._entry.64, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @pin_request._entry_ptr.66, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinmux.c", i32 190, i32 3}
!126 = !{ptr @pin_request._entry.67, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @pin_request._entry_ptr.69, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinmux.c", i32 216, i32 3}
!130 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @pin_free._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @pin_free._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @pinmux_functions_fops, !134, !"pinmux_functions_fops", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/pinmux.c", i32 674, i32 1}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/pinmux.c", i32 562, i32 18}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/pinmux.c", i32 568, i32 17}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/pinmux.c", i32 570, i32 18}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/pinmux.c", i32 571, i32 15}
!143 = !{ptr @pinmux_pins_fops, !144, !"pinmux_pins_fops", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/pinmux.c", i32 675, i32 1}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/pinmux.c", i32 591, i32 14}
!147 = !{ptr @.str.77, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/pinmux.c", i32 594, i32 4}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/pinmux.c", i32 597, i32 3}
!151 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/pinmux.c", i32 618, i32 19}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/pinmux.c", i32 620, i32 18}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/pinmux.c", i32 620, i32 29}
!157 = !{ptr @.str.82, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/pinmux.c", i32 622, i32 19}
!159 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/pinmux.c", i32 625, i32 19}
!161 = !{ptr @.str.84, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/pinmux.c", i32 629, i32 18}
!163 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/pinmux.c", i32 631, i32 10}
!165 = !{ptr @.str.86, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/pinmux.c", i32 633, i32 10}
!167 = !{ptr @.str.87, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/pinmux.c", i32 639, i32 18}
!169 = !{ptr @pinmux_select_ops, !170, !"pinmux_select_ops", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/pinmux.c", i32 768, i32 37}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/pinmux.c", i32 726, i32 3}
!173 = !{ptr @pinmux_select._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @pinmux_select._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/pinmux.c", i32 733, i32 3}
!177 = !{ptr @pinmux_select._entry.89, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @pinmux_select._entry_ptr.91, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pinctrl/pinmux.c", i32 739, i32 3}
!181 = !{ptr @pinmux_select._entry.92, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @pinmux_select._entry_ptr.94, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/pinmux.c", i32 745, i32 3}
!185 = !{ptr @pinmux_select._entry.95, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @pinmux_select._entry_ptr.97, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.99, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/pinmux.c", i32 752, i32 3}
!189 = !{ptr @pinmux_select._entry.98, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @pinmux_select._entry_ptr.100, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{i8 0, i8 2}
!201 = !{i64 2148716765, i64 2148716770, i64 2148716783, i64 2148716827, i64 2148716861, i64 2148716882}
!202 = !{!"branch_weights", i32 1, i32 2000}
!203 = !{!"auto-init"}
