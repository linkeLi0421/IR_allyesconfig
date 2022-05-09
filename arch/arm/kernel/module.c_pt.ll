; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/module.c_pt.bc'
source_filename = "../arch/arm/kernel/module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf32_rel = type { i32, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
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
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.elf32_sym = type { i32, i32, i32, i8, i8, i16 }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }

@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".init\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c".ARM.extab.init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c".ARM.exidx.init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".exit\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c".ARM.extab.exit\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c".ARM.exidx.exit\00", [16 x i8] zeroinitializer }, align 32
@apply_relocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: section %u reloc %u: bad relocation sym offset\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apply_relocate\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/kernel/module.c\00", [39 x i8] zeroinitializer }, align 32
@apply_relocate._entry_ptr = internal global ptr @apply_relocate._entry, section ".printk_index", align 4
@apply_relocate._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013%s: section %u reloc %u sym '%s': out of bounds relocation, offset %d size %u\0A\00", [47 x i8] zeroinitializer }, align 32
@apply_relocate._entry_ptr.11 = internal global ptr @apply_relocate._entry.9, section ".printk_index", align 4
@apply_relocate._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.8, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013%s: section %u reloc %u sym '%s': unsupported interworking call (ARM -> Thumb)\0A\00", [46 x i8] zeroinitializer }, align 32
@apply_relocate._entry_ptr.14 = internal global ptr @apply_relocate._entry.12, section ".printk_index", align 4
@apply_relocate._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.8, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013%s: section %u reloc %u sym '%s': relocation %u out of range (%#lx -> %#x)\0A\00", [50 x i8] zeroinitializer }, align 32
@apply_relocate._entry_ptr.17 = internal global ptr @apply_relocate._entry.15, section ".printk_index", align 4
@apply_relocate._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.8, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@apply_relocate._entry_ptr.19 = internal global ptr @apply_relocate._entry.18, section ".printk_index", align 4
@apply_relocate._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.8, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: unknown relocation: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@apply_relocate._entry_ptr.22 = internal global ptr @apply_relocate._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c".ARM.exidx.init.text\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c".ARM.exidx\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c".ARM.exidx.exit.text\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c".ARM.exidx.text.unlikely\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c".ARM.exidx.text.hot\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c".init.text\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".text\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c".exit.text\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c".text.unlikely\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c".text.hot\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c".pv_table\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c".alt.smp.init\00", [18 x i8] zeroinitializer }, align 32
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 2, i64 3, i64 28, i64 29, i64 38, i64 40, i64 42, i64 43, i64 44, i64 45, i64 46]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 44, i64 46]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 59, i32 25 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 60, i32 19 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 61, i32 19 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 66, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 67, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 68, i32 19 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 93, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 102, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 124, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 151, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 178, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 336, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 383, i32 14 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 385, i32 19 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 387, i32 19 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 389, i32 19 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 391, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 393, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 395, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 397, i32 19 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 399, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 401, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 414, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [28 x i8] c"../arch/arm/kernel/module.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 418, i32 37 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @apply_relocate._entry, ptr @apply_relocate._entry.12, ptr @apply_relocate._entry.15, ptr @apply_relocate._entry.18, ptr @apply_relocate._entry.20, ptr @apply_relocate._entry.9, ptr @apply_relocate._entry_ptr, ptr @apply_relocate._entry_ptr.11, ptr @apply_relocate._entry_ptr.14, ptr @apply_relocate._entry_ptr.17, ptr @apply_relocate._entry_ptr.19, ptr @apply_relocate._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_relocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_relocate._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_relocate._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_relocate._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_relocate._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_relocate._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @module_alloc(i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 1, i32 noundef -1090519040, i32 noundef -1075838976, i32 noundef 11456, i32 noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %2 = load ptr, ptr @high_memory, align 4
  %3 = ptrtoint ptr %2 to i32
  %add = add i32 %3, 8388608
  %and = and i32 %add, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %call1 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 1, i32 noundef %and, i32 noundef -8388608, i32 noundef 3264, i32 noundef %4, i32 noundef 0, i32 noundef -1, ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc_node_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @module_init_section(ptr nocapture noundef readonly %name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %entry.lor.end_crit_edge, label %lor.lhs.false

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %call1.i6 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(16) @.str.1, i32 noundef 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %cmp.i7 = icmp eq i32 %call1.i6, 0
  br i1 %cmp.i7, label %lor.lhs.false.lor.end_crit_edge, label %lor.rhs

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i9 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(16) @.str.2, i32 noundef 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %cmp.i10 = icmp eq i32 %call1.i9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %0 = phi i1 [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %cmp.i10, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @module_exit_section(ptr nocapture noundef readonly %name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.3, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %entry.lor.end_crit_edge, label %lor.lhs.false

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %call1.i6 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(16) @.str.4, i32 noundef 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %cmp.i7 = icmp eq i32 %call1.i6, 0
  br i1 %cmp.i7, label %lor.lhs.false.lor.end_crit_edge, label %lor.rhs

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i9 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(16) @.str.5, i32 noundef 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %cmp.i10 = icmp eq i32 %call1.i9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %0 = phi i1 [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %cmp.i10, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @apply_relocate(ptr nocapture noundef readonly %sechdrs, ptr noundef %strtab, i32 noundef %symindex, i32 noundef %relindex, ptr noundef %module) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sh_size = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %relindex, i32 5
  %0 = ptrtoint ptr %sh_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sh_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp313.not = icmp ult i32 %1, 8
  br i1 %cmp313.not, label %entry.cleanup158_crit_edge, label %for.body.lr.ph

entry.cleanup158_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup158

for.body.lr.ph:                                   ; preds = %entry
  %sh_addr = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %relindex, i32 3
  %2 = ptrtoint ptr %sh_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sh_addr, align 4
  %4 = inttoptr i32 %3 to ptr
  %sh_info = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %relindex, i32 7
  %5 = ptrtoint ptr %sh_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sh_info, align 4
  %sh_size4 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %symindex, i32 5
  %sh_addr8 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %symindex, i32 3
  %sh_size14 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %6, i32 5
  %sh_addr27 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %6, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rel.0316 = phi ptr [ %4, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0314 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %r_info = getelementptr inbounds %struct.elf32_rel, ptr %rel.0316, i32 0, i32 1
  %7 = ptrtoint ptr %r_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r_info, align 4
  %shr = lshr i32 %8, 8
  %9 = ptrtoint ptr %sh_size4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sh_size4, align 4
  %div5260 = lshr i32 %10, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %div5260)
  %cmp6 = icmp ugt i32 %shr, %div5260
  br i1 %cmp6, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.module, ptr %module, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %relindex, i32 noundef %i.0314) #12
  br label %cleanup158

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %sh_addr8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sh_addr8, align 4
  %13 = inttoptr i32 %12 to ptr
  %add.ptr9 = getelementptr %struct.elf32_sym, ptr %13, i32 %shr
  %14 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr9, align 4
  %16 = ptrtoint ptr %rel.0316 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rel.0316, align 4
  %18 = ptrtoint ptr %sh_size14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sh_size14, align 4
  %sub = add i32 %19, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub)
  %cmp15 = icmp ugt i32 %17, %sub
  br i1 %cmp15, label %do.end19, label %if.end26

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr10.le310 = getelementptr i8, ptr %strtab, i32 %15
  %name21 = getelementptr inbounds %struct.module, ptr %module, i32 0, i32 2
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name21, i32 noundef %relindex, i32 noundef %i.0314, ptr noundef %add.ptr10.le310, i32 noundef %17, i32 noundef %19) #12
  br label %cleanup158

if.end26:                                         ; preds = %if.end
  %20 = ptrtoint ptr %sh_addr27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sh_addr27, align 4
  %add = add i32 %21, %17
  %trunc = trunc i32 %8 to i8
  %22 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end147 [
    i8 0, label %if.end26.for.inc_crit_edge
    i8 2, label %if.end26.sw.bb_crit_edge
    i8 38, label %if.end26.sw.bb_crit_edge531
    i8 1, label %if.end26.sw.bb31_crit_edge
    i8 28, label %if.end26.sw.bb31_crit_edge532
    i8 29, label %if.end26.sw.bb31_crit_edge533
    i8 40, label %sw.bb80
    i8 42, label %sw.bb83
    i8 3, label %sw.bb107
    i8 43, label %if.end26.sw.bb111_crit_edge
    i8 44, label %if.end26.sw.bb111_crit_edge534
    i8 45, label %if.end26.sw.bb111_crit_edge535
    i8 46, label %if.end26.sw.bb111_crit_edge536
  ]

if.end26.sw.bb111_crit_edge536:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb111

if.end26.sw.bb111_crit_edge535:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb111

if.end26.sw.bb111_crit_edge534:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb111

if.end26.sw.bb111_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb111

if.end26.sw.bb31_crit_edge533:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

if.end26.sw.bb31_crit_edge532:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

if.end26.sw.bb31_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

if.end26.sw.bb_crit_edge531:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end26.sw.bb_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %if.end26.sw.bb_crit_edge, %if.end26.sw.bb_crit_edge531
  %st_value = getelementptr %struct.elf32_sym, ptr %13, i32 %shr, i32 1
  %23 = ptrtoint ptr %st_value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %st_value, align 4
  %25 = inttoptr i32 %add to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add30 = add i32 %27, %24
  store i32 %add30, ptr %25, align 4
  br label %for.inc

sw.bb31:                                          ; preds = %if.end26.sw.bb31_crit_edge, %if.end26.sw.bb31_crit_edge532, %if.end26.sw.bb31_crit_edge533
  %st_value32 = getelementptr %struct.elf32_sym, ptr %13, i32 %shr, i32 1
  %28 = ptrtoint ptr %st_value32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %st_value32, align 4
  %and33 = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool.not = icmp eq i32 %and33, 0
  br i1 %tobool.not, label %if.end42, label %do.end37

do.end37:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr10.le306 = getelementptr i8, ptr %strtab, i32 %15
  %name39 = getelementptr inbounds %struct.module, ptr %module, i32 0, i32 2
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name39, i32 noundef %relindex, i32 noundef %i.0314, ptr noundef %add.ptr10.le306) #12
  br label %cleanup158

