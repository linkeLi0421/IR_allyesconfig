; ModuleID = '/llk/IR_all_yes/drivers/of/fdt.c_pt.bc'
source_filename = "../drivers/of/fdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_fdt_unflatten_tree\22, \22a\22\09"
module asm "\09.weak\09__crc_of_fdt_unflatten_tree\09\09\09\09"
module asm "\09.long\09__crc_of_fdt_unflatten_tree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_fdt_unflatten_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22of_fdt_unflatten_tree\22\09\09\09\09\09"
module asm "__kstrtabns_of_fdt_unflatten_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }

@initial_boot_params = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#address-cells\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#size-cells\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/memory\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_fdt_limit_memory.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fdt\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"of_fdt_limit_memory\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drivers/of/fdt.c\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Limiting number of entries to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"OF: fdt: Limiting number of entries to %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__unflatten_device_tree.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.11, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__unflatten_device_tree\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" -> unflatten_device_tree()\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"OF: fdt:  -> unflatten_device_tree()\0A\00", [58 x i8] zeroinitializer }, align 32
@__unflatten_device_tree.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.13, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No device tree pointer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"OF: fdt: No device tree pointer\0A\00", [63 x i8] zeroinitializer }, align 32
@__unflatten_device_tree.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.15, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unflattening device tree:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"OF: fdt: Unflattening device tree:\0A\00", [60 x i8] zeroinitializer }, align 32
@__unflatten_device_tree.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.17, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"magic: %08x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"OF: fdt: magic: %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@__unflatten_device_tree.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.19, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"size: %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"OF: fdt: size: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@__unflatten_device_tree.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.21, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"version: %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"OF: fdt: version: %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@__unflatten_device_tree._entry = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.7, i32 392, ptr null, ptr null }, align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013OF: fdt: Invalid device tree blob header\0A\00", [52 x i8] zeroinitializer }, align 32
@__unflatten_device_tree._entry_ptr = internal global ptr @__unflatten_device_tree._entry, section ".printk_index", align 4
@__unflatten_device_tree.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.24, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  size is %d, allocating...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"OF: fdt:   size is %d, allocating...\0A\00", [58 x i8] zeroinitializer }, align 32
@__unflatten_device_tree.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.26, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  unflattening %p...\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"OF: fdt:   unflattening %p...\0A\00", [33 x i8] zeroinitializer }, align 32
@__unflatten_device_tree._entry.28 = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.10, ptr @.str.7, i32 420, ptr null, ptr null }, align 1
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014OF: fdt: End of tree marker overwritten: %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@__unflatten_device_tree._entry_ptr.30 = internal global ptr @__unflatten_device_tree._entry.28, section ".printk_index", align 4
@__unflatten_device_tree.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.31, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unflattened tree is detached\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"OF: fdt: unflattened tree is detached\0A\00", [57 x i8] zeroinitializer }, align 32
@__unflatten_device_tree.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.33, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" <- unflatten_device_tree()\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"OF: fdt:  <- unflatten_device_tree()\0A\00", [58 x i8] zeroinitializer }, align 32
@of_fdt_unflatten_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.110, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_fdt_unflatten_mutex, i64 52), ptr getelementptr (i8, ptr @of_fdt_unflatten_mutex, i64 52) }, ptr @of_fdt_unflatten_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.111, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_of_fdt_unflatten_tree = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_fdt_unflatten_tree = external dso_local constant [0 x i8], align 1
@__ksymtab_of_fdt_unflatten_tree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_fdt_unflatten_tree to i32), ptr @__kstrtab_of_fdt_unflatten_tree, ptr @__kstrtabns_of_fdt_unflatten_tree }, section "___ksymtab_gpl+of_fdt_unflatten_tree", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@of_flat_dt_match_machine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013OF: fdt: \0A unrecognized device tree list:\0A[ \00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"of_flat_dt_match_machine\00", [39 x i8] zeroinitializer }, align 32
@of_flat_dt_match_machine._entry_ptr = internal global ptr @of_flat_dt_match_machine._entry, section ".printk_index", align 4
@of_flat_dt_match_machine._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.7, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"'%s' \00", [26 x i8] zeroinitializer }, align 32
@of_flat_dt_match_machine._entry_ptr.41 = internal global ptr @of_flat_dt_match_machine._entry.39, section ".printk_index", align 4
@of_flat_dt_match_machine._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.7, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"]\0A\0A\00", [28 x i8] zeroinitializer }, align 32
@of_flat_dt_match_machine._entry_ptr.44 = internal global ptr @of_flat_dt_match_machine._entry.42, section ".printk_index", align 4
@of_flat_dt_match_machine._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.7, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016OF: fdt: Machine model: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@of_flat_dt_match_machine._entry_ptr.47 = internal global ptr @of_flat_dt_match_machine._entry.45, section ".printk_index", align 4
@chosen_node_offset = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@early_init_dt_check_for_usable_mem_range.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.48, ptr @.str.7, ptr @.str.49, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"early_init_dt_check_for_usable_mem_range\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Looking for usable-memory-range property... \00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"OF: fdt: Looking for usable-memory-range property... \00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"linux,usable-memory-range\00", [38 x i8] zeroinitializer }, align 32
@dt_root_addr_cells = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@dt_root_size_cells = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@early_init_dt_check_for_usable_mem_range.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.48, ptr @.str.7, ptr @.str.52, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cap_mem_start=%pa cap_mem_size=%pa\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"OF: fdt: cap_mem_start=%pa cap_mem_size=%pa\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/chosen\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"/chosen@0\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stdout-path\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linux,stdout-path\00", [46 x i8] zeroinitializer }, align 32
@early_init_dt_scan_chosen_stdout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.7, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014OF: fdt: earlycon: stdout-path %.*s not found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"early_init_dt_scan_chosen_stdout\00", [63 x i8] zeroinitializer }, align 32
@early_init_dt_scan_chosen_stdout._entry_ptr = internal global ptr @early_init_dt_scan_chosen_stdout._entry, section ".printk_index", align 4
@__earlycon_table = external dso_local constant [0 x %struct.earlycon_id], align 4
@__earlycon_table_end = external dso_local constant [0 x %struct.earlycon_id], align 4
@early_init_dt_scan_root.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.7, ptr @.str.61, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"early_init_dt_scan_root\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dt_root_size_cells = %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"OF: fdt: dt_root_size_cells = %x\0A\00", [62 x i8] zeroinitializer }, align 32
@early_init_dt_scan_root.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.7, ptr @.str.63, i8 1, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dt_root_addr_cells = %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"OF: fdt: dt_root_addr_cells = %x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_type\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"linux,usable-memory\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hotpluggable\00", [19 x i8] zeroinitializer }, align 32
@early_init_dt_scan_memory.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.69, ptr @.str.7, ptr @.str.70, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"early_init_dt_scan_memory\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"memory scan node %s, reg size %d,\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"OF: fdt: memory scan node %s, reg size %d,\0A\00", [52 x i8] zeroinitializer }, align 32
@early_init_dt_scan_memory.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.69, ptr @.str.7, ptr @.str.72, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" - %llx, %llx\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"OF: fdt:  - %llx, %llx\0A\00", [40 x i8] zeroinitializer }, align 32
@early_init_dt_scan_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.7, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014OF: fdt: failed to mark hotplug range 0x%llx - 0x%llx\0A\00", [39 x i8] zeroinitializer }, align 32
@early_init_dt_scan_memory._entry_ptr = internal global ptr @early_init_dt_scan_memory._entry, section ".printk_index", align 4
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bootargs\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@early_init_dt_scan_chosen.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.77, ptr @.str.7, ptr @.str.78, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"early_init_dt_scan_chosen\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Command line is: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OF: fdt: Command line is: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rng-seed\00", [23 x i8] zeroinitializer }, align 32
@of_fdt_crc32 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@early_init_dt_add_memory_arch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.7, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014OF: fdt: Ignoring memory block 0x%llx - 0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"early_init_dt_add_memory_arch\00", [34 x i8] zeroinitializer }, align 32
@early_init_dt_add_memory_arch._entry_ptr = internal global ptr @early_init_dt_add_memory_arch._entry, section ".printk_index", align 4
@early_init_dt_add_memory_arch._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.7, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@early_init_dt_add_memory_arch._entry_ptr.84 = internal global ptr @early_init_dt_add_memory_arch._entry.83, section ".printk_index", align 4
@early_init_dt_add_memory_arch._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.82, ptr @.str.7, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014OF: fdt: Ignoring memory range 0x%llx - 0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@early_init_dt_add_memory_arch._entry_ptr.87 = internal global ptr @early_init_dt_add_memory_arch._entry.85, section ".printk_index", align 4
@early_init_dt_add_memory_arch._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.7, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@early_init_dt_add_memory_arch._entry_ptr.89 = internal global ptr @early_init_dt_add_memory_arch._entry.88, section ".printk_index", align 4
@early_init_dt_add_memory_arch._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.82, ptr @.str.7, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@early_init_dt_add_memory_arch._entry_ptr.91 = internal global ptr @early_init_dt_add_memory_arch._entry.90, section ".printk_index", align 4
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@early_init_dt_scan_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.7, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014OF: fdt: No chosen node found, continuing without\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"early_init_dt_scan_nodes\00", [39 x i8] zeroinitializer }, align 32
@early_init_dt_scan_nodes._entry_ptr = internal global ptr @early_init_dt_scan_nodes._entry, section ".printk_index", align 4
@of_root = external dso_local global ptr, align 4
@unflatten_and_copy_device_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.7, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014OF: fdt: No valid device tree found, continuing without\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unflatten_and_copy_device_tree\00", [33 x i8] zeroinitializer }, align 32
@unflatten_and_copy_device_tree._entry_ptr = internal global ptr @unflatten_and_copy_device_tree._entry, section ".printk_index", align 4
@__initcall__kmod_fdt__264_1385_of_fdt_raw_init7 = internal global ptr @of_fdt_raw_init, section ".initcall7.init", align 4
@unflatten_dt_nodes.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@unflatten_dt_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.7, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013OF: fdt: Error %d processing FDT\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unflatten_dt_nodes\00", [45 x i8] zeroinitializer }, align 32
@unflatten_dt_nodes._entry_ptr = internal global ptr @unflatten_dt_nodes._entry, section ".printk_index", align 4
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<NULL>\00", [25 x i8] zeroinitializer }, align 32
@of_node_ktype = external dso_local global %struct.kobj_type, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@populate_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.7, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014OF: fdt: Cannot locate property at 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"populate_properties\00", [44 x i8] zeroinitializer }, align 32
@populate_properties._entry_ptr = internal global ptr @populate_properties._entry, section ".printk_index", align 4
@populate_properties._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.7, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014OF: fdt: Cannot find property name at 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@populate_properties._entry_ptr.104 = internal global ptr @populate_properties._entry.102, section ".printk_index", align 4
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phandle\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"linux,phandle\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ibm,phandle\00", [20 x i8] zeroinitializer }, align 32
@populate_properties.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.7, ptr @.str.108, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fixed up name for %s -> %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"OF: fdt: fixed up name for %s -> %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"of_fdt_unflatten_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"of_fdt_unflatten_mutex\00", [41 x i8] zeroinitializer }, align 32
@memblock = external dso_local global %struct.memblock, align 4
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"/reserved-memory\00", [47 x i8] zeroinitializer }, align 32
@fdt_scan_reserved_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.7, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013OF: fdt: Reserved memory: unsupported node format, ignoring\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fdt_scan_reserved_mem\00", [42 x i8] zeroinitializer }, align 32
@fdt_scan_reserved_mem._entry_ptr = internal global ptr @fdt_scan_reserved_mem._entry, section ".printk_index", align 4
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ranges\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"okay\00", [27 x i8] zeroinitializer }, align 32
@__reserved_mem_reserve_reg._entry = internal constant %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.7, i32 517, ptr null, ptr null }, align 1
@.str.120 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013OF: fdt: Reserved memory: invalid reg property in '%s', skipping node.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__reserved_mem_reserve_reg\00", [37 x i8] zeroinitializer }, align 32
@__reserved_mem_reserve_reg._entry_ptr = internal global ptr @__reserved_mem_reserve_reg._entry, section ".printk_index", align 4
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"no-map\00", [25 x i8] zeroinitializer }, align 32
@__reserved_mem_reserve_reg.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.121, ptr @.str.7, ptr @.str.123, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Reserved memory: reserved region for node '%s': base %pa, size %lu MiB\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"OF: fdt: Reserved memory: reserved region for node '%s': base %pa, size %lu MiB\0A\00", [47 x i8] zeroinitializer }, align 32
@__reserved_mem_reserve_reg._entry.125 = internal constant %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.7, i32 536, ptr null, ptr null }, align 1
@.str.126 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\016OF: fdt: Reserved memory: failed to reserve memory for node '%s': base %pa, size %lu MiB\0A\00", [36 x i8] zeroinitializer }, align 32
@__reserved_mem_reserve_reg._entry_ptr.127 = internal global ptr @__reserved_mem_reserve_reg._entry.125, section ".printk_index", align 4
@elfcorehdr_size = external dso_local local_unnamed_addr global i64, align 8
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@fdt_reserve_elfcorehdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.7, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014OF: fdt: elfcorehdr is overlapped\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fdt_reserve_elfcorehdr\00", [41 x i8] zeroinitializer }, align 32
@fdt_reserve_elfcorehdr._entry_ptr = internal global ptr @fdt_reserve_elfcorehdr._entry, section ".printk_index", align 4
@fdt_reserve_elfcorehdr._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.7, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016OF: fdt: Reserving %llu KiB of memory at 0x%llx for elfcorehdr\0A\00", [62 x i8] zeroinitializer }, align 32
@fdt_reserve_elfcorehdr._entry_ptr.132 = internal global ptr @fdt_reserve_elfcorehdr._entry.130, section ".printk_index", align 4
@early_init_dt_check_for_initrd.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.133, ptr @.str.7, ptr @.str.134, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"early_init_dt_check_for_initrd\00", [33 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Looking for initrd properties... \00", [62 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"OF: fdt: Looking for initrd properties... \00", [53 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"linux,initrd-start\00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"linux,initrd-end\00", [47 x i8] zeroinitializer }, align 32
@phys_initrd_start = external dso_local local_unnamed_addr global i32, align 4
@phys_initrd_size = external dso_local local_unnamed_addr global i32, align 4
@early_init_dt_check_for_initrd.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.133, ptr @.str.7, ptr @.str.138, i8 0, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"initrd_start=0x%llx  initrd_end=0x%llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"OF: fdt: initrd_start=0x%llx  initrd_end=0x%llx\0A\00", [47 x i8] zeroinitializer }, align 32
@initrd_start = external dso_local local_unnamed_addr global i32, align 4
@initrd_end = external dso_local local_unnamed_addr global i32, align 4
@initrd_below_start_ok = external dso_local local_unnamed_addr global i32, align 4
@early_init_dt_check_for_elfcorehdr.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.140, ptr @.str.7, ptr @.str.141, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"early_init_dt_check_for_elfcorehdr\00", [61 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Looking for elfcorehdr property... \00", [60 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"OF: fdt: Looking for elfcorehdr property... \00", [51 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"linux,elfcorehdr\00", [47 x i8] zeroinitializer }, align 32
@early_init_dt_check_for_elfcorehdr.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.140, ptr @.str.7, ptr @.str.144, i8 0, i8 -14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"elfcorehdr_start=0x%llx elfcorehdr_size=0x%llx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"OF: fdt: elfcorehdr_start=0x%llx elfcorehdr_size=0x%llx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Failed to allocate %llu bytes align=0x%llx\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.early_init_dt_alloc_memory_arch = private unnamed_addr constant [32 x i8] c"early_init_dt_alloc_memory_arch\00", align 1
@of_fdt_raw_init.of_fdt_raw_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.5, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @of_fdt_raw_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@of_fdt_raw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.7, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014OF: fdt: not creating '/sys/firmware/fdt': CRC check failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"of_fdt_raw_init\00", [16 x i8] zeroinitializer }, align 32
@of_fdt_raw_init._entry_ptr = internal global ptr @of_fdt_raw_init._entry, section ".printk_index", align 4
@firmware_kobj = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 47, i64 64]
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 56, i32 53 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 61, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 66, i32 5 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 72, i32 48 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 74, i32 50 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 77, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 379, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 382, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 386, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 387, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 388, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 389, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 392, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 402, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 413, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 419, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 427, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 430, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [23 x i8] c"of_fdt_unflatten_mutex\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 846, i32 38 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 848, i32 39 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 882, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 887, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 892, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 896, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"chosen_node_offset\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 974, i32 22 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 991, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 993, i32 35 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1000, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1016, i32 32 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1018, i32 33 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1022, i32 31 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1024, i32 32 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1036, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1072, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1077, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1099, i32 48 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1105, i32 36 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1108, i32 35 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1115, i32 44 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1117, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1128, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1136, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1162, i32 32 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1180, i32 20 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1184, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1186, i32 39 }
@___asan_gen_.392 = private unnamed_addr constant [13 x i8] c"of_fdt_crc32\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 478, i32 12 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1213, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1225, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1231, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1237, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1242, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1288, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1345, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 336, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 243, i32 34 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 245, i32 15 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 130, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 135, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 153, i32 22 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 154, i32 22 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 163, i32 22 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 200, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 439, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 578, i32 30 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 583, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 597, i32 52 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 564, i32 35 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 86, i32 47 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 91, i32 22 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 91, i32 47 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 516, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 521, i32 36 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 529, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 535, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 617, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 623, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 929, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 931, i32 35 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 936, i32 35 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 945, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 961, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 963, i32 35 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 970, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1255, i32 9 }
@___asan_gen_.590 = private unnamed_addr constant [16 x i8] c"of_fdt_raw_attr\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1371, i32 30 }
@___asan_gen_.593 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.600 = private constant [20 x i8] c"../drivers/of/fdt.c\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1379, i32 3 }
@llvm.compiler.used = appending global [181 x ptr] [ptr @__initcall__kmod_fdt__264_1385_of_fdt_raw_init7, ptr @__ksymtab_of_fdt_unflatten_tree, ptr @__reserved_mem_reserve_reg._entry, ptr @__reserved_mem_reserve_reg._entry.125, ptr @__reserved_mem_reserve_reg._entry_ptr, ptr @__reserved_mem_reserve_reg._entry_ptr.127, ptr @__unflatten_device_tree._entry, ptr @__unflatten_device_tree._entry.28, ptr @__unflatten_device_tree._entry_ptr, ptr @__unflatten_device_tree._entry_ptr.30, ptr @early_init_dt_add_memory_arch._entry, ptr @early_init_dt_add_memory_arch._entry.83, ptr @early_init_dt_add_memory_arch._entry.85, ptr @early_init_dt_add_memory_arch._entry.88, ptr @early_init_dt_add_memory_arch._entry.90, ptr @early_init_dt_add_memory_arch._entry_ptr, ptr @early_init_dt_add_memory_arch._entry_ptr.84, ptr @early_init_dt_add_memory_arch._entry_ptr.87, ptr @early_init_dt_add_memory_arch._entry_ptr.89, ptr @early_init_dt_add_memory_arch._entry_ptr.91, ptr @early_init_dt_scan_chosen_stdout._entry, ptr @early_init_dt_scan_chosen_stdout._entry_ptr, ptr @early_init_dt_scan_memory._entry, ptr @early_init_dt_scan_memory._entry_ptr, ptr @early_init_dt_scan_nodes._entry, ptr @early_init_dt_scan_nodes._entry_ptr, ptr @fdt_reserve_elfcorehdr._entry, ptr @fdt_reserve_elfcorehdr._entry.130, ptr @fdt_reserve_elfcorehdr._entry_ptr, ptr @fdt_reserve_elfcorehdr._entry_ptr.132, ptr @fdt_scan_reserved_mem._entry, ptr @fdt_scan_reserved_mem._entry_ptr, ptr @of_fdt_raw_init._entry, ptr @of_fdt_raw_init._entry_ptr, ptr @of_flat_dt_match_machine._entry, ptr @of_flat_dt_match_machine._entry.39, ptr @of_flat_dt_match_machine._entry.42, ptr @of_flat_dt_match_machine._entry.45, ptr @of_flat_dt_match_machine._entry_ptr, ptr @of_flat_dt_match_machine._entry_ptr.41, ptr @of_flat_dt_match_machine._entry_ptr.44, ptr @of_flat_dt_match_machine._entry_ptr.47, ptr @populate_properties._entry, ptr @populate_properties._entry.102, ptr @populate_properties._entry_ptr, ptr @populate_properties._entry_ptr.104, ptr @unflatten_and_copy_device_tree._entry, ptr @unflatten_and_copy_device_tree._entry_ptr, ptr @unflatten_dt_nodes._entry, ptr @unflatten_dt_nodes._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @of_fdt_unflatten_mutex, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @chosen_node_offset, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @of_fdt_crc32, ptr @.str.81, ptr @.str.82, ptr @.str.86, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @of_fdt_raw_init.of_fdt_raw_attr, ptr @.str.147, ptr @.str.148], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fdt_unflatten_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flat_dt_match_machine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flat_dt_match_machine._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flat_dt_match_machine._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flat_dt_match_machine._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chosen_node_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_init_dt_scan_chosen_stdout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_init_dt_scan_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fdt_crc32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_init_dt_add_memory_arch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_init_dt_add_memory_arch._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_init_dt_add_memory_arch._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_init_dt_add_memory_arch._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_init_dt_add_memory_arch._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_init_dt_scan_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unflatten_and_copy_device_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unflatten_dt_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @populate_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @populate_properties._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdt_scan_reserved_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdt_reserve_elfcorehdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdt_reserve_elfcorehdr._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fdt_raw_init.of_fdt_raw_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fdt_raw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @of_fdt_limit_memory(i32 noundef %limit) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #15
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !313
  %1 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @initial_boot_params, align 4
  %call1 = tail call ptr @fdt_getprop(ptr noundef %2, i32 noundef %call, ptr noundef nonnull @.str.1, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call1, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %nr_address_cells.0 = phi i32 [ %4, %if.then2 ], [ 1, %if.end.if.end3_crit_edge ]
  %5 = load ptr, ptr @initial_boot_params, align 4
  %call4 = tail call ptr @fdt_getprop(ptr noundef %5, i32 noundef %call, ptr noundef nonnull @.str.2, ptr noundef null) #15
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.if.end7_crit_edge, label %if.then6

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call4, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge
  %nr_size_cells.0 = phi i32 [ %7, %if.then6 ], [ 1, %if.end3.if.end7_crit_edge ]
  %8 = load ptr, ptr @initial_boot_params, align 4
  %call8 = tail call i32 @fdt_path_offset(ptr noundef %8, ptr noundef nonnull @.str.3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %add = add i32 %nr_size_cells.0, %nr_address_cells.0
  %mul = shl i32 %add, 2
  %9 = load ptr, ptr @initial_boot_params, align 4
  %call11 = call ptr @fdt_getprop(ptr noundef %9, i32 noundef %call8, ptr noundef nonnull @.str.4, ptr noundef nonnull %len) #15
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %mul12 = mul i32 %mul, %limit
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul12)
  %cmp13 = icmp sgt i32 %11, %mul12
  br i1 %cmp13, label %if.then14, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then14:                                        ; preds = %if.then10
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul12, ptr %len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_fdt_limit_memory.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_fdt_limit_memory, %if.then20)) #15
          to label %do.end [label %if.then20], !srcloc !314

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_fdt_limit_memory.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.9, i32 noundef %limit) #15
  br label %do.end

