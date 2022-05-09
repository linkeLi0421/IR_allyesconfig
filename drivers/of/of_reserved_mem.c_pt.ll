; ModuleID = '/llk/IR_all_yes/drivers/of/of_reserved_mem.c_pt.bc'
source_filename = "../drivers/of/of_reserved_mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_reserved_mem_device_init_by_idx\22, \22a\22\09"
module asm "\09.weak\09__crc_of_reserved_mem_device_init_by_idx\09\09\09\09"
module asm "\09.long\09__crc_of_reserved_mem_device_init_by_idx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reserved_mem_device_init_by_idx:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reserved_mem_device_init_by_idx\22\09\09\09\09\09"
module asm "__kstrtabns_of_reserved_mem_device_init_by_idx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_reserved_mem_device_init_by_name\22, \22a\22\09"
module asm "\09.weak\09__crc_of_reserved_mem_device_init_by_name\09\09\09\09"
module asm "\09.long\09__crc_of_reserved_mem_device_init_by_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reserved_mem_device_init_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reserved_mem_device_init_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_of_reserved_mem_device_init_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_reserved_mem_device_release\22, \22a\22\09"
module asm "\09.weak\09__crc_of_reserved_mem_device_release\09\09\09\09"
module asm "\09.long\09__crc_of_reserved_mem_device_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reserved_mem_device_release:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reserved_mem_device_release\22\09\09\09\09\09"
module asm "__kstrtabns_of_reserved_mem_device_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_reserved_mem_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_of_reserved_mem_lookup\09\09\09\09"
module asm "\09.long\09__crc_of_reserved_mem_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reserved_mem_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reserved_mem_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_of_reserved_mem_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rmem_assigned_device = type { ptr, ptr, %struct.list_head }
%struct.reserved_mem_ops = type { ptr, ptr }