if.end42:                                         ; preds = %sw.bb31
  %30 = inttoptr i32 %add to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %33 = and i32 %32, -256
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %shl = shl nuw nsw i32 %34, 2
  %35 = and i32 %34, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool45.not = icmp eq i32 %35, 0
  %sub47 = or i32 %shl, -67108864
  %spec.select = select i1 %tobool45.not, i32 %shl, i32 %sub47
  %sub50 = sub i32 %29, %add
  %add51 = add i32 %spec.select, %sub50
  %36 = add i32 %add51, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108863, i32 %36)
  %37 = icmp ult i32 %36, -67108863
  br i1 %37, label %if.end61, label %if.end42.if.end76_crit_edge

if.end42.if.end76_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.end61:                                         ; preds = %if.end42
  %add56 = add i32 %29, 8
  %add57 = add i32 %add56, %spec.select
  %call58 = tail call i32 @get_module_plt(ptr noundef %module, i32 noundef %add, i32 noundef %add57) #8
  %sub59 = sub i32 -8, %add
  %sub60 = add i32 %sub59, %call58
  %.pre = add i32 %sub60, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108863, i32 %.pre)
  %38 = icmp ult i32 %.pre, -67108863
  br i1 %38, label %do.end68, label %if.end61.if.end76_crit_edge

if.end61.if.end76_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %r_info.le = getelementptr inbounds %struct.elf32_rel, ptr %rel.0316, i32 0, i32 1
  %add.ptr10.le = getelementptr i8, ptr %strtab, i32 %15
  %name70 = getelementptr inbounds %struct.module, ptr %module, i32 0, i32 2
  %39 = ptrtoint ptr %r_info.le to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %r_info.le, align 4
  %and73 = and i32 %40, 255
  %41 = ptrtoint ptr %st_value32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %st_value32, align 4
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name70, i32 noundef %relindex, i32 noundef %i.0314, ptr noundef %add.ptr10.le, i32 noundef %and73, i32 noundef %add, i32 noundef %42) #12
  br label %cleanup158

