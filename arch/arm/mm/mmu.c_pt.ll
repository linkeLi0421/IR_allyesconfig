; ModuleID = '/llk/IR_all_yes/arch/arm/mm/mmu.c_pt.bc'
source_filename = "../arch/arm/mm/mmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+empty_zero_page\22, \22a\22\09"
module asm "\09.weak\09__crc_empty_zero_page\09\09\09\09"
module asm "\09.long\09__crc_empty_zero_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_empty_zero_page:\09\09\09\09\09"
module asm "\09.asciz \09\22empty_zero_page\22\09\09\09\09\09"
module asm "__kstrtabns_empty_zero_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pgprot_user\22, \22a\22\09"
module asm "\09.weak\09__crc_pgprot_user\09\09\09\09"
module asm "\09.long\09__crc_pgprot_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pgprot_user:\09\09\09\09\09"
module asm "\09.asciz \09\22pgprot_user\22\09\09\09\09\09"
module asm "__kstrtabns_pgprot_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pgprot_kernel\22, \22a\22\09"
module asm "\09.weak\09__crc_pgprot_kernel\09\09\09\09"
module asm "\09.long\09__crc_pgprot_kernel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pgprot_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22pgprot_kernel\22\09\09\09\09\09"
module asm "__kstrtabns_pgprot_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_mem_type\22, \22a\22\09"
module asm "\09.weak\09__crc_get_mem_type\09\09\09\09"
module asm "\09.long\09__crc_get_mem_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_mem_type:\09\09\09\09\09"
module asm "\09.asciz \09\22get_mem_type\22\09\09\09\09\09"
module asm "__kstrtabns_get_mem_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+phys_mem_access_prot\22, \22a\22\09"
module asm "\09.weak\09__crc_phys_mem_access_prot\09\09\09\09"
module asm "\09.long\09__crc_phys_mem_access_prot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phys_mem_access_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22phys_mem_access_prot\22\09\09\09\09\09"
module asm "__kstrtabns_phys_mem_access_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cachepolicy = type { [16 x i8], i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mem_type = type { i32, i32, i32, i32, i32 }
%struct.mm_struct = type { %struct.anon.9, [0 x i32] }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.static_vm = type { %struct.vm_struct, %struct.list_head }
%struct.memblock_region = type { i32, i32, i32 }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@empty_zero_page = dso_local global ptr null, align 4
@__kstrtab_empty_zero_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_empty_zero_page = external dso_local constant [0 x i8], align 1
@__ksymtab_empty_zero_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @empty_zero_page to i32), ptr @__kstrtab_empty_zero_page, ptr @__kstrtabns_empty_zero_page }, section "___ksymtab+empty_zero_page", align 4
@user_pmd_table = dso_local local_unnamed_addr global i32 49, align 4
@pgprot_user = dso_local global i32 0, align 4
@__kstrtab_pgprot_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_pgprot_user = external dso_local constant [0 x i8], align 1
@__ksymtab_pgprot_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pgprot_user to i32), ptr @__kstrtab_pgprot_user, ptr @__kstrtabns_pgprot_user }, section "___ksymtab+pgprot_user", align 4
@pgprot_kernel = dso_local global i32 0, align 4
@__kstrtab_pgprot_kernel = external dso_local constant [0 x i8], align 1
@__kstrtabns_pgprot_kernel = external dso_local constant [0 x i8], align 1
@__ksymtab_pgprot_kernel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pgprot_kernel to i32), ptr @__kstrtab_pgprot_kernel, ptr @__kstrtabns_pgprot_kernel }, section "___ksymtab+pgprot_kernel", align 4
@initial_pmd_value = internal unnamed_addr global i32 0, section ".init.data", align 4
@cache_policies = internal global [5 x %struct.cachepolicy] [%struct.cachepolicy { [16 x i8] c"uncached\00\00\00\00\00\00\00\00", i32 12, i32 0, i32 0 }, %struct.cachepolicy { [16 x i8] c"buffered\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 4 }, %struct.cachepolicy { [16 x i8] c"writethrough\00\00\00\00", i32 0, i32 8, i32 8 }, %struct.cachepolicy { [16 x i8] c"writeback\00\00\00\00\00\00\00", i32 0, i32 12, i32 12 }, %struct.cachepolicy { [16 x i8] c"writealloc\00\00\00\00\00\00", i32 0, i32 4108, i32 28 }], section ".init.data", align 4
@cachepolicy = internal unnamed_addr global i32 3, section ".init.data", align 4
@init_default_cache_policy._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, align 1
@.str = private unnamed_addr constant [38 x i8] c"\013ERROR: could not find cache policy\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"init_default_cache_policy\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"arch/arm/mm/mmu.c\00", align 1
@init_default_cache_policy._entry_ptr = internal global ptr @init_default_cache_policy._entry, section ".printk_index", align 4
@__setup_str_early_cachepolicy = internal constant [12 x i8] c"cachepolicy\00", section ".init.rodata", align 1
@__setup_early_cachepolicy = internal global %struct.obs_kernel_param { ptr @__setup_str_early_cachepolicy, ptr @early_cachepolicy, i32 1 }, section ".init.setup", align 4
@__setup_str_early_nocache = internal constant [8 x i8] c"nocache\00", section ".init.rodata", align 1
@__setup_early_nocache = internal global %struct.obs_kernel_param { ptr @__setup_str_early_nocache, ptr @early_nocache, i32 1 }, section ".init.setup", align 4
@__setup_str_early_nowrite = internal constant [5 x i8] c"nowb\00", section ".init.rodata", align 1
@__setup_early_nowrite = internal global %struct.obs_kernel_param { ptr @__setup_str_early_nowrite, ptr @early_nowrite, i32 1 }, section ".init.setup", align 4
@__setup_str_early_ecc = internal constant [4 x i8] c"ecc\00", section ".init.rodata", align 1
@__setup_early_ecc = internal global %struct.obs_kernel_param { ptr @__setup_str_early_ecc, ptr @early_ecc, i32 1 }, section ".init.setup", align 4
@mem_types = internal global [17 x %struct.mem_type] [%struct.mem_type { i32 1619, i32 0, i32 1, i32 66562, i32 2 }, %struct.mem_type { i32 627, i32 0, i32 1, i32 1026, i32 2 }, %struct.mem_type { i32 623, i32 0, i32 1, i32 1038, i32 2 }, %struct.mem_type { i32 615, i32 0, i32 1, i32 1026, i32 2 }, %struct.mem_type { i32 579, i32 0, i32 1, i32 18, i32 2 }, %struct.mem_type { i32 0, i32 0, i32 0, i32 18, i32 0 }, %struct.mem_type { i32 0, i32 0, i32 0, i32 4122, i32 0 }, %struct.mem_type { i32 195, i32 0, i32 1, i32 0, i32 3 }, %struct.mem_type { i32 451, i32 0, i32 1, i32 0, i32 3 }, %struct.mem_type { i32 67, i32 0, i32 1, i32 1026, i32 0 }, %struct.mem_type { i32 579, i32 0, i32 1, i32 1026, i32 0 }, %struct.mem_type { i32 0, i32 0, i32 0, i32 2, i32 0 }, %struct.mem_type { i32 71, i32 0, i32 1, i32 1026, i32 0 }, %struct.mem_type { i32 579, i32 0, i32 1, i32 18, i32 0 }, %struct.mem_type { i32 67, i32 0, i32 1, i32 0, i32 0 }, %struct.mem_type { i32 579, i32 0, i32 1, i32 66578, i32 0 }, %struct.mem_type { i32 579, i32 0, i32 1, i32 0, i32 0 }], section ".data..ro_after_init", align 4
@__kstrtab_get_mem_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_mem_type = external dso_local constant [0 x i8], align 1
@__ksymtab_get_mem_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_mem_type to i32), ptr @__kstrtab_get_mem_type, ptr @__kstrtabns_get_mem_type }, section "___ksymtab+get_mem_type", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@bm_pte = internal global [1024 x i32] zeroinitializer, section ".init.data", align 4096
@pte_offset_fixmap = internal unnamed_addr global ptr null, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@__kstrtab_phys_mem_access_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_phys_mem_access_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_phys_mem_access_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phys_mem_access_prot to i32), ptr @__kstrtab_phys_mem_access_prot, ptr @__kstrtabns_phys_mem_access_prot }, section "___ksymtab+phys_mem_access_prot", align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"%s: Failed to allocate %zu bytes align=0x%zx\0A\00", align 1
@__func__.iotable_init = private unnamed_addr constant [13 x i8] c"iotable_init\00", align 1
@__func__.vm_reserve_area_early = private unnamed_addr constant [22 x i8] c"vm_reserve_area_early\00", align 1
@__setup_str_early_vmalloc = internal constant [8 x i8] c"vmalloc\00", section ".init.rodata", align 1
@__setup_early_vmalloc = internal global %struct.obs_kernel_param { ptr @__setup_str_early_vmalloc, ptr @early_vmalloc, i32 1 }, section ".init.setup", align 4
@arm_lowmem_limit = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@vmalloc_size = internal unnamed_addr global i32 251658240, section ".init.data", align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@memblock = external dso_local global %struct.memblock, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@adjust_lowmem_bounds._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1243, ptr null, ptr null }, align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\015Ignoring RAM at %pa-%pa\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"adjust_lowmem_bounds\00", align 1
@adjust_lowmem_bounds._entry_ptr = internal global ptr @adjust_lowmem_bounds._entry, section ".printk_index", align 4
@adjust_lowmem_bounds._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 1244, ptr null, ptr null }, align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\015Consider using a HIGHMEM enabled kernel.\0A\00", align 1
@adjust_lowmem_bounds._entry_ptr.8 = internal global ptr @adjust_lowmem_bounds._entry.6, section ".printk_index", align 4
@swapper_pg_dir = external dso_local global [2048 x [2 x i32]], align 4
@paging_init.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"mmu\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"paging_init\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"physical kernel sections: 0x%08llx-0x%08llx\0A\00", align 1
@kernel_sec_start = external dso_local local_unnamed_addr global i64, align 8
@kernel_sec_end = external dso_local local_unnamed_addr global i64, align 8
@paging_init.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 1, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"lowmem limit is %08llx\0A\00", align 1
@top_pmd = dso_local local_unnamed_addr global ptr null, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@early_cachepolicy._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 155, ptr null, ptr null }, align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"\013ERROR: unknown or unsupported cache policy\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"early_cachepolicy\00", align 1
@early_cachepolicy._entry_ptr = internal global ptr @early_cachepolicy._entry, section ".printk_index", align 4
@early_cachepolicy._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 166, ptr null, ptr null }, align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"\014Only cachepolicy=%s supported on ARMv6 and later\0A\00", align 1
@early_cachepolicy._entry_ptr.17 = internal global ptr @early_cachepolicy._entry.15, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"buffered\00", align 1
@early_nocache._entry = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 183, ptr null, ptr null }, align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"\014nocache is deprecated; use cachepolicy=%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"early_nocache\00", align 1
@early_nocache._entry_ptr = internal global ptr @early_nocache._entry, section ".printk_index", align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"uncached\00", align 1
@early_nowrite._entry = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 192, ptr null, ptr null }, align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"\014nowb is deprecated; use cachepolicy=%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"early_nowrite\00", align 1
@early_nowrite._entry_ptr = internal global ptr @early_nowrite._entry, section ".printk_index", align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@ecc_mask = internal unnamed_addr global i1 false, section ".init.data", align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@__create_mapping._entry = internal constant %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 921, ptr null, ptr null }, align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"\014BUG: map for 0x%08llx at 0x%08lx can not be mapped using pages, ignoring.\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"__create_mapping\00", align 1
@__create_mapping._entry_ptr = internal global ptr @__create_mapping._entry, section ".printk_index", align 4
@create_36bit_mapping._entry = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 847, ptr null, ptr null }, align 1
@.str.28 = private unnamed_addr constant [73 x i8] c"\013MM: CPU does not support supersection mapping for 0x%08llx at 0x%08lx\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"create_36bit_mapping\00", align 1
@create_36bit_mapping._entry_ptr = internal global ptr @create_36bit_mapping._entry, section ".printk_index", align 4
@create_36bit_mapping._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 859, ptr null, ptr null }, align 1
@.str.31 = private unnamed_addr constant [70 x i8] c"\013MM: invalid domain in supersection mapping for 0x%08llx at 0x%08lx\0A\00", align 1
@create_36bit_mapping._entry_ptr.32 = internal global ptr @create_36bit_mapping._entry.30, section ".printk_index", align 4
@create_36bit_mapping._entry.33 = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 865, ptr null, ptr null }, align 1
@.str.34 = private unnamed_addr constant [71 x i8] c"\013MM: cannot create mapping for 0x%08llx at 0x%08lx invalid alignment\0A\00", align 1
@create_36bit_mapping._entry_ptr.35 = internal global ptr @create_36bit_mapping._entry.33, section ".printk_index", align 4
@.str.36 = private unnamed_addr constant [45 x i8] c"VM_BUG_ON_PAGE(*(unsigned long *)&page->ptl)\00", align 1
@ptlock_init.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [17 x i8] c"ptlock_ptr(page)\00", align 1
@.str.38 = private unnamed_addr constant [70 x i8] c"VM_BUG_ON_PAGE(!((page->page_type & (0xf0000000 | 0)) == 0xf0000000))\00", align 1
@create_mapping._entry = internal constant %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 948, ptr null, ptr null }, align 1
@.str.39 = private unnamed_addr constant [68 x i8] c"\014BUG: not creating mapping for 0x%08llx at 0x%08lx in user region\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"create_mapping\00", align 1
@create_mapping._entry_ptr = internal global ptr @create_mapping._entry, section ".printk_index", align 4
@create_mapping._entry.41 = internal constant %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 956, ptr null, ptr null }, align 1
@.str.42 = private unnamed_addr constant [61 x i8] c"\014BUG: mapping for 0x%08llx at 0x%08lx out of vmalloc space\0A\00", align 1
@create_mapping._entry_ptr.43 = internal global ptr @create_mapping._entry.41, section ".printk_index", align 4
@early_vmalloc._entry = internal constant %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1141, ptr null, ptr null }, align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"\014vmalloc area is too small, limiting to %luMiB\0A\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"early_vmalloc\00", align 1
@early_vmalloc._entry_ptr = internal global ptr @early_vmalloc._entry, section ".printk_index", align 4
@early_vmalloc._entry.46 = internal constant %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 1148, ptr null, ptr null }, align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"\014vmalloc area is too big, limiting to %luMiB\0A\00", align 1
@early_vmalloc._entry_ptr.48 = internal global ptr @early_vmalloc._entry.46, section ".printk_index", align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@map_lowmem.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 1, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = private unnamed_addr constant [11 x i8] c"map_lowmem\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"map lowmem start: 0x%08llx, end: 0x%08llx\0A\00", align 1
@__init_end = external dso_local global [0 x i8], align 1
@__atags_pointer = external dso_local local_unnamed_addr global i32, align 4
@static_vmlist = external dso_local global %struct.list_head, align 4
@pkmap_page_table = external dso_local local_unnamed_addr global ptr, align 4
@.str.51 = private unnamed_addr constant [46 x i8] c"%s: Failed to allocate %lu bytes align=0x%lx\0A\00", align 1
@__func__.early_alloc = private unnamed_addr constant [12 x i8] c"early_alloc\00", align 1
@build_mem_type_table._entry = internal constant %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 436, ptr null, ptr null }, align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"\014Forcing write-allocate cache policy for SMP\0A\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"build_mem_type_table\00", align 1
@build_mem_type_table._entry_ptr = internal global ptr @build_mem_type_table._entry, section ".printk_index", align 4
@build_mem_type_table._entry.54 = internal constant %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 440, ptr null, ptr null }, align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"\014Forcing shared mappings for SMP\0A\00", align 1
@build_mem_type_table._entry_ptr.56 = internal global ptr @build_mem_type_table._entry.54, section ".printk_index", align 4
@protection_map = external dso_local local_unnamed_addr global [16 x i32], align 4
@build_mem_type_table._entry.57 = internal constant %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 664, ptr null, ptr null }, align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"\016Memory policy: %sData cache %s\0A\00", align 1
@build_mem_type_table._entry_ptr.59 = internal global ptr @build_mem_type_table._entry.57, section ".printk_index", align 4
@.str.60 = private unnamed_addr constant [14 x i8] c"ECC enabled, \00", align 1
@.str.61 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@early_paging_init._entry = internal constant %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1683, ptr null, ptr null }, align 1
@.str.62 = private unnamed_addr constant [69 x i8] c"\012Physical address space modification is only to support Keystone2.\0A\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"early_paging_init\00", align 1
@early_paging_init._entry_ptr = internal global ptr @early_paging_init._entry, section ".printk_index", align 4
@early_paging_init._entry.64 = internal constant %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 1684, ptr null, ptr null }, align 1
@.str.65 = private unnamed_addr constant [70 x i8] c"\012Please enable ARM_LPAE and ARM_PATCH_PHYS_VIRT support to use this\0A\00", align 1
@early_paging_init._entry_ptr.66 = internal global ptr @early_paging_init._entry.64, section ".printk_index", align 4
@early_paging_init._entry.67 = internal constant %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 1685, ptr null, ptr null }, align 1
@.str.68 = private unnamed_addr constant [56 x i8] c"\012feature. Your kernel may crash now, have a good day.\0A\00", align 1
@early_paging_init._entry_ptr.69 = internal global ptr @early_paging_init._entry.67, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1619]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 4108]
@llvm.compiler.used = appending global [52 x ptr] [ptr @__create_mapping._entry, ptr @__create_mapping._entry_ptr, ptr @__ksymtab_empty_zero_page, ptr @__ksymtab_get_mem_type, ptr @__ksymtab_pgprot_kernel, ptr @__ksymtab_pgprot_user, ptr @__ksymtab_phys_mem_access_prot, ptr @__setup_early_cachepolicy, ptr @__setup_early_ecc, ptr @__setup_early_nocache, ptr @__setup_early_nowrite, ptr @__setup_early_vmalloc, ptr @adjust_lowmem_bounds._entry, ptr @adjust_lowmem_bounds._entry.6, ptr @adjust_lowmem_bounds._entry_ptr, ptr @adjust_lowmem_bounds._entry_ptr.8, ptr @build_mem_type_table._entry, ptr @build_mem_type_table._entry.54, ptr @build_mem_type_table._entry.57, ptr @build_mem_type_table._entry_ptr, ptr @build_mem_type_table._entry_ptr.56, ptr @build_mem_type_table._entry_ptr.59, ptr @create_36bit_mapping._entry, ptr @create_36bit_mapping._entry.30, ptr @create_36bit_mapping._entry.33, ptr @create_36bit_mapping._entry_ptr, ptr @create_36bit_mapping._entry_ptr.32, ptr @create_36bit_mapping._entry_ptr.35, ptr @create_mapping._entry, ptr @create_mapping._entry.41, ptr @create_mapping._entry_ptr, ptr @create_mapping._entry_ptr.43, ptr @early_cachepolicy._entry, ptr @early_cachepolicy._entry.15, ptr @early_cachepolicy._entry_ptr, ptr @early_cachepolicy._entry_ptr.17, ptr @early_nocache._entry, ptr @early_nocache._entry_ptr, ptr @early_nowrite._entry, ptr @early_nowrite._entry_ptr, ptr @early_paging_init._entry, ptr @early_paging_init._entry.64, ptr @early_paging_init._entry.67, ptr @early_paging_init._entry_ptr, ptr @early_paging_init._entry_ptr.66, ptr @early_paging_init._entry_ptr.69, ptr @early_vmalloc._entry, ptr @early_vmalloc._entry.46, ptr @early_vmalloc._entry_ptr, ptr @early_vmalloc._entry_ptr.48, ptr @init_default_cache_policy._entry, ptr @init_default_cache_policy._entry_ptr], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_default_cache_policy(i32 noundef %pmd) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %pmd, ptr @initial_pmd_value, align 4
  %and = and i32 %pmd, 4108
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %pmd1 = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %i.014, i32 2
  %0 = load i32, ptr %pmd1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %and)
  %cmp2 = icmp eq i32 %0, %and
  br i1 %cmp2, label %for.end.thread, label %for.inc

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %i.014, ptr @cachepolicy, align 4
  br label %if.end5

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %if.end5