do.end:                                           ; preds = %if.then20, %if.then14
  %13 = load ptr, ptr @initial_boot_params, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %call22 = call i32 @fdt_setprop(ptr noundef %13, i32 noundef %call8, ptr noundef nonnull @.str.4, ptr noundef %call11, i32 noundef %15) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_setprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__unflatten_device_tree(ptr noundef %blob, ptr noundef %dad, ptr noundef %mynodes, ptr nocapture noundef readonly %dt_alloc, i1 noundef zeroext %detached) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mynodes, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %mynodes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mynodes, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__unflatten_device_tree, %if.then5)) #15
          to label %do.end [label %if.then5], !srcloc !314

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__unflatten_device_tree.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.12) #15
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %tobool7.not = icmp eq ptr %blob, null
  br i1 %tobool7.not, label %do.body9, label %do.body26

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__unflatten_device_tree, %if.then21)) #15
          to label %cleanup [label %if.then21], !srcloc !314

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__unflatten_device_tree.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.14) #15
  br label %cleanup

do.body26:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__unflatten_device_tree, %if.then38)) #15
          to label %do.body42 [label %if.then38], !srcloc !314

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__unflatten_device_tree.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.16) #15
  br label %do.body42

do.body42:                                        ; preds = %if.then38, %do.body26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__unflatten_device_tree, %if.then54)) #15
          to label %do.body59 [label %if.then54], !srcloc !314

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %blob to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %blob, align 1
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %blob, i32 1
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %4 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %blob, i32 2
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %6 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %blob, i32 3
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %8 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__unflatten_device_tree.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.18, i32 noundef %or10.i) #15
  br label %do.body59

do.body59:                                        ; preds = %if.then54, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__unflatten_device_tree, %if.then71)) #15
          to label %do.body76 [label %if.then71], !srcloc !314

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #17
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %blob, i32 0, i32 1
  %9 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %totalsize, align 1
  %conv.i254 = zext i8 %10 to i32
  %shl.i255 = shl nuw i32 %conv.i254, 24
  %arrayidx1.i256 = getelementptr i8, ptr %totalsize, i32 1
  %11 = ptrtoint ptr %arrayidx1.i256 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i256, align 1
  %conv2.i257 = zext i8 %12 to i32
  %shl3.i258 = shl nuw nsw i32 %conv2.i257, 16
  %or.i259 = or i32 %shl3.i258, %shl.i255
  %arrayidx4.i260 = getelementptr i8, ptr %totalsize, i32 2
  %13 = ptrtoint ptr %arrayidx4.i260 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i260, align 1
  %conv5.i261 = zext i8 %14 to i32
  %shl6.i262 = shl nuw nsw i32 %conv5.i261, 8
  %or7.i263 = or i32 %or.i259, %shl6.i262
  %arrayidx8.i264 = getelementptr i8, ptr %totalsize, i32 3
  %15 = ptrtoint ptr %arrayidx8.i264 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i264, align 1
  %conv9.i265 = zext i8 %16 to i32
  %or10.i266 = or i32 %or7.i263, %conv9.i265
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__unflatten_device_tree.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.20, i32 noundef %or10.i266) #15
  br label %do.body76

do.body76:                                        ; preds = %if.then71, %do.body59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__unflatten_device_tree, %if.then88)) #15
          to label %do.end92 [label %if.then88], !srcloc !314

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #17
  %version = getelementptr inbounds %struct.fdt_header, ptr %blob, i32 0, i32 5
  %17 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %version, align 1
  %conv.i267 = zext i8 %18 to i32
  %shl.i268 = shl nuw i32 %conv.i267, 24
  %arrayidx1.i269 = getelementptr i8, ptr %version, i32 1
  %19 = ptrtoint ptr %arrayidx1.i269 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i269, align 1
  %conv2.i270 = zext i8 %20 to i32
  %shl3.i271 = shl nuw nsw i32 %conv2.i270, 16
  %or.i272 = or i32 %shl3.i271, %shl.i268
  %arrayidx4.i273 = getelementptr i8, ptr %version, i32 2
  %21 = ptrtoint ptr %arrayidx4.i273 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i273, align 1
  %conv5.i274 = zext i8 %22 to i32
  %shl6.i275 = shl nuw nsw i32 %conv5.i274, 8
  %or7.i276 = or i32 %or.i272, %shl6.i275
  %arrayidx8.i277 = getelementptr i8, ptr %version, i32 3
  %23 = ptrtoint ptr %arrayidx8.i277 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx8.i277, align 1
  %conv9.i278 = zext i8 %24 to i32
  %or10.i279 = or i32 %or7.i276, %conv9.i278
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__unflatten_device_tree.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.22, i32 noundef %or10.i279) #15
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %do.body76
  %call93 = tail call i32 @fdt_check_header(ptr noundef nonnull %blob) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end101, label %do.end98

do.end98:                                         ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #17
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  br label %cleanup

if.end101:                                        ; preds = %do.end92
  %call102 = tail call fastcc i32 @unflatten_dt_nodes(ptr noundef nonnull %blob, ptr noundef null, ptr noundef %dad, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call102)
  %cmp = icmp slt i32 %call102, 1
  br i1 %cmp, label %if.end101.cleanup_crit_edge, label %if.end104

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end104:                                        ; preds = %if.end101
  %add = add nuw i32 %call102, 3
  %and = and i32 %add, -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__unflatten_device_tree, %if.then117)) #15
          to label %do.end120 [label %if.then117], !srcloc !314

if.then117:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__unflatten_device_tree.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.25, i32 noundef %and) #15
  br label %do.end120

do.end120:                                        ; preds = %if.then117, %if.end104
  %add121 = add nuw i32 %and, 4
  %conv = sext i32 %add121 to i64
  %call122 = tail call ptr %dt_alloc(i64 noundef %conv, i64 noundef 4) #15
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %do.end120.cleanup_crit_edge, label %if.end125

do.end120.cleanup_crit_edge:                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end125:                                        ; preds = %do.end120
  %25 = call ptr @memset(ptr %call122, i32 0, i32 %and)
  %add.ptr = getelementptr i8, ptr %call122, i32 %and
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -559038737, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__unflatten_device_tree, %if.then138)) #15
          to label %do.end141 [label %if.then138], !srcloc !314

if.then138:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__unflatten_device_tree.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.27, ptr noundef nonnull %call122) #15
  br label %do.end141

do.end141:                                        ; preds = %if.then138, %if.end125
  %call142 = tail call fastcc i32 @unflatten_dt_nodes(ptr noundef nonnull %blob, ptr noundef nonnull %call122, ptr noundef %dad, ptr noundef %mynodes)
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %28)
  %cmp145.not = icmp eq i32 %28, -559038737
  br i1 %cmp145.not, label %do.end141.if.end155_crit_edge, label %do.end150

do.end141.if.end155_crit_edge:                    ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155

do.end150:                                        ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #17
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %28) #18
  br label %if.end155

if.end155:                                        ; preds = %do.end150, %do.end141.if.end155_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call142)
  %cmp156 = icmp slt i32 %call142, 1
  br i1 %cmp156, label %if.end155.cleanup_crit_edge, label %if.end159

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end159:                                        ; preds = %if.end155
  %detached.not = xor i1 %detached, true
  %brmerge = or i1 %tobool.not, %detached.not
  br i1 %brmerge, label %if.end159.do.body183_crit_edge, label %land.lhs.true163

if.end159.do.body183_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body183

land.lhs.true163:                                 ; preds = %if.end159
  %29 = ptrtoint ptr %mynodes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mynodes, align 4
  %tobool164.not = icmp eq ptr %30, null
  br i1 %tobool164.not, label %land.lhs.true163.do.body183_crit_edge, label %if.then165

land.lhs.true163.do.body183_crit_edge:            ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body183

if.then165:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #17
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %30, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %_flags.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__unflatten_device_tree, %if.then178)) #15
          to label %do.body183 [label %if.then178], !srcloc !314

if.then178:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__unflatten_device_tree.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.32) #15
  br label %do.body183

do.body183:                                       ; preds = %if.then178, %if.then165, %land.lhs.true163.do.body183_crit_edge, %if.end159.do.body183_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__unflatten_device_tree, %if.then195)) #15
          to label %cleanup [label %if.then195], !srcloc !314

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__unflatten_device_tree.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.34) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then195, %do.body183, %if.end155.cleanup_crit_edge, %do.end120.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %do.end98, %if.then21, %do.body9
  %retval.0 = phi ptr [ null, %do.end98 ], [ null, %if.then21 ], [ null, %if.end101.cleanup_crit_edge ], [ null, %do.end120.cleanup_crit_edge ], [ null, %if.end155.cleanup_crit_edge ], [ %call122, %if.then195 ], [ null, %do.body9 ], [ %call122, %do.body183 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unflatten_dt_nodes(ptr noundef %blob, ptr noundef %mem, ptr noundef %dad, ptr noundef %nodepp) unnamed_addr #3 align 64 {
entry:
  %len.i = alloca i32, align 4
  %mem.addr = alloca ptr, align 4
  %depth = alloca i32, align 4
  %nps = alloca [64 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mem, ptr %mem.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #15
  %1 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %depth, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %nps) #15
  %2 = call ptr @memset(ptr %nps, i32 255, i32 256)
  %tobool.not = icmp eq ptr %mem, null
  %tobool1.not = icmp eq ptr %nodepp, null
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %nodepp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %nodepp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %dad, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %depth, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %initial_depth.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.end.if.end4_crit_edge ]
  %5 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %depth, align 4
  %arrayidx = getelementptr [64 x ptr], ptr %nps, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dad, ptr %arrayidx, align 4
  %brmerge = or i1 %tobool.not, %tobool1.not
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %initial_depth.0)
  %cmp5.not137 = icmp slt i32 %6, %initial_depth.0
  br i1 %cmp5.not137, label %if.end4.if.end82_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.if.end82_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