@reserved_mem = internal global { [64 x %struct.reserved_mem], [448 x i8] } zeroinitializer, align 32
@reserved_mem_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fdt_reserved_mem_save_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013OF: reserved mem: not enough space for all defined regions.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fdt_reserved_mem_save_node\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/of/of_reserved_mem.c\00", [35 x i8] zeroinitializer }, align 32
@fdt_reserved_mem_save_node._entry_ptr = internal global ptr @fdt_reserved_mem_save_node._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"no-map\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phandle\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"linux,phandle\00", [18 x i8] zeroinitializer }, align 32
@fdt_init_reserved_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016OF: reserved mem: node %s compatible matching fail\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fdt_init_reserved_mem\00", [42 x i8] zeroinitializer }, align 32
@fdt_init_reserved_mem._entry_ptr = internal global ptr @fdt_init_reserved_mem._entry, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@of_rmem_assigned_device_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_rmem_assigned_device_mutex, i64 52), ptr getelementptr (i8, ptr @of_rmem_assigned_device_mutex, i64 52) }, ptr @of_rmem_assigned_device_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@of_rmem_assigned_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @of_rmem_assigned_device_list, ptr @of_rmem_assigned_device_list }, [24 x i8] zeroinitializer }, align 32
@of_reserved_mem_device_init_by_idx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 370, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"assigned reserved memory node %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"of_reserved_mem_device_init_by_idx\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_reserved_mem_device_init_by_idx._entry_ptr = internal global ptr @of_reserved_mem_device_init_by_idx._entry, section ".printk_index", align 4
@__kstrtab_of_reserved_mem_device_init_by_idx = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reserved_mem_device_init_by_idx = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reserved_mem_device_init_by_idx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reserved_mem_device_init_by_idx to i32), ptr @__kstrtab_of_reserved_mem_device_init_by_idx, ptr @__kstrtabns_of_reserved_mem_device_init_by_idx }, section "___ksymtab_gpl+of_reserved_mem_device_init_by_idx", align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"memory-region-names\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_of_reserved_mem_device_init_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reserved_mem_device_init_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reserved_mem_device_init_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reserved_mem_device_init_by_name to i32), ptr @__kstrtab_of_reserved_mem_device_init_by_name, ptr @__kstrtabns_of_reserved_mem_device_init_by_name }, section "___ksymtab_gpl+of_reserved_mem_device_init_by_name", align 4
@__kstrtab_of_reserved_mem_device_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reserved_mem_device_release = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reserved_mem_device_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reserved_mem_device_release to i32), ptr @__kstrtab_of_reserved_mem_device_release, ptr @__kstrtabns_of_reserved_mem_device_release }, section "___ksymtab_gpl+of_reserved_mem_device_release", align 4
@__kstrtab_of_reserved_mem_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reserved_mem_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reserved_mem_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reserved_mem_lookup to i32), ptr @__kstrtab_of_reserved_mem_lookup, ptr @__kstrtabns_of_reserved_mem_lookup }, section "___ksymtab_gpl+of_reserved_mem_lookup", align 4
@__rmem_of_table_sentinel = internal constant %struct.of_device_id zeroinitializer, section "__reservedmem_of_table_end", align 4
@__rmem_check_for_overlap._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 246, ptr null, ptr null }, align 1
@.str.14 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013OF: reserved mem: OVERLAP DETECTED!\0A%s (%pa--%pa) overlaps with %s (%pa--%pa)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__rmem_check_for_overlap\00", [39 x i8] zeroinitializer }, align 32
@__rmem_check_for_overlap._entry_ptr = internal global ptr @__rmem_check_for_overlap._entry, section ".printk_index", align 4
@dt_root_addr_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@dt_root_size_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@__reserved_mem_alloc_size._entry = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 98, ptr null, ptr null }, align 1
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013OF: reserved mem: invalid size property in '%s' node.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__reserved_mem_alloc_size\00", [38 x i8] zeroinitializer }, align 32
@__reserved_mem_alloc_size._entry_ptr = internal global ptr @__reserved_mem_alloc_size._entry, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alignment\00", [22 x i8] zeroinitializer }, align 32
@__reserved_mem_alloc_size._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 107, ptr null, ptr null }, align 1
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013OF: reserved mem: invalid alignment property in '%s' node.\0A\00", [34 x i8] zeroinitializer }, align 32
@__reserved_mem_alloc_size._entry_ptr.22 = internal global ptr @__reserved_mem_alloc_size._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shared-dma-pool\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reusable\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alloc-ranges\00", [19 x i8] zeroinitializer }, align 32
@__reserved_mem_alloc_size._entry.26 = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.2, i32 131, ptr null, ptr null }, align 1
@.str.27 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013OF: reserved mem: invalid alloc-ranges property in '%s', skipping node.\0A\00", [53 x i8] zeroinitializer }, align 32
@__reserved_mem_alloc_size._entry_ptr.28 = internal global ptr @__reserved_mem_alloc_size._entry.26, section ".printk_index", align 4
@__reserved_mem_alloc_size.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.18, ptr @.str.2, ptr @.str.30, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"of_reserved_mem\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"allocated memory for '%s' node: base %pa, size %lu MiB\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"OF: reserved mem: allocated memory for '%s' node: base %pa, size %lu MiB\0A\00", [54 x i8] zeroinitializer }, align 32
@__reserved_mem_alloc_size.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.18, ptr @.str.2, ptr @.str.30, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__reserved_mem_alloc_size._entry.32 = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.2, i32 162, ptr null, ptr null }, align 1
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016OF: reserved mem: failed to allocate memory for node '%s'\0A\00", [35 x i8] zeroinitializer }, align 32
@__reserved_mem_alloc_size._entry_ptr.34 = internal global ptr @__reserved_mem_alloc_size._entry.32, section ".printk_index", align 4
@__reservedmem_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@__reserved_mem_init_node._entry = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 194, ptr null, ptr null }, align 1
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016OF: reserved mem: initialized node %s, compatible id %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__reserved_mem_init_node\00", [39 x i8] zeroinitializer }, align 32
@__reserved_mem_init_node._entry_ptr = internal global ptr @__reserved_mem_init_node._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"of_rmem_assigned_device_mutex.wait_lock\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"of_rmem_assigned_device_mutex\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"reserved_mem\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 29, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"reserved_mem_count\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 30, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 65, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 269, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 270, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 272, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 282, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 342, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant [30 x i8] c"of_rmem_assigned_device_mutex\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [29 x i8] c"of_rmem_assigned_device_list\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 313, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 370, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 392, i32 41 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 244, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 93, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 98, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 103, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 106, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 117, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 118, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 126, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 130, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 145, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 162, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 193, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [32 x i8] c"../drivers/of/of_reserved_mem.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 314, i32 8 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__ksymtab_of_reserved_mem_device_init_by_idx, ptr @__ksymtab_of_reserved_mem_device_init_by_name, ptr @__ksymtab_of_reserved_mem_device_release, ptr @__ksymtab_of_reserved_mem_lookup, ptr @__reserved_mem_alloc_size._entry, ptr @__reserved_mem_alloc_size._entry.20, ptr @__reserved_mem_alloc_size._entry.26, ptr @__reserved_mem_alloc_size._entry.32, ptr @__reserved_mem_alloc_size._entry_ptr, ptr @__reserved_mem_alloc_size._entry_ptr.22, ptr @__reserved_mem_alloc_size._entry_ptr.28, ptr @__reserved_mem_alloc_size._entry_ptr.34, ptr @__reserved_mem_init_node._entry, ptr @__reserved_mem_init_node._entry_ptr, ptr @__rmem_check_for_overlap._entry, ptr @__rmem_check_for_overlap._entry_ptr, ptr @__rmem_of_table_sentinel, ptr @fdt_init_reserved_mem._entry, ptr @fdt_init_reserved_mem._entry_ptr, ptr @fdt_reserved_mem_save_node._entry, ptr @fdt_reserved_mem_save_node._entry_ptr, ptr @of_reserved_mem_device_init_by_idx._entry, ptr @of_reserved_mem_device_init_by_idx._entry_ptr, ptr @reserved_mem, ptr @reserved_mem_count, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @of_rmem_assigned_device_mutex, ptr @of_rmem_assigned_device_list, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_mem to i32), i32 1792, i32 2240, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_mem_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdt_reserved_mem_save_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdt_init_reserved_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rmem_assigned_device_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rmem_assigned_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_reserved_mem_device_init_by_idx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fdt_reserved_mem_save_node(i32 noundef %node, ptr noundef %uname, i32 noundef %base, i32 noundef %size) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @reserved_mem_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %0)
  %cmp = icmp eq i32 %0, 64
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %0
  %fdt_node = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %0, i32 1
  %1 = ptrtoint ptr %fdt_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %node, ptr %fdt_node, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %uname, ptr %arrayidx, align 4
  %base1 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %0, i32 4
  %3 = ptrtoint ptr %base1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %base, ptr %base1, align 4
  %size2 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %0, i32 5
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %size2, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @reserved_mem_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fdt_init_reserved_mem() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__rmem_check_for_overlap() #14
  %0 = load i32, ptr @reserved_mem_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp61 = icmp sgt i32 %0, 0
  br i1 %cmp61, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %entry.for.body_crit_edge
  %i.062 = phi i32 [ %inc, %if.end35.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.062
  %fdt_node = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.062, i32 1
  %1 = ptrtoint ptr %fdt_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fdt_node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %len, align 4, !annotation !101
  %call = call ptr @of_get_flat_dt_prop(i32 noundef %2, ptr noundef nonnull @.str.3, ptr noundef null) #10
  %cmp1.not = icmp eq ptr %call, null
  %call2 = call ptr @of_get_flat_dt_prop(i32 noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull %len) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end, label %for.body.if.then5_crit_edge

for.body.if.then5_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end:                                           ; preds = %for.body
  %call3 = call ptr @of_get_flat_dt_prop(i32 noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %len) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %for.body.if.then5_crit_edge
  %prop.058 = phi ptr [ %call3, %if.end.if.then5_crit_edge ], [ %call2, %for.body.if.then5_crit_edge ]
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %.off = add i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off)
  %6 = icmp ult i32 %.off, 7
  br i1 %6, label %if.then5.of_read_number.exit_crit_edge, label %for.body.i.preheader