if.end5:                                          ; preds = %do.end, %for.end.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_cachepolicy(ptr noundef %p) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %i.038
  %call = tail call i32 @strlen(ptr noundef %arrayidx) #14
  %call4 = tail call i32 @memcmp(ptr noundef %p, ptr noundef %arrayidx, i32 noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %for.body.if.end9_crit_edge, label %for.inc

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %if.end9

if.end9:                                          ; preds = %do.end, %for.body.if.end9_crit_edge
  %selected.241 = phi i32 [ -1, %do.end ], [ %i.038, %for.body.if.end9_crit_edge ]
  %call10 = tail call i32 @cpu_architecture() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, 7
  %0 = load i32, ptr @cachepolicy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %selected.241, i32 %0)
  %cmp12.not = icmp eq i32 %selected.241, %0
  br i1 %cmp11, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end9
  br i1 %cmp12.not, label %land.lhs.true.cleanup28_crit_edge, label %do.end16

land.lhs.true.cleanup28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

do.end16:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx18 = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %0
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %arrayidx18) #13
  br label %cleanup28

if.end22:                                         ; preds = %if.end9
  br i1 %cmp12.not, label %if.end22.cleanup28_crit_edge, label %if.then24

if.end22.cleanup28_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %cr_mask = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %selected.241, i32 1
  %1 = load i32, ptr %cr_mask, align 4
  %call26 = tail call i32 @__clear_cr(i32 noundef %1) #14
  store i32 %selected.241, ptr @cachepolicy, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %call26) #11, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !10
  br label %cleanup28

cleanup28:                                        ; preds = %if.then24, %if.end22.cleanup28_crit_edge, %do.end16, %land.lhs.true.cleanup28_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_nocache(ptr nocapture noundef readnone %__unused) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18) #13
  %call1 = tail call i32 @early_cachepolicy(ptr noundef nonnull @.str.18) #16
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_nowrite(ptr nocapture noundef readnone %__unused) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21) #13
  %call1 = tail call i32 @early_cachepolicy(ptr noundef nonnull @.str.21) #16
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_ecc(ptr noundef %p) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @memcmp(ptr noundef %p, ptr noundef nonnull @.str.24, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.end4.sink.split_crit_edge, label %if.else

entry.if.end4.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.sink.split

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @memcmp(ptr noundef %p, ptr noundef nonnull @.str.25, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.else.if.end4.sink.split_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.else.if.end4.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.else.if.end4.sink.split_crit_edge, %entry.if.end4.sink.split_crit_edge
  store i1 %cmp, ptr @ecc_mask, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %if.else.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @get_mem_type(i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %type)
  %cmp = icmp ult i32 %type, 17
  %arrayidx = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %type
  %cond = select i1 %cmp, ptr %arrayidx, ptr null
  ret ptr %cond
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_fixmap_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i.i = getelementptr [2 x i32], ptr %0, i32 2047
  %call.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @bm_pte to i32)) #14
  %add.i.i = add i32 %call.i, 2048
  %or.i.i = or i32 %add.i.i, 17
  store i32 %or.i.i, ptr %add.ptr.i.i.i, align 4
  %add1.i.i = add i32 %or.i.i, 1024
  %arrayidx2.i.i = getelementptr [2 x i32], ptr %0, i32 2047, i32 1
  store i32 %add1.i.i, ptr %arrayidx2.i.i, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i.i.i, i32 %1, i32 1073741824) #11, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !12
  store ptr @pte_offset_early_fixmap, ptr @pte_offset_fixmap, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @pte_offset_early_fixmap(ptr nocapture noundef readnone %dir, i32 noundef %addr) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %addr, 12
  %and.i = and i32 %shr.i, 511
  %arrayidx = getelementptr [1024 x i32], ptr @bm_pte, i32 0, i32 %and.i
  ret ptr %arrayidx
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__set_fixmap(i32 noundef %idx, i32 noundef %phys, i32 noundef %prot) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl.neg = mul i32 %idx, -4096
  %sub = add i32 %shl.neg, -1052672
  %0 = load ptr, ptr @pte_offset_fixmap, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i = lshr i32 %sub, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %1, i32 %shr.i.i
  %call1 = tail call ptr %0(ptr noundef %add.ptr.i.i, i32 noundef %sub) #14, !callees !13
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %idx)
  %cmp = icmp ugt i32 %idx, 224
  br i1 %cmp, label %do.body4, label %do.end11, !prof !14

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/mmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 393, 0\0A.popsection", ""() #11, !srcloc !15
  unreachable

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prot)
  %tobool13.not = icmp eq i32 %prot, 0
  %2 = zext i32 %prot to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %prot, label %land.rhs [
    i32 0, label %do.end11.if.else_crit_edge
    i32 1619, label %if.then47.thread
  ]

do.end11.if.else_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then47.thread:                                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  %shr61 = and i32 %phys, -4096
  %or62 = or i32 %shr61, %prot
  br label %set_pte_at.exit

land.rhs:                                         ; preds = %do.end11
  %3 = load i32, ptr @pgprot_kernel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp eq i32 %3, 0
  br i1 %cmp14, label %do.end30, label %if.end45, !prof !14

do.end30:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 397, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end45:                                         ; preds = %land.rhs
  br i1 %tobool13.not, label %if.end45.if.else_crit_edge, label %if.then47