land.rhsthread-pre-split:                         ; preds = %for.inc
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %depth, align 4
  %cmp5.not = icmp slt i32 %.pr, %initial_depth.0
  br i1 %cmp5.not, label %land.rhsthread-pre-split.if.end82_crit_edge, label %land.rhsthread-pre-split.for.body_crit_edge

land.rhsthread-pre-split.for.body_crit_edge:      ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

land.rhsthread-pre-split.if.end82_crit_edge:      ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

for.body:                                         ; preds = %land.rhsthread-pre-split.for.body_crit_edge, %if.end4.for.body_crit_edge
  %offset.0126139 = phi i32 [ %call72, %land.rhsthread-pre-split.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %root.0130138 = phi ptr [ %root.1, %land.rhsthread-pre-split.for.body_crit_edge ], [ %dad, %if.end4.for.body_crit_edge ]
  %9 = phi i32 [ %.pr, %land.rhsthread-pre-split.for.body_crit_edge ], [ %6, %if.end4.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %9)
  %cmp6 = icmp sgt i32 %9, 63
  br i1 %cmp6, label %land.rhs11, label %if.end50.critedge

land.rhs11:                                       ; preds = %for.body
  %.b113 = load i1, ptr @unflatten_dt_nodes.__already_done, align 1
  br i1 %.b113, label %land.rhs11.for.inc_crit_edge, label %if.then18, !prof !315

land.rhs11.for.inc_crit_edge:                     ; preds = %land.rhs11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then18:                                        ; preds = %land.rhs11
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @unflatten_dt_nodes.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 317, i32 noundef 9, ptr noundef null) #15
  br label %for.inc

if.end50.critedge:                                ; preds = %for.body
  %arrayidx51 = getelementptr [64 x ptr], ptr %nps, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx51, align 4
  %add = add nsw i32 %9, 1
  %arrayidx52 = getelementptr [64 x ptr], ptr %nps, i32 0, i32 %add
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #15
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %len.i, align 4, !annotation !313
  %call.i = call ptr @fdt_get_name(ptr noundef %blob, i32 noundef %offset.0126139, ptr noundef nonnull %len.i) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %populate_node.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end50.critedge
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %len.i, align 4
  %add.i = add i32 %14, 209
  %15 = ptrtoint ptr %mem.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem.addr, align 4
  %17 = ptrtoint ptr %16 to i32
  %add.i.i = add i32 %17, 3
  %and.i.i = and i32 %add.i.i, -4
  %18 = inttoptr i32 %and.i.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %add.i
  store ptr %add.ptr.i.i, ptr %mem.addr, align 4
  br i1 %tobool.not, label %if.end17.critedge.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %kobj.i.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 9
  call void @kobject_init(ptr noundef %kobj.i.i, ptr noundef nonnull @of_node_ktype) #15
  %ops1.i.i.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %ops1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @of_fwnode_ops, ptr %ops1.i.i.i, align 4
  %consumers.i.i.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %consumers.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %consumers.i.i.i, ptr %consumers.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 3, i32 4, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %consumers.i.i.i, ptr %prev.i.i.i.i, align 4
  %suppliers.i.i.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %suppliers.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %suppliers.i.i.i, ptr %suppliers.i.i.i, align 4
  %prev.i1.i.i.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 3, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %suppliers.i.i.i, ptr %prev.i1.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 208
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 2
  %24 = ptrtoint ptr %full_name.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %full_name.i, align 4
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %27 = call ptr @memcpy(ptr %add.ptr.i, ptr %call.i, i32 %26)
  %cmp.not.i = icmp eq ptr %11, null
  br i1 %cmp.not.i, label %if.then3.i.if.then10.i_crit_edge, label %if.then4.i

if.then3.i.if.then10.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10.i

if.then4.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %parent.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 6
  %28 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %11, ptr %parent.i, align 4
  %child.i = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 7
  %29 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %child.i, align 4
  %sibling.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 8
  %31 = ptrtoint ptr %sibling.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %sibling.i, align 4
  store ptr %18, ptr %child.i, align 4
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.then4.i, %if.then3.i.if.then10.i_crit_edge
  call fastcc void @populate_properties(ptr noundef %blob, i32 noundef %offset.0126139, ptr noundef nonnull %mem.addr, ptr noundef %18, ptr noundef nonnull %call.i, i1 noundef zeroext false) #15
  %call11.i = call ptr @of_get_property(ptr noundef %18, ptr noundef nonnull @.str.98, ptr noundef null) #15
  %tobool13.not.i = icmp eq ptr %call11.i, null
  %spec.store.select.i = select i1 %tobool13.not.i, ptr @.str.99, ptr %call11.i
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %spec.store.select.i, ptr %18, align 4
  br label %populate_node.exit.thread

if.end17.critedge.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @populate_properties(ptr noundef %blob, i32 noundef %offset.0126139, ptr noundef nonnull %mem.addr, ptr noundef %18, ptr noundef nonnull %call.i, i1 noundef zeroext true) #15
  br label %populate_node.exit.thread

populate_node.exit.thread:                        ; preds = %if.end17.critedge.i, %if.then10.i
  %33 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %18, ptr %arrayidx52, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #15
  br label %if.end56

populate_node.exit:                               ; preds = %if.end50.critedge
  %34 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx52, align 4
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp54 = icmp slt i32 %36, 0
  br i1 %cmp54, label %populate_node.exit.cleanup_crit_edge, label %populate_node.exit.if.end56_crit_edge

populate_node.exit.if.end56_crit_edge:            ; preds = %populate_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

populate_node.exit.cleanup_crit_edge:             ; preds = %populate_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end56:                                         ; preds = %populate_node.exit.if.end56_crit_edge, %populate_node.exit.thread
  br i1 %brmerge, label %if.end56.if.end64_crit_edge, label %land.lhs.true59

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

land.lhs.true59:                                  ; preds = %if.end56
  %37 = ptrtoint ptr %nodepp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nodepp, align 4
  %tobool60.not = icmp eq ptr %38, null
  br i1 %tobool60.not, label %if.then61, label %land.lhs.true59.if.end64_crit_edge

land.lhs.true59.if.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %depth, align 4
  %add62 = add i32 %40, 1
  %arrayidx63 = getelementptr [64 x ptr], ptr %nps, i32 0, i32 %add62
  %41 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx63, align 4
  %43 = ptrtoint ptr %nodepp to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %nodepp, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %land.lhs.true59.if.end64_crit_edge, %if.end56.if.end64_crit_edge
  %tobool67.not = icmp eq ptr %root.0130138, null
  %or.cond = select i1 %tobool.not.not, i1 %tobool67.not, i1 false
  br i1 %or.cond, label %if.then68, label %if.end64.for.inc_crit_edge

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %depth, align 4
  %add69 = add i32 %45, 1
  %arrayidx70 = getelementptr [64 x ptr], ptr %nps, i32 0, i32 %add69
  %46 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx70, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then68, %if.end64.for.inc_crit_edge, %if.then18, %land.rhs11.for.inc_crit_edge
  %root.1 = phi ptr [ %root.0130138, %if.end64.for.inc_crit_edge ], [ %47, %if.then68 ], [ %root.0130138, %if.then18 ], [ %root.0130138, %land.rhs11.for.inc_crit_edge ]
  %call72 = call i32 @fdt_next_node(ptr noundef %blob, i32 noundef %offset.0126139, ptr noundef nonnull %depth) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call72)
  %cmp = icmp sgt i32 %call72, -1
  br i1 %cmp, label %land.rhsthread-pre-split, label %for.end

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call72)
  %cmp75.not = icmp eq i32 %call72, -1
  br i1 %cmp75.not, label %for.end.if.end82_crit_edge, label %do.end79

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

do.end79:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %call72) #18
  br label %cleanup

if.end82:                                         ; preds = %for.end.if.end82_crit_edge, %land.rhsthread-pre-split.if.end82_crit_edge, %if.end4.if.end82_crit_edge
  %root.0123 = phi ptr [ %root.1, %for.end.if.end82_crit_edge ], [ %dad, %if.end4.if.end82_crit_edge ], [ %root.1, %land.rhsthread-pre-split.if.end82_crit_edge ]
  br i1 %tobool.not, label %if.end82.if.end85_crit_edge, label %if.then84

if.end82.if.end85_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @reverse_nodes(ptr noundef %root.0123)
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end82.if.end85_crit_edge
  %48 = ptrtoint ptr %mem.addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mem.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %mem to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end79, %populate_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end79 ], [ %sub.ptr.sub, %if.end85 ], [ %36, %populate_node.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %nps) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_fdt_unflatten_tree(ptr noundef %blob, ptr noundef %dad, ptr noundef %mynodes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @of_fdt_unflatten_mutex, i32 noundef 0) #15
  %call = tail call ptr @__unflatten_device_tree(ptr noundef %blob, ptr noundef %dad, ptr noundef %mynodes, ptr noundef nonnull @kernel_tree_alloc, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef nonnull @of_fdt_unflatten_mutex) #15
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kernel_tree_alloc(i64 noundef %size, i64 noundef %align) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %size to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #19
  ret ptr %call9.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @early_init_fdt_scan_reserved_mem() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %base) #15
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %base, align 8, !annotation !313
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #15
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %size, align 8, !annotation !313
  %2 = load ptr, ptr @initial_boot_params, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = load ptr, ptr @initial_boot_params, align 4
  %call10 = call i32 @fdt_get_mem_rsv(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %base, ptr noundef nonnull %size) #15
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not11 = icmp eq i64 %5, 0
  br i1 %tobool1.not11, label %for.cond.preheader.for.end_crit_edge, label %if.end3.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end3.preheader:                                ; preds = %for.cond.preheader
  %extract.t13 = trunc i64 %5 to i32
  br label %if.end3

if.end3:                                          ; preds = %if.end3.if.end3_crit_edge, %if.end3.preheader
  %.off0 = phi i32 [ %extract.t, %if.end3.if.end3_crit_edge ], [ %extract.t13, %if.end3.preheader ]
  %n.012 = phi i32 [ %inc, %if.end3.if.end3_crit_edge ], [ 0, %if.end3.preheader ]
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %base, align 8
  %conv = trunc i64 %7 to i32
  %call5.i = call i32 @memblock_reserve(i32 noundef %conv, i32 noundef %.off0) #15
  %inc = add i32 %n.012, 1
  %8 = load ptr, ptr @initial_boot_params, align 4
  %call = call i32 @fdt_get_mem_rsv(ptr noundef %8, i32 noundef %inc, ptr noundef nonnull %base, ptr noundef nonnull %size) #15
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size, align 8
  %tobool1.not = icmp eq i64 %10, 0
  %extract.t = trunc i64 %10 to i32
  br i1 %tobool1.not, label %if.end3.for.end_crit_edge, label %if.end3.if.end3_crit_edge

if.end3.if.end3_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end3.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call fastcc void @fdt_scan_reserved_mem() #20
  call fastcc void @fdt_reserve_elfcorehdr() #20
  call void @fdt_init_reserved_mem() #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %base) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_get_mem_rsv(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @early_init_dt_reserve_memory_arch(i32 noundef %base, i32 noundef %size, i1 noundef zeroext %nomap) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %nomap, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @memblock_overlaps_region(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %base, i32 noundef %size) #15
  br i1 %call, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call1 = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %base, i32 noundef %size) #15
  br i1 %call1, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %call3 = tail call i32 @memblock_mark_nomap(i32 noundef %base, i32 noundef %size) #15
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @memblock_reserve(i32 noundef %base, i32 noundef %size) #15
  br label %return

return:                                           ; preds = %if.end4, %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call5, %if.end4 ], [ -16, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdt_scan_reserved_mem() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call i32 @fdt_path_offset(ptr noundef %0, ptr noundef nonnull @.str.112) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup19_crit_edge, label %if.end

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup19

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @__reserved_mem_check_root(i32 noundef %call) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #18
  br label %cleanup19

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @fdt_first_subnode(ptr noundef %0, i32 noundef %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp73 = icmp sgt i32 %call6, -1
  br i1 %cmp73, label %if.end5.for.body_crit_edge, label %if.end5.cleanup19_crit_edge

if.end5.cleanup19_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup19

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end5.for.body_crit_edge
  %child.04 = phi i32 [ %call18, %cleanup.for.body_crit_edge ], [ %call6, %if.end5.for.body_crit_edge ]
  %call.i = tail call ptr @fdt_getprop(ptr noundef %0, i32 noundef %child.04, ptr noundef nonnull @.str.117, ptr noundef null) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.if.end10_crit_edge, label %if.end.i

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(3) @.str.118) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10_crit_edge, label %of_fdt_device_is_available.exit

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

of_fdt_device_is_available.exit:                  ; preds = %if.end.i
  %call3.i = tail call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(5) @.str.119) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %of_fdt_device_is_available.exit.if.end10_crit_edge, label %of_fdt_device_is_available.exit.cleanup_crit_edge

of_fdt_device_is_available.exit.cleanup_crit_edge: ; preds = %of_fdt_device_is_available.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

of_fdt_device_is_available.exit.if.end10_crit_edge: ; preds = %of_fdt_device_is_available.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end10:                                         ; preds = %of_fdt_device_is_available.exit.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %call11 = tail call ptr @fdt_get_name(ptr noundef %0, i32 noundef %child.04, ptr noundef null) #15
  %call12 = tail call fastcc i32 @__reserved_mem_reserve_reg(i32 noundef %child.04, ptr noundef %call11) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call12)
  %cmp13 = icmp eq i32 %call12, -2
  br i1 %cmp13, label %land.lhs.true, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end10
  %1 = load ptr, ptr @initial_boot_params, align 4
  %call.i1 = tail call ptr @fdt_getprop(ptr noundef %1, i32 noundef %child.04, ptr noundef nonnull @.str.115, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call.i1, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @fdt_reserved_mem_save_node(i32 noundef %child.04, ptr noundef %call11, i32 noundef 0, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %land.lhs.true.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %of_fdt_device_is_available.exit.cleanup_crit_edge
  %call18 = tail call i32 @fdt_next_subnode(ptr noundef %0, i32 noundef %child.04) #15
  %cmp7 = icmp sgt i32 %call18, -1
  br i1 %cmp7, label %cleanup.for.body_crit_edge, label %cleanup.cleanup19_crit_edge

cleanup.cleanup19_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup19

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup19:                                        ; preds = %cleanup.cleanup19_crit_edge, %if.end5.cleanup19_crit_edge, %do.end, %entry.cleanup19_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdt_reserve_elfcorehdr() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_size to i32))
  %0 = load i64, ptr @elfcorehdr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %1 = load i64, ptr @elfcorehdr_addr, align 8
  %conv = trunc i64 %1 to i32
  %conv1 = trunc i64 %0 to i32
  %call = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %conv, i32 noundef %conv1) #15
  br i1 %call, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #18
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %2 = load i64, ptr @elfcorehdr_addr, align 8
  %conv5 = trunc i64 %2 to i32
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_size to i32))
  %3 = load i64, ptr @elfcorehdr_size, align 8
  %conv6 = trunc i64 %3 to i32
  %call7 = tail call i32 @memblock_reserve(i32 noundef %conv5, i32 noundef %conv6) #15
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_size to i32))
  %4 = load i64, ptr @elfcorehdr_size, align 8
  %shr = lshr i64 %4, 10
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %5 = load i64, ptr @elfcorehdr_addr, align 8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i64 noundef %shr, i64 noundef %5) #18
  br label %return