if.end76:                                         ; preds = %if.end61.if.end76_crit_edge, %if.end42.if.end76_crit_edge
  %offset.1362 = phi i32 [ %sub60, %if.end61.if.end76_crit_edge ], [ %add51, %if.end42.if.end76_crit_edge ]
  %43 = lshr i32 %offset.1362, 2
  %and78 = and i32 %43, 16777215
  %44 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %30, align 4
  %and79 = and i32 %45, 255
  %46 = tail call i32 @llvm.bswap.i32(i32 %and78)
  %or = or i32 %and79, %46
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or, ptr %30, align 4
  br label %for.inc

sw.bb80:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %48 = inttoptr i32 %add to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %and81 = and i32 %50, 251658480
  %or82 = or i32 %and81, 15769601
  store i32 %or82, ptr %48, align 4
  br label %for.inc

sw.bb83:                                          ; preds = %if.end26
  %51 = inttoptr i32 %add to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %shl84 = shl i32 %53, 1
  %shr85 = ashr exact i32 %shl84, 1
  %st_value86 = getelementptr %struct.elf32_sym, ptr %13, i32 %shr, i32 1
  %54 = ptrtoint ptr %st_value86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %st_value86, align 4
  %sub87 = sub i32 %55, %add
  %add88 = add i32 %shr85, %sub87
  %56 = add i32 %add88, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %do.end95, label %if.end103

do.end95:                                         ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr10.le308 = getelementptr i8, ptr %strtab, i32 %15
  %name97 = getelementptr inbounds %struct.module, ptr %module, i32 0, i32 2
  %and100 = and i32 %8, 255
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name97, i32 noundef %relindex, i32 noundef %i.0314, ptr noundef %add.ptr10.le308, i32 noundef %and100, i32 noundef %add, i32 noundef %55) #12
  br label %cleanup158

if.end103:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  %and104 = and i32 %53, -2147483648
  %and105 = and i32 %add88, 2147483647
  %or106 = or i32 %and105, %and104
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or106, ptr %51, align 4
  br label %for.inc

sw.bb107:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %st_value108 = getelementptr %struct.elf32_sym, ptr %13, i32 %shr, i32 1
  %59 = ptrtoint ptr %st_value108 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %st_value108, align 4
  %sub109 = sub i32 %60, %add
  %61 = inttoptr i32 %add to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add110 = add i32 %sub109, %63
  store i32 %add110, ptr %61, align 4
  br label %for.inc

sw.bb111:                                         ; preds = %if.end26.sw.bb111_crit_edge, %if.end26.sw.bb111_crit_edge534, %if.end26.sw.bb111_crit_edge535, %if.end26.sw.bb111_crit_edge536
  %64 = inttoptr i32 %add to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %and112 = lshr i32 %67, 4
  %68 = and i32 %and112, 61440
  %and114 = and i32 %67, 4095
  %or115 = or i32 %68, %and114
  %sext = shl nuw i32 %or115, 16
  %sub116 = ashr exact i32 %sext, 16
  %st_value117 = getelementptr %struct.elf32_sym, ptr %13, i32 %shr, i32 1
  %69 = ptrtoint ptr %st_value117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %st_value117, align 4
  %and120 = and i32 %8, 255
  %and120.off = add nsw i32 %and120, -45
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and120.off)
  %switch = icmp ult i32 %and120.off, 2
  %sub127 = select i1 %switch, i32 %add, i32 0
  %add118 = sub i32 %70, %sub127
  %spec.select268 = add i32 %add118, %sub116
  %71 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %trunc, label %sw.bb111.if.end138_crit_edge [
    i8 44, label %sw.bb111.if.then136_crit_edge
    i8 46, label %sw.bb111.if.then136_crit_edge537
  ]

sw.bb111.if.then136_crit_edge537:                 ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then136

sw.bb111.if.then136_crit_edge:                    ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then136

sw.bb111.if.end138_crit_edge:                     ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then136:                                       ; preds = %sw.bb111.if.then136_crit_edge, %sw.bb111.if.then136_crit_edge537
  %shr137 = ashr i32 %spec.select268, 16
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %sw.bb111.if.end138_crit_edge
  %offset.3 = phi i32 [ %shr137, %if.then136 ], [ %spec.select268, %sw.bb111.if.end138_crit_edge ]
  %and139 = and i32 %67, -987136
  %and140 = shl i32 %offset.3, 4
  %shl141 = and i32 %and140, 983040
  %and142 = and i32 %offset.3, 4095
  %or143 = or i32 %and142, %and139
  %or144 = or i32 %or143, %shl141
  %72 = tail call i32 @llvm.bswap.i32(i32 %or144)
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %64, align 4
  br label %for.inc

do.end147:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %8, 255
  %name149 = getelementptr inbounds %struct.module, ptr %module, i32 0, i32 2
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name149, i32 noundef %and) #12
  br label %cleanup158

for.inc:                                          ; preds = %if.end138, %sw.bb107, %if.end103, %sw.bb80, %if.end76, %sw.bb, %if.end26.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0314, 1
  %incdec.ptr = getelementptr %struct.elf32_rel, ptr %rel.0316, i32 1
  %74 = ptrtoint ptr %sh_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sh_size, align 4
  %div259 = lshr i32 %75, 3
  %cmp = icmp ult i32 %inc, %div259
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup158_crit_edge