if.end45.if.else_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then47:                                        ; preds = %if.end45
  %shr = and i32 %phys, -4096
  %or = or i32 %shr, %prot
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %sub)
  %cmp.i = icmp ugt i32 %sub, -1226833921
  %4 = and i32 %prot, 259
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %4)
  %5 = icmp ne i32 %4, 259
  %6 = or i1 %cmp.i, %5
  br i1 %6, label %if.then47.set_pte_at.exit_crit_edge, label %if.then.i

if.then47.set_pte_at.exit_crit_edge:              ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_pte_at.exit

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__sync_icache_dcache(i32 noundef %or) #14
  br label %set_pte_at.exit

set_pte_at.exit:                                  ; preds = %if.then.i, %if.then47.set_pte_at.exit_crit_edge, %if.then47.thread
  %or64 = phi i32 [ %or, %if.then.i ], [ %or, %if.then47.set_pte_at.exit_crit_edge ], [ %or62, %if.then47.thread ]
  %ext.0.i = phi i32 [ 2048, %if.then.i ], [ 0, %if.then47.set_pte_at.exit_crit_edge ], [ 0, %if.then47.thread ]
  %7 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i = getelementptr inbounds %struct.processor, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %set_pte_ext.i, align 4
  tail call void %8(ptr noundef %call1, i32 noundef %or64, i32 noundef %ext.0.i) #14
  br label %if.end49

if.else:                                          ; preds = %if.end45.if.else_crit_edge, %do.end11.if.else_crit_edge
  %9 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext = getelementptr inbounds %struct.processor, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %set_pte_ext, align 4
  tail call void %10(ptr noundef %call1, i32 noundef 0, i32 noundef 0) #14
  br label %if.end49

if.end49:                                         ; preds = %if.else, %set_pte_at.exit
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1), align 4
  %add = add i32 %shl.neg, -1048576
  tail call void %11(i32 noundef %sub, i32 noundef %add) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_pte_at(ptr nocapture readnone %mm, i32 noundef %addr, ptr noundef %ptep, i32 noundef %pteval) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %addr)
  %cmp = icmp ugt i32 %addr, -1226833921
  %0 = and i32 %pteval, 259
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %0)
  %1 = icmp ne i32 %0, 259
  %2 = or i1 %cmp, %1
  br i1 %2, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__sync_icache_dcache(i32 noundef %pteval) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then, %entry.if.end24_crit_edge
  %ext.0 = phi i32 [ 2048, %if.then ], [ 0, %entry.if.end24_crit_edge ]
  %3 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext = getelementptr inbounds %struct.processor, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %set_pte_ext, align 4
  tail call void %4(ptr noundef %ptep, i32 noundef %pteval, i32 noundef %ext.0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phys_mem_access_prot(ptr nocapture noundef readonly %file, i32 noundef %pfn, i32 %size, i32 noundef %vma_prot) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pfn_valid(i32 noundef %pfn) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %vma_prot, -61
  br label %return

if.else:                                          ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = load i32, ptr %f_flags, align 4
  %and1 = and i32 %0, 1052672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else.return_crit_edge, label %if.then3

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and4 = and i32 %vma_prot, -61
  %or5 = or i32 %and4, 4
  br label %return

return:                                           ; preds = %if.then3, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %or5, %if.then3 ], [ %and, %if.then ], [ %vma_prot, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @create_mapping_late(ptr nocapture noundef readonly %mm, ptr nocapture noundef readonly %md, i1 noundef zeroext %ng) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__create_mapping(ptr noundef %mm, ptr noundef %md, ptr noundef nonnull @late_alloc, i1 noundef zeroext %ng) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @__create_mapping(ptr nocapture noundef readonly %mm, ptr nocapture noundef readonly %md, ptr nocapture noundef readonly %alloc, i1 noundef zeroext %ng) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.map_desc, ptr %md, i32 0, i32 3
  %0 = load i32, ptr %type1, align 4
  %arrayidx = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %0
  %pfn = getelementptr inbounds %struct.map_desc, ptr %md, i32 0, i32 1
  %1 = load i32, ptr %pfn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %1)
  %cmp = icmp ugt i32 %1, 1048575
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @create_36bit_mapping(ptr noundef %mm, ptr noundef %md, ptr noundef %arrayidx, i1 noundef zeroext %ng) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %md, align 4
  %and = and i32 %2, -4096
  %shl = shl nuw i32 %1, 12
  %length3 = getelementptr inbounds %struct.map_desc, ptr %md, i32 0, i32 2
  %3 = load i32, ptr %length3, align 4
  %and5 = and i32 %2, 4095
  %add = add nuw nsw i32 %and5, 4095
  %add6 = add i32 %add, %3
  %and7 = and i32 %add6, -4096
  %prot_l1 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %0, i32 2
  %4 = load i32, ptr %prot_l1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8 = icmp eq i32 %4, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %or = or i32 %2, %shl
  %or9 = or i32 %or, %add6
  %and10 = and i32 %or9, 1044480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end15_crit_edge, label %do.end

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %shl to i64
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i64 noundef %conv, i32 noundef %and) #13
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %pgd16 = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 8
  %5 = load ptr, ptr %pgd16, align 4
  %shr.i = lshr i32 %2, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %5, i32 %shr.i
  %add18 = add i32 %and7, %and
  %sub23 = add i32 %add18, -1
  br label %do.body19

do.body19:                                        ; preds = %do.body19.do.body19_crit_edge, %if.end15
  %pgd.0 = phi ptr [ %add.ptr.i, %if.end15 ], [ %incdec.ptr, %do.body19.do.body19_crit_edge ]
  %phys.0 = phi i32 [ %shl, %if.end15 ], [ %add28, %do.body19.do.body19_crit_edge ]
  %addr.0 = phi i32 [ %and, %if.end15 ], [ %cond, %do.body19.do.body19_crit_edge ]
  %add20 = add i32 %addr.0, 2097152
  %and21 = and i32 %add20, -2097152
  %sub = add i32 %and21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub23)
  %cmp24 = icmp ult i32 %sub, %sub23
  %cond = select i1 %cmp24, i32 %and21, i32 %add18
  tail call fastcc void @alloc_init_pmd(ptr noundef %pgd.0, i32 noundef %addr.0, i32 noundef %cond, i32 noundef %phys.0, ptr noundef %arrayidx, ptr noundef %alloc, i1 noundef zeroext %ng) #13
  %sub27 = sub i32 %phys.0, %addr.0
  %add28 = add i32 %sub27, %cond
  %incdec.ptr = getelementptr [2 x i32], ptr %pgd.0, i32 1
  %cmp30.not = icmp eq i32 %cond, %add18
  br i1 %cmp30.not, label %do.body19.cleanup_crit_edge, label %do.body19.do.body19_crit_edge

do.body19.do.body19_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %do.body19.cleanup_crit_edge, %do.end, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal ptr @late_alloc(i32 noundef %sz) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dec.i = add i32 %sz, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %0 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 false) #11, !range !16
  %sub.i.i = sub nuw nsw i32 32, %0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef %cond.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @mem_map, align 4
  %sub = add i32 %call1, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %1, i32 %shr
  %ptl.i.i = getelementptr %struct.page, ptr %1, i32 %shr, i32 1, i32 0, i32 3
  %2 = load i32, ptr %ptl.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i9 = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i9, label %do.end6.i.i, label %if.then.i3.i, !prof !17

if.then.i3.i:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str.36) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2299, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

do.end6.i.i:                                      ; preds = %lor.lhs.false
  %call.i.i = tail call zeroext i1 @ptlock_alloc(ptr noundef %add.ptr) #14
  br i1 %call.i.i, label %if.end.i10, label %do.end6.i.i.do.body_crit_edge

do.end6.i.i.do.body_crit_edge:                    ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.i10:                                       ; preds = %do.end6.i.i
  %3 = load ptr, ptr %ptl.i.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull @ptlock_init.__key, i16 noundef signext 3) #14
  %4 = getelementptr %struct.page, ptr %1, i32 %shr, i32 2
  %5 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %5)
  %cmp.i.i = icmp ult i32 %5, -268435456
  br i1 %cmp.i.i, label %if.then.i.i, label %__SetPageTable.exit.i, !prof !14

if.then.i.i:                                      ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str.38) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 912, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

__SetPageTable.exit.i:                            ; preds = %if.end.i10
  %and7.i.i = and i32 %5, -513
  store i32 %and7.i.i, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !20
  %and.i.i.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then21.i.i.i, label %do.end11.i.i.i

do.end11.i.i.i:                                   ; preds = %__SetPageTable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mod_lruvec_page_state(ptr noundef %add.ptr, i32 noundef 38, i32 noundef 1) #14
  br label %do.body23.i.i.i

if.then21.i.i.i:                                  ; preds = %__SetPageTable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #14
  tail call void @__mod_lruvec_page_state(ptr noundef %add.ptr, i32 noundef 38, i32 noundef 1) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body23.i.i.i

do.body23.i.i.i:                                  ; preds = %if.then21.i.i.i, %do.end11.i.i.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !21
  %and.i.i.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body23.i.i.i.if.end_crit_edge, !prof !14

do.body23.i.i.i.if.end_crit_edge:                 ; preds = %do.body23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then36.i.i.i:                                  ; preds = %do.body23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #14
  br label %if.end

do.body:                                          ; preds = %do.end6.i.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/mmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 706, 0\0A.popsection", ""() #11, !srcloc !22
  unreachable

if.end:                                           ; preds = %if.then36.i.i.i, %do.body23.i.i.i.if.end_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !23
  %8 = inttoptr i32 %call1 to ptr
  ret ptr %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @iotable_init(ptr nocapture noundef readonly %io_desc, i32 noundef %nr) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool.not = icmp eq i32 %nr, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %nr, 40
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #14
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.then2, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.iotable_init, i32 noundef %mul, i32 noundef 4) #17
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %svm.036 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call.i, %if.end.for.body_crit_edge ]
  %md.035 = phi ptr [ %incdec.ptr13, %for.body.for.body_crit_edge ], [ %io_desc, %if.end.for.body_crit_edge ]
  %nr.addr.034 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %nr, %if.end.for.body_crit_edge ]
  tail call fastcc void @create_mapping(ptr noundef %md.035) #16
  %0 = load i32, ptr %md.035, align 4
  %and = and i32 %0, -4096
  %1 = inttoptr i32 %and to ptr
  %addr = getelementptr inbounds %struct.vm_struct, ptr %svm.036, i32 0, i32 1
  store ptr %1, ptr %addr, align 4
  %length = getelementptr inbounds %struct.map_desc, ptr %md.035, i32 0, i32 2
  %2 = load i32, ptr %length, align 4
  %3 = load i32, ptr %md.035, align 4
  %and8 = and i32 %3, 4095
  %add = add i32 %2, 4095
  %add9 = add i32 %add, %and8
  %and10 = and i32 %add9, -4096
  %size = getelementptr inbounds %struct.vm_struct, ptr %svm.036, i32 0, i32 2
  store i32 %and10, ptr %size, align 4
  %pfn = getelementptr inbounds %struct.map_desc, ptr %md.035, i32 0, i32 1
  %4 = load i32, ptr %pfn, align 4
  %shl = shl i32 %4, 12
  %phys_addr = getelementptr inbounds %struct.vm_struct, ptr %svm.036, i32 0, i32 6
  store i32 %shl, ptr %phys_addr, align 4
  %flags = getelementptr inbounds %struct.vm_struct, ptr %svm.036, i32 0, i32 3
  store i32 1073741825, ptr %flags, align 4
  %type = getelementptr inbounds %struct.map_desc, ptr %md.035, i32 0, i32 3
  %5 = load i32, ptr %type, align 4
  %shl11 = shl i32 %5, 20
  %or = or i32 %shl11, 1073741825
  store i32 %or, ptr %flags, align 4
  %caller = getelementptr inbounds %struct.vm_struct, ptr %svm.036, i32 0, i32 7
  store ptr @iotable_init, ptr %caller, align 4
  %incdec.ptr = getelementptr %struct.static_vm, ptr %svm.036, i32 1
  tail call void @add_static_vm_early(ptr noundef %svm.036) #13
  %incdec.ptr13 = getelementptr %struct.map_desc, ptr %md.035, i32 1
  %dec = add i32 %nr.addr.034, -1
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @create_mapping(ptr nocapture noundef readonly %md) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr %md, align 4
  %1 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #18, !srcloc !24
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 -65536
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cond)
  %cmp.not = icmp ne i32 %0, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %0)
  %cmp2 = icmp ult i32 %0, -1226833920
  %or.cond50 = and i1 %cmp2, %cmp.not
  br i1 %or.cond50, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pfn = getelementptr inbounds %struct.map_desc, ptr %md, i32 0, i32 1
  %2 = load i32, ptr %pfn, align 4
  %shl = shl i32 %2, 12
  %conv4 = zext i32 %shl to i64
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %conv4, i32 noundef %0) #13
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.map_desc, ptr %md, i32 0, i32 3
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  %4 = add i32 %0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1070071808, i32 %4)
  %5 = icmp ult i32 %4, 1070071808
  %or.cond = select i1 %cmp7, i1 %5, i1 false
  br i1 %or.cond, label %land.lhs.true17, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true17:                                  ; preds = %if.end
  %6 = load ptr, ptr @high_memory, align 4
  %7 = ptrtoint ptr %6 to i32
  %add = add i32 %7, 8388608
  %and19 = and i32 %add, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %and19)
  %cmp20 = icmp ult i32 %0, %and19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8388609, i32 %0)
  %cmp23 = icmp ugt i32 %0, -8388609
  %or.cond49 = or i1 %cmp23, %cmp20
  br i1 %or.cond49, label %do.end27, label %land.lhs.true17.if.end36_crit_edge