return:                                           ; preds = %if.end4, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdt_init_reserved_mem() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @early_init_fdt_reserve_self() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %0 to i32
  %call = tail call i32 @__virt_to_phys(i32 noundef %1) #15
  %2 = load ptr, ptr @initial_boot_params, align 4
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %totalsize, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize, i32 1
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %6 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize, i32 2
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %8 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize, i32 3
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %10 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %call5.i = tail call i32 @memblock_reserve(i32 noundef %call, i32 noundef %or10.i) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_scan_flat_dt(ptr nocapture noundef readonly %it, ptr noundef %data) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %depth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #15
  %1 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %depth, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @fdt_next_node(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull %depth) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp18 = icmp sgt i32 %call, -1
  br i1 %cmp18, label %if.end.land.lhs.true_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %rc.020 = phi i32 [ %call4, %for.body.land.lhs.true_crit_edge ], [ 0, %if.end.land.lhs.true_crit_edge ]
  %offset.019 = phi i32 [ %call5, %for.body.land.lhs.true_crit_edge ], [ %call, %if.end.land.lhs.true_crit_edge ]
  %2 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp sgt i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.020)
  %tobool2.not = icmp eq i32 %rc.020, 0
  %or.cond = select i1 %cmp1, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %for.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %land.lhs.true
  %call3 = call ptr @fdt_get_name(ptr noundef nonnull %0, i32 noundef %offset.019, ptr noundef null) #15
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %depth, align 4
  %call4 = call i32 %it(i32 noundef %offset.019, ptr noundef %call3, i32 noundef %5, ptr noundef %data) #15
  %call5 = call i32 @fdt_next_node(ptr noundef nonnull %0, i32 noundef %offset.019, ptr noundef nonnull %depth) #15
  %cmp = icmp sgt i32 %call5, -1
  br i1 %cmp, label %for.body.land.lhs.true_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call4, %for.body.cleanup_crit_edge ], [ %rc.020, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_scan_flat_dt_subnodes(i32 noundef %parent, ptr nocapture noundef readonly %it, ptr noundef %data) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call i32 @fdt_first_subnode(ptr noundef %0, i32 noundef %parent) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp13 = icmp sgt i32 %call, -1
  br i1 %cmp13, label %entry.for.body_crit_edge, label %entry.cleanup5_crit_edge

entry.cleanup5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup5

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %node.014 = phi i32 [ %call4, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @fdt_get_name(ptr noundef %0, i32 noundef %node.014, ptr noundef null) #15
  %call2 = tail call i32 %it(i32 noundef %node.014, ptr noundef %call1, ptr noundef %data) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup5_crit_edge

for.body.cleanup5_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup5

for.inc:                                          ; preds = %for.body
  %call4 = tail call i32 @fdt_next_subnode(ptr noundef %0, i32 noundef %node.014) #15
  %cmp = icmp sgt i32 %call4, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup5_crit_edge

for.inc.cleanup5_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup5

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup5:                                         ; preds = %for.inc.cleanup5_crit_edge, %for.body.cleanup5_crit_edge, %entry.cleanup5_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup5_crit_edge ], [ 0, %for.inc.cleanup5_crit_edge ], [ %call2, %for.body.cleanup5_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_first_subnode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_subnode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_get_flat_dt_subnode_by_name(i32 noundef %node, ptr noundef %uname) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call i32 @fdt_subnode_offset(ptr noundef %0, i32 noundef %node, ptr noundef %uname) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_subnode_offset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @of_get_flat_dt_root() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef %name, ptr noundef %size) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call ptr @fdt_getprop(ptr noundef %0, i32 noundef %node, ptr noundef %name, ptr noundef %size) #15
  ret ptr %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_flat_dt_is_compatible(i32 noundef %node, ptr nocapture noundef readonly %compat) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call fastcc i32 @of_fdt_is_compatible(ptr noundef %0, i32 noundef %node, ptr noundef %compat)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_fdt_is_compatible(ptr noundef %blob, i32 noundef %node, ptr nocapture noundef readonly %compat) unnamed_addr #3 align 64 {
entry:
  %cplen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cplen) #15
  %0 = ptrtoint ptr %cplen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cplen, align 4, !annotation !313
  %call = call ptr @fdt_getprop(ptr noundef %blob, i32 noundef %node, ptr noundef nonnull @.str.36, ptr noundef nonnull %cplen) #15
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.condthread-pre-split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.condthread-pre-split:                       ; preds = %entry
  %1 = ptrtoint ptr %cplen to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pr = load i32, ptr %cplen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp115 = icmp sgt i32 %.pr, 0
  br i1 %cmp115, label %while.condthread-pre-split.while.body_crit_edge, label %while.condthread-pre-split.cleanup_crit_edge

while.condthread-pre-split.cleanup_crit_edge:     ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.condthread-pre-split.while.body_crit_edge
  %score.017 = phi i32 [ %inc, %if.end5.while.body_crit_edge ], [ 0, %while.condthread-pre-split.while.body_crit_edge ]
  %cp.016 = phi ptr [ %add.ptr, %if.end5.while.body_crit_edge ], [ %call, %while.condthread-pre-split.while.body_crit_edge ]
  %2 = phi i32 [ %sub, %if.end5.while.body_crit_edge ], [ %.pr, %while.condthread-pre-split.while.body_crit_edge ]
  %inc = add i32 %score.017, 1
  %call2 = call i32 @strcasecmp(ptr noundef %cp.016, ptr noundef %compat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %while.body.cleanup_crit_edge, label %if.end5

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %call6 = call i32 @strlen(ptr noundef %cp.016) #22
  %add = add i32 %call6, 1
  %add.ptr = getelementptr i8, ptr %cp.016, i32 %add
  %sub = sub i32 %2, %add
  %3 = ptrtoint ptr %cplen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %cplen, align 4
  %cmp1 = icmp sgt i32 %sub, 0
  br i1 %cmp1, label %if.end5.while.body_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.condthread-pre-split.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.condthread-pre-split.cleanup_crit_edge ], [ %inc, %while.body.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cplen) #15
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_get_flat_dt_phandle(i32 noundef %node) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %node) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_get_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_flat_dt_get_machine_name() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call.i = tail call ptr @fdt_getprop(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = load ptr, ptr @initial_boot_params, align 4
  %call.i5 = tail call ptr @fdt_getprop(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %name.0 = phi ptr [ %call.i, %entry.if.end_crit_edge ], [ %call.i5, %if.then ]
  ret ptr %name.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_flat_dt_match_machine(ptr noundef readnone %default_match, ptr nocapture noundef readonly %get_next_compat) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %compat = alloca ptr, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compat) #15
  %0 = ptrtoint ptr %compat to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %compat, align 4, !annotation !313
  %call148 = call ptr %get_next_compat(ptr noundef nonnull %compat) #15
  %tobool.not49 = icmp eq ptr %call148, null
  br i1 %tobool.not49, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call152 = phi ptr [ %call1, %while.body.while.body_crit_edge ], [ %call148, %entry.while.body_crit_edge ]
  %best_data.051 = phi ptr [ %best_data.1, %while.body.while.body_crit_edge ], [ %default_match, %entry.while.body_crit_edge ]
  %best_score.050 = phi i32 [ %best_score.1, %while.body.while.body_crit_edge ], [ -2, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %compat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %compat, align 4
  %call2 = call fastcc i32 @of_flat_dt_match(ptr noundef %2) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp ne i32 %call2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %best_score.050)
  %cmp3 = icmp ult i32 %call2, %best_score.050
  %or.cond = select i1 %cmp.not, i1 %cmp3, i1 false
  %best_score.1 = select i1 %or.cond, i32 %call2, i32 %best_score.050
  %best_data.1 = select i1 %or.cond, ptr %call152, ptr %best_data.051
  %call1 = call ptr %get_next_compat(ptr noundef nonnull %compat) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %best_data.0.lcssa = phi ptr [ %default_match, %entry.while.end_crit_edge ], [ %best_data.1, %while.body.while.end_crit_edge ]
  %tobool4.not = icmp eq ptr %best_data.0.lcssa, null
  br i1 %tobool4.not, label %if.then5, label %do.end31

if.then5:                                         ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #15
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %size, align 4, !annotation !313
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #18
  %4 = load ptr, ptr @initial_boot_params, align 4
  %call.i = call ptr @fdt_getprop(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull %size) #15
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then5.do.end25_crit_edge, label %while.cond10thread-pre-split

if.then5.do.end25_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end25

while.cond10thread-pre-split:                     ; preds = %if.then5
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp1153 = icmp sgt i32 %.pr, 0
  br i1 %cmp1153, label %while.cond10thread-pre-split.do.end15_crit_edge, label %while.cond10thread-pre-split.do.end25_crit_edge

while.cond10thread-pre-split.do.end25_crit_edge:  ; preds = %while.cond10thread-pre-split
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end25

while.cond10thread-pre-split.do.end15_crit_edge:  ; preds = %while.cond10thread-pre-split
  br label %do.end15

do.end15:                                         ; preds = %do.end15.do.end15_crit_edge, %while.cond10thread-pre-split.do.end15_crit_edge
  %prop.054 = phi ptr [ %add.ptr, %do.end15.do.end15_crit_edge ], [ %call.i, %while.cond10thread-pre-split.do.end15_crit_edge ]
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %prop.054) #18
  %call18 = call i32 @strlen(ptr noundef %prop.054) #22
  %add.neg = xor i32 %call18, -1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %sub = add i32 %7, %add.neg
  store i32 %sub, ptr %size, align 4
  %call19 = call i32 @strlen(ptr noundef %prop.054) #22
  %add20 = add i32 %call19, 1
  %add.ptr = getelementptr i8, ptr %prop.054, i32 %add20
  %cmp11 = icmp sgt i32 %sub, 0
  br i1 %cmp11, label %do.end15.do.end15_crit_edge, label %do.end15.do.end25_crit_edge

do.end15.do.end25_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end25

do.end15.do.end15_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.end25:                                         ; preds = %do.end15.do.end25_crit_edge, %while.cond10thread-pre-split.do.end25_crit_edge, %if.then5.do.end25_crit_edge
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #15
  br label %cleanup

do.end31:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %call33 = call ptr @of_flat_dt_get_machine_name() #20
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %call33) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end25
  %retval.0 = phi ptr [ %best_data.0.lcssa, %do.end31 ], [ null, %do.end25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compat) #15
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_flat_dt_match(ptr noundef readonly %compat) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %compat, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %compat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compat, align 4
  %tobool1.not1 = icmp eq ptr %1, null
  br i1 %tobool1.not1, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %2 = phi ptr [ %5, %while.body.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %score.03 = phi i32 [ %score.1, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %compat.addr.02 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %compat, %while.cond.preheader.while.body_crit_edge ]
  %3 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call fastcc i32 @of_fdt_is_compatible(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %score.03)
  %cmp = icmp eq i32 %score.03, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %score.03)
  %cmp3 = icmp ult i32 %call, %score.03
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %spec.select = select i1 %or.cond, i32 %call, i32 %score.03
  %score.1 = select i1 %tobool2.not, i32 %score.03, i32 %spec.select
  %incdec.ptr = getelementptr ptr, ptr %compat.addr.02, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %score.1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @early_init_dt_check_for_usable_mem_range() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %len = alloca i32, align 4
  %cap_mem_addr = alloca i32, align 4
  %cap_mem_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #15
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !313
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap_mem_addr) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap_mem_size) #15
  %1 = load i32, ptr @chosen_node_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_check_for_usable_mem_range.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_check_for_usable_mem_range, %if.then3)) #15
          to label %do.end [label %if.then3], !srcloc !314

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_check_for_usable_mem_range.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.50) #15
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %2 = load ptr, ptr @initial_boot_params, align 4
  %call.i = call ptr @fdt_getprop(ptr noundef %2, i32 noundef %1, ptr noundef nonnull @.str.51, ptr noundef nonnull %len) #15
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %5 = load i32, ptr @dt_root_addr_cells, align 4
  %6 = load i32, ptr @dt_root_size_cells, align 4
  %add = add i32 %6, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add)
  %cmp7 = icmp slt i32 %4, %add
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i32, ptr %call.i, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not3.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not3.i.i, label %if.end9.dt_mem_next_cell.exit_crit_edge, label %if.end9.for.body.i.i_crit_edge

if.end9.for.body.i.i_crit_edge:                   ; preds = %if.end9
  br label %for.body.i.i

if.end9.dt_mem_next_cell.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %dt_mem_next_cell.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end9.for.body.i.i_crit_edge
  %size.addr.05.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %5, %if.end9.for.body.i.i_crit_edge ]
  %cell.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i, %if.end9.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %size.addr.05.i.i, -1
  %incdec.ptr.i.i = getelementptr i32, ptr %cell.addr.04.i.i, i32 1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %dt_mem_next_cell.exit.loopexit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

dt_mem_next_cell.exit.loopexit:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %cell.addr.04.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cell.addr.04.i.i, align 4
  br label %dt_mem_next_cell.exit

dt_mem_next_cell.exit:                            ; preds = %dt_mem_next_cell.exit.loopexit, %if.end9.dt_mem_next_cell.exit_crit_edge
  %r.0.lcssa.i.i.off0 = phi i32 [ 0, %if.end9.dt_mem_next_cell.exit_crit_edge ], [ %8, %dt_mem_next_cell.exit.loopexit ]
  %9 = ptrtoint ptr %cap_mem_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %r.0.lcssa.i.i.off0, ptr %cap_mem_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not3.i.i38 = icmp eq i32 %6, 0
  br i1 %tobool.not3.i.i38, label %dt_mem_next_cell.exit.dt_mem_next_cell.exit50_crit_edge, label %dt_mem_next_cell.exit.for.body.i.i48_crit_edge

dt_mem_next_cell.exit.for.body.i.i48_crit_edge:   ; preds = %dt_mem_next_cell.exit
  br label %for.body.i.i48

dt_mem_next_cell.exit.dt_mem_next_cell.exit50_crit_edge: ; preds = %dt_mem_next_cell.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dt_mem_next_cell.exit50

for.body.i.i48:                                   ; preds = %for.body.i.i48.for.body.i.i48_crit_edge, %dt_mem_next_cell.exit.for.body.i.i48_crit_edge
  %size.addr.05.i.i40 = phi i32 [ %dec.i.i42, %for.body.i.i48.for.body.i.i48_crit_edge ], [ %6, %dt_mem_next_cell.exit.for.body.i.i48_crit_edge ]
  %cell.addr.04.i.i41 = phi ptr [ %incdec.ptr.i.i46, %for.body.i.i48.for.body.i.i48_crit_edge ], [ %add.ptr.i, %dt_mem_next_cell.exit.for.body.i.i48_crit_edge ]
  %dec.i.i42 = add i32 %size.addr.05.i.i40, -1
  %incdec.ptr.i.i46 = getelementptr i32, ptr %cell.addr.04.i.i41, i32 1
  %tobool.not.i.i47 = icmp eq i32 %dec.i.i42, 0
  br i1 %tobool.not.i.i47, label %dt_mem_next_cell.exit50.loopexit, label %for.body.i.i48.for.body.i.i48_crit_edge

for.body.i.i48.for.body.i.i48_crit_edge:          ; preds = %for.body.i.i48
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i48

dt_mem_next_cell.exit50.loopexit:                 ; preds = %for.body.i.i48
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %cell.addr.04.i.i41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cell.addr.04.i.i41, align 4
  br label %dt_mem_next_cell.exit50

dt_mem_next_cell.exit50:                          ; preds = %dt_mem_next_cell.exit50.loopexit, %dt_mem_next_cell.exit.dt_mem_next_cell.exit50_crit_edge
  %r.0.lcssa.i.i49.off0 = phi i32 [ 0, %dt_mem_next_cell.exit.dt_mem_next_cell.exit50_crit_edge ], [ %11, %dt_mem_next_cell.exit50.loopexit ]
  %12 = ptrtoint ptr %cap_mem_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %r.0.lcssa.i.i49.off0, ptr %cap_mem_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_check_for_usable_mem_range.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_check_for_usable_mem_range, %if.then25)) #15
          to label %do.end28 [label %if.then25], !srcloc !314

if.then25:                                        ; preds = %dt_mem_next_cell.exit50
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_check_for_usable_mem_range.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.53, ptr noundef nonnull %cap_mem_addr, ptr noundef nonnull %cap_mem_size) #15
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %dt_mem_next_cell.exit50
  %13 = ptrtoint ptr %cap_mem_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cap_mem_addr, align 4
  %15 = ptrtoint ptr %cap_mem_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cap_mem_size, align 4
  call void @memblock_cap_memory_range(i32 noundef %14, i32 noundef %16) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_mem_size) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_mem_addr) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #15
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dt_mem_next_cell(i32 noundef %s, ptr nocapture noundef %cellp) local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cellp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cellp, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 %s
  store ptr %add.ptr, ptr %cellp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s)
  %tobool.not3.i = icmp eq i32 %s, 0
  br i1 %tobool.not3.i, label %entry.of_read_number.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.of_read_number.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %of_read_number.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %r.06.i = phi i64 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %size.addr.05.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %s, %entry.for.body.i_crit_edge ]
  %cell.addr.04.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %dec.i = add i32 %size.addr.05.i, -1
  %shl.i = shl i64 %r.06.i, 32
  %2 = ptrtoint ptr %cell.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cell.addr.04.i, align 4
  %conv.i = zext i32 %3 to i64
  %or.i = or i64 %shl.i, %conv.i
  %incdec.ptr.i = getelementptr i32, ptr %cell.addr.04.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i.of_read_number.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.of_read_number.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %of_read_number.exit