if.then5.of_read_number.exit_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_read_number.exit

for.body.i.preheader:                             ; preds = %if.then5
  %div = sdiv i32 %5, 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %size.addr.05.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %div, %for.body.i.preheader ]
  %cell.addr.04.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %prop.058, %for.body.i.preheader ]
  %dec.i = add i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %cell.addr.04.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %of_read_number.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

of_read_number.exit.loopexit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %cell.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cell.addr.04.i, align 4
  br label %of_read_number.exit

of_read_number.exit:                              ; preds = %of_read_number.exit.loopexit, %if.then5.of_read_number.exit_crit_edge
  %r.0.lcssa.i.off0 = phi i32 [ 0, %if.then5.of_read_number.exit_crit_edge ], [ %8, %of_read_number.exit.loopexit ]
  %phandle = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.062, i32 2
  %9 = ptrtoint ptr %phandle to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %r.0.lcssa.i.off0, ptr %phandle, align 4
  br label %if.end7

if.end7:                                          ; preds = %of_read_number.exit, %if.end.if.end7_crit_edge
  %size = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.062, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.end13, label %if.end7.if.then16_crit_edge

if.end7.if.then16_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end13:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.062, i32 4
  %call12 = call fastcc i32 @__reserved_mem_alloc_size(i32 noundef %2, ptr noundef %13, ptr noundef %base, ptr noundef %size) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14 = icmp eq i32 %call12, 0
  br i1 %cmp14, label %if.end13.if.then16_crit_edge, label %if.end13.if.end35_crit_edge

if.end13.if.end35_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %if.end7.if.then16_crit_edge
  %call17 = call fastcc i32 @__reserved_mem_init_node(ptr noundef %arrayidx) #14
  %14 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17, label %do.end [
    i32 0, label %if.then16.if.end35_crit_edge
    i32 -2, label %if.then16.if.end35_crit_edge66
  ]