land.lhs.true17.if.end36_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end27:                                         ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  %pfn29 = getelementptr inbounds %struct.map_desc, ptr %md, i32 0, i32 1
  %8 = load i32, ptr %pfn29, align 4
  %shl32 = shl i32 %8, 12
  %conv33 = zext i32 %shl32 to i64
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i64 noundef %conv33, i32 noundef %0) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end27, %land.lhs.true17.if.end36_crit_edge, %if.end.if.end36_crit_edge
  tail call fastcc void @__create_mapping(ptr noundef nonnull @init_mm, ptr noundef %md, ptr noundef nonnull @early_alloc, i1 noundef zeroext false) #16
  br label %return

return:                                           ; preds = %if.end36, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @add_static_vm_early(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @vm_reserve_area_early(i32 noundef %addr, i32 noundef %size, ptr noundef %caller) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef 40, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.vm_reserve_area_early, i32 noundef 40, i32 noundef 4) #17
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = inttoptr i32 %addr to ptr
  %addr2 = getelementptr inbounds %struct.vm_struct, ptr %call.i, i32 0, i32 1
  store ptr %0, ptr %addr2, align 4
  %size3 = getelementptr inbounds %struct.vm_struct, ptr %call.i, i32 0, i32 2
  store i32 %size, ptr %size3, align 4
  %flags = getelementptr inbounds %struct.vm_struct, ptr %call.i, i32 0, i32 3
  store i32 536870913, ptr %flags, align 4
  %caller4 = getelementptr inbounds %struct.vm_struct, ptr %call.i, i32 0, i32 7
  store ptr %caller, ptr %caller4, align 4
  tail call void @add_static_vm_early(ptr noundef nonnull %call.i) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @debug_ll_io_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %map = alloca %struct.map_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #11
  store i32 -1, ptr %map, align 4, !annotation !25
  %0 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 1
  store i32 -1, ptr %0, align 4, !annotation !25
  %1 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 2
  store i32 -1, ptr %1, align 4, !annotation !25
  %2 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 3
  store i32 -1, ptr %2, align 4, !annotation !25
  call void @debug_ll_addr(ptr noundef %0, ptr noundef nonnull %map) #14
  %3 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %4 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3 = icmp ne i32 %4, 0
  %or.cond = select i1 %tobool, i1 %tobool3, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %3, 12
  store i32 %shr, ptr %0, align 4
  %and = and i32 %4, -4096
  store i32 %and, ptr %map, align 4
  store i32 4096, ptr %1, align 4
  store i32 0, ptr %2, align 4
  call void @iotable_init(ptr noundef nonnull %map, i32 noundef 1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_ll_addr(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_vmalloc(ptr noundef %arg) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @memparse(ptr noundef %arg, ptr noundef null) #14
  %conv = trunc i64 %call to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %conv)
  %cmp = icmp ult i32 %conv, 16777216
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 16) #13
  br label %if.end12

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023410176, i32 %conv)
  %cmp3 = icmp ugt i32 %conv, 1023410176
  br i1 %cmp3, label %if.then5, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 976) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.end.if.end12_crit_edge, %if.end.thread
  %vmalloc_reserve.1 = phi i32 [ 1023410176, %if.then5 ], [ %conv, %if.end.if.end12_crit_edge ], [ 16777216, %if.end.thread ]
  store i32 %vmalloc_reserve.1, ptr @vmalloc_size, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @adjust_lowmem_bounds() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %block_start = alloca i32, align 4
  %block_end = alloca i32, align 4
  %memblock_limit = alloca i32, align 4
  %i = alloca i64, align 8
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_start) #11
  store i32 -1, ptr %block_start, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_end) #11
  store i32 -1, ptr %block_end, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %memblock_limit) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #11
  %0 = load i32, ptr @vmalloc_size, align 4
  %conv = zext i32 %0 to i64
  %sub2 = sub nsw i64 1056964608, %conv
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %shl = shl i32 %1, 12
  %conv3 = zext i32 %shl to i64
  %add = add nsw i64 %sub2, %conv3
  store i64 0, ptr %i, align 8
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %block_start, ptr noundef nonnull %block_end, ptr noundef null) #14
  %2 = load i64, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %2)
  %cmp.not = icmp eq i64 %2, -1
  br i1 %cmp.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %entry
  %3 = load i32, ptr %block_start, align 4
  %and = and i32 %3, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %for.body.for.end_crit_edge, label %if.then

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub7 = add i32 %3, -1
  %or = or i32 %sub7, 2097151
  %add8 = sub i32 1, %3
  %sub9 = add i32 %add8, %or
  %call = call i32 @memblock_mark_nomap(i32 noundef %3, i32 noundef %sub9) #14
  br label %for.end

for.end:                                          ; preds = %if.then, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  store i64 0, ptr %i, align 8
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %block_start, ptr noundef nonnull %block_end, ptr noundef null) #14
  %4 = load i64, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %4)
  %cmp11.not71 = icmp eq i64 %4, -1
  br i1 %cmp11.not71, label %for.end.for.end40_crit_edge, label %for.end.for.body13_crit_edge

for.end.for.body13_crit_edge:                     ; preds = %for.end
  br label %for.body13

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.body13:                                       ; preds = %for.inc39.for.body13_crit_edge, %for.end.for.body13_crit_edge
  %5 = phi i32 [ %10, %for.inc39.for.body13_crit_edge ], [ 0, %for.end.for.body13_crit_edge ]
  %6 = phi i32 [ %11, %for.inc39.for.body13_crit_edge ], [ 0, %for.end.for.body13_crit_edge ]
  %lowmem_limit.072 = phi i32 [ %lowmem_limit.2, %for.inc39.for.body13_crit_edge ], [ 0, %for.end.for.body13_crit_edge ]
  %7 = load i32, ptr %block_start, align 4
  %conv14 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv14)
  %cmp15 = icmp ugt i64 %add, %conv14
  br i1 %cmp15, label %if.then17, label %for.body13.for.inc39_crit_edge

for.body13.for.inc39_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39

if.then17:                                        ; preds = %for.body13
  %8 = load i32, ptr %block_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %lowmem_limit.072)
  %cmp18 = icmp ugt i32 %8, %lowmem_limit.072
  %conv21 = zext i32 %8 to i64
  %9 = call i64 @llvm.umin.i64(i64 %add, i64 %conv21)
  %conv24 = trunc i64 %9 to i32
  %lowmem_limit.1 = select i1 %cmp18, i32 %conv24, i32 %lowmem_limit.072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then26, label %if.then17.for.inc39_crit_edge

if.then17.for.inc39_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39

if.then26:                                        ; preds = %if.then17
  %and27 = and i32 %7, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %7, ptr %memblock_limit, align 4
  br label %for.inc39

if.else:                                          ; preds = %if.then26
  %and31 = and i32 %8, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %if.else.for.inc39_crit_edge, label %if.then34

if.else.for.inc39_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %lowmem_limit.1, ptr %memblock_limit, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %if.then34, %if.else.for.inc39_crit_edge, %if.then30, %if.then17.for.inc39_crit_edge, %for.body13.for.inc39_crit_edge
  %10 = phi i32 [ %5, %if.then17.for.inc39_crit_edge ], [ %5, %if.else.for.inc39_crit_edge ], [ %lowmem_limit.1, %if.then34 ], [ %7, %if.then30 ], [ %5, %for.body13.for.inc39_crit_edge ]
  %11 = phi i32 [ %6, %if.then17.for.inc39_crit_edge ], [ 0, %if.else.for.inc39_crit_edge ], [ %lowmem_limit.1, %if.then34 ], [ %7, %if.then30 ], [ %6, %for.body13.for.inc39_crit_edge ]
  %lowmem_limit.2 = phi i32 [ %lowmem_limit.1, %if.then17.for.inc39_crit_edge ], [ %lowmem_limit.1, %if.else.for.inc39_crit_edge ], [ %lowmem_limit.1, %if.then34 ], [ %lowmem_limit.1, %if.then30 ], [ %lowmem_limit.072, %for.body13.for.inc39_crit_edge ]
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %block_start, ptr noundef nonnull %block_end, ptr noundef null) #14
  %12 = load i64, ptr %i, align 8
  %cmp11.not = icmp eq i64 %12, -1
  br i1 %cmp11.not, label %for.inc39.for.end40_crit_edge, label %for.inc39.for.body13_crit_edge

for.inc39.for.body13_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.inc39.for.end40_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.end40:                                        ; preds = %for.inc39.for.end40_crit_edge, %for.end.for.end40_crit_edge
  %13 = phi i32 [ 0, %for.end.for.end40_crit_edge ], [ %10, %for.inc39.for.end40_crit_edge ]
  %lowmem_limit.0.lcssa = phi i32 [ 0, %for.end.for.end40_crit_edge ], [ %lowmem_limit.2, %for.inc39.for.end40_crit_edge ]
  store i32 %lowmem_limit.0.lcssa, ptr @arm_lowmem_limit, align 4
  %sub41 = add i32 %lowmem_limit.0.lcssa, -1
  %14 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %sub41, i32 -2130706432, i32 8454144) #18, !srcloc !26
  %15 = inttoptr i32 %14 to ptr
  %add.ptr = getelementptr i8, ptr %15, i32 1
  store ptr %add.ptr, ptr @high_memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool43.not = icmp eq i32 %13, 0
  %spec.select = select i1 %tobool43.not, i32 %lowmem_limit.0.lcssa, i32 %13
  %and46 = and i32 %spec.select, -2097152
  store i32 %and46, ptr %memblock_limit, align 4
  %16 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool48.not = icmp eq i32 %and2.i, 0
  br i1 %tobool48.not, label %for.end40.if.end65_crit_edge, label %if.then49

for.end40.if.end65_crit_edge:                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then49:                                        ; preds = %for.end40
  %call50 = call i32 @memblock_end_of_DRAM() #14
  %17 = load i32, ptr @arm_lowmem_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call50, i32 %17)
  %cmp51 = icmp ugt i32 %call50, %17
  br i1 %cmp51, label %if.then53, label %if.then49.if.end65_crit_edge

if.then49.if.end65_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #11
  %call54 = call i32 @memblock_end_of_DRAM() #14
  store i32 %call54, ptr %end, align 4
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %memblock_limit, ptr noundef nonnull %end) #13
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  %18 = load i32, ptr %memblock_limit, align 4
  %19 = load i32, ptr %end, align 4
  %sub62 = sub i32 %19, %18
  %call63 = call i32 @memblock_remove(i32 noundef %18, i32 noundef %sub62) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #11
  %.pre = load i32, ptr %memblock_limit, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then53, %if.then49.if.end65_crit_edge, %for.end40.if.end65_crit_edge
  %20 = phi i32 [ %and46, %if.then49.if.end65_crit_edge ], [ %.pre, %if.then53 ], [ %and46, %for.end40.if.end65_crit_edge ]
  call void @memblock_set_current_limit(i32 noundef %20) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %memblock_limit) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_end) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_start) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_nomap(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_end_of_DRAM() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_remove(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_set_current_limit(i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @arm_mm_memblock_reserve() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @swapper_pg_dir to i32)) #14
  %call1 = tail call i32 @memblock_reserve(i32 noundef %call, i32 noundef 16384) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @paging_init(ptr nocapture noundef readonly %mdesc) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @paging_init.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@paging_init, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i64, ptr @kernel_sec_start, align 8
  %1 = load i64, ptr @kernel_sec_end, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @paging_init.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.11, i64 noundef %0, i64 noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @prepare_page_table() #16
  tail call fastcc void @map_lowmem() #16
  %2 = load i32, ptr @arm_lowmem_limit, align 4
  tail call void @memblock_set_current_limit(i32 noundef %2) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @paging_init.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@paging_init, %if.then15)) #11
          to label %do.end18 [label %if.then15], !srcloc !27

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load i32, ptr @arm_lowmem_limit, align 4
  %conv = zext i32 %3 to i64
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @paging_init.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.12, i64 noundef %conv) #14
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.end
  tail call fastcc void @map_kernel() #16
  tail call void @dma_contiguous_remap() #14
  tail call fastcc void @early_fixmap_shutdown() #16
  tail call fastcc void @devicemaps_init(ptr noundef %mdesc) #16
  tail call fastcc void @kmap_init() #16
  tail call void @tcm_init() #13
  %4 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i = getelementptr [2 x i32], ptr %4, i32 2047
  store ptr %add.ptr.i.i, ptr @top_pmd, align 4
  %call20 = tail call ptr @early_alloc(i32 noundef 4096) #16
  tail call void @bootmem_init() #13
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %call20 to i32
  %sub = add i32 %6, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %5, i32 %shr
  store ptr %add.ptr, ptr @empty_zero_page, align 4
  tail call void @__flush_dcache_page(ptr noundef null, ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @prepare_page_table() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %addr.088 = phi i32 [ 0, %entry ], [ %add, %do.body.do.body_crit_edge ]
  %0 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i = lshr exact i32 %addr.088, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %0, i32 %shr.i.i
  store i32 0, ptr %add.ptr.i.i, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %arrayidx2 = getelementptr [2 x i32], ptr %1, i32 %shr.i.i, i32 1
  store i32 0, ptr %arrayidx2, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i75 = getelementptr [2 x i32], ptr %2, i32 %shr.i.i
  %3 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i.i75, i32 %3, i32 1073741824) #11, !srcloc !28
  %add = add nuw i32 %addr.088, 2097152
  %cmp = icmp ult i32 %addr.088, -1228931072
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.do.body21_crit_edge