of_read_number.exit:                              ; preds = %for.body.i.of_read_number.exit_crit_edge, %entry.of_read_number.exit_crit_edge
  %r.0.lcssa.i = phi i64 [ 0, %entry.of_read_number.exit_crit_edge ], [ %or.i, %for.body.i.of_read_number.exit_crit_edge ]
  ret i64 %r.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_cap_memory_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @early_init_dt_scan_chosen_stdout() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %l = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #15
  %0 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %l, align 4, !annotation !313
  %1 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str.54) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str.55) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %offset.069 = phi i32 [ %call1, %if.end.if.end4_crit_edge ], [ %call, %entry.if.end4_crit_edge ]
  %call5 = call ptr @fdt_getprop(ptr noundef %1, i32 noundef %offset.069, ptr noundef nonnull @.str.56, ptr noundef nonnull %l) #15
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end8, label %if.end4.lor.lhs.false_crit_edge

if.end4.lor.lhs.false_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

if.end8:                                          ; preds = %if.end4
  %call7 = call ptr @fdt_getprop(ptr noundef %1, i32 noundef %offset.069, ptr noundef nonnull @.str.57, ptr noundef nonnull %l) #15
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end8.lor.lhs.false_crit_edge

if.end8.lor.lhs.false_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8.lor.lhs.false_crit_edge, %if.end4.lor.lhs.false_crit_edge
  %p.072 = phi ptr [ %call7, %if.end8.lor.lhs.false_crit_edge ], [ %call5, %if.end4.lor.lhs.false_crit_edge ]
  %2 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %call13 = call ptr @strchrnul(ptr noundef nonnull %p.072, i32 noundef 58) #15
  %4 = ptrtoint ptr %call13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp14.not = icmp eq i8 %5, 0
  %add.ptr = getelementptr i8, ptr %call13, i32 1
  %spec.select = select i1 %cmp14.not, ptr null, ptr %add.ptr
  %sub.ptr.lhs.cast = ptrtoint ptr %call13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %p.072 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.ptr.sub, ptr %l, align 4
  %call18 = call i32 @fdt_path_offset_namelen(ptr noundef %1, ptr noundef nonnull %p.072, i32 noundef %sub.ptr.sub) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end12
  br i1 icmp ult (ptr @__earlycon_table, ptr @__earlycon_table_end), label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %8, ptr noundef nonnull %p.072) #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %match.073 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @__earlycon_table, %for.cond.preheader.for.body_crit_edge ]
  %compatible = getelementptr inbounds %struct.earlycon_id, ptr %match.073, i32 0, i32 2
  %9 = ptrtoint ptr %compatible to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %compatible, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool26.not = icmp eq i8 %10, 0
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %if.end28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %call30 = call i32 @fdt_node_check_compatible(ptr noundef %1, i32 noundef %call18, ptr noundef %compatible) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end33:                                         ; preds = %if.end28
  %call34 = call i32 @of_setup_earlycon(ptr noundef %match.073, i32 noundef %call18, ptr noundef %spec.select) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.end33.cleanup_crit_edge, label %if.end33.for.inc_crit_edge

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %if.end33.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.earlycon_id, ptr %match.073, i32 1
  %cmp24 = icmp ult ptr %incdec.ptr, @__earlycon_table_end
  br i1 %cmp24, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end8.cleanup_crit_edge ], [ -19, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_path_offset_namelen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_node_check_compatible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_setup_earlycon(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @early_init_dt_scan_root() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call i32 @fdt_path_offset(ptr noundef %0, ptr noundef nonnull @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, ptr @dt_root_size_cells, align 4
  store i32 1, ptr @dt_root_addr_cells, align 4
  %1 = load ptr, ptr @initial_boot_params, align 4
  %call.i = tail call ptr @fdt_getprop(ptr noundef %1, i32 noundef %call, ptr noundef nonnull @.str.2, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then2

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  store i32 %3, ptr @dt_root_size_cells, align 4
  br label %do.body

do.body:                                          ; preds = %if.then2, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_scan_root.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_scan_root, %if.then9)) #15
          to label %do.end [label %if.then9], !srcloc !314

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %4 = load i32, ptr @dt_root_size_cells, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_scan_root.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.62, i32 noundef %4) #15
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %5 = load ptr, ptr @initial_boot_params, align 4
  %call.i42 = tail call ptr @fdt_getprop(ptr noundef %5, i32 noundef %call, ptr noundef nonnull @.str.1, ptr noundef null) #15
  %tobool12.not = icmp eq ptr %call.i42, null
  br i1 %tobool12.not, label %do.end.do.body16_crit_edge, label %if.then13

do.end.do.body16_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body16

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %call.i42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i42, align 4
  store i32 %7, ptr @dt_root_addr_cells, align 4
  br label %do.body16

do.body16:                                        ; preds = %if.then13, %do.end.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_scan_root.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_scan_root, %if.then28)) #15
          to label %cleanup [label %if.then28], !srcloc !314

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #17
  %8 = load i32, ptr @dt_root_addr_cells, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_scan_root.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.64, i32 noundef %8) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @early_init_dt_scan_memory() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %l = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call i32 @fdt_first_subnode(ptr noundef %0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp124 = icmp sgt i32 %call, -1
  br i1 %cmp124, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup59.for.body_crit_edge, %entry.for.body_crit_edge
  %node.0125 = phi i32 [ %call66, %cleanup59.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @initial_boot_params, align 4
  %call.i = call ptr @fdt_getprop(ptr noundef %1, i32 noundef %node.0125, ptr noundef nonnull @.str.65, ptr noundef null) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #15
  %2 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %l, align 4, !annotation !313
  %cmp2 = icmp eq ptr %call.i, null
  br i1 %cmp2, label %for.body.cleanup59_crit_edge, label %lor.lhs.false

for.body.cleanup59_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

lor.lhs.false:                                    ; preds = %for.body
  %call3 = call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(7) @.str.66) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.cleanup59_crit_edge

lor.lhs.false.cleanup59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr @initial_boot_params, align 4
  %call.i90 = call ptr @fdt_getprop(ptr noundef %3, i32 noundef %node.0125, ptr noundef nonnull @.str.67, ptr noundef nonnull %l) #15
  %cmp6 = icmp eq ptr %call.i90, null
  br i1 %cmp6, label %if.end9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.end9:                                          ; preds = %if.end
  %4 = load ptr, ptr @initial_boot_params, align 4
  %call.i91 = call ptr @fdt_getprop(ptr noundef %4, i32 noundef %node.0125, ptr noundef nonnull @.str.4, ptr noundef nonnull %l) #15
  %cmp10 = icmp eq ptr %call.i91, null
  br i1 %cmp10, label %if.end9.cleanup59_crit_edge, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.end9.cleanup59_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %reg.0112 = phi ptr [ %call.i91, %if.end9.if.end12_crit_edge ], [ %call.i90, %if.end.if.end12_crit_edge ]
  %5 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l, align 4
  %div86 = lshr i32 %6, 2
  %add.ptr = getelementptr i32, ptr %reg.0112, i32 %div86
  %7 = load ptr, ptr @initial_boot_params, align 4
  %call.i92 = call ptr @fdt_getprop(ptr noundef %7, i32 noundef %node.0125, ptr noundef nonnull @.str.68, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call.i92, null
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_scan_memory.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_scan_memory, %if.then19)) #15
          to label %do.end [label %if.then19], !srcloc !314

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %call20 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %node.0125, ptr noundef null) #15
  %8 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_scan_memory.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.71, ptr noundef %call20, i32 noundef %9) #15
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end12
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %add.ptr.idx = ashr i32 %6, 2
  %10 = load i32, ptr @dt_root_addr_cells, align 4
  %11 = load i32, ptr @dt_root_size_cells, align 4
  %add121 = add i32 %11, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr.idx, i32 %add121)
  %cmp22.not122 = icmp slt i32 %add.ptr.idx, %add121
  br i1 %cmp22.not122, label %do.end.cleanup59_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.cleanup59_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %do.end.while.body_crit_edge
  %12 = phi i32 [ %19, %cleanup.while.body_crit_edge ], [ %11, %do.end.while.body_crit_edge ]
  %13 = phi i32 [ %18, %cleanup.while.body_crit_edge ], [ %10, %do.end.while.body_crit_edge ]
  %reg.1123 = phi ptr [ %add.ptr.i93, %cleanup.while.body_crit_edge ], [ %reg.0112, %do.end.while.body_crit_edge ]
  %add.ptr.i = getelementptr i32, ptr %reg.1123, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not3.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not3.i.i, label %while.body.dt_mem_next_cell.exit_crit_edge, label %while.body.for.body.i.i_crit_edge

while.body.for.body.i.i_crit_edge:                ; preds = %while.body
  br label %for.body.i.i

while.body.dt_mem_next_cell.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %dt_mem_next_cell.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.body.for.body.i.i_crit_edge
  %r.06.i.i = phi i64 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %while.body.for.body.i.i_crit_edge ]
  %size.addr.05.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %13, %while.body.for.body.i.i_crit_edge ]
  %cell.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %reg.1123, %while.body.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %size.addr.05.i.i, -1
  %shl.i.i = shl i64 %r.06.i.i, 32
  %14 = ptrtoint ptr %cell.addr.04.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cell.addr.04.i.i, align 4
  %conv.i.i = zext i32 %15 to i64
  %or.i.i = or i64 %shl.i.i, %conv.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %cell.addr.04.i.i, i32 1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.dt_mem_next_cell.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.dt_mem_next_cell.exit_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dt_mem_next_cell.exit

dt_mem_next_cell.exit:                            ; preds = %for.body.i.i.dt_mem_next_cell.exit_crit_edge, %while.body.dt_mem_next_cell.exit_crit_edge
  %r.0.lcssa.i.i = phi i64 [ 0, %while.body.dt_mem_next_cell.exit_crit_edge ], [ %or.i.i, %for.body.i.i.dt_mem_next_cell.exit_crit_edge ]
  %add.ptr.i93 = getelementptr i32, ptr %add.ptr.i, i32 %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not3.i.i94 = icmp eq i32 %12, 0
  br i1 %tobool.not3.i.i94, label %dt_mem_next_cell.exit.cleanup_crit_edge, label %dt_mem_next_cell.exit.for.body.i.i104_crit_edge

dt_mem_next_cell.exit.for.body.i.i104_crit_edge:  ; preds = %dt_mem_next_cell.exit
  br label %for.body.i.i104

dt_mem_next_cell.exit.cleanup_crit_edge:          ; preds = %dt_mem_next_cell.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i.i104:                                  ; preds = %for.body.i.i104.for.body.i.i104_crit_edge, %dt_mem_next_cell.exit.for.body.i.i104_crit_edge
  %r.06.i.i95 = phi i64 [ %or.i.i101, %for.body.i.i104.for.body.i.i104_crit_edge ], [ 0, %dt_mem_next_cell.exit.for.body.i.i104_crit_edge ]
  %size.addr.05.i.i96 = phi i32 [ %dec.i.i98, %for.body.i.i104.for.body.i.i104_crit_edge ], [ %12, %dt_mem_next_cell.exit.for.body.i.i104_crit_edge ]
  %cell.addr.04.i.i97 = phi ptr [ %incdec.ptr.i.i102, %for.body.i.i104.for.body.i.i104_crit_edge ], [ %add.ptr.i, %dt_mem_next_cell.exit.for.body.i.i104_crit_edge ]
  %dec.i.i98 = add i32 %size.addr.05.i.i96, -1
  %shl.i.i99 = shl i64 %r.06.i.i95, 32
  %16 = ptrtoint ptr %cell.addr.04.i.i97 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cell.addr.04.i.i97, align 4
  %conv.i.i100 = zext i32 %17 to i64
  %or.i.i101 = or i64 %shl.i.i99, %conv.i.i100
  %incdec.ptr.i.i102 = getelementptr i32, ptr %cell.addr.04.i.i97, i32 1
  %tobool.not.i.i103 = icmp eq i32 %dec.i.i98, 0
  br i1 %tobool.not.i.i103, label %dt_mem_next_cell.exit106, label %for.body.i.i104.for.body.i.i104_crit_edge

for.body.i.i104.for.body.i.i104_crit_edge:        ; preds = %for.body.i.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i104

dt_mem_next_cell.exit106:                         ; preds = %for.body.i.i104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i.i101)
  %cmp25 = icmp eq i64 %or.i.i101, 0
  br i1 %cmp25, label %dt_mem_next_cell.exit106.cleanup_crit_edge, label %do.body28

dt_mem_next_cell.exit106.cleanup_crit_edge:       ; preds = %dt_mem_next_cell.exit106
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body28:                                        ; preds = %dt_mem_next_cell.exit106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_scan_memory.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_scan_memory, %if.then40)) #15
          to label %do.end43 [label %if.then40], !srcloc !314

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_scan_memory.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.73, i64 noundef %r.0.lcssa.i.i, i64 noundef %or.i.i101) #15
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28
  call void @early_init_dt_add_memory_arch(i64 noundef %r.0.lcssa.i.i, i64 noundef %or.i.i101)
  br i1 %tobool.not, label %do.end43.cleanup_crit_edge, label %if.end46

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end46:                                         ; preds = %do.end43
  %conv = trunc i64 %r.0.lcssa.i.i to i32
  %call48 = call i32 @memblock_mark_hotplug(i32 noundef %conv, i32 noundef %17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end46.cleanup_crit_edge, label %do.end53

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %add55 = add i64 %or.i.i101, %r.0.lcssa.i.i
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i64 noundef %r.0.lcssa.i.i, i64 noundef %add55) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.end46.cleanup_crit_edge, %do.end43.cleanup_crit_edge, %dt_mem_next_cell.exit106.cleanup_crit_edge, %dt_mem_next_cell.exit.cleanup_crit_edge
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i93 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %18 = load i32, ptr @dt_root_addr_cells, align 4
  %19 = load i32, ptr @dt_root_size_cells, align 4
  %add = add i32 %19, %18
  %cmp22.not = icmp slt i32 %sub.ptr.div, %add
  br i1 %cmp22.not, label %cleanup.cleanup59_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.cleanup59_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

cleanup59:                                        ; preds = %cleanup.cleanup59_crit_edge, %do.end.cleanup59_crit_edge, %if.end9.cleanup59_crit_edge, %lor.lhs.false.cleanup59_crit_edge, %for.body.cleanup59_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #15
  %call66 = call i32 @fdt_next_subnode(ptr noundef %0, i32 noundef %node.0125) #15
  %cmp = icmp sgt i32 %call66, -1
  br i1 %cmp, label %cleanup59.for.body_crit_edge, label %cleanup59.for.end_crit_edge

cleanup59.for.end_crit_edge:                      ; preds = %cleanup59
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup59.for.body_crit_edge:                     ; preds = %cleanup59
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cleanup59.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @early_init_dt_add_memory_arch(i64 noundef %base, i64 noundef %size) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__virt_to_phys(i32 noundef -1073741824) #15
  %conv = zext i32 %call to i64
  %and = and i64 %base, 4095
  %sub = sub nuw nsw i64 4096, %and
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %size)
  %cmp = icmp ugt i64 %sub, %size
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i64 %size, %base
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i64 noundef %base, i64 noundef %add) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp5 = icmp eq i64 %and, 0
  br i1 %cmp5, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub10 = sub i64 %size, %sub
  %add11 = add i64 %base, 4095
  %and12 = and i64 %add11, -4096
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  %size.addr.0 = phi i64 [ %size, %if.end.if.end13_crit_edge ], [ %sub10, %if.then7 ]
  %base.addr.0 = phi i64 [ %base, %if.end.if.end13_crit_edge ], [ %and12, %if.then7 ]
  %and14 = and i64 %size.addr.0, -4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %base.addr.0)
  %cmp15 = icmp ugt i64 %base.addr.0, 4294967295
  %add22 = add i64 %base.addr.0, %and14
  br i1 %cmp15, label %do.end20, label %if.end24

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i64 noundef %base.addr.0, i64 noundef %add22) #18
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  %0 = add i64 %add22, -4294967297
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967296, i64 %0)
  %cmp27 = icmp ult i64 %0, -4294967296
  br i1 %cmp27, label %if.end38.thread, label %if.end38

if.end38.thread:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i64 noundef 4294967296, i64 noundef %add22) #18
  %add37 = sub nuw nsw i64 4294967296, %base.addr.0
  br label %if.end49

if.end38:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp8(i64 %add22, i64 %conv)
  %cmp40 = icmp ult i64 %add22, %conv
  br i1 %cmp40, label %do.end45, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i64 noundef %base.addr.0, i64 noundef %add22) #18
  br label %cleanup