if.then16.if.end35_crit_edge66:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then16.if.end35_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end:                                           ; preds = %if.then16
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %16) #13
  %base30 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.062, i32 4
  %17 = ptrtoint ptr %base30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base30, align 4
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  br i1 %cmp1.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = call i32 @memblock_clear_nomap(i32 noundef %18, i32 noundef %20) #10
  br label %if.end35

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = call i32 @memblock_phys_free(i32 noundef %18, i32 noundef %20) #10
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then26, %if.then16.if.end35_crit_edge, %if.then16.if.end35_crit_edge66, %if.end13.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  %inc = add nuw nsw i32 %i.062, 1
  %21 = load i32, ptr @reserved_mem_count, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %if.end35.for.body_crit_edge, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rmem_check_for_overlap() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %this_end = alloca i32, align 4
  %next_end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @reserved_mem_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @sort(ptr noundef nonnull @reserved_mem, i32 noundef %0, i32 noundef 28, ptr noundef nonnull @__rmem_cmp, ptr noundef null) #10
  %1 = load i32, ptr @reserved_mem_count, align 4
  %sub29 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp130 = icmp sgt i32 %sub29, 0
  br i1 %cmp130, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.031 = phi i32 [ %add, %if.end16.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.031, 1
  %base = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.031, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %size = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.031, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %add3 = add i32 %5, %3
  %base4 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %add, i32 4
  %6 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %7)
  %cmp5 = icmp ugt i32 %add3, %7
  br i1 %cmp5, label %if.then6, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %add
  %arrayidx = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.031
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this_end) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_end) #10
  %8 = ptrtoint ptr %this_end to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add3, ptr %this_end, align 4
  %size11 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %add, i32 5
  %9 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size11, align 4
  %add12 = add i32 %10, %7
  %11 = ptrtoint ptr %next_end to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add12, ptr %next_end, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %13, ptr noundef %base, ptr noundef nonnull %this_end, ptr noundef %15, ptr noundef %base4, ptr noundef nonnull %next_end) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_end) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_end) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then6, %for.body.if.end16_crit_edge
  %16 = load i32, ptr @reserved_mem_count, align 4
  %sub = add i32 %16, -1
  %cmp1 = icmp slt i32 %add, %sub
  br i1 %cmp1, label %if.end16.for.body_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__reserved_mem_alloc_size(i32 noundef %node, ptr noundef %uname, ptr nocapture noundef writeonly %res_base, ptr nocapture noundef writeonly %res_size) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %base = alloca i32, align 4
  %len = alloca i32, align 4
  %prop = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_addr_cells to i32))
  %0 = load i32, ptr @dt_root_addr_cells, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_size_cells to i32))
  %1 = load i32, ptr @dt_root_size_cells, align 4
  %add = add i32 %1, %0
  %mul = shl i32 %add, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #10
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %base, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %len, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #10
  %call = call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.16, ptr noundef nonnull %len) #10
  %4 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %prop, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_size_cells to i32))
  %7 = load i32, ptr @dt_root_size_cells, align 4
  %mul1 = shl i32 %7, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mul1)
  %cmp.not = icmp eq i32 %6, %mul1
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %uname) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i64 @dt_mem_next_cell(i32 noundef %7, ptr noundef nonnull %prop) #10
  %conv = trunc i64 %call5 to i32
  %call6 = call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.19, ptr noundef nonnull %len) #10
  %8 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %prop, align 4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.if.end21_crit_edge, label %if.then8

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then8:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_addr_cells to i32))
  %11 = load i32, ptr @dt_root_addr_cells, align 4
  %mul9 = shl i32 %11, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mul9)
  %cmp10.not = icmp eq i32 %10, %mul9
  br i1 %cmp10.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %uname) #13
  br label %cleanup

if.end18:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call i64 @dt_mem_next_cell(i32 noundef %11, ptr noundef nonnull %prop) #10
  %conv20 = trunc i64 %call19 to i32
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %if.end4.if.end21_crit_edge
  %align.0 = phi i32 [ %conv20, %if.end18 ], [ 0, %if.end4.if.end21_crit_edge ]
  %call22 = call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.3, ptr noundef null) #10
  %cmp23 = icmp ne ptr %call22, null
  %call25 = call i32 @of_flat_dt_is_compatible(i32 noundef %node, ptr noundef nonnull @.str.23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end21.if.end35_crit_edge, label %land.lhs.true

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.24, ptr noundef null) #10
  %tobool28.not = icmp eq ptr %call27, null
  %brmerge = select i1 %tobool28.not, i1 true, i1 %cmp23
  %12 = call i32 @llvm.umax.i32(i32 %align.0, i32 8388608)
  %spec.select = select i1 %brmerge, i32 %align.0, i32 %12
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %if.end21.if.end35_crit_edge
  %align.1 = phi i32 [ %align.0, %if.end21.if.end35_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call36 = call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.25, ptr noundef nonnull %len) #10
  %13 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call36, ptr %prop, align 4
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end35
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %rem = srem i32 %15, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp39.not = icmp eq i32 %rem, 0
  br i1 %cmp39.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %uname) #13
  br label %cleanup