do.body.do.body21_crit_edge:                      ; preds = %do.body
  br label %do.body21

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body21:                                        ; preds = %do.body21.do.body21_crit_edge, %do.body.do.body21_crit_edge
  %addr.289 = phi i32 [ %add30, %do.body21.do.body21_crit_edge ], [ -1090519040, %do.body.do.body21_crit_edge ]
  %4 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i76 = lshr exact i32 %addr.289, 21
  %add.ptr.i.i77 = getelementptr [2 x i32], ptr %4, i32 %shr.i.i76
  store i32 0, ptr %add.ptr.i.i77, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %arrayidx25 = getelementptr [2 x i32], ptr %5, i32 %shr.i.i76, i32 1
  store i32 0, ptr %arrayidx25, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i81 = getelementptr [2 x i32], ptr %6, i32 %shr.i.i76
  %7 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i.i81, i32 %7, i32 1073741824) #11, !srcloc !28
  %add30 = add nuw nsw i32 %addr.289, 2097152
  %cmp19 = icmp ult i32 %addr.289, -1075838976
  br i1 %cmp19, label %do.body21.do.body21_crit_edge, label %for.end31

do.body21.do.body21_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

for.end31:                                        ; preds = %do.body21
  %8 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %9 = load i32, ptr %8, align 4
  %size = getelementptr inbounds %struct.memblock_region, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %size, align 4
  %add34 = add i32 %10, %9
  %11 = load i32, ptr @arm_lowmem_limit, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %add34, i32 %11)
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %12, i32 -2130706432, i32 8454144) #18, !srcloc !26
  %14 = load ptr, ptr @high_memory, align 4
  %15 = ptrtoint ptr %14 to i32
  %add3890 = add i32 %15, 8388608
  %and91 = and i32 %add3890, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %and91)
  %cmp3992 = icmp ult i32 %13, %and91
  br i1 %cmp3992, label %for.end31.do.body41_crit_edge, label %for.end31.for.end51_crit_edge

for.end31.for.end51_crit_edge:                    ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end51

for.end31.do.body41_crit_edge:                    ; preds = %for.end31
  br label %do.body41

do.body41:                                        ; preds = %do.body41.do.body41_crit_edge, %for.end31.do.body41_crit_edge
  %addr.393 = phi i32 [ %add50, %do.body41.do.body41_crit_edge ], [ %13, %for.end31.do.body41_crit_edge ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i82 = lshr i32 %addr.393, 21
  %add.ptr.i.i83 = getelementptr [2 x i32], ptr %16, i32 %shr.i.i82
  store i32 0, ptr %add.ptr.i.i83, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %arrayidx45 = getelementptr [2 x i32], ptr %17, i32 %shr.i.i82, i32 1
  store i32 0, ptr %arrayidx45, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i87 = getelementptr [2 x i32], ptr %18, i32 %shr.i.i82
  %19 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i.i87, i32 %19, i32 1073741824) #11, !srcloc !28
  %add50 = add nuw i32 %addr.393, 2097152
  %20 = load ptr, ptr @high_memory, align 4
  %21 = ptrtoint ptr %20 to i32
  %add38 = add i32 %21, 8388608
  %and = and i32 %add38, -8388608
  %cmp39 = icmp ult i32 %add50, %and
  br i1 %cmp39, label %do.body41.do.body41_crit_edge, label %do.body41.for.end51_crit_edge

do.body41.for.end51_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end51

do.body41.do.body41_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41

for.end51:                                        ; preds = %do.body41.for.end51_crit_edge, %for.end31.for.end51_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @map_lowmem() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %i = alloca i64, align 8
  %map = alloca %struct.map_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #11
  store i32 -1, ptr %start, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #11
  store i32 -1, ptr %end, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #11
  store i64 0, ptr %i, align 8
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %start, ptr noundef nonnull %end, ptr noundef null) #14
  %0 = load i64, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %0)
  %cmp.not118 = icmp eq i64 %0, -1
  br i1 %cmp.not118, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 1
  %2 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 2
  %3 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @map_lowmem.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@map_lowmem, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !27

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = load i32, ptr %start, align 4
  %conv = zext i32 %4 to i64
  %5 = load i32, ptr %end, align 4
  %conv3 = zext i32 %5 to i64
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @map_lowmem.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.50, i64 noundef %conv, i64 noundef %conv3) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %6 = load i32, ptr %end, align 4
  %7 = load i32, ptr @arm_lowmem_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp4 = icmp ugt i32 %6, %7
  br i1 %cmp4, label %if.then6, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %7, ptr %end, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  %8 = phi i32 [ %7, %if.then6 ], [ %6, %do.end.if.end7_crit_edge ]
  %9 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp8.not = icmp ult i32 %9, %8
  br i1 %cmp8.not, label %if.end11, label %if.end7.cleanup.thread_crit_edge

if.end7.cleanup.thread_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end11:                                         ; preds = %if.end7
  %conv12 = zext i32 %9 to i64
  %10 = load i64, ptr @kernel_sec_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv12)
  %cmp13 = icmp ult i64 %10, %conv12
  %conv15 = zext i32 %8 to i64
  br i1 %cmp13, label %land.lhs.true, label %land.lhs.true23

land.lhs.true:                                    ; preds = %if.end11
  %11 = load i64, ptr @kernel_sec_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv15)
  %cmp16 = icmp ugt i64 %11, %conv15
  br i1 %cmp16, label %land.lhs.true.cleanup.thread_crit_edge, label %land.lhs.true66

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

land.lhs.true23:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv15)
  %cmp25.not = icmp ugt i64 %10, %conv15
  br i1 %cmp25.not, label %land.lhs.true23.if.else76_crit_edge, label %if.then27

land.lhs.true23.if.else76_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else76

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv12)
  %cmp29 = icmp ugt i64 %10, %conv12
  %12 = load i64, ptr @kernel_sec_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv15)
  %cmp33 = icmp ult i64 %12, %conv15
  %or.cond = select i1 %cmp29, i1 %cmp33, i1 false
  br i1 %or.cond, label %if.then35, label %if.end50

if.then35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %9, 12
  store i32 %shr, ptr %1, align 4
  %13 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %9, i32 -2130706432, i32 8454144) #18, !srcloc !26
  store i32 %13, ptr %map, align 4
  %14 = trunc i64 %10 to i32
  %conv38 = sub i32 %14, %9
  store i32 %conv38, ptr %2, align 4
  store i32 10, ptr %3, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %map) #16
  %15 = load i64, ptr @kernel_sec_end, align 8
  %shr39 = lshr i64 %15, 12
  %conv40 = trunc i64 %shr39 to i32
  store i32 %conv40, ptr %1, align 4
  %conv42 = trunc i64 %15 to i32
  %16 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %conv42, i32 -2130706432, i32 8454144) #18, !srcloc !26
  store i32 %16, ptr %map, align 4
  %17 = load i32, ptr %end, align 4
  %conv47 = sub i32 %17, %conv42
  store i32 %conv47, ptr %2, align 4
  store i32 10, ptr %3, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %map) #16
  br label %cleanup.thread

if.end50:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv12)
  %cmp52 = icmp eq i64 %10, %conv12
  br i1 %cmp52, label %if.then54, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %conv55 = trunc i64 %12 to i32
  store i32 %conv55, ptr %start, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end50.if.end56_crit_edge
  %18 = phi i32 [ %conv55, %if.then54 ], [ %9, %if.end50.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv15)
  %cmp58 = icmp eq i64 %12, %conv15
  br i1 %cmp58, label %if.then60, label %if.end56.for.inc_crit_edge

if.end56.for.inc_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %conv61 = trunc i64 %10 to i32
  store i32 %conv61, ptr %end, align 4
  br label %for.inc

land.lhs.true66:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv12)
  %cmp68 = icmp ugt i64 %11, %conv12
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv15)
  %cmp72 = icmp ult i64 %11, %conv15
  %or.cond109 = select i1 %cmp68, i1 %cmp72, i1 false
  br i1 %or.cond109, label %if.then74, label %land.lhs.true66.if.else76_crit_edge

land.lhs.true66.if.else76_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else76

if.then74:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  %conv75 = trunc i64 %11 to i32
  store i32 %conv75, ptr %start, align 4
  br label %for.inc

if.else76:                                        ; preds = %land.lhs.true66.if.else76_crit_edge, %land.lhs.true23.if.else76_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv12)
  %cmp78 = icmp ugt i64 %10, %conv12
  br i1 %cmp78, label %land.lhs.true80, label %if.else76.for.inc_crit_edge

if.else76.for.inc_crit_edge:                      ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true80:                                  ; preds = %if.else76
  %conv81 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv81)
  %cmp82 = icmp ult i64 %10, %conv81
  %19 = load i64, ptr @kernel_sec_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv81)
  %cmp86 = icmp ugt i64 %19, %conv81
  %or.cond105 = select i1 %cmp82, i1 %cmp86, i1 false
  br i1 %or.cond105, label %if.then88, label %land.lhs.true80.for.inc_crit_edge

land.lhs.true80.for.inc_crit_edge:                ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then88:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  %conv89 = trunc i64 %10 to i32
  store i32 %conv89, ptr %end, align 4
  br label %for.inc

cleanup.thread:                                   ; preds = %if.then35, %land.lhs.true.cleanup.thread_crit_edge, %if.end7.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #11
  br label %for.end