if.end49:                                         ; preds = %if.end38.if.end49_crit_edge, %if.end38.thread
  %size.addr.1103 = phi i64 [ %add37, %if.end38.thread ], [ %and14, %if.end38.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %base.addr.0, i64 %conv)
  %cmp50 = icmp ult i64 %base.addr.0, %conv
  %extract.t97 = trunc i64 %size.addr.1103 to i32
  %extract.t99 = trunc i64 %base.addr.0 to i32
  br i1 %cmp50, label %do.end55, label %if.end49.if.end60_crit_edge

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i64 noundef %base.addr.0, i64 noundef %conv) #18
  %sub58.neg = sub nsw i64 %base.addr.0, %conv
  %sub59 = add i64 %sub58.neg, %size.addr.1103
  %extract.t = trunc i64 %sub59 to i32
  br label %if.end60

if.end60:                                         ; preds = %do.end55, %if.end49.if.end60_crit_edge
  %size.addr.2.off0 = phi i32 [ %extract.t, %do.end55 ], [ %extract.t97, %if.end49.if.end60_crit_edge ]
  %base.addr.1.off0 = phi i32 [ %call, %do.end55 ], [ %extract.t99, %if.end49.if.end60_crit_edge ]
  %call63 = tail call i32 @memblock_add(i32 noundef %base.addr.1.off0, i32 noundef %size.addr.2.off0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end45, %do.end20, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_hotplug(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @early_init_dt_scan_chosen(ptr noundef %cmdline) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %l = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #15
  %0 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %l, align 4, !annotation !313
  %1 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str.54) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str.55) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %node.054 = phi i32 [ %call1, %if.end.if.end4_crit_edge ], [ %call, %entry.if.end4_crit_edge ]
  store i32 %node.054, ptr @chosen_node_offset, align 4
  tail call fastcc void @early_init_dt_check_for_initrd(i32 noundef %node.054) #20
  tail call fastcc void @early_init_dt_check_for_elfcorehdr(i32 noundef %node.054) #20
  %2 = load ptr, ptr @initial_boot_params, align 4
  %call.i = call ptr @fdt_getprop(ptr noundef %2, i32 noundef %node.054, ptr noundef nonnull @.str.75, ptr noundef nonnull %l) #15
  %cmp6.not = icmp eq ptr %call.i, null
  br i1 %cmp6.not, label %if.end4.if.end11_crit_edge, label %land.lhs.true

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end4
  %3 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7 = icmp sgt i32 %4, 0
  br i1 %cmp7, label %if.then8, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %5 = call i32 @llvm.umin.i32(i32 %4, i32 1024)
  %call10 = call i32 @strlcpy(ptr noundef %cmdline, ptr noundef nonnull %call.i, i32 noundef %5) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %6 = ptrtoint ptr %cmdline to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmdline, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then12, label %if.end11.do.body_crit_edge

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %call13 = call i32 @strlcpy(ptr noundef %cmdline, ptr noundef nonnull @.str.76, i32 noundef 1024) #15
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.end11.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_scan_chosen.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_scan_chosen, %if.then20)) #15
          to label %do.end [label %if.then20], !srcloc !314

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_scan_chosen.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.79, ptr noundef %cmdline) #15
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %8 = load ptr, ptr @initial_boot_params, align 4
  %call.i51 = call ptr @fdt_getprop(ptr noundef %8, i32 noundef %node.054, ptr noundef nonnull @.str.80, ptr noundef nonnull %l) #15
  %tobool23.not = icmp eq ptr %call.i51, null
  br i1 %tobool23.not, label %do.end.cleanup_crit_edge, label %land.lhs.true24

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true24:                                  ; preds = %do.end
  %9 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp25 = icmp sgt i32 %10, 0
  br i1 %cmp25, label %if.then26, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  call void @add_bootloader_randomness(ptr noundef nonnull %call.i51, i32 noundef %10) #15
  %11 = load ptr, ptr @initial_boot_params, align 4
  %call27 = call i32 @fdt_nop_property(ptr noundef %11, i32 noundef %node.054, ptr noundef nonnull @.str.80) #15
  %12 = load ptr, ptr @initial_boot_params, align 4
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %totalsize, align 1
  %conv.i = zext i8 %14 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize, i32 1
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %16 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize, i32 2
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %18 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize, i32 3
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %20 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %call29 = call i32 @crc32_be(i32 noundef -1, ptr noundef %12, i32 noundef %or10.i) #23
  store i32 %call29, ptr @of_fdt_crc32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true24.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %land.lhs.true24.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #15
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @early_init_dt_check_for_initrd(i32 noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #15
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !313
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_check_for_initrd.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_check_for_initrd, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_check_for_initrd.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.135) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @initial_boot_params, align 4
  %call.i = call ptr @fdt_getprop(ptr noundef %1, i32 noundef %node, ptr noundef nonnull @.str.136, ptr noundef nonnull %len) #15
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %.off = add i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off)
  %4 = icmp ult i32 %.off, 7
  br i1 %4, label %if.end6.of_read_number.exit_crit_edge, label %for.body.i.preheader

if.end6.of_read_number.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %of_read_number.exit

for.body.i.preheader:                             ; preds = %if.end6
  %div = sdiv i32 %3, 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %r.06.i = phi i64 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %size.addr.05.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %div, %for.body.i.preheader ]
  %cell.addr.04.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %for.body.i.preheader ]
  %dec.i = add i32 %size.addr.05.i, -1
  %shl.i = shl i64 %r.06.i, 32
  %5 = ptrtoint ptr %cell.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cell.addr.04.i, align 4
  %conv.i = zext i32 %6 to i64
  %or.i = or i64 %shl.i, %conv.i
  %incdec.ptr.i = getelementptr i32, ptr %cell.addr.04.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i.of_read_number.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.of_read_number.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %of_read_number.exit

of_read_number.exit:                              ; preds = %for.body.i.of_read_number.exit_crit_edge, %if.end6.of_read_number.exit_crit_edge
  %r.0.lcssa.i = phi i64 [ 0, %if.end6.of_read_number.exit_crit_edge ], [ %or.i, %for.body.i.of_read_number.exit_crit_edge ]
  %7 = load ptr, ptr @initial_boot_params, align 4
  %call.i48 = call ptr @fdt_getprop(ptr noundef %7, i32 noundef %node, ptr noundef nonnull @.str.137, ptr noundef nonnull %len) #15
  %tobool9.not = icmp eq ptr %call.i48, null
  br i1 %tobool9.not, label %of_read_number.exit.cleanup_crit_edge, label %if.end11

of_read_number.exit.cleanup_crit_edge:            ; preds = %of_read_number.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %of_read_number.exit
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %.off64 = add i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off64)
  %10 = icmp ult i32 %.off64, 7
  br i1 %10, label %if.end11.of_read_number.exit61_crit_edge, label %for.body.i59.preheader

if.end11.of_read_number.exit61_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %of_read_number.exit61

for.body.i59.preheader:                           ; preds = %if.end11
  %div12 = sdiv i32 %9, 4
  br label %for.body.i59

for.body.i59:                                     ; preds = %for.body.i59.for.body.i59_crit_edge, %for.body.i59.preheader
  %r.06.i50 = phi i64 [ %or.i56, %for.body.i59.for.body.i59_crit_edge ], [ 0, %for.body.i59.preheader ]
  %size.addr.05.i51 = phi i32 [ %dec.i53, %for.body.i59.for.body.i59_crit_edge ], [ %div12, %for.body.i59.preheader ]
  %cell.addr.04.i52 = phi ptr [ %incdec.ptr.i57, %for.body.i59.for.body.i59_crit_edge ], [ %call.i48, %for.body.i59.preheader ]
  %dec.i53 = add i32 %size.addr.05.i51, -1
  %shl.i54 = shl i64 %r.06.i50, 32
  %11 = ptrtoint ptr %cell.addr.04.i52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cell.addr.04.i52, align 4
  %conv.i55 = zext i32 %12 to i64
  %or.i56 = or i64 %shl.i54, %conv.i55
  %incdec.ptr.i57 = getelementptr i32, ptr %cell.addr.04.i52, i32 1
  %tobool.not.i58 = icmp eq i32 %dec.i53, 0
  br i1 %tobool.not.i58, label %for.body.i59.of_read_number.exit61_crit_edge, label %for.body.i59.for.body.i59_crit_edge

for.body.i59.for.body.i59_crit_edge:              ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i59

for.body.i59.of_read_number.exit61_crit_edge:     ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #17
  br label %of_read_number.exit61

of_read_number.exit61:                            ; preds = %for.body.i59.of_read_number.exit61_crit_edge, %if.end11.of_read_number.exit61_crit_edge
  %r.0.lcssa.i60 = phi i64 [ 0, %if.end11.of_read_number.exit61_crit_edge ], [ %or.i56, %for.body.i59.of_read_number.exit61_crit_edge ]
  %conv = trunc i64 %r.0.lcssa.i to i32
  %conv14 = trunc i64 %r.0.lcssa.i60 to i32
  %13 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %conv, i32 -2130706432, i32 8454144) #24, !srcloc !316
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  store i32 %13, ptr @initrd_start, align 4
  %14 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %conv14, i32 -2130706432, i32 8454144) #24, !srcloc !316
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  store i32 %14, ptr @initrd_end, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_below_start_ok to i32))
  store i32 1, ptr @initrd_below_start_ok, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @phys_initrd_start to i32))
  store i32 %conv, ptr @phys_initrd_start, align 4
  %sub = sub i64 %r.0.lcssa.i60, %r.0.lcssa.i
  %conv16 = trunc i64 %sub to i32
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @phys_initrd_size to i32))
  store i32 %conv16, ptr @phys_initrd_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_check_for_initrd.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_check_for_initrd, %if.then29)) #15
          to label %cleanup [label %if.then29], !srcloc !314

if.then29:                                        ; preds = %of_read_number.exit61
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_check_for_initrd.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.139, i64 noundef %r.0.lcssa.i, i64 noundef %r.0.lcssa.i60) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %of_read_number.exit61, %of_read_number.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @early_init_dt_check_for_elfcorehdr(i32 noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #15
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !313
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_check_for_elfcorehdr.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_check_for_elfcorehdr, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_check_for_elfcorehdr.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.142) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @initial_boot_params, align 4
  %call.i = call ptr @fdt_getprop(ptr noundef %1, i32 noundef %node, ptr noundef nonnull @.str.143, ptr noundef nonnull %len) #15
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = load i32, ptr @dt_root_addr_cells, align 4
  %5 = load i32, ptr @dt_root_size_cells, align 4
  %add = add i32 %5, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp = icmp slt i32 %3, %add
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i32, ptr %call.i, i32 %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not3.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not3.i.i, label %if.end6.dt_mem_next_cell.exit_crit_edge, label %if.end6.for.body.i.i_crit_edge

if.end6.for.body.i.i_crit_edge:                   ; preds = %if.end6
  br label %for.body.i.i

if.end6.dt_mem_next_cell.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %dt_mem_next_cell.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end6.for.body.i.i_crit_edge
  %r.06.i.i = phi i64 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.for.body.i.i_crit_edge ]
  %size.addr.05.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %4, %if.end6.for.body.i.i_crit_edge ]
  %cell.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i, %if.end6.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %size.addr.05.i.i, -1
  %shl.i.i = shl i64 %r.06.i.i, 32
  %6 = ptrtoint ptr %cell.addr.04.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cell.addr.04.i.i, align 4
  %conv.i.i = zext i32 %7 to i64
  %or.i.i = or i64 %shl.i.i, %conv.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %cell.addr.04.i.i, i32 1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.dt_mem_next_cell.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.dt_mem_next_cell.exit_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dt_mem_next_cell.exit

dt_mem_next_cell.exit:                            ; preds = %for.body.i.i.dt_mem_next_cell.exit_crit_edge, %if.end6.dt_mem_next_cell.exit_crit_edge
  %r.0.lcssa.i.i = phi i64 [ 0, %if.end6.dt_mem_next_cell.exit_crit_edge ], [ %or.i.i, %for.body.i.i.dt_mem_next_cell.exit_crit_edge ]
  call void @__asan_store8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  store i64 %r.0.lcssa.i.i, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not3.i.i30 = icmp eq i32 %5, 0
  br i1 %tobool.not3.i.i30, label %dt_mem_next_cell.exit.dt_mem_next_cell.exit42_crit_edge, label %dt_mem_next_cell.exit.for.body.i.i40_crit_edge

dt_mem_next_cell.exit.for.body.i.i40_crit_edge:   ; preds = %dt_mem_next_cell.exit
  br label %for.body.i.i40

dt_mem_next_cell.exit.dt_mem_next_cell.exit42_crit_edge: ; preds = %dt_mem_next_cell.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dt_mem_next_cell.exit42

for.body.i.i40:                                   ; preds = %for.body.i.i40.for.body.i.i40_crit_edge, %dt_mem_next_cell.exit.for.body.i.i40_crit_edge
  %r.06.i.i31 = phi i64 [ %or.i.i37, %for.body.i.i40.for.body.i.i40_crit_edge ], [ 0, %dt_mem_next_cell.exit.for.body.i.i40_crit_edge ]
  %size.addr.05.i.i32 = phi i32 [ %dec.i.i34, %for.body.i.i40.for.body.i.i40_crit_edge ], [ %5, %dt_mem_next_cell.exit.for.body.i.i40_crit_edge ]
  %cell.addr.04.i.i33 = phi ptr [ %incdec.ptr.i.i38, %for.body.i.i40.for.body.i.i40_crit_edge ], [ %add.ptr.i, %dt_mem_next_cell.exit.for.body.i.i40_crit_edge ]
  %dec.i.i34 = add i32 %size.addr.05.i.i32, -1
  %shl.i.i35 = shl i64 %r.06.i.i31, 32
  %8 = ptrtoint ptr %cell.addr.04.i.i33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cell.addr.04.i.i33, align 4
  %conv.i.i36 = zext i32 %9 to i64
  %or.i.i37 = or i64 %shl.i.i35, %conv.i.i36
  %incdec.ptr.i.i38 = getelementptr i32, ptr %cell.addr.04.i.i33, i32 1
  %tobool.not.i.i39 = icmp eq i32 %dec.i.i34, 0
  br i1 %tobool.not.i.i39, label %for.body.i.i40.dt_mem_next_cell.exit42_crit_edge, label %for.body.i.i40.for.body.i.i40_crit_edge

for.body.i.i40.for.body.i.i40_crit_edge:          ; preds = %for.body.i.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i40

for.body.i.i40.dt_mem_next_cell.exit42_crit_edge: ; preds = %for.body.i.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %dt_mem_next_cell.exit42

dt_mem_next_cell.exit42:                          ; preds = %for.body.i.i40.dt_mem_next_cell.exit42_crit_edge, %dt_mem_next_cell.exit.dt_mem_next_cell.exit42_crit_edge
  %r.0.lcssa.i.i41 = phi i64 [ 0, %dt_mem_next_cell.exit.dt_mem_next_cell.exit42_crit_edge ], [ %or.i.i37, %for.body.i.i40.dt_mem_next_cell.exit42_crit_edge ]
  call void @__asan_store8_noabort(i32 ptrtoint (ptr @elfcorehdr_size to i32))
  store i64 %r.0.lcssa.i.i41, ptr @elfcorehdr_size, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @early_init_dt_check_for_elfcorehdr.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@early_init_dt_check_for_elfcorehdr, %if.then21)) #15
          to label %cleanup [label %if.then21], !srcloc !314