if.end47:                                         ; preds = %if.then38
  %16 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp48145 = icmp sgt i32 %15, 0
  br i1 %cmp48145, label %if.end47.while.body_crit_edge, label %if.end47.if.end96_crit_edge

if.end47.if.end96_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  br label %while.body

while.body:                                       ; preds = %if.end72.while.body_crit_edge, %if.end47.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_addr_cells to i32))
  %17 = load i32, ptr @dt_root_addr_cells, align 4
  %call50 = call i64 @dt_mem_next_cell(i32 noundef %17, ptr noundef nonnull %prop) #10
  %conv51 = trunc i64 %call50 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_size_cells to i32))
  %18 = load i32, ptr @dt_root_size_cells, align 4
  %call53 = call i64 @dt_mem_next_cell(i32 noundef %18, ptr noundef nonnull %prop) #10
  %add54 = add i64 %call53, %call50
  %conv55 = trunc i64 %add54 to i32
  %call57 = call fastcc i32 @early_init_dt_alloc_reserved_memory_arch(i32 noundef %conv, i32 noundef %align.1, i32 noundef %conv51, i32 noundef %conv55, i1 noundef zeroext %cmp23, ptr noundef nonnull %base) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %do.body61, label %if.end72

do.body61:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__reserved_mem_alloc_size.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__reserved_mem_alloc_size, %if.end96.sink.split)) #10
          to label %if.end96 [label %if.end96.sink.split], !srcloc !102

if.end72:                                         ; preds = %while.body
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %sub = sub i32 %20, %mul
  store i32 %sub, ptr %len, align 4
  %cmp48 = icmp sgt i32 %sub, 0
  br i1 %cmp48, label %if.end72.while.body_crit_edge, label %if.end72.if.end96_crit_edge

if.end72.if.end96_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.end72.while.body_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.else:                                          ; preds = %if.end35
  %call74 = call fastcc i32 @early_init_dt_alloc_reserved_memory_arch(i32 noundef %conv, i32 noundef %align.1, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %cmp23, ptr noundef nonnull %base) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %do.body78, label %if.else.if.end96_crit_edge

if.else.if.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.body78:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__reserved_mem_alloc_size.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__reserved_mem_alloc_size, %if.end96.sink.split)) #10
          to label %if.end96 [label %if.end96.sink.split], !srcloc !102

if.end96.sink.split:                              ; preds = %do.body78, %do.body61
  %__reserved_mem_alloc_size.__UNIQUE_ID_ddebug233.sink = phi ptr [ @__reserved_mem_alloc_size.__UNIQUE_ID_ddebug232, %do.body61 ], [ @__reserved_mem_alloc_size.__UNIQUE_ID_ddebug233, %do.body78 ]
  call void @__sanitizer_cov_trace_pc() #12
  %div91138 = lshr i32 %conv, 20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull %__reserved_mem_alloc_size.__UNIQUE_ID_ddebug233.sink, ptr noundef nonnull @.str.31, ptr noundef %uname, ptr noundef nonnull %base, i32 noundef %div91138) #10
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %do.body78, %if.else.if.end96_crit_edge, %if.end72.if.end96_crit_edge, %do.body61, %if.end47.if.end96_crit_edge
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp97 = icmp eq i32 %22, 0
  br i1 %cmp97, label %do.end102, label %if.end105

do.end102:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %uname) #13
  br label %cleanup