for.inc:                                          ; preds = %if.then88, %land.lhs.true80.for.inc_crit_edge, %if.else76.for.inc_crit_edge, %if.then74, %if.then60, %if.end56.for.inc_crit_edge
  %20 = phi i32 [ %8, %if.then74 ], [ %conv89, %if.then88 ], [ %8, %land.lhs.true80.for.inc_crit_edge ], [ %8, %if.else76.for.inc_crit_edge ], [ %8, %if.end56.for.inc_crit_edge ], [ %conv61, %if.then60 ]
  %21 = phi i32 [ %conv75, %if.then74 ], [ %9, %if.then88 ], [ %9, %land.lhs.true80.for.inc_crit_edge ], [ %9, %if.else76.for.inc_crit_edge ], [ %18, %if.end56.for.inc_crit_edge ], [ %18, %if.then60 ]
  %shr93 = lshr i32 %21, 12
  store i32 %shr93, ptr %1, align 4
  %22 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %21, i32 -2130706432, i32 8454144) #18, !srcloc !26
  store i32 %22, ptr %map, align 4
  %sub97 = sub i32 %20, %21
  store i32 %sub97, ptr %2, align 4
  store i32 10, ptr %3, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %map) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #11
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %start, ptr noundef nonnull %end, ptr noundef null) #14
  %23 = load i64, ptr %i, align 8
  %cmp.not = icmp eq i64 %23, -1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @map_kernel() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %map = alloca %struct.map_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @kernel_sec_start, align 8
  %conv = trunc i64 %0 to i32
  %call = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @__init_end to i32)) #14
  %sub = add i32 %call, -1
  %or = or i32 %sub, 1048575
  %add = add i32 %or, 1
  %1 = load i64, ptr @kernel_sec_end, align 8
  %conv1 = trunc i64 %1 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #11
  %2 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 1
  %3 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 2
  %4 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 3
  %shr = lshr i32 %conv, 12
  store i32 %shr, ptr %2, align 4
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %conv, i32 -2130706432, i32 8454144) #18, !srcloc !26
  store i32 %5, ptr %map, align 4
  %sub3 = sub i32 %add, %conv
  store i32 %sub3, ptr %3, align 4
  store i32 9, ptr %4, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %map) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv1)
  %cmp = icmp eq i32 %add, %conv1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr5 = lshr exact i32 %add, 12
  store i32 %shr5, ptr %2, align 4
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %add, i32 -2130706432, i32 8454144) #18, !srcloc !26
  store i32 %6, ptr %map, align 4
  %sub9 = sub i32 %conv1, %add
  store i32 %sub9, ptr %3, align 4
  store i32 10, ptr %4, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %map) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_contiguous_remap() local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @early_fixmap_shutdown() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %map = alloca %struct.map_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @pte_offset_late_fixmap, ptr @pte_offset_fixmap, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i.i = getelementptr [2 x i32], ptr %0, i32 2047
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %arrayidx3 = getelementptr [2 x i32], ptr %1, i32 2047, i32 1
  store i32 0, ptr %arrayidx3, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i.i21 = getelementptr [2 x i32], ptr %2, i32 2047
  %3 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i.i.i21, i32 %3, i32 1073741824) #11, !srcloc !28
  %4 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !29
  %5 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 -1052672, i32 %5, i32 16) #11, !srcloc !30
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 -1052672, i32 %5, i32 32) #11, !srcloc !31
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 -1052672, i32 %5, i32 64) #11, !srcloc !32
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 -1052672, i32 %4, i32 1048576) #11, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #11
  store i32 -1052672, ptr %map, align 4
  %6 = load i32, ptr getelementptr inbounds ([1024 x i32], ptr @bm_pte, i32 0, i32 255), align 4
  %and = and i32 %6, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp10.not = icmp eq i32 %and, 16
  br i1 %cmp10.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 3
  %8 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 2
  %9 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 1
  %shr = lshr i32 %6, 12
  store i32 %shr, ptr %9, align 4
  store i32 0, ptr %7, align 4
  store i32 4096, ptr %8, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %map) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @devicemaps_init(ptr nocapture noundef readonly %mdesc) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %map = alloca %struct.map_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #11
  %0 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 1
  %1 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 2
  %2 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 3
  %call = tail call ptr @early_alloc(i32 noundef 8192) #16
  tail call void @early_trap_init(ptr noundef %call) #13
  %3 = load ptr, ptr @high_memory, align 4
  %4 = ptrtoint ptr %3 to i32
  %add = add i32 %4, 8388608
  %and = and i32 %add, -8388608
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %addr.041 = phi i32 [ %and, %entry ], [ %add5, %do.body.do.body_crit_edge ]
  %5 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i = lshr exact i32 %addr.041, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %5, i32 %shr.i.i
  store i32 0, ptr %add.ptr.i.i, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %arrayidx3 = getelementptr [2 x i32], ptr %6, i32 %shr.i.i, i32 1
  store i32 0, ptr %arrayidx3, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i40 = getelementptr [2 x i32], ptr %7, i32 %shr.i.i
  %8 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i.i40, i32 %8, i32 1073741824) #11, !srcloc !28
  %add5 = add i32 %addr.041, 2097152
  %cmp.not = icmp eq i32 %add5, -2097152
  br i1 %cmp.not, label %for.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end:                                          ; preds = %do.body
  %9 = load i32, ptr @__atags_pointer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %and6 = lshr i32 %9, 12
  %shr = and i32 %and6, 1048320
  store i32 %shr, ptr %0, align 4
  store i32 -8388608, ptr %map, align 4
  store i32 2097152, ptr %1, align 4
  store i32 11, ptr %2, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %map) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %10 = ptrtoint ptr %call to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %10) #14
  %shr8 = lshr i32 %call.i, 12
  store i32 %shr8, ptr %0, align 4
  store i32 -65536, ptr %map, align 4
  store i32 4096, ptr %1, align 4
  store i32 8, ptr %2, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %map) #16
  %11 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #18, !srcloc !24
  %and14 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr %map, align 4
  store i32 8192, ptr %1, align 4
  store i32 7, ptr %2, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %map) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end.if.end20_crit_edge
  %add22 = add nuw nsw i32 %shr8, 1
  store i32 %add22, ptr %0, align 4
  store i32 -61440, ptr %map, align 4
  store i32 4096, ptr %1, align 4
  store i32 7, ptr %2, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %map) #16
  %map_io = getelementptr inbounds %struct.machine_desc, ptr %mdesc, i32 0, i32 19
  %12 = load ptr, ptr %map_io, align 4
  %tobool26.not = icmp eq ptr %12, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %12() #14
  br label %if.end29

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_ll_io_init() #16
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then27
  tail call fastcc void @fill_pmd_gaps() #16
  tail call void @pci_reserve_io() #16
  %13 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !36
  %14 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %14, i32 4608) #11, !srcloc !37
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %14, i32 9216) #11, !srcloc !38
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %14, i32 18432) #11, !srcloc !39
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %13, i32 2097152) #11, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %15() #14
  tail call void @early_abt_enable() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @kmap_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i = getelementptr [2 x i32], ptr %0, i32 1535
  %call.i = tail call fastcc ptr @arm_pte_alloc(ptr noundef %add.ptr.i.i, i32 noundef -1075838976, i32 noundef 17, ptr noundef nonnull @early_alloc) #13
  store ptr %call.i, ptr @pkmap_page_table, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i4 = getelementptr [2 x i32], ptr %1, i32 2046
  %call.i5 = tail call fastcc ptr @arm_pte_alloc(ptr noundef %add.ptr.i.i4, i32 noundef -3670016, i32 noundef 17, ptr noundef nonnull @early_alloc) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tcm_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal ptr @early_alloc(i32 noundef %sz) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %sz, i32 noundef %sz, i32 noundef 0, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.early_alloc, i32 noundef %sz, i32 noundef %sz) #17
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  ret ptr %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @bootmem_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__flush_dcache_page(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_mm_init(ptr nocapture noundef readonly %mdesc) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @build_mem_type_table() #16
  tail call fastcc void @early_paging_init(ptr noundef %mdesc) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @build_mem_type_table() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #18, !srcloc !24
  %call1 = tail call i32 @cpu_architecture() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 4
  br i1 %cmp2, label %if.then3, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then3:                                         ; preds = %entry
  %1 = load i32, ptr @cachepolicy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp4 = icmp ugt i32 %1, 3
  br i1 %cmp4, label %if.then5, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  store i32 3, ptr @cachepolicy, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  store i1 false, ptr @ecc_mask, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry.if.end7_crit_edge
  %2 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end7.if.end21_crit_edge, label %if.then9

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %if.end7
  %3 = load i32, ptr @cachepolicy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp10.not = icmp eq i32 %3, 4
  br i1 %cmp10.not, label %if.then9.if.end13_crit_edge, label %do.end

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  store i32 4, ptr @cachepolicy, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then9.if.end13_crit_edge
  %4 = load i32, ptr @initial_pmd_value, align 4
  %and = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end17, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #13
  %5 = load i32, ptr @initial_pmd_value, align 4
  %or = or i32 %5, 65536
  store i32 %or, ptr @initial_pmd_value, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.end17, %if.end13.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  br i1 %cmp2, label %if.end21.for.body_crit_edge, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end21.for.body_crit_edge
  %i.0265 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %prot_sect = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %i.0265, i32 3
  %6 = load i32, ptr %prot_sect, align 4
  %and25 = and i32 %6, -28673
  store i32 %and25, ptr %prot_sect, align 4
  %inc = add nuw nsw i32 %i.0265, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.body.if.end26_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26:                                         ; preds = %for.body.if.end26_crit_edge, %if.end21.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1)
  %cmp27 = icmp slt i32 %call1, 8
  %and28 = and i32 %0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond = select i1 %cmp27, i1 true, i1 %tobool29.not
  br i1 %or.cond, label %if.end26.for.body33_crit_edge, label %if.end26.if.end40_crit_edge

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end26.for.body33_crit_edge:                    ; preds = %if.end26
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %if.end26.for.body33_crit_edge
  %i.1266 = phi i32 [ %inc38, %for.body33.for.body33_crit_edge ], [ 0, %if.end26.for.body33_crit_edge ]
  %prot_sect35 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %i.1266, i32 3
  %7 = load i32, ptr %prot_sect35, align 4
  %and36 = and i32 %7, -65537
  store i32 %and36, ptr %prot_sect35, align 4
  %inc38 = add nuw nsw i32 %i.1266, 1
  %exitcond272.not = icmp eq i32 %inc38, 17
  br i1 %exitcond272.not, label %for.body33.if.end40_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33

for.body33.if.end40_crit_edge:                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end40:                                         ; preds = %for.body33.if.end40_crit_edge, %if.end26.if.end40_crit_edge
  br i1 %cmp27, label %if.end40.for.body45_crit_edge, label %if.end40.if.end64_crit_edge

if.end40.if.end64_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.end40.for.body45_crit_edge:                    ; preds = %if.end40
  br label %for.body45

for.body45:                                       ; preds = %for.inc61.for.body45_crit_edge, %if.end40.for.body45_crit_edge
  %i.2267 = phi i32 [ %inc62, %for.inc61.for.body45_crit_edge ], [ 0, %if.end40.for.body45_crit_edge ]
  %prot_l1 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %i.2267, i32 2
  %8 = load i32, ptr %prot_l1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool47.not = icmp eq i32 %8, 0
  br i1 %tobool47.not, label %for.body45.if.end52_crit_edge, label %if.then48

for.body45.if.end52_crit_edge:                    ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then48:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #12
  %or51 = or i32 %8, 16
  store i32 %or51, ptr %prot_l1, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %for.body45.if.end52_crit_edge
  %prot_sect54 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %i.2267, i32 3
  %9 = load i32, ptr %prot_sect54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool55.not = icmp eq i32 %9, 0
  br i1 %tobool55.not, label %if.end52.for.inc61_crit_edge, label %if.then56

if.end52.for.inc61_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc61

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %or59 = or i32 %9, 16
  store i32 %or59, ptr %prot_sect54, align 4
  br label %for.inc61

for.inc61:                                        ; preds = %if.then56, %if.end52.for.inc61_crit_edge
  %inc62 = add nuw nsw i32 %i.2267, 1
  %exitcond273.not = icmp eq i32 %inc62, 17
  br i1 %exitcond273.not, label %for.inc61.if.end64_crit_edge, label %for.inc61.for.body45_crit_edge

for.inc61.for.body45_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45

for.inc61.if.end64_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.end64:                                         ; preds = %for.inc61.if.end64_crit_edge, %if.end40.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1)
  %cmp65 = icmp sgt i32 %call1, 7
  %cmp65.not = xor i1 %cmp65, true
  %or.cond260 = select i1 %cmp65.not, i1 true, i1 %tobool29.not
  br i1 %or.cond260, label %if.else86, label %if.then68

if.then68:                                        ; preds = %if.end64
  %10 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 0, i32 3), align 4
  %11 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 1, i32 3), align 4
  %12 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2, i32 3), align 4
  %or71 = or i32 %12, 16
  store i32 %or71, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2, i32 3), align 4
  %13 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3, i32 3), align 4
  %14 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %or73 = or i32 %14, 16
  store i32 %or73, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call1)
  %cmp74 = icmp slt i32 %call1, 9
  %and76 = and i32 %0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %or.cond261 = select i1 %cmp74, i1 true, i1 %tobool77.not
  br i1 %or.cond261, label %if.else, label %if.then78

if.then78:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %or79 = or i32 %10, 4112
  store i32 %or79, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 0, i32 3), align 4
  %or80 = or i32 %11, 4112
  store i32 %or80, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 1, i32 3), align 4
  %or81 = or i32 %13, 20
  br label %if.end88

if.else:                                          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %or82 = or i32 %10, 20
  store i32 %or82, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 0, i32 3), align 4
  %or83 = or i32 %11, 8208
  store i32 %or83, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 1, i32 3), align 4
  %or84 = or i32 %13, 4112
  br label %if.end88

if.else86:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %15 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3, i32 3), align 4
  %or87 = or i32 %15, 4
  br label %if.end88

if.end88:                                         ; preds = %if.else86, %if.else, %if.then78
  %or81.sink = phi i32 [ %or81, %if.then78 ], [ %or84, %if.else ], [ %or87, %if.else86 ]
  store i32 %or81.sink, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3, i32 3), align 4
  %16 = load i32, ptr @cachepolicy, align 4
  %arrayidx89 = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %16
  %pte = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %16, i32 3
  %17 = load i32, ptr %pte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1)
  %cmp90 = icmp eq i32 %call1, 8
  %or92 = or i32 %17, 60
  %spec.select = select i1 %cmp90, i32 %or92, i32 %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call1)
  %cmp94 = icmp eq i32 %call1, 9
  br i1 %cmp94, label %land.lhs.true95, label %if.end88.if.end101_crit_edge

if.end88.if.end101_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