if.then21:                                        ; preds = %dt_mem_next_cell.exit42
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %10 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_size to i32))
  %11 = load i64, ptr @elfcorehdr_size, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @early_init_dt_check_for_elfcorehdr.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.145, i64 noundef %10, i64 noundef %11) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %dt_mem_next_cell.exit42, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #15
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_bootloader_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_nop_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_add(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @early_init_dt_verify(ptr noundef %params) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %params, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @fdt_check_header(ptr noundef nonnull %params) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %params, ptr @initial_boot_params, align 4
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %totalsize, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize, i32 3
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %7 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %call5 = tail call i32 @crc32_be(i32 noundef -1, ptr noundef nonnull %params, i32 noundef %or10.i) #23
  store i32 %call5, ptr @of_fdt_crc32, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end3 ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @early_init_dt_scan_nodes() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @early_init_dt_scan_root() #20
  %call1 = tail call i32 @early_init_dt_scan_chosen(ptr noundef nonnull @boot_command_line) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call3 = tail call i32 @early_init_dt_scan_memory() #20
  tail call void @early_init_dt_check_for_usable_mem_range() #20
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @early_init_dt_scan(ptr noundef %params) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @early_init_dt_verify(ptr noundef %params) #20
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @early_init_dt_scan_nodes() #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @unflatten_device_tree() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call ptr @__unflatten_device_tree(ptr noundef %0, ptr noundef null, ptr noundef nonnull @of_root, ptr noundef nonnull @early_init_dt_alloc_memory_arch, i1 noundef zeroext false)
  tail call void @of_alias_scan(ptr noundef nonnull @early_init_dt_alloc_memory_arch) #15
  tail call void @unittest_unflatten_overlay_base() #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal ptr @early_init_dt_alloc_memory_arch(i64 noundef %size, i64 noundef %align) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %size to i32
  %conv1 = trunc i64 %align to i32
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %conv, i32 noundef %conv1, i32 noundef 0, i32 noundef 0, i32 noundef -1) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.146, ptr noundef nonnull @__func__.early_init_dt_alloc_memory_arch, i64 noundef %size, i64 noundef %align) #25
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_alias_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @unittest_unflatten_overlay_base() local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @unflatten_and_copy_device_tree() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %totalsize, align 1
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize, i32 1
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %4 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize, i32 2
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %6 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize, i32 3
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %8 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %conv = sext i32 %or10.i to i64
  %call2 = tail call ptr @early_init_dt_alloc_memory_arch(i64 noundef %conv, i64 noundef 64) #20
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = load ptr, ptr @initial_boot_params, align 4
  %10 = call ptr @memcpy(ptr %call2, ptr %9, i32 %or10.i)
  store ptr %call2, ptr @initial_boot_params, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @unflatten_device_tree() #20
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fdt_raw_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @of_fdt_crc32, align 4
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %totalsize, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize, i32 1
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %7 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize, i32 3
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %9 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %call1 = tail call i32 @crc32_be(i32 noundef -1, ptr noundef nonnull %0, i32 noundef %or10.i) #23
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call1)
  %cmp.not = icmp eq i32 %1, %call1
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #18
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  store i32 %or10.i, ptr getelementptr inbounds (%struct.bin_attribute, ptr @of_fdt_raw_init.of_fdt_raw_attr, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_kobj to i32))
  %10 = load ptr, ptr @firmware_kobj, align 4
  %call7 = tail call i32 @sysfs_create_bin_file(ptr noundef %10, ptr noundef nonnull @of_fdt_raw_init.of_fdt_raw_attr) #15
  br label %return

return:                                           ; preds = %if.end4, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call7, %if.end4 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reverse_nodes(ptr nocapture noundef %parent) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %child1 = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 7
  %0 = ptrtoint ptr %child1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %child.022 = load ptr, ptr %child1, align 4
  %tobool.not23 = icmp eq ptr %child.022, null
  br i1 %tobool.not23, label %while.end.thread, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %child1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %child1, align 4
  br label %while.end11

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %child.024 = phi ptr [ %child.0, %while.body.while.body_crit_edge ], [ %child.022, %entry.while.body_crit_edge ]
  tail call fastcc void @reverse_nodes(ptr noundef nonnull %child.024)
  %sibling = getelementptr inbounds %struct.device_node, ptr %child.024, i32 0, i32 8
  %2 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %2)
  %child.0 = load ptr, ptr %sibling, align 4
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %while.body
  %3 = ptrtoint ptr %child1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load ptr, ptr %child1, align 4
  store ptr null, ptr %child1, align 4
  %tobool5.not25 = icmp eq ptr %.pr, null
  br i1 %tobool5.not25, label %while.end.while.end11_crit_edge, label %while.end.while.body6_crit_edge

while.end.while.body6_crit_edge:                  ; preds = %while.end
  br label %while.body6

while.end.while.end11_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end11

while.body6:                                      ; preds = %while.body6.while.body6_crit_edge, %while.end.while.body6_crit_edge
  %child.127 = phi ptr [ %5, %while.body6.while.body6_crit_edge ], [ %.pr, %while.end.while.body6_crit_edge ]
  %storemerge26 = phi ptr [ %child.127, %while.body6.while.body6_crit_edge ], [ null, %while.end.while.body6_crit_edge ]
  %sibling7 = getelementptr inbounds %struct.device_node, ptr %child.127, i32 0, i32 8
  %4 = ptrtoint ptr %sibling7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sibling7, align 4
  store ptr %storemerge26, ptr %sibling7, align 4
  %6 = ptrtoint ptr %child1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %child.127, ptr %child1, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %while.body6.while.end11_crit_edge, label %while.body6.while.body6_crit_edge

while.body6.while.body6_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body6

while.body6.while.end11_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end11

while.end11:                                      ; preds = %while.body6.while.end11_crit_edge, %while.end.while.end11_crit_edge, %while.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @populate_properties(ptr noundef %blob, i32 noundef %offset, ptr nocapture noundef %mem, ptr nocapture noundef %np, ptr noundef %nodename, i1 noundef zeroext %dryrun) unnamed_addr #3 align 64 {
entry:
  %pname = alloca ptr, align 4
  %sz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %properties = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 4
  %call = tail call i32 @fdt_first_property_offset(ptr noundef %blob, i32 noundef %offset) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp132 = icmp sgt i32 %call, -1
  br i1 %cmp132, label %for.body.lr.ph, label %entry.while.cond.preheader_crit_edge

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %entry
  %phandle = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %pprev.0136 = phi ptr [ %properties, %for.body.lr.ph ], [ %pprev.1, %cleanup.for.body_crit_edge ]
  %cur.0134 = phi i32 [ %call, %for.body.lr.ph ], [ %call38, %cleanup.for.body_crit_edge ]
  %has_name.0.off0133 = phi i1 [ false, %for.body.lr.ph ], [ %has_name.2.off0, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pname) #15
  %0 = ptrtoint ptr %pname to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pname, align 4, !annotation !313
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz) #15
  %1 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sz, align 4, !annotation !313
  %call1 = call ptr @fdt_getprop_by_offset(ptr noundef %blob, i32 noundef %cur.0134, ptr noundef nonnull %pname, ptr noundef nonnull %sz) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %cur.0134) #18
  br label %cleanup

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %pname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pname, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %cur.0134) #18
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(5) @.str.98) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool12.not, i1 true, i1 %has_name.0.off0133
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %6 = ptrtoint ptr %5 to i32
  %add.i = add i32 %6, 3
  %and.i = and i32 %add.i, -4
  %7 = inttoptr i32 %and.i to ptr
  %add.ptr.i = getelementptr i8, ptr %7, i32 64
  store ptr %add.ptr.i, ptr %mem, align 4
  br i1 %dryrun, label %if.end10.cleanup_crit_edge, label %if.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call19 = call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(8) @.str.105) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.if.then23_crit_edge, label %lor.lhs.false

if.end18.if.then23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.end18
  %call21 = call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(14) @.str.106) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false.if.end29_crit_edge

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %if.end18.if.then23_crit_edge
  %8 = ptrtoint ptr %phandle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phandle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool24.not = icmp eq i32 %9, 0
  br i1 %tobool24.not, label %if.then25, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call1, align 4
  %12 = ptrtoint ptr %phandle to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %phandle, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.then23.if.end29_crit_edge, %lor.lhs.false.if.end29_crit_edge
  %call30 = call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(12) @.str.107) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call1, align 4
  %15 = ptrtoint ptr %phandle to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %phandle, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29.if.end35_crit_edge
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %7, align 4
  %17 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sz, align 4
  %length = getelementptr inbounds %struct.property, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %length, align 4
  %value = getelementptr inbounds %struct.property, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1, ptr %value, align 4
  %21 = ptrtoint ptr %pprev.0136 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %7, ptr %pprev.0136, align 4
  %next = getelementptr inbounds %struct.property, ptr %7, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end10.cleanup_crit_edge, %do.end7, %do.end
  %has_name.2.off0 = phi i1 [ %spec.select, %if.end35 ], [ %has_name.0.off0133, %do.end7 ], [ %has_name.0.off0133, %do.end ], [ %spec.select, %if.end10.cleanup_crit_edge ]
  %pprev.1 = phi ptr [ %next, %if.end35 ], [ %pprev.0136, %do.end7 ], [ %pprev.0136, %do.end ], [ %pprev.0136, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pname) #15
  %call38 = call i32 @fdt_next_property_offset(ptr noundef %blob, i32 noundef %cur.0134) #15
  %cmp = icmp sgt i32 %call38, -1
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cleanup
  br i1 %has_name.2.off0, label %for.end.if.end79_crit_edge, label %for.end.while.cond.preheader_crit_edge

for.end.while.cond.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

while.cond.preheader:                             ; preds = %for.end.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %pprev.0.lcssa140 = phi ptr [ %pprev.1, %for.end.while.cond.preheader_crit_edge ], [ %properties, %entry.while.cond.preheader_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %if.end50, %while.cond.preheader
  %p.0 = phi ptr [ %incdec.ptr, %if.end50 ], [ %nodename, %while.cond.preheader ]
  %ps.0 = phi ptr [ %ps.1, %if.end50 ], [ %nodename, %while.cond.preheader ]
  %pa.0 = phi ptr [ %pa.1, %if.end50 ], [ null, %while.cond.preheader ]
  %22 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %p.0, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %if.end50.fold.split [
    i8 0, label %while.end
    i8 64, label %while.cond.if.end50_crit_edge
    i8 47, label %if.then48
  ]

while.cond.if.end50_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then48:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %p.0, i32 1
  br label %if.end50

if.end50.fold.split:                              ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.end50:                                         ; preds = %if.end50.fold.split, %if.then48, %while.cond.if.end50_crit_edge
  %ps.1 = phi ptr [ %add.ptr, %if.then48 ], [ %ps.0, %while.cond.if.end50_crit_edge ], [ %ps.0, %if.end50.fold.split ]
  %pa.1 = phi ptr [ %pa.0, %if.then48 ], [ %p.0, %while.cond.if.end50_crit_edge ], [ %pa.0, %if.end50.fold.split ]
  %incdec.ptr = getelementptr i8, ptr %p.0, i32 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp51 = icmp ult ptr %pa.0, %ps.0
  %spec.select127 = select i1 %cmp51, ptr %p.0, ptr %pa.0
  %sub.ptr.lhs.cast = ptrtoint ptr %spec.select127 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ps.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add55 = add i32 %sub.ptr.sub, 65
  %25 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem, align 4
  %27 = ptrtoint ptr %26 to i32
  %add.i128 = add i32 %27, 3
  %and.i129 = and i32 %add.i128, -4
  %28 = inttoptr i32 %and.i129 to ptr
  %add.ptr.i130 = getelementptr i8, ptr %28, i32 %add55
  store ptr %add.ptr.i130, ptr %mem, align 4
  br i1 %dryrun, label %while.end.if.end79_crit_edge, label %if.then58

while.end.if.end79_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.then58:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i32 %sub.ptr.sub, 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.98, ptr %28, align 4
  %length60 = getelementptr inbounds %struct.property, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %length60 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %length60, align 4
  %add.ptr61 = getelementptr %struct.property, ptr %28, i32 1
  %value62 = getelementptr inbounds %struct.property, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %value62 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr61, ptr %value62, align 4
  %32 = ptrtoint ptr %pprev.0.lcssa140 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %pprev.0.lcssa140, align 4
  %33 = load ptr, ptr %value62, align 4
  %34 = call ptr @memcpy(ptr %33, ptr %ps.0, i32 %sub.ptr.sub)
  %35 = load ptr, ptr %value62, align 4
  %arrayidx = getelementptr i8, ptr %35, i32 %sub.ptr.sub
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @populate_properties.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@populate_properties, %if.then73)) #15
          to label %if.end79 [label %if.then73], !srcloc !314

if.then73:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %value62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %value62, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @populate_properties.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.109, ptr noundef %nodename, ptr noundef %38) #15
  br label %if.end79

if.end79:                                         ; preds = %if.then73, %if.then58, %while.end.if.end79_crit_edge, %for.end.if.end79_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_first_property_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop_by_offset(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_property_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_overlaps_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_nomap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__reserved_mem_check_root(i32 noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call.i = tail call ptr @fdt_getprop(ptr noundef %0, i32 noundef %node, ptr noundef nonnull @.str.2, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call.i, align 4
  %3 = load i32, ptr @dt_root_size_cells, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp.not = icmp eq i32 %2, %3
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr @initial_boot_params, align 4
  %call.i19 = tail call ptr @fdt_getprop(ptr noundef %4, i32 noundef %node, ptr noundef nonnull @.str.1, ptr noundef null) #15
  %tobool3.not = icmp eq ptr %call.i19, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %5 = ptrtoint ptr %call.i19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i19, align 4
  %7 = load i32, ptr @dt_root_addr_cells, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp6.not = icmp eq i32 %6, %7
  br i1 %cmp6.not, label %if.end8, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  %8 = load ptr, ptr @initial_boot_params, align 4
  %call.i20 = tail call ptr @fdt_getprop(ptr noundef %8, i32 noundef %node, ptr noundef nonnull @.str.116, ptr noundef null) #15
  %tobool10.not = icmp eq ptr %call.i20, null
  %. = select i1 %tobool10.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__reserved_mem_reserve_reg(i32 noundef %node, ptr noundef %uname) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %base = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dt_root_addr_cells, align 4
  %1 = load i32, ptr @dt_root_size_cells, align 4
  %add = add i32 %1, %0
  %mul = shl i32 %add, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #15
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len, align 4, !annotation !313
  %3 = load ptr, ptr @initial_boot_params, align 4
  %call.i = call ptr @fdt_getprop(ptr noundef %3, i32 noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull %len) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %rem = srem i32 %5, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %land.lhs.true.if.end4_crit_edge, label %do.end

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %uname) #18
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %6 = load ptr, ptr @initial_boot_params, align 4
  %call.i63 = call ptr @fdt_getprop(ptr noundef %6, i32 noundef %node, ptr noundef nonnull @.str.122, ptr noundef null) #15
  %cmp6 = icmp ne ptr %call.i63, null
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %mul)
  %cmp7.not86 = icmp slt i32 %8, %mul
  br i1 %cmp7.not86, label %if.end4.cleanup_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  br label %while.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body:                                       ; preds = %if.end41.while.body_crit_edge, %if.end4.while.body_crit_edge
  %tobool39.not88 = phi i1 [ true, %if.end41.while.body_crit_edge ], [ false, %if.end4.while.body_crit_edge ]
  %prop.087 = phi ptr [ %add.ptr.i64, %if.end41.while.body_crit_edge ], [ %call.i, %if.end4.while.body_crit_edge ]
  %9 = load i32, ptr @dt_root_addr_cells, align 4
  %add.ptr.i = getelementptr i32, ptr %prop.087, i32 %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not3.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not3.i.i, label %while.body.dt_mem_next_cell.exit_crit_edge, label %while.body.for.body.i.i_crit_edge

while.body.for.body.i.i_crit_edge:                ; preds = %while.body
  br label %for.body.i.i

while.body.dt_mem_next_cell.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %dt_mem_next_cell.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.body.for.body.i.i_crit_edge
  %size.addr.05.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %9, %while.body.for.body.i.i_crit_edge ]
  %cell.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %prop.087, %while.body.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %size.addr.05.i.i, -1
  %incdec.ptr.i.i = getelementptr i32, ptr %cell.addr.04.i.i, i32 1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %dt_mem_next_cell.exit.loopexit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

dt_mem_next_cell.exit.loopexit:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %cell.addr.04.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cell.addr.04.i.i, align 4
  br label %dt_mem_next_cell.exit

dt_mem_next_cell.exit:                            ; preds = %dt_mem_next_cell.exit.loopexit, %while.body.dt_mem_next_cell.exit_crit_edge
  %r.0.lcssa.i.i.off0 = phi i32 [ 0, %while.body.dt_mem_next_cell.exit_crit_edge ], [ %11, %dt_mem_next_cell.exit.loopexit ]
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %r.0.lcssa.i.i.off0, ptr %base, align 4
  %13 = load i32, ptr @dt_root_size_cells, align 4
  %add.ptr.i64 = getelementptr i32, ptr %add.ptr.i, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not3.i.i65 = icmp eq i32 %13, 0
  br i1 %tobool.not3.i.i65, label %dt_mem_next_cell.exit.do.end34_crit_edge, label %dt_mem_next_cell.exit.for.body.i.i75_crit_edge

dt_mem_next_cell.exit.for.body.i.i75_crit_edge:   ; preds = %dt_mem_next_cell.exit
  br label %for.body.i.i75

dt_mem_next_cell.exit.do.end34_crit_edge:         ; preds = %dt_mem_next_cell.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34