if.end105:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %res_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %res_base, align 4
  %24 = ptrtoint ptr %res_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %res_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %do.end102, %do.end44, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15 ], [ -22, %do.end44 ], [ -12, %do.end102 ], [ 0, %if.end105 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__reserved_mem_init_node(ptr noundef %rmem) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 icmp ult (ptr @__reservedmem_of_table, ptr @__rmem_of_table_sentinel), label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fdt_node = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi ptr [ @__reservedmem_of_table, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %ret.022 = phi i32 [ -2, %for.body.lr.ph ], [ %ret.1.ph, %for.inc.for.body_crit_edge ]
  %data = getelementptr inbounds %struct.of_device_id, ptr %i.023, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %i.023, i32 0, i32 2
  %2 = ptrtoint ptr %fdt_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fdt_node, align 4
  %call = tail call i32 @of_flat_dt_is_compatible(i32 noundef %3, ptr noundef %compatible) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call1 = tail call i32 %1(ptr noundef %rmem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmem, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %5, ptr noundef %compatible) #13
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1.ph = phi i32 [ %call1, %if.end.for.inc_crit_edge ], [ %ret.022, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.of_device_id, ptr %i.023, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__rmem_of_table_sentinel
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %cleanup ], [ -2, %entry.for.end_crit_edge ], [ %ret.1.ph, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_clear_nomap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_free(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev, ptr noundef %np, i32 noundef %idx) #4 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %np, null
  %tobool1.not = icmp eq ptr %dev, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef %idx, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %if.end
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end4

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %of_parse_phandle.exit
  %call5 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %2) #10
  br i1 %call5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @of_node_put(ptr noundef nonnull %2) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %phandle.i = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %phandle.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phandle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i50 = icmp eq i32 %4, 0
  br i1 %tobool.not.i50, label %if.end7.__find_rmem.exit.thread_crit_edge, label %for.cond.preheader.i

if.end7.__find_rmem.exit.thread_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %__find_rmem.exit.thread

for.cond.preheader.i:                             ; preds = %if.end7
  %5 = load i32, ptr @reserved_mem_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %for.cond.preheader.i.__find_rmem.exit.thread_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.__find_rmem.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__find_rmem.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %phandle1.i = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.013.i, i32 2
  %6 = ptrtoint ptr %phandle1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phandle1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %4)
  %cmp3.i = icmp eq i32 %7, %4
  br i1 %cmp3.i, label %__find_rmem.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.__find_rmem.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.__find_rmem.exit.thread_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__find_rmem.exit.thread

__find_rmem.exit.thread:                          ; preds = %for.inc.i.__find_rmem.exit.thread_crit_edge, %for.cond.preheader.i.__find_rmem.exit.thread_crit_edge, %if.end7.__find_rmem.exit.thread_crit_edge
  call void @of_node_put(ptr noundef nonnull %2) #10
  br label %cleanup

__find_rmem.exit:                                 ; preds = %for.body.i
  %arrayidx.i = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.013.i
  call void @of_node_put(ptr noundef nonnull %2) #10
  %tobool9.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool9.not, label %__find_rmem.exit.cleanup_crit_edge, label %lor.lhs.false10

__find_rmem.exit.cleanup_crit_edge:               ; preds = %__find_rmem.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false10:                                  ; preds = %__find_rmem.exit
  %ops = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.013.i, i32 3
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %lor.lhs.false12.cleanup_crit_edge, label %if.end16

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 16) #15
  %tobool18.not = icmp eq ptr %call7.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call23 = call i32 %16(ptr noundef nonnull %arrayidx.i, ptr noundef nonnull %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp eq i32 %call23, 0
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end20
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %call7.i, align 8
  %rmem26 = getelementptr inbounds %struct.rmem_assigned_device, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %rmem26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.i, ptr %rmem26, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @of_rmem_assigned_device_mutex, i32 noundef 0) #10
  %list = getelementptr inbounds %struct.rmem_assigned_device, ptr %call7.i, i32 0, i32 2
  %19 = load ptr, ptr @of_rmem_assigned_device_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @of_rmem_assigned_device_list, ptr noundef %19) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then24.list_add.exit_crit_edge

if.then24.list_add.exit_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev1.i.i, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.rmem_assigned_device, ptr %call7.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @of_rmem_assigned_device_list, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @of_rmem_assigned_device_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then24.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @of_rmem_assigned_device_mutex) #10
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %dev, ptr noundef nonnull @.str.9, ptr noundef %24) #13
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %list_add.exit, %if.end16.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %__find_rmem.exit.cleanup_crit_edge, %__find_rmem.exit.thread, %if.then6, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %of_parse_phandle.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %__find_rmem.exit.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %call23, %if.else ], [ 0, %list_add.exit ], [ -19, %of_parse_phandle.exit.thread ], [ -22, %__find_rmem.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_reserved_mem_device_init_by_name(ptr noundef %dev, ptr noundef %np, ptr noundef %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str.13, ptr noundef %name) #10
  %call1 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev, ptr noundef %np, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_reserved_mem_device_release(ptr noundef %dev) #4 align 64 {
entry:
  %release_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %release_list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %release_list, i32 0, i32 1
  %1 = ptrtoint ptr %release_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %release_list, ptr %release_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %release_list, ptr %0, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @of_rmem_assigned_device_mutex, i32 noundef 0) #10
  %3 = load ptr, ptr @of_rmem_assigned_device_list, align 4
  %cmp.not69 = icmp eq ptr %3, @of_rmem_assigned_device_list
  br i1 %cmp.not69, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in70 = phi ptr [ %.pn72, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn72 = load ptr, ptr %.pn.in70, align 4
  %rd.0 = getelementptr i8, ptr %.pn.in70, i32 -8
  %5 = ptrtoint ptr %rd.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rd.0, align 4
  %cmp8 = icmp eq ptr %6, %dev
  br i1 %cmp8, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in70) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in70, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in70, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in70, ptr noundef %14, ptr noundef nonnull %release_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn.in70, ptr %0, align 4
  %16 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %release_list, ptr %.pn.in70, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in70, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %.pn.in70, ptr %14, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn72, @of_rmem_assigned_device_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @of_rmem_assigned_device_mutex) #10
  %19 = ptrtoint ptr %release_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release_list, align 4
  %cmp26.not75 = icmp eq ptr %20, %release_list
  br i1 %cmp26.not75, label %for.end.for.end47_crit_edge, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.end.for.end47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end47