land.lhs.true95:                                  ; preds = %if.end88
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 4", "=r,~{memory}"() #11, !srcloc !43
  %and97 = and i32 %18, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %cmp98.not = icmp eq i32 %and97, 0
  br i1 %cmp98.not, label %land.lhs.true95.if.end101_crit_edge, label %if.then99

land.lhs.true95.if.end101_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then99:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  %19 = load i32, ptr @user_pmd_table, align 4
  %or100 = or i32 %19, 4
  store i32 %or100, ptr @user_pmd_table, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %land.lhs.true95.if.end101_crit_edge, %if.end88.if.end101_crit_edge
  br i1 %or.cond260, label %if.end101.if.end128_crit_edge, label %if.then106

if.end101.if.end128_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then106:                                       ; preds = %if.end101
  %20 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 11, i32 3), align 4
  %or107 = or i32 %20, 33792
  store i32 %or107, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 11, i32 3), align 4
  %21 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 6, i32 3), align 4
  %or108 = or i32 %21, 33792
  store i32 %or108, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 6, i32 3), align 4
  %22 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 5, i32 3), align 4
  %or109 = or i32 %22, 33792
  store i32 %or109, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 5, i32 3), align 4
  %23 = load i32, ptr @initial_pmd_value, align 4
  %and110 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.then106.if.end128_crit_edge, label %if.then112

if.then106.if.end128_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then112:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  %or113 = or i32 %17, 1024
  %or115 = or i32 %spec.select, 1024
  %24 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3, i32 3), align 4
  %or116 = or i32 %24, 65536
  store i32 %or116, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3, i32 3), align 4
  %25 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3), align 4
  %or117 = or i32 %25, 1024
  store i32 %or117, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3), align 4
  %26 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2, i32 3), align 4
  %or118 = or i32 %26, 65536
  store i32 %or118, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2, i32 3), align 4
  %27 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2), align 4
  %or119 = or i32 %27, 1024
  store i32 %or119, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2), align 4
  %28 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9, i32 3), align 4
  %or120 = or i32 %28, 65536
  store i32 %or120, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9, i32 3), align 4
  %29 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9), align 4
  %or121 = or i32 %29, 1024
  store i32 %or121, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9), align 4
  %30 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %or122 = or i32 %30, 65536
  store i32 %or122, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %31 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10), align 4
  %or123 = or i32 %31, 1024
  store i32 %or123, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10), align 4
  %32 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 16), align 4
  %or124 = or i32 %32, 1024
  store i32 %or124, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 16), align 4
  %33 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12, i32 3), align 4
  %or125 = or i32 %33, 65536
  store i32 %or125, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12, i32 3), align 4
  %34 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12), align 4
  %or126 = or i32 %34, 1024
  store i32 %or126, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12), align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then112, %if.then106.if.end128_crit_edge, %if.end101.if.end128_crit_edge
  %vecs_pgprot.1 = phi i32 [ %or115, %if.then112 ], [ %spec.select, %if.then106.if.end128_crit_edge ], [ %spec.select, %if.end101.if.end128_crit_edge ]
  %user_pgprot.0 = phi i32 [ %or113, %if.then112 ], [ %17, %if.then106.if.end128_crit_edge ], [ %17, %if.end101.if.end128_crit_edge ]
  br i1 %cmp65, label %if.then130, label %if.else140

if.then130:                                       ; preds = %if.end128
  %and133 = and i32 %0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  %or.cond264 = select i1 %cmp90, i1 true, i1 %tobool134.not
  %35 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12, i32 3), align 4
  br i1 %or.cond264, label %if.else137, label %if.then135

if.then135:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  %or136 = or i32 %35, 4
  br label %if.end142

if.else137:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  %or138 = or i32 %35, 4096
  br label %if.end142

if.else140:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %36 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12, i32 3), align 4
  %or141 = or i32 %36, 4
  br label %if.end142

if.end142:                                        ; preds = %if.else140, %if.else137, %if.then135
  %37 = phi i32 [ %or136, %if.then135 ], [ %or138, %if.else137 ], [ %or141, %if.else140 ]
  br label %for.body145

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %if.end142
  %i.3268 = phi i32 [ 0, %if.end142 ], [ %inc150, %for.body145.for.body145_crit_edge ]
  %arrayidx146 = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %i.3268
  %38 = load i32, ptr %arrayidx146, align 4
  %or147 = or i32 %38, %user_pgprot.0
  store i32 %or147, ptr %arrayidx146, align 4
  %inc150 = add nuw nsw i32 %i.3268, 1
  %exitcond274.not = icmp eq i32 %inc150, 16
  br i1 %exitcond274.not, label %for.end151, label %for.body145.for.body145_crit_edge

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body145

for.end151:                                       ; preds = %for.body145
  %39 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 7), align 4
  %or152 = or i32 %39, %vecs_pgprot.1
  store i32 %or152, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 7), align 4
  %40 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 8), align 4
  %or153 = or i32 %40, %vecs_pgprot.1
  store i32 %or153, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 8), align 4
  %or154 = or i32 %user_pgprot.0, 3
  store i32 %or154, ptr @pgprot_user, align 4
  %or155 = or i32 %user_pgprot.0, 67
  store i32 %or155, ptr @pgprot_kernel, align 4
  %.b259 = load i1, ptr @ecc_mask, align 4
  %41 = select i1 %.b259, i32 512, i32 0
  %42 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 7, i32 2), align 4
  %or156 = or i32 %42, %41
  store i32 %or156, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 7, i32 2), align 4
  %43 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 8, i32 2), align 4
  %or157 = or i32 %43, %41
  store i32 %or157, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 8, i32 2), align 4
  %pmd = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %16, i32 2
  %44 = load i32, ptr %pmd, align 4
  %or158 = or i32 %44, %41
  %45 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9, i32 3), align 4
  %or159 = or i32 %45, %or158
  store i32 %or159, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9, i32 3), align 4
  %46 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9), align 4
  %or160 = or i32 %46, %user_pgprot.0
  store i32 %or160, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9), align 4
  %47 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %or163 = or i32 %47, %or158
  store i32 %or163, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %48 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10), align 4
  %or164 = or i32 %48, %user_pgprot.0
  store i32 %or164, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10), align 4
  %49 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 16), align 4
  %or165 = or i32 %49, %user_pgprot.0
  store i32 %or165, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 16), align 4
  %or166 = or i32 %37, %41
  store i32 %or166, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12, i32 3), align 4
  %50 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 11, i32 3), align 4
  %or168 = or i32 %50, %44
  store i32 %or168, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 11, i32 3), align 4
  %51 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %44, label %for.end151.do.end175_crit_edge [
    i32 8, label %for.end151.do.end175.sink.split_crit_edge
    i32 12, label %for.end151.sw.bb171_crit_edge
    i32 4108, label %for.end151.sw.bb171_crit_edge277
  ]

for.end151.sw.bb171_crit_edge277:                 ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb171

for.end151.sw.bb171_crit_edge:                    ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb171

for.end151.do.end175.sink.split_crit_edge:        ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end175.sink.split

for.end151.do.end175_crit_edge:                   ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end175

sw.bb171:                                         ; preds = %for.end151.sw.bb171_crit_edge, %for.end151.sw.bb171_crit_edge277
  br label %do.end175.sink.split

do.end175.sink.split:                             ; preds = %sw.bb171, %for.end151.do.end175.sink.split_crit_edge
  %.sink276 = phi i32 [ 12, %sw.bb171 ], [ %44, %for.end151.do.end175.sink.split_crit_edge ]
  %52 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 5, i32 3), align 4
  %or170 = or i32 %52, %.sink276
  store i32 %or170, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 5, i32 3), align 4
  br label %do.end175

do.end175:                                        ; preds = %do.end175.sink.split, %for.end151.do.end175_crit_edge
  %cond = select i1 %.b259, ptr @.str.60, ptr @.str.61
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull %cond, ptr noundef %arrayidx89) #13
  br label %for.body181

for.body181:                                      ; preds = %if.end196.for.body181_crit_edge, %do.end175
  %i.4269 = phi i32 [ 0, %do.end175 ], [ %inc198, %if.end196.for.body181_crit_edge ]
  %prot_l1183 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %i.4269, i32 2
  %53 = load i32, ptr %prot_l1183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool184.not = icmp eq i32 %53, 0
  br i1 %tobool184.not, label %for.body181.if.end188_crit_edge, label %if.then185

for.body181.if.end188_crit_edge:                  ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end188

if.then185:                                       ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #12
  %domain = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %i.4269, i32 4
  %54 = load i32, ptr %domain, align 4
  %shl = shl i32 %54, 5
  %or187 = or i32 %shl, %53
  store i32 %or187, ptr %prot_l1183, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then185, %for.body181.if.end188_crit_edge
  %prot_sect189 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %i.4269, i32 3
  %55 = load i32, ptr %prot_sect189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool190.not = icmp eq i32 %55, 0
  br i1 %tobool190.not, label %if.end188.if.end196_crit_edge, label %if.then191

if.end188.if.end196_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196

if.then191:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  %domain192 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %i.4269, i32 4
  %56 = load i32, ptr %domain192, align 4
  %shl193 = shl i32 %56, 5
  %or195 = or i32 %shl193, %55
  store i32 %or195, ptr %prot_sect189, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then191, %if.end188.if.end196_crit_edge
  %inc198 = add nuw nsw i32 %i.4269, 1
  %exitcond275.not = icmp eq i32 %inc198, 17
  br i1 %exitcond275.not, label %for.end199, label %if.end196.for.body181_crit_edge

if.end196.for.body181_crit_edge:                  ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body181