for.body.i.i75:                                   ; preds = %for.body.i.i75.for.body.i.i75_crit_edge, %dt_mem_next_cell.exit.for.body.i.i75_crit_edge
  %size.addr.05.i.i67 = phi i32 [ %dec.i.i69, %for.body.i.i75.for.body.i.i75_crit_edge ], [ %13, %dt_mem_next_cell.exit.for.body.i.i75_crit_edge ]
  %cell.addr.04.i.i68 = phi ptr [ %incdec.ptr.i.i73, %for.body.i.i75.for.body.i.i75_crit_edge ], [ %add.ptr.i, %dt_mem_next_cell.exit.for.body.i.i75_crit_edge ]
  %dec.i.i69 = add i32 %size.addr.05.i.i67, -1
  %incdec.ptr.i.i73 = getelementptr i32, ptr %cell.addr.04.i.i68, i32 1
  %tobool.not.i.i74 = icmp eq i32 %dec.i.i69, 0
  br i1 %tobool.not.i.i74, label %dt_mem_next_cell.exit77, label %for.body.i.i75.for.body.i.i75_crit_edge

for.body.i.i75.for.body.i.i75_crit_edge:          ; preds = %for.body.i.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i75

dt_mem_next_cell.exit77:                          ; preds = %for.body.i.i75
  %14 = ptrtoint ptr %cell.addr.04.i.i68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cell.addr.04.i.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %dt_mem_next_cell.exit77.do.end34_crit_edge, label %land.lhs.true12

dt_mem_next_cell.exit77.do.end34_crit_edge:       ; preds = %dt_mem_next_cell.exit77
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34

land.lhs.true12:                                  ; preds = %dt_mem_next_cell.exit77
  %call14 = call fastcc i32 @early_init_dt_reserve_memory_arch(i32 noundef %r.0.lcssa.i.i.off0, i32 noundef %15, i1 noundef zeroext %cmp6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %do.body18, label %land.lhs.true12.do.end34_crit_edge

land.lhs.true12.do.end34_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34

do.body18:                                        ; preds = %land.lhs.true12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__reserved_mem_reserve_reg.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__reserved_mem_reserve_reg, %if.then25)) #15
          to label %do.end28 [label %if.then25], !srcloc !314

if.then25:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  %div62 = lshr i32 %15, 20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__reserved_mem_reserve_reg.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.124, ptr noundef %uname, ptr noundef nonnull %base, i32 noundef %div62) #15
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body18
  br i1 %cmp6, label %do.end28.if.end38_crit_edge, label %if.then30

do.end28.if.end38_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then30:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 4
  call void @kmemleak_alloc_phys(i32 noundef %17, i32 noundef %15, i32 noundef 0, i32 noundef 0) #15
  br label %if.end38

do.end34:                                         ; preds = %land.lhs.true12.do.end34_crit_edge, %dt_mem_next_cell.exit77.do.end34_crit_edge, %dt_mem_next_cell.exit.do.end34_crit_edge
  %conv1083 = phi i32 [ 0, %dt_mem_next_cell.exit77.do.end34_crit_edge ], [ %15, %land.lhs.true12.do.end34_crit_edge ], [ 0, %dt_mem_next_cell.exit.do.end34_crit_edge ]
  %div3661 = lshr i32 %conv1083, 20
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %uname, ptr noundef nonnull %base, i32 noundef %div3661) #18
  br label %if.end38

if.end38:                                         ; preds = %do.end34, %if.then30, %do.end28.if.end38_crit_edge
  %conv1082 = phi i32 [ %15, %do.end28.if.end38_crit_edge ], [ %15, %if.then30 ], [ %conv1083, %do.end34 ]
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %sub = sub i32 %19, %mul
  store i32 %sub, ptr %len, align 4
  br i1 %tobool39.not88, label %if.end38.if.end41_crit_edge, label %if.then40

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base, align 4
  call void @fdt_reserved_mem_save_node(i32 noundef %node, ptr noundef %uname, i32 noundef %21, i32 noundef %conv1082) #15
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %cmp7.not = icmp slt i32 %23, %mul
  br i1 %cmp7.not, label %if.end41.cleanup_crit_edge, label %if.end41.while.body_crit_edge

if.end41.while.body_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end41.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdt_reserved_mem_save_node(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_alloc_phys(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @of_fdt_raw_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef returned %count) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @initial_boot_params, align 4
  %idx.ext = trunc i64 %off to i32
  %add.ptr = getelementptr i8, ptr %0, i32 %idx.ext
  %1 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %count)
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !98, !99, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147, !149, !150, !151, !152, !154, !156, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !186, !188, !190, !192, !194, !196, !197, !198, !199, !201, !203, !205, !206, !207, !208, !210, !211, !212, !214, !216, !218, !220, !221, !222, !224, !225, !226, !228, !230, !231, !232, !233, !235, !237, !239, !241, !243, !245, !246, !247, !248, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !269, !271, !272, !273, !274, !276, !278, !280, !281, !282, !284, !285, !286, !287, !289, !291, !292, !293, !295, !297, !299, !301, !302, !303}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/of/fdt.c", i32 56, i32 53}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/of/fdt.c", i32 61, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/of/fdt.c", i32 66, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/of/fdt.c", i32 72, i32 48}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/of/fdt.c", i32 74, i32 50}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/of/fdt.c", i32 77, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @of_fdt_limit_memory.__UNIQUE_ID_ddebug238, !11, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!16 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/of/fdt.c", i32 379, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug240, !18, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!21 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/of/fdt.c", i32 382, i32 3}
!24 = !{ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug241, !23, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/of/fdt.c", i32 386, i32 2}
!28 = !{ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug242, !27, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!29 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/of/fdt.c", i32 387, i32 2}
!32 = !{ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug243, !31, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/of/fdt.c", i32 388, i32 2}
!36 = !{ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug244, !35, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!37 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/of/fdt.c", i32 389, i32 2}
!40 = !{ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug245, !39, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!41 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/of/fdt.c", i32 392, i32 3}
!44 = !{ptr @__unflatten_device_tree._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @__unflatten_device_tree._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/of/fdt.c", i32 402, i32 2}
!48 = !{ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug246, !47, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!49 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/of/fdt.c", i32 413, i32 2}
!52 = !{ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug247, !51, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!53 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/of/fdt.c", i32 419, i32 3}
!56 = !{ptr @__unflatten_device_tree._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @__unflatten_device_tree._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/of/fdt.c", i32 427, i32 3}
!60 = !{ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug248, !59, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!61 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/of/fdt.c", i32 430, i32 2}
!64 = !{ptr @__unflatten_device_tree.__UNIQUE_ID_ddebug249, !63, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!65 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__ksymtab_of_fdt_unflatten_tree, !67, !"__ksymtab_of_fdt_unflatten_tree", i1 false, i1 false}
!67 = !{!"../drivers/of/fdt.c", i32 468, i32 1}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/of/fdt.c", i32 846, i32 38}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/of/fdt.c", i32 848, i32 39}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/of/fdt.c", i32 882, i32 3}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @of_flat_dt_match_machine._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @of_flat_dt_match_machine._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/of/fdt.c", i32 887, i32 5}
!79 = !{ptr @of_flat_dt_match_machine._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @of_flat_dt_match_machine._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/of/fdt.c", i32 892, i32 3}
!83 = !{ptr @of_flat_dt_match_machine._entry.42, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @of_flat_dt_match_machine._entry_ptr.44, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/of/fdt.c", i32 896, i32 2}
!87 = !{ptr @of_flat_dt_match_machine._entry.45, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @of_flat_dt_match_machine._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/of/fdt.c", i32 991, i32 2}
!91 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @early_init_dt_check_for_usable_mem_range.__UNIQUE_ID_ddebug255, !90, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!93 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/of/fdt.c", i32 993, i32 35}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/of/fdt.c", i32 1000, i32 2}
!98 = !{ptr @early_init_dt_check_for_usable_mem_range.__UNIQUE_ID_ddebug256, !97, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!99 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/of/fdt.c", i32 1016, i32 32}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/of/fdt.c", i32 1018, i32 33}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/of/fdt.c", i32 1022, i32 31}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/of/fdt.c", i32 1024, i32 32}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/of/fdt.c", i32 1036, i32 3}
!110 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @early_init_dt_scan_chosen_stdout._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @early_init_dt_scan_chosen_stdout._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/of/fdt.c", i32 1072, i32 2}
!115 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @early_init_dt_scan_root.__UNIQUE_ID_ddebug257, !114, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!117 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/of/fdt.c", i32 1077, i32 2}
!120 = !{ptr @early_init_dt_scan_root.__UNIQUE_ID_ddebug258, !119, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!121 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/of/fdt.c", i32 1099, i32 48}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/of/fdt.c", i32 1105, i32 36}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/of/fdt.c", i32 1108, i32 35}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/of/fdt.c", i32 1115, i32 44}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/of/fdt.c", i32 1117, i32 3}
!132 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @early_init_dt_scan_memory.__UNIQUE_ID_ddebug259, !131, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!134 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/of/fdt.c", i32 1128, i32 4}
!137 = !{ptr @early_init_dt_scan_memory.__UNIQUE_ID_ddebug260, !136, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!138 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/of/fdt.c", i32 1136, i32 5}
!141 = !{ptr @early_init_dt_scan_memory._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @early_init_dt_scan_memory._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/of/fdt.c", i32 1162, i32 32}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/of/fdt.c", i32 1180, i32 20}
!147 = !{ptr @.str.77, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/of/fdt.c", i32 1184, i32 2}
!149 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @early_init_dt_scan_chosen.__UNIQUE_ID_ddebug263, !148, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!151 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/of/fdt.c", i32 1186, i32 39}
!154 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/of/fdt.c", i32 1213, i32 3}
!156 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @early_init_dt_add_memory_arch._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @early_init_dt_add_memory_arch._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @early_init_dt_add_memory_arch._entry.83, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/of/fdt.c", i32 1225, i32 3}
!161 = !{ptr @early_init_dt_add_memory_arch._entry_ptr.84, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/of/fdt.c", i32 1231, i32 3}
!164 = !{ptr @early_init_dt_add_memory_arch._entry.85, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @early_init_dt_add_memory_arch._entry_ptr.87, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @early_init_dt_add_memory_arch._entry.88, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/of/fdt.c", i32 1237, i32 3}
!168 = !{ptr @early_init_dt_add_memory_arch._entry_ptr.89, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @early_init_dt_add_memory_arch._entry.90, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/of/fdt.c", i32 1242, i32 3}
!171 = !{ptr @early_init_dt_add_memory_arch._entry_ptr.91, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.92, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/of/fdt.c", i32 1288, i32 3}
!174 = !{ptr @.str.93, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @early_init_dt_scan_nodes._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @early_init_dt_scan_nodes._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/of/fdt.c", i32 1345, i32 3}
!179 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @unflatten_and_copy_device_tree._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @unflatten_and_copy_device_tree._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @__initcall__kmod_fdt__264_1385_of_fdt_raw_init7, !183, !"__initcall__kmod_fdt__264_1385_of_fdt_raw_init7", i1 false, i1 false}
!183 = !{!"../drivers/of/fdt.c", i32 1385, i32 1}
!184 = !{ptr @dt_root_addr_cells, !185, !"dt_root_addr_cells", i1 false, i1 false}
!185 = !{!"../drivers/of/fdt.c", i32 471, i32 16}
!186 = !{ptr @dt_root_size_cells, !187, !"dt_root_size_cells", i1 false, i1 false}
!187 = !{!"../drivers/of/fdt.c", i32 472, i32 16}
!188 = !{ptr @initial_boot_params, !189, !"initial_boot_params", i1 false, i1 false}
!189 = !{!"../drivers/of/fdt.c", i32 474, i32 7}
!190 = !{ptr @of_fdt_crc32, !191, !"of_fdt_crc32", i1 false, i1 false}
!191 = !{!"../drivers/of/fdt.c", i32 478, i32 12}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../drivers/of/fdt.c", i32 317, i32 7}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/of/fdt.c", i32 336, i32 3}
!196 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @unflatten_dt_nodes._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @unflatten_dt_nodes._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/of/fdt.c", i32 243, i32 34}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/of/fdt.c", i32 245, i32 15}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/of/fdt.c", i32 130, i32 4}
!205 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @populate_properties._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @populate_properties._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/of/fdt.c", i32 135, i32 4}
!210 = !{ptr @populate_properties._entry.102, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @populate_properties._entry_ptr.104, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/of/fdt.c", i32 153, i32 22}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/of/fdt.c", i32 154, i32 22}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/of/fdt.c", i32 163, i32 22}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/of/fdt.c", i32 200, i32 4}
!220 = !{ptr @populate_properties.__UNIQUE_ID_ddebug239, !219, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!221 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/of/fdt.c", i32 439, i32 8}
!224 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @of_fdt_unflatten_mutex, !223, !"of_fdt_unflatten_mutex", i1 false, i1 false}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/of/fdt.c", i32 578, i32 30}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/of/fdt.c", i32 583, i32 3}
!230 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @fdt_scan_reserved_mem._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @fdt_scan_reserved_mem._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/of/fdt.c", i32 597, i32 52}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/of/fdt.c", i32 564, i32 35}
!237 = !{ptr @.str.117, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/of/fdt.c", i32 86, i32 47}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/of/fdt.c", i32 91, i32 22}
!241 = !{ptr @.str.119, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/of/fdt.c", i32 91, i32 47}
!243 = !{ptr @.str.120, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/of/fdt.c", i32 516, i32 3}
!245 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @__reserved_mem_reserve_reg._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @__reserved_mem_reserve_reg._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/of/fdt.c", i32 521, i32 36}
!250 = !{ptr @.str.123, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/of/fdt.c", i32 529, i32 4}
!252 = !{ptr @__reserved_mem_reserve_reg.__UNIQUE_ID_ddebug250, !251, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!253 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/of/fdt.c", i32 535, i32 4}
!256 = !{ptr @__reserved_mem_reserve_reg._entry.125, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @__reserved_mem_reserve_reg._entry_ptr.127, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.128, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/of/fdt.c", i32 617, i32 3}
!260 = !{ptr @.str.129, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @fdt_reserve_elfcorehdr._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @fdt_reserve_elfcorehdr._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/of/fdt.c", i32 623, i32 2}
!265 = !{ptr @fdt_reserve_elfcorehdr._entry.130, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @fdt_reserve_elfcorehdr._entry_ptr.132, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @chosen_node_offset, !268, !"chosen_node_offset", i1 false, i1 false}
!268 = !{!"../drivers/of/fdt.c", i32 974, i32 22}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/of/fdt.c", i32 929, i32 2}
!271 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @early_init_dt_check_for_initrd.__UNIQUE_ID_ddebug251, !270, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!273 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.136, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/of/fdt.c", i32 931, i32 35}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/of/fdt.c", i32 936, i32 35}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/of/fdt.c", i32 945, i32 2}
!280 = !{ptr @early_init_dt_check_for_initrd.__UNIQUE_ID_ddebug252, !279, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!281 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.140, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/of/fdt.c", i32 961, i32 2}
!284 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @early_init_dt_check_for_elfcorehdr.__UNIQUE_ID_ddebug253, !283, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!286 = !{ptr @.str.142, !283, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.143, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/of/fdt.c", i32 963, i32 35}
!289 = !{ptr @.str.144, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/of/fdt.c", i32 970, i32 2}
!291 = !{ptr @early_init_dt_check_for_elfcorehdr.__UNIQUE_ID_ddebug254, !290, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!292 = !{ptr @.str.145, !290, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.146, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/of/fdt.c", i32 1255, i32 9}
!295 = !{ptr @__func__.early_init_dt_alloc_memory_arch, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/of/fdt.c", i32 1256, i32 9}
!297 = !{ptr @of_fdt_raw_init.of_fdt_raw_attr, !298, !"of_fdt_raw_attr", i1 false, i1 false}
!298 = !{!"../drivers/of/fdt.c", i32 1371, i32 30}
!299 = !{ptr @.str.147, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/of/fdt.c", i32 1379, i32 3}
!301 = !{ptr @.str.148, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @of_fdt_raw_init._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @of_fdt_raw_init._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{i32 1, !"wchar_size", i32 2}
!305 = !{i32 1, !"min_enum_size", i32 4}
!306 = !{i32 8, !"branch-target-enforcement", i32 0}
!307 = !{i32 8, !"sign-return-address", i32 0}
!308 = !{i32 8, !"sign-return-address-all", i32 0}
!309 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!310 = !{i32 7, !"uwtable", i32 1}
!311 = !{i32 7, !"frame-pointer", i32 2}
!312 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!313 = !{!"auto-init"}
!314 = !{i64 2148741115, i64 2148741120, i64 2148741133, i64 2148741177, i64 2148741211, i64 2148741232}
!315 = !{!"branch_weights", i32 2000, i32 1}
!316 = !{i64 2148108002, i64 2148108025, i64 2148108057, i64 2148108089, i64 2148108127, i64 2148108157}