for.body28:                                       ; preds = %if.end40.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %.pn65.in76 = phi ptr [ %.pn6578, %if.end40.for.body28_crit_edge ], [ %20, %for.end.for.body28_crit_edge ]
  %rd.177 = getelementptr i8, ptr %.pn65.in76, i32 -8
  %21 = ptrtoint ptr %.pn65.in76 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn6578 = load ptr, ptr %.pn65.in76, align 4
  %rmem = getelementptr i8, ptr %.pn65.in76, i32 -4
  %22 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmem, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %for.body28.if.end40_crit_edge, label %land.lhs.true

for.body28.if.end40_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.lhs.true:                                    ; preds = %for.body28
  %ops = getelementptr inbounds %struct.reserved_mem, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %tobool30.not = icmp eq ptr %25, null
  br i1 %tobool30.not, label %land.lhs.true.if.end40_crit_edge, label %land.lhs.true31

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.lhs.true31:                                  ; preds = %land.lhs.true
  %device_release = getelementptr inbounds %struct.reserved_mem_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %device_release to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_release, align 4
  %tobool34.not = icmp eq ptr %27, null
  br i1 %tobool34.not, label %land.lhs.true31.if.end40_crit_edge, label %if.then35

land.lhs.true31.if.end40_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then35:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  call void %27(ptr noundef nonnull %23, ptr noundef %dev) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %land.lhs.true31.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %for.body28.if.end40_crit_edge
  call void @kfree(ptr noundef %rd.177) #10
  %cmp26.not = icmp eq ptr %.pn6578, %release_list
  br i1 %cmp26.not, label %if.end40.for.end47_crit_edge, label %if.end40.for.body28_crit_edge

if.end40.for.body28_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28

if.end40.for.end47_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end47