for.end199:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @early_paging_init(ptr nocapture noundef readonly %mdesc) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pv_fixup = getelementptr inbounds %struct.machine_desc, ptr %mdesc, i32 0, i32 17
  %0 = load ptr, ptr %pv_fixup, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i64 %0() #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #13
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #13
  tail call void @add_taint(i32 noundef 2, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sync_icache_dcache(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strlen(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clear_cr(i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @create_36bit_mapping(ptr nocapture noundef readonly %mm, ptr nocapture noundef readonly %md, ptr nocapture noundef readonly %type, i1 noundef zeroext %ng) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr %md, align 4
  %pfn = getelementptr inbounds %struct.map_desc, ptr %md, i32 0, i32 1
  %1 = load i32, ptr %pfn, align 4
  %shl = shl i32 %1, 12
  %length1 = getelementptr inbounds %struct.map_desc, ptr %md, i32 0, i32 2
  %2 = load i32, ptr %length1, align 4
  %add = add i32 %2, 4095
  %and = and i32 %add, -4096
  %call = tail call i32 @cpu_architecture() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %cmp = icmp sgt i32 %call, 7
  br i1 %cmp, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %domain = getelementptr inbounds %struct.mem_type, ptr %type, i32 0, i32 4
  %3 = load i32, ptr %domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end18, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end
  %or = or i32 %shl, %0
  %or21 = or i32 %or, %and
  %and22 = and i32 %or21, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end35, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end35:                                         ; preds = %if.end18
  %and37 = and i32 %1, 15728640
  %or39 = or i32 %shl, %and37
  %pgd40 = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 8
  %4 = load ptr, ptr %pgd40, align 4
  %shr.i = lshr i32 %0, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %4, i32 %shr.i
  %add42 = add i32 %and, %0
  %prot_sect = getelementptr inbounds %struct.mem_type, ptr %type, i32 0, i32 3
  %or49 = select i1 %ng, i32 393216, i32 262144
  br label %do.body43

do.body43:                                        ; preds = %for.end.do.body43_crit_edge, %if.end35
  %pgd.0 = phi ptr [ %add.ptr.i, %if.end35 ], [ %add.ptr, %for.end.do.body43_crit_edge ]
  %phys.0 = phi i32 [ %or39, %if.end35 ], [ %add55, %for.end.do.body43_crit_edge ]
  %addr.0 = phi i32 [ %0, %if.end35 ], [ %add54, %for.end.do.body43_crit_edge ]
  %or50 = or i32 %or49, %phys.0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body43
  %i.088 = phi i32 [ 0, %do.body43 ], [ %inc, %for.body.for.body_crit_edge ]
  %pmd.087 = phi ptr [ %pgd.0, %do.body43 ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %5 = load i32, ptr %prot_sect, align 4
  %or53 = or i32 %or50, %5
  %incdec.ptr = getelementptr i32, ptr %pmd.087, i32 1
  store i32 %or53, ptr %pmd.087, align 4
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %add54 = add i32 %addr.0, 16777216
  %add55 = add i32 %phys.0, 16777216
  %add.ptr = getelementptr [2 x i32], ptr %pgd.0, i32 8
  %cmp57.not = icmp eq i32 %add54, %add42
  br i1 %cmp57.not, label %for.end.cleanup_crit_edge, label %for.end.do.body43_crit_edge

for.end.do.body43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end18.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.34.sink = phi ptr [ @.str.28, %entry.cleanup.sink.split_crit_edge ], [ @.str.31, %if.end.cleanup.sink.split_crit_edge ], [ @.str.34, %if.end18.cleanup.sink.split_crit_edge ]
  %conv33 = zext i32 %shl to i64
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34.sink, i64 noundef %conv33, i32 noundef %0) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @alloc_init_pmd(ptr noundef %pud, i32 noundef %addr, i32 noundef %end, i32 noundef %phys, ptr nocapture noundef readonly %type, ptr nocapture noundef readonly %alloc, i1 noundef zeroext %ng) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %prot_sect = getelementptr inbounds %struct.mem_type, ptr %type, i32 0, i32 3
  %0 = load i32, ptr %prot_sect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %or = or i32 %end, %addr
  %or1 = or i32 %or, %phys
  %and = and i32 %or1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %and.i = lshr i32 %addr, 20
  %and.lobit.i = and i32 %and.i, 1
  %spec.select.i = getelementptr i32, ptr %pud, i32 %and.lobit.i
  %cond.i = select i1 %ng, i32 131072, i32 0
  %or.i23 = or i32 %cond.i, %phys
  %or2.i24 = or i32 %or.i23, %0
  store i32 %or2.i24, ptr %spec.select.i, align 4
  %add4.i25 = add i32 %addr, 1048576
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i25, i32 %end)
  %cmp.not.i26 = icmp eq i32 %add4.i25, %end
  br i1 %cmp.not.i26, label %if.then.__map_init_section.exit_crit_edge, label %if.then.do.body.i.do.body.i_crit_edge_crit_edge

if.then.do.body.i.do.body.i_crit_edge_crit_edge:  ; preds = %if.then
  br label %do.body.i.do.body.i_crit_edge

if.then.__map_init_section.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__map_init_section.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i.do.body.i_crit_edge.do.body.i.do.body.i_crit_edge_crit_edge, %if.then.do.body.i.do.body.i_crit_edge_crit_edge
  %add4.i29 = phi i32 [ %add4.i, %do.body.i.do.body.i_crit_edge.do.body.i.do.body.i_crit_edge_crit_edge ], [ %add4.i25, %if.then.do.body.i.do.body.i_crit_edge_crit_edge ]
  %pmd.addr.1.i28 = phi ptr [ %incdec.ptr3.i, %do.body.i.do.body.i_crit_edge.do.body.i.do.body.i_crit_edge_crit_edge ], [ %spec.select.i, %if.then.do.body.i.do.body.i_crit_edge_crit_edge ]
  %phys.addr.0.i27 = phi i32 [ %add.i, %do.body.i.do.body.i_crit_edge.do.body.i.do.body.i_crit_edge_crit_edge ], [ %phys, %if.then.do.body.i.do.body.i_crit_edge_crit_edge ]
  %incdec.ptr3.i = getelementptr i32, ptr %pmd.addr.1.i28, i32 1
  %add.i = add i32 %phys.addr.0.i27, 1048576
  %.pre = load i32, ptr %prot_sect, align 4
  %or.i = or i32 %add.i, %cond.i
  %or2.i = or i32 %or.i, %.pre
  store i32 %or2.i, ptr %incdec.ptr3.i, align 4
  %add4.i = add i32 %add4.i29, 1048576
  %cmp.not.i = icmp eq i32 %add4.i, %end
  br i1 %cmp.not.i, label %do.body.i.do.body.i_crit_edge.__map_init_section.exit_crit_edge, label %do.body.i.do.body.i_crit_edge.do.body.i.do.body.i_crit_edge_crit_edge

do.body.i.do.body.i_crit_edge.do.body.i.do.body.i_crit_edge_crit_edge: ; preds = %do.body.i.do.body.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge.__map_init_section.exit_crit_edge: ; preds = %do.body.i.do.body.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %__map_init_section.exit

__map_init_section.exit:                          ; preds = %do.body.i.do.body.i_crit_edge.__map_init_section.exit_crit_edge, %if.then.__map_init_section.exit_crit_edge
  %1 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %pud, i32 %1, i32 1073741824) #11, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !12
  br label %do.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %shr = lshr i32 %phys, 12
  tail call fastcc void @alloc_init_pte(ptr noundef %pud, i32 noundef %addr, i32 noundef %end, i32 noundef %shr, ptr noundef %type, ptr noundef %alloc, i1 noundef zeroext %ng) #16
  br label %do.end

do.end:                                           ; preds = %if.else, %__map_init_section.exit
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @alloc_init_pte(ptr noundef %pmd, i32 noundef %addr, i32 noundef %end, i32 noundef %pfn, ptr nocapture noundef readonly %type, ptr nocapture noundef readonly %alloc, i1 noundef zeroext %ng) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %prot_l1 = getelementptr inbounds %struct.mem_type, ptr %type, i32 0, i32 2
  %0 = load i32, ptr %prot_l1, align 4
  %call = tail call fastcc ptr @arm_pte_alloc(ptr noundef %pmd, i32 noundef %addr, i32 noundef %0, ptr noundef %alloc) #16
  %cond = select i1 %ng, i32 2048, i32 0
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %pfn.addr.0 = phi i32 [ %pfn, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %addr.addr.0 = phi i32 [ %addr, %entry ], [ %add, %do.body.do.body_crit_edge ]
  %pte.0 = phi ptr [ %call, %entry ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  %1 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext = getelementptr inbounds %struct.processor, ptr %1, i32 0, i32 9
  %2 = load ptr, ptr %set_pte_ext, align 4
  %shl = shl i32 %pfn.addr.0, 12
  %3 = load i32, ptr %type, align 4
  %or = or i32 %3, %shl
  tail call void %2(ptr noundef %pte.0, i32 noundef %or, i32 noundef %cond) #14
  %inc = add i32 %pfn.addr.0, 1
  %incdec.ptr = getelementptr i32, ptr %pte.0, i32 1
  %add = add i32 %addr.addr.0, 4096
  %cmp.not = icmp eq i32 %add, %end
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @arm_pte_alloc(ptr noundef %pmd, i32 noundef %addr, i32 noundef %prot, ptr nocapture noundef readonly %alloc) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr %pmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr %alloc(i32 noundef 4096) #14, !callees !44
  %1 = ptrtoint ptr %call to i32
  %call1 = tail call i32 @__virt_to_phys(i32 noundef %1) #14
  %add.i = add i32 %call1, 2048
  %or.i = or i32 %add.i, %prot
  store i32 %or.i, ptr %pmd, align 4
  %add1.i = add i32 %or.i, 1024
  %arrayidx2.i = getelementptr i32, ptr %pmd, i32 1
  store i32 %add1.i, ptr %arrayidx2.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %pmd, i32 %2, i32 1073741824) #11, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !12
  %.pre = load i32, ptr %pmd, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %3 = phi i32 [ %0, %entry.do.body_crit_edge ], [ %.pre, %if.then ]
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end10, label %do.body6, !prof !17

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/mmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 718, 0\0A.popsection", ""() #11, !srcloc !45
  unreachable

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %3, -4096
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i, i32 -2130706432, i32 8454144) #18, !srcloc !26
  %5 = inttoptr i32 %4 to ptr
  %shr.i.i = lshr i32 %addr, 12
  %and.i.i = and i32 %shr.i.i, 511
  %add.ptr.i = getelementptr i32, ptr %5, i32 %and.i.i
  ret ptr %add.ptr.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptlock_alloc(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal ptr @pte_offset_late_fixmap(ptr nocapture noundef readonly %dir, i32 noundef %addr) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr %dir, align 4
  %and1.i.i = and i32 %0, -4096
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i, i32 -2130706432, i32 8454144) #18, !srcloc !26
  %2 = inttoptr i32 %1 to ptr
  %shr.i.i = lshr i32 %addr, 12
  %and.i.i = and i32 %shr.i.i, 511
  %add.ptr.i = getelementptr i32, ptr %2, i32 %and.i.i
  ret ptr %add.ptr.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @early_trap_init(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @fill_pmd_gaps() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn40 = load ptr, ptr @static_vmlist, align 4
  %cmp.not41 = icmp eq ptr %.pn40, @static_vmlist
  br i1 %cmp.not41, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn40, %entry.for.body_crit_edge ]
  %next.042 = phi i32 [ %next.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %addr2 = getelementptr i8, ptr %.pn43, i32 -28
  %0 = load ptr, ptr %addr2, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %next.042, i32 %1)
  %cmp3 = icmp ugt i32 %next.042, %1
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %and = and i32 %1, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %and)
  %cmp4 = icmp eq i32 %and, 1048576
  br i1 %cmp4, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %if.end
  %2 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i = lshr i32 %1, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %2, i32 %shr.i.i
  %3 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then6, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %and7 = and i32 %1, -2097152
  tail call void @vm_reserve_area_early(i32 noundef %and7, i32 noundef 1048576, ptr noundef nonnull @pmd_empty_section_gap) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %size = getelementptr i8, ptr %.pn43, i32 -24
  %4 = load i32, ptr %size, align 4
  %add = add i32 %4, %1
  %and10 = and i32 %add, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 1048576
  br i1 %cmp11, label %if.then12, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  %5 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i38 = lshr i32 %add, 21
  %add.ptr14 = getelementptr [2 x i32], ptr %5, i32 %shr.i.i38, i32 1
  %6 = load i32, ptr %add.ptr14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %if.then16, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vm_reserve_area_early(i32 noundef %add, i32 noundef 1048576, ptr noundef nonnull @pmd_empty_section_gap) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then12.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %sub = add i32 %add, 2097151
  %and20 = and i32 %sub, -2097152
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body.for.inc_crit_edge
  %next.1 = phi i32 [ %next.042, %for.body.for.inc_crit_edge ], [ %and20, %if.end18 ]
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp.not = icmp eq ptr %.pn, @static_vmlist
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pci_reserve_io() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @find_static_vm_vaddr(ptr noundef nonnull inttoptr (i32 -18874368 to ptr)) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vm_reserve_area_early(i32 noundef -18874368, i32 noundef 2097152, ptr noundef nonnull @pci_reserve_io) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_abt_enable() local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pmd_empty_section_gap(i32 noundef %addr) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vm_reserve_area_early(i32 noundef %addr, i32 noundef 1048576, ptr noundef nonnull @pmd_empty_section_gap) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_static_vm_vaddr(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nomerge }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #16 = { cold nobuiltin "no-builtins" }
attributes #17 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #18 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 6074273}
!10 = !{i64 2153559491}
!11 = !{i64 2152517477, i64 2152517490}
!12 = !{i64 2152523643}
!13 = !{ptr @pte_offset_early_fixmap, ptr @pte_offset_late_fixmap}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2155064385, i64 2155064867, i64 2155064422, i64 2155064478, i64 2155064512, i64 2155064536, i64 2155064577, i64 2155064598, i64 2155064626, i64 2155064660}
!16 = !{i32 0, i32 33}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2153485500, i64 2153485984, i64 2153485537, i64 2153485593, i64 2153485627, i64 2153485651, i64 2153485692, i64 2153485713, i64 2153485741, i64 2153485775}
!19 = !{i64 2151020247, i64 2151020738, i64 2151020284, i64 2151020340, i64 2151020374, i64 2151020398, i64 2151020439, i64 2151020460, i64 2151020488, i64 2151020522}
!20 = !{i64 792200, i64 792261}
!21 = !{i64 794932}
!22 = !{i64 2155081960, i64 2155082442, i64 2155081997, i64 2155082053, i64 2155082087, i64 2155082111, i64 2155082152, i64 2155082173, i64 2155082201, i64 2155082235}
!23 = !{i64 795217}
!24 = !{i64 6074135}
!25 = !{!"auto-init"}
!26 = !{i64 2149125648, i64 2149125671, i64 2149125703, i64 2149125735, i64 2149125773, i64 2149125803}
!27 = !{i64 2149001720, i64 2149001725, i64 2149001738, i64 2149001782, i64 2149001816, i64 2149001837}
!28 = !{i64 2152524138, i64 2152524151}
!29 = !{i64 2152500175}
!30 = !{i64 2152491646, i64 2152491659}
!31 = !{i64 2152493867, i64 2152493880}
!32 = !{i64 2152496088, i64 2152496101}
!33 = !{i64 2152500472, i64 2152500485}
!34 = !{i64 2152504345}
!35 = !{i64 2152504430}
!36 = !{i64 2152411624}
!37 = !{i64 2152402971, i64 2152402984}
!38 = !{i64 2152405249, i64 2152405262}
!39 = !{i64 2152407530, i64 2152407543}
!40 = !{i64 2152411920, i64 2152411933}
!41 = !{i64 2152415791}
!42 = !{i64 2152415876}
!43 = !{i64 2155073780}
!44 = !{ptr @early_alloc, ptr @late_alloc}
!45 = !{i64 2155083921, i64 2155084403, i64 2155083958, i64 2155084014, i64 2155084048, i64 2155084072, i64 2155084113, i64 2155084134, i64 2155084162, i64 2155084196}