for.inc.cleanup158_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup158

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup158:                                       ; preds = %for.inc.cleanup158_crit_edge, %do.end147, %do.end95, %do.end68, %do.end37, %do.end19, %do.end, %entry.cleanup158_crit_edge
  %retval.2 = phi i32 [ -8, %do.end147 ], [ -8, %do.end95 ], [ -8, %do.end68 ], [ -8, %do.end37 ], [ -8, %do.end19 ], [ -8, %do.end ], [ 0, %entry.cleanup158_crit_edge ], [ 0, %for.inc.cleanup158_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_module_plt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @module_finalize(ptr nocapture noundef readonly %hdr, ptr noundef %sechdrs, ptr nocapture noundef writeonly %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %e_shstrndx = getelementptr inbounds %struct.elf32_hdr, ptr %hdr, i32 0, i32 13
  %0 = ptrtoint ptr %e_shstrndx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_shstrndx, align 2
  %idxprom = zext i16 %1 to i32
  %sh_offset = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %idxprom, i32 4
  %2 = ptrtoint ptr %sh_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sh_offset, align 4
  %add.ptr = getelementptr i8, ptr %hdr, i32 %3
  %e_shnum = getelementptr inbounds %struct.elf32_hdr, ptr %hdr, i32 0, i32 12
  %4 = ptrtoint ptr %e_shnum to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %e_shnum, align 4
  %conv = zext i16 %5 to i32
  %add.ptr1 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %conv
  %cmp193 = icmp ugt ptr %add.ptr1, %sechdrs
  br i1 %cmp193, label %entry.for.body_crit_edge, label %entry.for.inc103.6_crit_edge

entry.for.inc103.6_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103.6

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond79.preheader:                             ; preds = %cleanup
  %tobool85.not = icmp eq ptr %maps.sroa.0.2, null
  %tobool88.not = icmp eq ptr %maps.sroa.6.2, null
  %or.cond = select i1 %tobool85.not, i1 true, i1 %tobool88.not
  br i1 %or.cond, label %for.cond79.preheader.for.inc103.1_crit_edge, label %if.then89

for.cond79.preheader.for.inc103.1_crit_edge:      ; preds = %for.cond79.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103.1

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %maps.sroa.0.1 = phi ptr [ %maps.sroa.0.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %maps.sroa.6.1 = phi ptr [ %maps.sroa.6.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %maps.sroa.10.1 = phi ptr [ %maps.sroa.10.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %maps.sroa.12.1 = phi ptr [ %maps.sroa.12.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %maps.sroa.14.1 = phi ptr [ %maps.sroa.14.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %maps.sroa.16.1 = phi ptr [ %maps.sroa.16.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %maps.sroa.20.1 = phi ptr [ %maps.sroa.20.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %maps.sroa.22.1 = phi ptr [ %maps.sroa.22.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %maps.sroa.24.1 = phi ptr [ %maps.sroa.24.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %maps.sroa.26.1 = phi ptr [ %maps.sroa.26.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %s.0194 = phi ptr [ %incdec.ptr, %cleanup.for.body_crit_edge ], [ %sechdrs, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %s.0194 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s.0194, align 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %7
  %sh_flags = getelementptr inbounds %struct.elf32_shdr, ptr %s.0194, i32 0, i32 2
  %8 = ptrtoint ptr %sh_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sh_flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.23, ptr noundef %add.ptr3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.24, ptr noundef %add.ptr3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.else14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else14:                                        ; preds = %if.else
  %call15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.25, ptr noundef %add.ptr3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.else14.cleanup_crit_edge, label %if.else21

if.else14.cleanup_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else21:                                        ; preds = %if.else14
  %call22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(25) @.str.26, ptr noundef %add.ptr3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.else21.cleanup_crit_edge, label %if.else28

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else28:                                        ; preds = %if.else21
  %call29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(20) @.str.27, ptr noundef %add.ptr3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.else28.cleanup_crit_edge, label %if.else35

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else35:                                        ; preds = %if.else28
  %call36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.28, ptr noundef %add.ptr3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.else35.cleanup_crit_edge, label %if.else41

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else41:                                        ; preds = %if.else35
  %call42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.29, ptr noundef %add.ptr3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.else41.cleanup_crit_edge, label %if.else48

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else48:                                        ; preds = %if.else41
  %call49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.30, ptr noundef %add.ptr3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.else48.cleanup_crit_edge, label %if.else55

if.else48.cleanup_crit_edge:                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else55:                                        ; preds = %if.else48
  %call56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.31, ptr noundef %add.ptr3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.else55.cleanup_crit_edge, label %if.else62

if.else55.cleanup_crit_edge:                      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else62:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.32, ptr noundef %add.ptr3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp eq i32 %call63, 0
  %spec.select = select i1 %cmp64, ptr %s.0194, ptr %maps.sroa.22.1
  br label %cleanup

cleanup:                                          ; preds = %if.else62, %if.else55.cleanup_crit_edge, %if.else48.cleanup_crit_edge, %if.else41.cleanup_crit_edge, %if.else35.cleanup_crit_edge, %if.else28.cleanup_crit_edge, %if.else21.cleanup_crit_edge, %if.else14.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %maps.sroa.0.2 = phi ptr [ %maps.sroa.0.1, %for.body.cleanup_crit_edge ], [ %s.0194, %if.end.cleanup_crit_edge ], [ %maps.sroa.0.1, %if.else.cleanup_crit_edge ], [ %maps.sroa.0.1, %if.else14.cleanup_crit_edge ], [ %maps.sroa.0.1, %if.else21.cleanup_crit_edge ], [ %maps.sroa.0.1, %if.else28.cleanup_crit_edge ], [ %maps.sroa.0.1, %if.else35.cleanup_crit_edge ], [ %maps.sroa.0.1, %if.else41.cleanup_crit_edge ], [ %maps.sroa.0.1, %if.else48.cleanup_crit_edge ], [ %maps.sroa.0.1, %if.else55.cleanup_crit_edge ], [ %maps.sroa.0.1, %if.else62 ]
  %maps.sroa.6.2 = phi ptr [ %maps.sroa.6.1, %for.body.cleanup_crit_edge ], [ %maps.sroa.6.1, %if.end.cleanup_crit_edge ], [ %maps.sroa.6.1, %if.else.cleanup_crit_edge ], [ %maps.sroa.6.1, %if.else14.cleanup_crit_edge ], [ %maps.sroa.6.1, %if.else21.cleanup_crit_edge ], [ %maps.sroa.6.1, %if.else28.cleanup_crit_edge ], [ %s.0194, %if.else35.cleanup_crit_edge ], [ %maps.sroa.6.1, %if.else41.cleanup_crit_edge ], [ %maps.sroa.6.1, %if.else48.cleanup_crit_edge ], [ %maps.sroa.6.1, %if.else55.cleanup_crit_edge ], [ %maps.sroa.6.1, %if.else62 ]
  %maps.sroa.10.2 = phi ptr [ %maps.sroa.10.1, %for.body.cleanup_crit_edge ], [ %maps.sroa.10.1, %if.end.cleanup_crit_edge ], [ %s.0194, %if.else.cleanup_crit_edge ], [ %maps.sroa.10.1, %if.else14.cleanup_crit_edge ], [ %maps.sroa.10.1, %if.else21.cleanup_crit_edge ], [ %maps.sroa.10.1, %if.else28.cleanup_crit_edge ], [ %maps.sroa.10.1, %if.else35.cleanup_crit_edge ], [ %maps.sroa.10.1, %if.else41.cleanup_crit_edge ], [ %maps.sroa.10.1, %if.else48.cleanup_crit_edge ], [ %maps.sroa.10.1, %if.else55.cleanup_crit_edge ], [ %maps.sroa.10.1, %if.else62 ]
  %maps.sroa.12.2 = phi ptr [ %maps.sroa.12.1, %for.body.cleanup_crit_edge ], [ %maps.sroa.12.1, %if.end.cleanup_crit_edge ], [ %maps.sroa.12.1, %if.else.cleanup_crit_edge ], [ %maps.sroa.12.1, %if.else14.cleanup_crit_edge ], [ %maps.sroa.12.1, %if.else21.cleanup_crit_edge ], [ %maps.sroa.12.1, %if.else28.cleanup_crit_edge ], [ %maps.sroa.12.1, %if.else35.cleanup_crit_edge ], [ %s.0194, %if.else41.cleanup_crit_edge ], [ %maps.sroa.12.1, %if.else48.cleanup_crit_edge ], [ %maps.sroa.12.1, %if.else55.cleanup_crit_edge ], [ %maps.sroa.12.1, %if.else62 ]
  %maps.sroa.14.2 = phi ptr [ %maps.sroa.14.1, %for.body.cleanup_crit_edge ], [ %maps.sroa.14.1, %if.end.cleanup_crit_edge ], [ %maps.sroa.14.1, %if.else.cleanup_crit_edge ], [ %s.0194, %if.else14.cleanup_crit_edge ], [ %maps.sroa.14.1, %if.else21.cleanup_crit_edge ], [ %maps.sroa.14.1, %if.else28.cleanup_crit_edge ], [ %maps.sroa.14.1, %if.else35.cleanup_crit_edge ], [ %maps.sroa.14.1, %if.else41.cleanup_crit_edge ], [ %maps.sroa.14.1, %if.else48.cleanup_crit_edge ], [ %maps.sroa.14.1, %if.else55.cleanup_crit_edge ], [ %maps.sroa.14.1, %if.else62 ]
  %maps.sroa.16.2 = phi ptr [ %maps.sroa.16.1, %for.body.cleanup_crit_edge ], [ %maps.sroa.16.1, %if.end.cleanup_crit_edge ], [ %maps.sroa.16.1, %if.else.cleanup_crit_edge ], [ %maps.sroa.16.1, %if.else14.cleanup_crit_edge ], [ %maps.sroa.16.1, %if.else21.cleanup_crit_edge ], [ %maps.sroa.16.1, %if.else28.cleanup_crit_edge ], [ %maps.sroa.16.1, %if.else35.cleanup_crit_edge ], [ %maps.sroa.16.1, %if.else41.cleanup_crit_edge ], [ %s.0194, %if.else48.cleanup_crit_edge ], [ %maps.sroa.16.1, %if.else55.cleanup_crit_edge ], [ %maps.sroa.16.1, %if.else62 ]
  %maps.sroa.20.2 = phi ptr [ %maps.sroa.20.1, %for.body.cleanup_crit_edge ], [ %maps.sroa.20.1, %if.end.cleanup_crit_edge ], [ %maps.sroa.20.1, %if.else.cleanup_crit_edge ], [ %maps.sroa.20.1, %if.else14.cleanup_crit_edge ], [ %maps.sroa.20.1, %if.else21.cleanup_crit_edge ], [ %s.0194, %if.else28.cleanup_crit_edge ], [ %maps.sroa.20.1, %if.else35.cleanup_crit_edge ], [ %maps.sroa.20.1, %if.else41.cleanup_crit_edge ], [ %maps.sroa.20.1, %if.else48.cleanup_crit_edge ], [ %maps.sroa.20.1, %if.else55.cleanup_crit_edge ], [ %maps.sroa.20.1, %if.else62 ]
  %maps.sroa.22.2 = phi ptr [ %maps.sroa.22.1, %for.body.cleanup_crit_edge ], [ %maps.sroa.22.1, %if.end.cleanup_crit_edge ], [ %maps.sroa.22.1, %if.else.cleanup_crit_edge ], [ %maps.sroa.22.1, %if.else14.cleanup_crit_edge ], [ %maps.sroa.22.1, %if.else21.cleanup_crit_edge ], [ %maps.sroa.22.1, %if.else28.cleanup_crit_edge ], [ %maps.sroa.22.1, %if.else35.cleanup_crit_edge ], [ %maps.sroa.22.1, %if.else41.cleanup_crit_edge ], [ %maps.sroa.22.1, %if.else48.cleanup_crit_edge ], [ %maps.sroa.22.1, %if.else55.cleanup_crit_edge ], [ %spec.select, %if.else62 ]
  %maps.sroa.24.2 = phi ptr [ %maps.sroa.24.1, %for.body.cleanup_crit_edge ], [ %maps.sroa.24.1, %if.end.cleanup_crit_edge ], [ %maps.sroa.24.1, %if.else.cleanup_crit_edge ], [ %maps.sroa.24.1, %if.else14.cleanup_crit_edge ], [ %s.0194, %if.else21.cleanup_crit_edge ], [ %maps.sroa.24.1, %if.else28.cleanup_crit_edge ], [ %maps.sroa.24.1, %if.else35.cleanup_crit_edge ], [ %maps.sroa.24.1, %if.else41.cleanup_crit_edge ], [ %maps.sroa.24.1, %if.else48.cleanup_crit_edge ], [ %maps.sroa.24.1, %if.else55.cleanup_crit_edge ], [ %maps.sroa.24.1, %if.else62 ]
  %maps.sroa.26.2 = phi ptr [ %maps.sroa.26.1, %for.body.cleanup_crit_edge ], [ %maps.sroa.26.1, %if.end.cleanup_crit_edge ], [ %maps.sroa.26.1, %if.else.cleanup_crit_edge ], [ %maps.sroa.26.1, %if.else14.cleanup_crit_edge ], [ %maps.sroa.26.1, %if.else21.cleanup_crit_edge ], [ %maps.sroa.26.1, %if.else28.cleanup_crit_edge ], [ %maps.sroa.26.1, %if.else35.cleanup_crit_edge ], [ %maps.sroa.26.1, %if.else41.cleanup_crit_edge ], [ %maps.sroa.26.1, %if.else48.cleanup_crit_edge ], [ %s.0194, %if.else55.cleanup_crit_edge ], [ %maps.sroa.26.1, %if.else62 ]
  %incdec.ptr = getelementptr %struct.elf32_shdr, ptr %s.0194, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr1
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.cond79.preheader

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then89:                                        ; preds = %for.cond79.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %arch = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27
  %sh_addr = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.0.2, i32 0, i32 3
  %10 = ptrtoint ptr %sh_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sh_addr, align 4
  %sh_size = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.0.2, i32 0, i32 5
  %12 = ptrtoint ptr %sh_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sh_size, align 4
  %sh_addr96 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.6.2, i32 0, i32 3
  %14 = ptrtoint ptr %sh_addr96 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sh_addr96, align 4
  %sh_size99 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.6.2, i32 0, i32 5
  %16 = ptrtoint ptr %sh_size99 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sh_size99, align 4
  %call100 = tail call ptr @unwind_table_add(i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  %18 = ptrtoint ptr %arch to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call100, ptr %arch, align 4
  br label %for.inc103.1

for.inc103.1:                                     ; preds = %if.then89, %for.cond79.preheader.for.inc103.1_crit_edge
  %tobool85.not.2 = icmp eq ptr %maps.sroa.10.2, null
  %tobool88.not.2 = icmp eq ptr %maps.sroa.12.2, null
  %or.cond272 = select i1 %tobool85.not.2, i1 true, i1 %tobool88.not.2
  br i1 %or.cond272, label %for.inc103.1.for.inc103.2_crit_edge, label %if.then89.2

for.inc103.1.for.inc103.2_crit_edge:              ; preds = %for.inc103.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103.2

if.then89.2:                                      ; preds = %for.inc103.1
  call void @__sanitizer_cov_trace_pc() #10
  %sh_addr.2 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.10.2, i32 0, i32 3
  %19 = ptrtoint ptr %sh_addr.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sh_addr.2, align 4
  %sh_size.2 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.10.2, i32 0, i32 5
  %21 = ptrtoint ptr %sh_size.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sh_size.2, align 4
  %sh_addr96.2 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.12.2, i32 0, i32 3
  %23 = ptrtoint ptr %sh_addr96.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sh_addr96.2, align 4
  %sh_size99.2 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.12.2, i32 0, i32 5
  %25 = ptrtoint ptr %sh_size99.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sh_size99.2, align 4
  %call100.2 = tail call ptr @unwind_table_add(i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #8
  %arrayidx101.2 = getelementptr %struct.module, ptr %mod, i32 0, i32 27, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx101.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call100.2, ptr %arrayidx101.2, align 4
  br label %for.inc103.2

for.inc103.2:                                     ; preds = %if.then89.2, %for.inc103.1.for.inc103.2_crit_edge
  %tobool85.not.3 = icmp eq ptr %maps.sroa.14.2, null
  %tobool88.not.3 = icmp eq ptr %maps.sroa.16.2, null
  %or.cond273 = select i1 %tobool85.not.3, i1 true, i1 %tobool88.not.3
  br i1 %or.cond273, label %for.inc103.2.for.inc103.4_crit_edge, label %if.then89.3

for.inc103.2.for.inc103.4_crit_edge:              ; preds = %for.inc103.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103.4

if.then89.3:                                      ; preds = %for.inc103.2
  call void @__sanitizer_cov_trace_pc() #10
  %sh_addr.3 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.14.2, i32 0, i32 3
  %28 = ptrtoint ptr %sh_addr.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sh_addr.3, align 4
  %sh_size.3 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.14.2, i32 0, i32 5
  %30 = ptrtoint ptr %sh_size.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sh_size.3, align 4
  %sh_addr96.3 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.16.2, i32 0, i32 3
  %32 = ptrtoint ptr %sh_addr96.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sh_addr96.3, align 4
  %sh_size99.3 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.16.2, i32 0, i32 5
  %34 = ptrtoint ptr %sh_size99.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sh_size99.3, align 4
  %call100.3 = tail call ptr @unwind_table_add(i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #8
  %arrayidx101.3 = getelementptr %struct.module, ptr %mod, i32 0, i32 27, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx101.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call100.3, ptr %arrayidx101.3, align 4
  br label %for.inc103.4

for.inc103.4:                                     ; preds = %if.then89.3, %for.inc103.2.for.inc103.4_crit_edge
  %tobool85.not.5 = icmp eq ptr %maps.sroa.20.2, null
  %tobool88.not.5 = icmp eq ptr %maps.sroa.22.2, null
  %or.cond274 = select i1 %tobool85.not.5, i1 true, i1 %tobool88.not.5
  br i1 %or.cond274, label %for.inc103.4.for.inc103.5_crit_edge, label %if.then89.5

for.inc103.4.for.inc103.5_crit_edge:              ; preds = %for.inc103.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103.5

if.then89.5:                                      ; preds = %for.inc103.4
  call void @__sanitizer_cov_trace_pc() #10
  %sh_addr.5 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.20.2, i32 0, i32 3
  %37 = ptrtoint ptr %sh_addr.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sh_addr.5, align 4
  %sh_size.5 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.20.2, i32 0, i32 5
  %39 = ptrtoint ptr %sh_size.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sh_size.5, align 4
  %sh_addr96.5 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.22.2, i32 0, i32 3
  %41 = ptrtoint ptr %sh_addr96.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sh_addr96.5, align 4
  %sh_size99.5 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.22.2, i32 0, i32 5
  %43 = ptrtoint ptr %sh_size99.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sh_size99.5, align 4
  %call100.5 = tail call ptr @unwind_table_add(i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44) #8
  %arrayidx101.5 = getelementptr %struct.module, ptr %mod, i32 0, i32 27, i32 0, i32 5
  %45 = ptrtoint ptr %arrayidx101.5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call100.5, ptr %arrayidx101.5, align 4
  br label %for.inc103.5

for.inc103.5:                                     ; preds = %if.then89.5, %for.inc103.4.for.inc103.5_crit_edge
  %tobool85.not.6 = icmp eq ptr %maps.sroa.24.2, null
  %tobool88.not.6 = icmp eq ptr %maps.sroa.26.2, null
  %or.cond275 = select i1 %tobool85.not.6, i1 true, i1 %tobool88.not.6
  br i1 %or.cond275, label %for.inc103.5.for.inc103.6_crit_edge, label %if.then89.6

for.inc103.5.for.inc103.6_crit_edge:              ; preds = %for.inc103.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103.6

if.then89.6:                                      ; preds = %for.inc103.5
  call void @__sanitizer_cov_trace_pc() #10
  %sh_addr.6 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.24.2, i32 0, i32 3
  %46 = ptrtoint ptr %sh_addr.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sh_addr.6, align 4
  %sh_size.6 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.24.2, i32 0, i32 5
  %48 = ptrtoint ptr %sh_size.6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sh_size.6, align 4
  %sh_addr96.6 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.26.2, i32 0, i32 3
  %50 = ptrtoint ptr %sh_addr96.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sh_addr96.6, align 4
  %sh_size99.6 = getelementptr inbounds %struct.elf32_shdr, ptr %maps.sroa.26.2, i32 0, i32 5
  %52 = ptrtoint ptr %sh_size99.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sh_size99.6, align 4
  %call100.6 = tail call ptr @unwind_table_add(i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53) #8
  %arrayidx101.6 = getelementptr %struct.module, ptr %mod, i32 0, i32 27, i32 0, i32 6
  %54 = ptrtoint ptr %arrayidx101.6 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call100.6, ptr %arrayidx101.6, align 4
  br label %for.inc103.6

for.inc103.6:                                     ; preds = %if.then89.6, %for.inc103.5.for.inc103.6_crit_edge, %entry.for.inc103.6_crit_edge
  %55 = ptrtoint ptr %e_shstrndx to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %e_shstrndx, align 2
  %idxprom.i = zext i16 %56 to i32
  %sh_offset.i = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %idxprom.i, i32 4
  %57 = ptrtoint ptr %sh_offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sh_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %hdr, i32 %58
  %59 = ptrtoint ptr %e_shnum to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %e_shnum, align 4
  %conv.i = zext i16 %60 to i32
  %add.ptr1.i = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %conv.i
  %cmp15.i = icmp ugt ptr %add.ptr1.i, %sechdrs
  br i1 %cmp15.i, label %for.inc103.6.for.body.i_crit_edge, label %for.inc103.6.if.end110_crit_edge

for.inc103.6.if.end110_crit_edge:                 ; preds = %for.inc103.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

for.inc103.6.for.body.i_crit_edge:                ; preds = %for.inc103.6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.inc103.6.for.body.i_crit_edge
  %s.016.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %sechdrs, %for.inc103.6.for.body.i_crit_edge ]
  %61 = ptrtoint ptr %s.016.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s.016.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %62
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.33, ptr noundef %add.ptr3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.i, label %find_mod_section.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.elf32_shdr, ptr %s.016.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr1.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end110_crit_edge

for.inc.i.if.end110_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

find_mod_section.exit:                            ; preds = %for.body.i
  %tobool106.not = icmp eq ptr %s.016.i, null
  br i1 %tobool106.not, label %find_mod_section.exit.if.end110_crit_edge, label %if.then107

find_mod_section.exit.if.end110_crit_edge:        ; preds = %find_mod_section.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then107:                                       ; preds = %find_mod_section.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sh_addr108 = getelementptr inbounds %struct.elf32_shdr, ptr %s.016.i, i32 0, i32 3
  %63 = ptrtoint ptr %sh_addr108 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sh_addr108, align 4
  %65 = inttoptr i32 %64 to ptr
  %sh_size109 = getelementptr inbounds %struct.elf32_shdr, ptr %s.016.i, i32 0, i32 5
  %66 = ptrtoint ptr %sh_size109 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sh_size109, align 4
  tail call void @fixup_pv_table(ptr noundef %65, i32 noundef %67) #8
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %find_mod_section.exit.if.end110_crit_edge, %for.inc.i.if.end110_crit_edge, %for.inc103.6.if.end110_crit_edge
  %68 = ptrtoint ptr %e_shstrndx to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %e_shstrndx, align 2
  %idxprom.i170 = zext i16 %69 to i32
  %sh_offset.i171 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %idxprom.i170, i32 4
  %70 = ptrtoint ptr %sh_offset.i171 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sh_offset.i171, align 4
  %add.ptr.i172 = getelementptr i8, ptr %hdr, i32 %71
  %72 = ptrtoint ptr %e_shnum to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %e_shnum, align 4
  %conv.i174 = zext i16 %73 to i32
  %add.ptr1.i175 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %conv.i174
  %cmp15.i176 = icmp ugt ptr %add.ptr1.i175, %sechdrs
  br i1 %cmp15.i176, label %if.end110.for.body.i181_crit_edge, label %if.end110.if.end118_crit_edge

if.end110.if.end118_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.end110.for.body.i181_crit_edge:                ; preds = %if.end110
  br label %for.body.i181

for.body.i181:                                    ; preds = %for.inc.i184.for.body.i181_crit_edge, %if.end110.for.body.i181_crit_edge
  %s.016.i177 = phi ptr [ %incdec.ptr.i182, %for.inc.i184.for.body.i181_crit_edge ], [ %sechdrs, %if.end110.for.body.i181_crit_edge ]
  %74 = ptrtoint ptr %s.016.i177 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s.016.i177, align 4
  %add.ptr3.i178 = getelementptr i8, ptr %add.ptr.i172, i32 %75
  %call.i179 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.34, ptr noundef %add.ptr3.i178) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %cmp4.i180 = icmp eq i32 %call.i179, 0
  br i1 %cmp4.i180, label %find_mod_section.exit186, label %for.inc.i184

for.inc.i184:                                     ; preds = %for.body.i181
  %incdec.ptr.i182 = getelementptr %struct.elf32_shdr, ptr %s.016.i177, i32 1
  %cmp.i183 = icmp ult ptr %incdec.ptr.i182, %add.ptr1.i175
  br i1 %cmp.i183, label %for.inc.i184.for.body.i181_crit_edge, label %for.inc.i184.if.end118_crit_edge

for.inc.i184.if.end118_crit_edge:                 ; preds = %for.inc.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

for.inc.i184.for.body.i181_crit_edge:             ; preds = %for.inc.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i181

find_mod_section.exit186:                         ; preds = %for.body.i181
  %tobool112.not = icmp eq ptr %s.016.i177, null
  br i1 %tobool112.not, label %find_mod_section.exit186.if.end118_crit_edge, label %land.lhs.true113

find_mod_section.exit186.if.end118_crit_edge:     ; preds = %find_mod_section.exit186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

land.lhs.true113:                                 ; preds = %find_mod_section.exit186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %76 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.i.not = icmp eq i32 %76, 0
  br i1 %tobool.i.not, label %if.then115, label %land.lhs.true113.if.end118_crit_edge

land.lhs.true113.if.end118_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then115:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #10
  %sh_addr116 = getelementptr inbounds %struct.elf32_shdr, ptr %s.016.i177, i32 0, i32 3
  %77 = ptrtoint ptr %sh_addr116 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sh_addr116, align 4
  %79 = inttoptr i32 %78 to ptr
  %sh_size117 = getelementptr inbounds %struct.elf32_shdr, ptr %s.016.i177, i32 0, i32 5
  %80 = ptrtoint ptr %sh_size117 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sh_size117, align 4
  tail call void @fixup_smp(ptr noundef %79, i32 noundef %81) #8
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %land.lhs.true113.if.end118_crit_edge, %find_mod_section.exit186.if.end118_crit_edge, %for.inc.i184.if.end118_crit_edge, %if.end110.if.end118_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @unwind_table_add(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fixup_pv_table(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fixup_smp(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @module_arch_cleanup(ptr nocapture noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arch = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27
  %0 = ptrtoint ptr %arch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arch, align 4
  tail call void @unwind_table_del(ptr noundef %1) #8
  %2 = ptrtoint ptr %arch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arch, align 4
  %arrayidx.1 = getelementptr %struct.module, ptr %mod, i32 0, i32 27, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  tail call void @unwind_table_del(ptr noundef %4) #8
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.module, ptr %mod, i32 0, i32 27, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @unwind_table_del(ptr noundef %7) #8
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.module, ptr %mod, i32 0, i32 27, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  tail call void @unwind_table_del(ptr noundef %10) #8
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.module, ptr %mod, i32 0, i32 27, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  tail call void @unwind_table_del(ptr noundef %13) #8
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.module, ptr %mod, i32 0, i32 27, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  tail call void @unwind_table_del(ptr noundef %16) #8
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.module, ptr %mod, i32 0, i32 27, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6, align 4
  tail call void @unwind_table_del(ptr noundef %19) #8
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unwind_table_del(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @module_arch_freeing_init(ptr noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arch = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27
  %0 = ptrtoint ptr %arch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arch, align 32
  tail call void @unwind_table_del(ptr noundef %1) #8
  %2 = ptrtoint ptr %arch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arch, align 32
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/module.c", i32 59, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/module.c", i32 60, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/module.c", i32 61, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/module.c", i32 66, i32 25}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/module.c", i32 67, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/kernel/module.c", i32 68, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/module.c", i32 93, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @apply_relocate._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @apply_relocate._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/kernel/module.c", i32 102, i32 4}
!20 = !{ptr @apply_relocate._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @apply_relocate._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/module.c", i32 124, i32 5}
!24 = !{ptr @apply_relocate._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @apply_relocate._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/module.c", i32 151, i32 5}
!28 = !{ptr @apply_relocate._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @apply_relocate._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @apply_relocate._entry.18, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../arch/arm/kernel/module.c", i32 178, i32 5}
!32 = !{ptr @apply_relocate._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/kernel/module.c", i32 336, i32 4}
!35 = !{ptr @apply_relocate._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @apply_relocate._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/kernel/module.c", i32 383, i32 14}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/kernel/module.c", i32 385, i32 19}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/kernel/module.c", i32 387, i32 19}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/kernel/module.c", i32 389, i32 19}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/kernel/module.c", i32 391, i32 19}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/kernel/module.c", i32 393, i32 19}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/kernel/module.c", i32 395, i32 19}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/kernel/module.c", i32 397, i32 19}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/kernel/module.c", i32 399, i32 19}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/kernel/module.c", i32 401, i32 19}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/kernel/module.c", i32 414, i32 37}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/kernel/module.c", i32 418, i32 37}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