for.end47:                                        ; preds = %if.end40.for.end47_crit_edge, %for.end.for.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %release_list) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_reserved_mem_lookup(ptr nocapture noundef readonly %np) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %0 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @strrchr(ptr noundef nonnull %1, i32 noundef 47) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %cond.i = select i1 %tobool.not.i, ptr %1, ptr %add.ptr.i
  %2 = load i32, ptr @reserved_mem_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp13 = icmp sgt i32 %2, 0
  br i1 %cmp13, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %i.014
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %cond.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %arrayidx, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__rmem_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.reserved_mem, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %base1 = getelementptr inbounds %struct.reserved_mem, ptr %b, i32 0, i32 4
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ugt i32 %1, %3
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct.reserved_mem, ptr %a, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %size7 = getelementptr inbounds %struct.reserved_mem, ptr %b, i32 0, i32 5
  %6 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp8 = icmp ult i32 %5, %7
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp13 = icmp ugt i32 %5, %7
  %. = zext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ -1, %if.end6.cleanup_crit_edge ], [ %., %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dt_mem_next_cell(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_flat_dt_is_compatible(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @early_init_dt_alloc_reserved_memory_arch(i32 noundef %size, i32 noundef %align, i32 noundef %start, i32 noundef %end, i1 noundef zeroext %nomap, ptr nocapture noundef writeonly %res_base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end)
  %tobool.not = icmp eq i32 %end, 0
  %spec.select = select i1 %tobool.not, i32 -1, i32 %end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align)
  %tobool1.not = icmp eq i32 %align, 0
  %cond5 = select i1 %tobool1.not, i32 128, i32 %align
  %call = tail call i32 @memblock_phys_alloc_range(i32 noundef %size, i32 noundef %cond5, i32 noundef %start, i32 noundef %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %res_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %res_base, align 4
  br i1 %nomap, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 @memblock_mark_nomap(i32 noundef %call, i32 noundef %size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then11

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 @memblock_phys_free(i32 noundef %call, i32 noundef %size) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8.if.end13_crit_edge
  tail call void @kmemleak_ignore_phys(i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_alloc_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_nomap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_ignore_phys(i32 noundef) local_unnamed_addr #3 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !64, !66, !68, !69, !70, !72, !73, !74, !75, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/of/of_reserved_mem.c", i32 65, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @fdt_reserved_mem_save_node._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @fdt_reserved_mem_save_node._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/of/of_reserved_mem.c", i32 269, i32 37}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/of/of_reserved_mem.c", i32 270, i32 36}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/of/of_reserved_mem.c", i32 272, i32 37}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/of/of_reserved_mem.c", i32 282, i32 5}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @fdt_init_reserved_mem._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @fdt_init_reserved_mem._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/of/of_reserved_mem.c", i32 342, i32 32}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/of/of_reserved_mem.c", i32 370, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @of_reserved_mem_device_init_by_idx._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @of_reserved_mem_device_init_by_idx._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_of_reserved_mem_device_init_by_idx, !27, !"__ksymtab_of_reserved_mem_device_init_by_idx", i1 false, i1 false}
!27 = !{!"../drivers/of/of_reserved_mem.c", i32 377, i32 1}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/of/of_reserved_mem.c", i32 392, i32 41}
!30 = !{ptr @__ksymtab_of_reserved_mem_device_init_by_name, !31, !"__ksymtab_of_reserved_mem_device_init_by_name", i1 false, i1 false}
!31 = !{!"../drivers/of/of_reserved_mem.c", i32 396, i32 1}
!32 = !{ptr @__ksymtab_of_reserved_mem_device_release, !33, !"__ksymtab_of_reserved_mem_device_release", i1 false, i1 false}
!33 = !{!"../drivers/of/of_reserved_mem.c", i32 424, i32 1}
!34 = !{ptr @__ksymtab_of_reserved_mem_lookup, !35, !"__ksymtab_of_reserved_mem_lookup", i1 false, i1 false}
!35 = !{!"../drivers/of/of_reserved_mem.c", i32 450, i32 1}
!36 = !{ptr @reserved_mem, !37, !"reserved_mem", i1 false, i1 false}
!37 = !{!"../drivers/of/of_reserved_mem.c", i32 29, i32 28}
!38 = !{ptr @reserved_mem_count, !39, !"reserved_mem_count", i1 false, i1 false}
!39 = !{!"../drivers/of/of_reserved_mem.c", i32 30, i32 12}
!40 = !{ptr @__rmem_of_table_sentinel, !41, !"__rmem_of_table_sentinel", i1 false, i1 false}
!41 = !{!"../drivers/of/of_reserved_mem.c", i32 172, i32 34}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/of/of_reserved_mem.c", i32 244, i32 4}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__rmem_check_for_overlap._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @__rmem_check_for_overlap._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/of/of_reserved_mem.c", i32 93, i32 35}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/of/of_reserved_mem.c", i32 98, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__reserved_mem_alloc_size._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @__reserved_mem_alloc_size._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/of/of_reserved_mem.c", i32 103, i32 35}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/of/of_reserved_mem.c", i32 106, i32 4}
!58 = !{ptr @__reserved_mem_alloc_size._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @__reserved_mem_alloc_size._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/of/of_reserved_mem.c", i32 117, i32 40}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/of/of_reserved_mem.c", i32 118, i32 35}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/of/of_reserved_mem.c", i32 126, i32 35}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/of/of_reserved_mem.c", i32 130, i32 4}
!68 = !{ptr @__reserved_mem_alloc_size._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @__reserved_mem_alloc_size._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/of/of_reserved_mem.c", i32 145, i32 5}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__reserved_mem_alloc_size.__UNIQUE_ID_ddebug232, !71, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!74 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__reserved_mem_alloc_size.__UNIQUE_ID_ddebug233, !76, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!76 = !{!"../drivers/of/of_reserved_mem.c", i32 157, i32 4}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/of/of_reserved_mem.c", i32 162, i32 3}
!79 = !{ptr @__reserved_mem_alloc_size._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @__reserved_mem_alloc_size._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/of/of_reserved_mem.c", i32 193, i32 4}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__reserved_mem_init_node._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @__reserved_mem_init_node._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/of/of_reserved_mem.c", i32 314, i32 8}
!88 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @of_rmem_assigned_device_mutex, !87, !"of_rmem_assigned_device_mutex", i1 false, i1 false}
!90 = !{ptr @of_rmem_assigned_device_list, !91, !"of_rmem_assigned_device_list", i1 false, i1 false}
!91 = !{!"../drivers/of/of_reserved_mem.c", i32 313, i32 8}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{i64 2148867690, i64 2148867695, i64 2148867708, i64 2148867752, i64 2148867786, i64 2148867807}
