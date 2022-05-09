; ModuleID = '/llk/IR_all_yes/mm/memblock.c_pt.bc'
source_filename = "../mm/memblock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+contig_page_data\22, \22a\22\09"
module asm "\09.weak\09__crc_contig_page_data\09\09\09\09"
module asm "\09.long\09__crc_contig_page_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_contig_page_data:\09\09\09\09\09"
module asm "\09.asciz \09\22contig_page_data\22\09\09\09\09\09"
module asm "__kstrtabns_contig_page_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.memblock_region = type { i32, i32, i32 }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }

@contig_page_data = dso_local global %struct.pglist_data zeroinitializer, section ".ref.data", align 128
@__kstrtab_contig_page_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_contig_page_data = external dso_local constant [0 x i8], align 1
@__ksymtab_contig_page_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @contig_page_data to i32), ptr @__kstrtab_contig_page_data, ptr @__kstrtabns_contig_page_data }, section "___ksymtab+contig_page_data", align 4
@memblock_memory_init_regions = internal global { [128 x %struct.memblock_region], [384 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@memblock_reserved_init_regions = internal global { [128 x %struct.memblock_region], [384 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@memblock = dso_local global { %struct.memblock, [48 x i8] } { %struct.memblock { i8 0, i32 -1, %struct.memblock_type { i32 1, i32 128, i32 0, ptr @memblock_memory_init_regions, ptr @.str }, %struct.memblock_type { i32 1, i32 128, i32 0, ptr @memblock_reserved_init_regions, ptr @.str.1 } }, [48 x i8] zeroinitializer }, align 32
@memblock_debug = internal global { i1, [31 x i8] } zeroinitializer, align 32
@memblock_add_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: [%pa-%pa] nid=%d flags=%x %pS\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"memblock_add_node\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm/memblock.c\00", [18 x i8] zeroinitializer }, align 32
@memblock_add_node._entry_ptr = internal global ptr @memblock_add_node._entry, section ".printk_index", align 4
@memblock_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: [%pa-%pa] %pS\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"memblock_add\00", [19 x i8] zeroinitializer }, align 32
@memblock_add._entry_ptr = internal global ptr @memblock_add._entry, section ".printk_index", align 4
@memblock_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str.4, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"memblock_remove\00", [16 x i8] zeroinitializer }, align 32
@memblock_remove._entry_ptr = internal global ptr @memblock_remove._entry, section ".printk_index", align 4
@memblock_phys_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.8, ptr @.str.4, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"memblock_phys_free\00", [45 x i8] zeroinitializer }, align 32
@memblock_phys_free._entry_ptr = internal global ptr @memblock_phys_free._entry, section ".printk_index", align 4
@memblock_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.9, ptr @.str.4, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"memblock_reserve\00", [47 x i8] zeroinitializer }, align 32
@memblock_reserve._entry_ptr = internal global ptr @memblock_reserve._entry, section ".printk_index", align 4
@system_has_some_mirror = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__next_mem_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Usage of MAX_NUMNODES is deprecated. Use NUMA_NO_NODE instead\0A\00", [33 x i8] zeroinitializer }, align 32
@__next_mem_range_rev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@memblock_alloc_range_nid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@memblock_alloc_range_nid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014Could not allocate %pap bytes of mirrored memory\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"memblock_alloc_range_nid\00", [39 x i8] zeroinitializer }, align 32
@memblock_alloc_range_nid._entry_ptr = internal global ptr @memblock_alloc_range_nid._entry, section ".printk_index", align 4
@memblock_phys_alloc_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: %llu bytes align=0x%llx from=%pa max_addr=%pa %pS\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"memblock_phys_alloc_range\00", [38 x i8] zeroinitializer }, align 32
@memblock_phys_alloc_range._entry_ptr = internal global ptr @memblock_phys_alloc_range._entry, section ".printk_index", align 4
@memblock_alloc_exact_nid_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016%s: %llu bytes align=0x%llx nid=%d from=%pa max_addr=%pa %pS\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"memblock_alloc_exact_nid_raw\00", [35 x i8] zeroinitializer }, align 32
@memblock_alloc_exact_nid_raw._entry_ptr = internal global ptr @memblock_alloc_exact_nid_raw._entry, section ".printk_index", align 4
@memblock_alloc_try_nid_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.17, ptr @.str.4, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"memblock_alloc_try_nid_raw\00", [37 x i8] zeroinitializer }, align 32
@memblock_alloc_try_nid_raw._entry_ptr = internal global ptr @memblock_alloc_try_nid_raw._entry, section ".printk_index", align 4
@memblock_alloc_try_nid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.4, i32 1596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"memblock_alloc_try_nid\00", [41 x i8] zeroinitializer }, align 32
@memblock_alloc_try_nid._entry_ptr = internal global ptr @memblock_alloc_try_nid._entry, section ".printk_index", align 4
@memblock_free_late._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.19, ptr @.str.4, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"memblock_free_late\00", [45 x i8] zeroinitializer }, align 32
@memblock_free_late._entry_ptr = internal global ptr @memblock_free_late._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@memblock_cap_memory_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 1708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: No memory registered yet\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"memblock_cap_memory_range\00", [38 x i8] zeroinitializer }, align 32
@memblock_cap_memory_range._entry_ptr = internal global ptr @memblock_cap_memory_range._entry, section ".printk_index", align 4
@memblock_can_resize = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__setup_str_early_memblock = internal constant [9 x i8] c"memblock\00", section ".init.rodata", align 1
@__setup_early_memblock = internal global %struct.obs_kernel_param { ptr @__setup_str_early_memblock, ptr @early_memblock, i32 1 }, section ".init.setup", align 4
@reset_managed_pages_done = internal unnamed_addr global i1 false, section ".init.data", align 4
@__initcall__kmod_memblock__272_2156_memblock_init_debugfs6 = internal global ptr @memblock_init_debugfs, section ".initcall6.init", align 4
@max_low_pfn = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@min_low_pfn = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@max_pfn = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@max_possible_pfn = dso_local global { i64, [24 x i8] } zeroinitializer, align 32
@memblock_memory_in_slab = internal global { i32, [28 x i8] } zeroinitializer, align 32
@memblock_reserved_in_slab = internal global { i32, [28 x i8] } zeroinitializer, align 32
@memblock_double_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013memblock: Failed to double %s array from %ld to %ld entries !\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"memblock_double_array\00", [42 x i8] zeroinitializer }, align 32
@memblock_double_array._entry_ptr = internal global ptr @memblock_double_array._entry, section ".printk_index", align 4
@memblock_double_array._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016memblock: %s is doubled to %ld at [%pa-%pa]\00", [50 x i8] zeroinitializer }, align 32
@memblock_double_array._entry_ptr.26 = internal global ptr @memblock_double_array._entry.24, section ".printk_index", align 4
@memblock_find_in_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.27, ptr @.str.4, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"memblock_find_in_range\00", [41 x i8] zeroinitializer }, align 32
@memblock_find_in_range._entry_ptr = internal global ptr @memblock_find_in_range._entry, section ".printk_index", align 4
@memblock_alloc_internal.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@__memblock_dump_all._entry = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 1900, ptr null, ptr null }, align 1
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016MEMBLOCK configuration:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__memblock_dump_all\00", [44 x i8] zeroinitializer }, align 32
@__memblock_dump_all._entry_ptr = internal global ptr @__memblock_dump_all._entry, section ".printk_index", align 4
@__memblock_dump_all._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 1903, ptr null, ptr null }, align 1
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016 memory size = %pa reserved size = %pa\0A\00", [54 x i8] zeroinitializer }, align 32
@__memblock_dump_all._entry_ptr.32 = internal global ptr @__memblock_dump_all._entry.30, section ".printk_index", align 4
@memblock_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016 %s.cnt  = 0x%lx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memblock_dump\00", [18 x i8] zeroinitializer }, align 32
@memblock_dump._entry_ptr = internal global ptr @memblock_dump._entry, section ".printk_index", align 4
@memblock_dump._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 1894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016 %s[%#x]\09[%pa-%pa], %pa bytes%s flags: %#x\0A\00", [50 x i8] zeroinitializer }, align 32
@memblock_dump._entry_ptr.37 = internal global ptr @memblock_dump._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"memblock\00", [23 x i8] zeroinitializer }, align 32
@memblock_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @memblock_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%4d: \00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%pa..%pa\0A\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.43 = private unnamed_addr constant [29 x i8] c"memblock_memory_init_regions\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 105, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 115, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"memblock_reserved_init_regions\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 106, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 120, i32 20 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"memblock\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 111, i32 17 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"memblock_debug\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 677, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 698, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 799, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 831, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 842, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"system_has_some_mirror\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1032, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1388, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1429, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1530, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1562, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1594, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1619, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1708, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c"memblock_can_resize\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"max_low_pfn\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 100, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant [12 x i8] c"min_low_pfn\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 101, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant [8 x i8] c"max_pfn\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 102, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"max_possible_pfn\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 103, i32 20 }
@___asan_gen_.169 = private unnamed_addr constant [24 x i8] c"memblock_memory_in_slab\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 157, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant [26 x i8] c"memblock_reserved_in_slab\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 158, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 456, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 462, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 330, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1900, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1901, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1879, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1893, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1925, i32 21 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 2143, i32 43 }
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c"memblock_debug_fops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 2139, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 2134, i32 17 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [17 x i8] c"../mm/memblock.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 2135, i32 17 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__initcall__kmod_memblock__272_2156_memblock_init_debugfs6, ptr @__ksymtab_contig_page_data, ptr @__memblock_dump_all._entry, ptr @__memblock_dump_all._entry.30, ptr @__memblock_dump_all._entry_ptr, ptr @__memblock_dump_all._entry_ptr.32, ptr @__setup_early_memblock, ptr @memblock_add._entry, ptr @memblock_add._entry_ptr, ptr @memblock_add_node._entry, ptr @memblock_add_node._entry_ptr, ptr @memblock_alloc_exact_nid_raw._entry, ptr @memblock_alloc_exact_nid_raw._entry_ptr, ptr @memblock_alloc_range_nid._entry, ptr @memblock_alloc_range_nid._entry_ptr, ptr @memblock_alloc_try_nid._entry, ptr @memblock_alloc_try_nid._entry_ptr, ptr @memblock_alloc_try_nid_raw._entry, ptr @memblock_alloc_try_nid_raw._entry_ptr, ptr @memblock_cap_memory_range._entry, ptr @memblock_cap_memory_range._entry_ptr, ptr @memblock_double_array._entry, ptr @memblock_double_array._entry.24, ptr @memblock_double_array._entry_ptr, ptr @memblock_double_array._entry_ptr.26, ptr @memblock_dump._entry, ptr @memblock_dump._entry.35, ptr @memblock_dump._entry_ptr, ptr @memblock_dump._entry_ptr.37, ptr @memblock_find_in_range._entry, ptr @memblock_find_in_range._entry_ptr, ptr @memblock_free_late._entry, ptr @memblock_free_late._entry_ptr, ptr @memblock_phys_alloc_range._entry, ptr @memblock_phys_alloc_range._entry_ptr, ptr @memblock_phys_free._entry, ptr @memblock_phys_free._entry_ptr, ptr @memblock_remove._entry, ptr @memblock_remove._entry_ptr, ptr @memblock_reserve._entry, ptr @memblock_reserve._entry_ptr, ptr @memblock_memory_init_regions, ptr @.str, ptr @memblock_reserved_init_regions, ptr @.str.1, ptr @memblock, ptr @memblock_debug, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @system_has_some_mirror, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @memblock_can_resize, ptr @max_low_pfn, ptr @min_low_pfn, ptr @max_pfn, ptr @max_possible_pfn, ptr @memblock_memory_in_slab, ptr @memblock_reserved_in_slab, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @memblock_debug_fops, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_memory_init_regions to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_reserved_init_regions to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_add_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_phys_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_has_some_mirror to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_alloc_range_nid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_phys_alloc_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_alloc_exact_nid_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_alloc_try_nid_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_alloc_try_nid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_free_late._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_cap_memory_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_can_resize to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_low_pfn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_low_pfn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_pfn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_possible_pfn to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_memory_in_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_reserved_in_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_double_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_double_array._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_find_in_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_dump._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memblock_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_overlaps_region(ptr nocapture noundef readonly %type, i32 noundef %base, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regions = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 3
  %2 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regions, align 4
  %add1.i = tail call i32 @llvm.uadd.sat.i32(i32 %size, i32 %base)
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %size421 = getelementptr %struct.memblock_region, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %size421 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size421, align 4
  %add.i22 = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i22, i32 %base)
  %cmp.i23 = icmp ule i32 %add.i22, %base
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %5)
  %cmp2.i24 = icmp ule i32 %add1.i, %5
  %tobool.not25 = or i1 %cmp2.i24, %cmp.i23
  br i1 %tobool.not25, label %for.body.lr.ph.for.cond_crit_edge, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph.for.cond_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.lr.ph.for.cond_crit_edge
  %i.01826 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.lr.ph.for.cond_crit_edge ]
  %inc = add nuw i32 %i.01826, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.for.end.loopexit_crit_edge, label %for.body

for.cond.for.end.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.loopexit

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr %struct.memblock_region, ptr %3, i32 %inc
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %size4 = getelementptr %struct.memblock_region, ptr %3, i32 %inc, i32 1
  %10 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size4, align 4
  %add.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %base)
  %cmp.i = icmp ule i32 %add.i, %base
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %9)
  %cmp2.i = icmp ule i32 %add1.i, %9
  %tobool.not = or i1 %cmp2.i, %cmp.i
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.loopexit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

for.end.loopexit:                                 ; preds = %for.body.for.end.loopexit_crit_edge, %for.cond.for.end.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp.le = icmp ult i32 %inc, %1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.lr.ph.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ true, %for.body.lr.ph.for.end_crit_edge ], [ %cmp.le, %for.end.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_add_node(i32 noundef %base, i32 noundef %size, i32 noundef %nid, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  %base.addr = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %add = add i32 %base, -1
  %sub = add i32 %add, %size
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %end, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %base.addr, ptr noundef nonnull %end, i32 noundef %nid, i32 noundef %flags, ptr noundef %2) #21
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.addr, align 4
  %call4 = call fastcc i32 @memblock_add_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %4, i32 noundef %size, i32 noundef %flags)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  ret i32 %call4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memblock_add_range(ptr noundef %type, i32 noundef %base, i32 noundef %size, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i = xor i32 %base, -1
  %0 = tail call i32 @llvm.umin.i32(i32 %size, i32 %sub.i) #18
  %add = tail call i32 @llvm.uadd.sat.i32(i32 %size, i32 %base)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup117_crit_edge, label %if.end

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup117

if.end:                                           ; preds = %entry
  %regions = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 3
  %1 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regions, align 4
  %size1 = getelementptr inbounds %struct.memblock_region, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %repeat.preheader

repeat.preheader:                                 ; preds = %if.end
  %max.i = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 1
  %total_size.i = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %base)
  %cmp9765 = icmp ugt i32 %add, %base
  br label %repeat

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3.not = icmp eq i32 %7, 1
  br i1 %cmp3.not, label %lor.rhs, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

lor.rhs:                                          ; preds = %if.then2
  %total_size = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 2
  %8 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %lor.rhs.if.end19_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !155

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

lor.rhs.if.end19_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.then2.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 588, i32 noundef 9, ptr noundef null) #18
  br label %if.end19

if.end19:                                         ; preds = %do.end, %lor.rhs.if.end19_crit_edge
  %10 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regions, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %base, ptr %11, align 4
  %13 = load ptr, ptr %regions, align 4
  %size31 = getelementptr inbounds %struct.memblock_region, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %size31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %0, ptr %size31, align 4
  %15 = load ptr, ptr %regions, align 4
  %flags34 = getelementptr inbounds %struct.memblock_region, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %flags, ptr %flags34, align 4
  %total_size37 = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 2
  %17 = ptrtoint ptr %total_size37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %total_size37, align 4
  br label %cleanup117

repeat:                                           ; preds = %while.cond.repeat_crit_edge, %repeat.preheader
  %18 = phi i32 [ %.pr, %repeat.preheader ], [ %61, %while.cond.repeat_crit_edge ]
  %insert.0.off0 = phi i1 [ false, %repeat.preheader ], [ true, %while.cond.repeat_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4240.not = icmp eq i32 %18, 0
  br i1 %cmp4240.not, label %for.end.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %repeat
  %19 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regions, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %base.addr.044 = phi i32 [ %base.addr.1.ph, %for.inc.for.body_crit_edge ], [ %base, %for.body.preheader ]
  %rgn.043 = phi ptr [ %arrayidx96, %for.inc.for.body_crit_edge ], [ %20, %for.body.preheader ]
  %nr_new.042 = phi i32 [ %nr_new.2.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %idx.041 = phi i32 [ %inc94, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %21 = ptrtoint ptr %rgn.043 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rgn.043, align 4
  %size44 = getelementptr inbounds %struct.memblock_region, ptr %rgn.043, i32 0, i32 1
  %23 = ptrtoint ptr %size44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size44, align 4
  %add45 = add i32 %24, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add)
  %cmp46.not = icmp ult i32 %22, %add
  br i1 %cmp46.not, label %if.end48, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end48:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %base.addr.044)
  %cmp49.not = icmp ugt i32 %add45, %base.addr.044
  br i1 %cmp49.not, label %if.end51, label %if.end48.for.inc_crit_edge

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end51:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %base.addr.044)
  %cmp52 = icmp ugt i32 %22, %base.addr.044
  br i1 %cmp52, label %if.then53, label %if.end51.if.end90_crit_edge

if.end51.if.end90_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end90

if.then53:                                        ; preds = %if.end51
  %flags55 = getelementptr inbounds %struct.memblock_region, ptr %rgn.043, i32 0, i32 2
  %25 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %flags)
  %cmp56.not = icmp eq i32 %26, %flags
  br i1 %cmp56.not, label %if.then53.if.end78_crit_edge, label %do.end72, !prof !155

if.then53.if.end78_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end78

do.end72:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 621, i32 noundef 9, ptr noundef null) #18
  br label %if.end78

if.end78:                                         ; preds = %do.end72, %if.then53.if.end78_crit_edge
  %inc = add i32 %nr_new.042, 1
  br i1 %insert.0.off0, label %if.then87, label %if.end78.if.end90_crit_edge

if.end78.if.end90_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end90

if.then87:                                        ; preds = %if.end78
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  %29 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.not.i = icmp ult i32 %28, %30
  br i1 %cmp.not.i, label %memblock_insert_region.exit, label %do.body2.i, !prof !155

do.body2.i:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #18, !srcloc !156
  unreachable

memblock_insert_region.exit:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #20
  %sub = sub i32 %22, %base.addr.044
  %inc88 = add nuw i32 %idx.041, 1
  %31 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regions, align 4
  %arrayidx.i = getelementptr %struct.memblock_region, ptr %32, i32 %idx.041
  %add.ptr.i = getelementptr %struct.memblock_region, ptr %arrayidx.i, i32 1
  %sub.i1 = sub i32 %28, %idx.041
  %mul.i = mul i32 %sub.i1, 12
  %33 = call ptr @memmove(ptr %add.ptr.i, ptr %arrayidx.i, i32 %mul.i)
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %base.addr.044, ptr %arrayidx.i, align 4
  %size10.i = getelementptr %struct.memblock_region, ptr %32, i32 %idx.041, i32 1
  %35 = ptrtoint ptr %size10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %size10.i, align 4
  %flags11.i = getelementptr %struct.memblock_region, ptr %32, i32 %idx.041, i32 2
  %36 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %flags, ptr %flags11.i, align 4
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %type, align 4
  %39 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %total_size.i, align 4
  %add.i = add i32 %40, %sub
  store i32 %add.i, ptr %total_size.i, align 4
  br label %if.end90

if.end90:                                         ; preds = %memblock_insert_region.exit, %if.end78.if.end90_crit_edge, %if.end51.if.end90_crit_edge
  %idx.1 = phi i32 [ %inc88, %memblock_insert_region.exit ], [ %idx.041, %if.end78.if.end90_crit_edge ], [ %idx.041, %if.end51.if.end90_crit_edge ]
  %nr_new.1 = phi i32 [ %inc, %memblock_insert_region.exit ], [ %inc, %if.end78.if.end90_crit_edge ], [ %nr_new.042, %if.end51.if.end90_crit_edge ]
  %41 = tail call i32 @llvm.umin.i32(i32 %add45, i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %if.end90, %if.end48.for.inc_crit_edge
  %idx.2.ph = phi i32 [ %idx.041, %if.end48.for.inc_crit_edge ], [ %idx.1, %if.end90 ]
  %nr_new.2.ph = phi i32 [ %nr_new.042, %if.end48.for.inc_crit_edge ], [ %nr_new.1, %if.end90 ]
  %base.addr.1.ph = phi i32 [ %base.addr.044, %if.end48.for.inc_crit_edge ], [ %41, %if.end90 ]
  %inc94 = add i32 %idx.2.ph, 1
  %42 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regions, align 4
  %arrayidx96 = getelementptr %struct.memblock_region, ptr %43, i32 %inc94
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type, align 4
  %cmp42 = icmp ult i32 %inc94, %45
  br i1 %cmp42, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ %inc94, %for.inc.for.end_crit_edge ], [ %idx.041, %for.body.for.end_crit_edge ]
  %nr_new.0.lcssa = phi i32 [ %nr_new.2.ph, %for.inc.for.end_crit_edge ], [ %nr_new.042, %for.body.for.end_crit_edge ]
  %base.addr.0.lcssa = phi i32 [ %base.addr.1.ph, %for.inc.for.end_crit_edge ], [ %base.addr.044, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %base.addr.0.lcssa)
  %cmp97 = icmp ugt i32 %add, %base.addr.0.lcssa
  br i1 %cmp97, label %for.end.if.then98_crit_edge, label %if.end104

for.end.if.then98_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then98

for.end.thread:                                   ; preds = %repeat
  br i1 %cmp9765, label %for.end.thread.if.then98_crit_edge, label %for.end.thread.cleanup117_crit_edge

for.end.thread.cleanup117_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup117

for.end.thread.if.then98_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then98

if.then98:                                        ; preds = %for.end.thread.if.then98_crit_edge, %for.end.if.then98_crit_edge
  %base.addr.0.lcssa69 = phi i32 [ %base, %for.end.thread.if.then98_crit_edge ], [ %base.addr.0.lcssa, %for.end.if.then98_crit_edge ]
  %nr_new.0.lcssa67 = phi i32 [ 0, %for.end.thread.if.then98_crit_edge ], [ %nr_new.0.lcssa, %for.end.if.then98_crit_edge ]
  %idx.0.lcssa66 = phi i32 [ 0, %for.end.thread.if.then98_crit_edge ], [ %idx.0.lcssa, %for.end.if.then98_crit_edge ]
  %inc99 = add i32 %nr_new.0.lcssa67, 1
  br i1 %insert.0.off0, label %if.then101, label %if.end104.thread

if.then101:                                       ; preds = %if.then98
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type, align 4
  %48 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp.not.i3 = icmp ult i32 %47, %49
  br i1 %cmp.not.i3, label %if.end104.thread57, label %do.body2.i4, !prof !155

do.body2.i4:                                      ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #18, !srcloc !156
  unreachable

if.end104:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_new.0.lcssa)
  %tobool105.not = icmp eq i32 %nr_new.0.lcssa, 0
  br i1 %tobool105.not, label %if.end104.cleanup117_crit_edge, label %if.end107

if.end104.cleanup117_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup117

if.end104.thread57:                               ; preds = %if.then101
  %sub102 = sub i32 %add, %base.addr.0.lcssa69
  %50 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regions, align 4
  %arrayidx.i6 = getelementptr %struct.memblock_region, ptr %51, i32 %idx.0.lcssa66
  %add.ptr.i7 = getelementptr %struct.memblock_region, ptr %arrayidx.i6, i32 1
  %sub.i8 = sub i32 %47, %idx.0.lcssa66
  %mul.i9 = mul i32 %sub.i8, 12
  %52 = call ptr @memmove(ptr %add.ptr.i7, ptr %arrayidx.i6, i32 %mul.i9)
  %53 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %base.addr.0.lcssa69, ptr %arrayidx.i6, align 4
  %size10.i10 = getelementptr %struct.memblock_region, ptr %51, i32 %idx.0.lcssa66, i32 1
  %54 = ptrtoint ptr %size10.i10 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub102, ptr %size10.i10, align 4
  %flags11.i11 = getelementptr %struct.memblock_region, ptr %51, i32 %idx.0.lcssa66, i32 2
  %55 = ptrtoint ptr %flags11.i11 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %flags, ptr %flags11.i11, align 4
  %56 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type, align 4
  %inc.i12 = add i32 %57, 1
  store i32 %inc.i12, ptr %type, align 4
  %58 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %total_size.i, align 4
  %add.i14 = add i32 %59, %sub102
  store i32 %add.i14, ptr %total_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc99)
  %tobool105.not59 = icmp eq i32 %inc99, 0
  br i1 %tobool105.not59, label %if.end104.thread57.cleanup117_crit_edge, label %if.end104.thread57.if.else_crit_edge

if.end104.thread57.if.else_crit_edge:             ; preds = %if.end104.thread57
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.end104.thread57.cleanup117_crit_edge:          ; preds = %if.end104.thread57
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup117

if.end104.thread:                                 ; preds = %if.then98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc99)
  %tobool105.not53 = icmp eq i32 %inc99, 0
  br i1 %tobool105.not53, label %if.end104.thread.cleanup117_crit_edge, label %if.end104.thread.while.cond.preheader_crit_edge

if.end104.thread.while.cond.preheader_crit_edge:  ; preds = %if.end104.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.preheader

if.end104.thread.cleanup117_crit_edge:            ; preds = %if.end104.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup117

if.end107:                                        ; preds = %if.end104
  br i1 %insert.0.off0, label %if.elsethread-pre-split, label %if.end107.while.cond.preheader_crit_edge

if.end107.while.cond.preheader_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end107.while.cond.preheader_crit_edge, %if.end104.thread.while.cond.preheader_crit_edge
  %nr_new.45456 = phi i32 [ %nr_new.0.lcssa, %if.end107.while.cond.preheader_crit_edge ], [ %inc99, %if.end104.thread.while.cond.preheader_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %60 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type, align 4
  %add111 = add i32 %61, %nr_new.45456
  %62 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max.i, align 4
  %cmp112 = icmp ugt i32 %add111, %63
  br i1 %cmp112, label %while.body, label %while.cond.repeat_crit_edge

while.cond.repeat_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %repeat

while.body:                                       ; preds = %while.cond
  %call113 = tail call fastcc i32 @memblock_double_array(ptr noundef %type, i32 noundef %base, i32 noundef %0)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %while.body.cleanup117_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.body.cleanup117_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup117

if.elsethread-pre-split:                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #20
  %64 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr73 = load i32, ptr %type, align 4
  br label %if.else

if.else:                                          ; preds = %if.elsethread-pre-split, %if.end104.thread57.if.else_crit_edge
  %65 = phi i32 [ %.pr73, %if.elsethread-pre-split ], [ %inc.i12, %if.end104.thread57.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp54.not.i = icmp eq i32 %65, 1
  br i1 %cmp54.not.i, label %if.else.cleanup117_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.cleanup117_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup117

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %i.055.i = phi i32 [ %i.1.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %if.else.while.body.i_crit_edge ]
  %66 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regions, align 4
  %arrayidx.i17 = getelementptr %struct.memblock_region, ptr %67, i32 %i.055.i
  %add.i18 = add nuw i32 %i.055.i, 1
  %arrayidx2.i = getelementptr %struct.memblock_region, ptr %67, i32 %add.i18
  %68 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i17, align 4
  %size.i = getelementptr %struct.memblock_region, ptr %67, i32 %i.055.i, i32 1
  %70 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i, align 4
  %add3.i = add i32 %71, %69
  %72 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %73)
  %cmp5.not.i = icmp eq i32 %add3.i, %73
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %while.body.i.do.body.i_crit_edge

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %flags.i = getelementptr %struct.memblock_region, ptr %67, i32 %i.055.i, i32 2
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i, align 4
  %flags9.i = getelementptr %struct.memblock_region, ptr %67, i32 %add.i18, i32 2
  %76 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp10.not.i = icmp eq i32 %75, %77
  br i1 %cmp10.not.i, label %if.end24.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %while.body.i.do.body.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %73)
  %cmp15.i = icmp ugt i32 %add3.i, %73
  br i1 %cmp15.i, label %do.body18.i, label %do.body.i.cleanup.i_crit_edge, !prof !157

do.body.i.cleanup.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

do.body18.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 515, 0\0A.popsection", ""() #18, !srcloc !158
  unreachable

if.end24.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  %size25.i = getelementptr %struct.memblock_region, ptr %67, i32 %add.i18, i32 1
  %78 = ptrtoint ptr %size25.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size25.i, align 4
  %add27.i = add i32 %79, %71
  %80 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add27.i, ptr %size.i, align 4
  %add.ptr.i19 = getelementptr %struct.memblock_region, ptr %arrayidx2.i, i32 1
  %81 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type, align 4
  %add29.neg.i = sub nuw i32 -2, %i.055.i
  %sub30.i = add i32 %add29.neg.i, %82
  %mul.i20 = mul i32 %sub30.i, 12
  %83 = call ptr @memmove(ptr %arrayidx2.i, ptr %add.ptr.i19, i32 %mul.i20)
  %84 = load i32, ptr %type, align 4
  %dec.i = add i32 %84, -1
  store i32 %dec.i, ptr %type, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end24.i, %do.body.i.cleanup.i_crit_edge
  %i.1.i = phi i32 [ %i.055.i, %if.end24.i ], [ %add.i18, %do.body.i.cleanup.i_crit_edge ]
  %85 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %type, align 4
  %sub.i21 = add i32 %86, -1
  %cmp.i = icmp ult i32 %i.1.i, %sub.i21
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup117_crit_edge

cleanup.i.cleanup117_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup117

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

cleanup117:                                       ; preds = %cleanup.i.cleanup117_crit_edge, %if.else.cleanup117_crit_edge, %while.body.cleanup117_crit_edge, %if.end104.thread.cleanup117_crit_edge, %if.end104.thread57.cleanup117_crit_edge, %if.end104.cleanup117_crit_edge, %for.end.thread.cleanup117_crit_edge, %if.end19, %entry.cleanup117_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 0, %entry.cleanup117_crit_edge ], [ 0, %if.else.cleanup117_crit_edge ], [ 0, %if.end104.thread57.cleanup117_crit_edge ], [ 0, %cleanup.i.cleanup117_crit_edge ], [ -12, %while.body.cleanup117_crit_edge ], [ 0, %if.end104.thread.cleanup117_crit_edge ], [ 0, %if.end104.cleanup117_crit_edge ], [ 0, %for.end.thread.cleanup117_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_add(i32 noundef %base, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %base.addr = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %add = add i32 %base, -1
  %sub = add i32 %add, %size
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %end, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %base.addr, ptr noundef nonnull %end, ptr noundef %2) #21
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.addr, align 4
  %call4 = call fastcc i32 @memblock_add_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %4, i32 noundef %size, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_remove(i32 noundef %base, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %base.addr = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %add = add i32 %base, -1
  %sub = add i32 %add, %size
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %end, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef nonnull %base.addr, ptr noundef nonnull %end, ptr noundef %2) #21
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.addr, align 4
  %call4 = call fastcc i32 @memblock_remove_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %4, i32 noundef %size)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memblock_remove_range(ptr noundef %type, i32 noundef %base, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %start_rgn = alloca i32, align 4
  %end_rgn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start_rgn) #18
  %0 = ptrtoint ptr %start_rgn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start_rgn, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end_rgn) #18
  %1 = ptrtoint ptr %end_rgn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end_rgn, align 4, !annotation !159
  %call = call fastcc i32 @memblock_isolate_range(ptr noundef %type, i32 noundef %base, i32 noundef %size, ptr noundef nonnull %start_rgn, ptr noundef nonnull %end_rgn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %end_rgn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end_rgn, align 4
  %4 = ptrtoint ptr %start_rgn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_rgn, align 4
  %i.08 = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.08, i32 %5)
  %cmp.not9 = icmp slt i32 %i.08, %5
  br i1 %cmp.not9, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %regions.i = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 3
  %total_size.i = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %memblock_remove_region.exit.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ %i.08, %for.body.lr.ph ], [ %i.0, %memblock_remove_region.exit.for.body_crit_edge ]
  %i.0.in10 = phi i32 [ %3, %for.body.lr.ph ], [ %i.011, %memblock_remove_region.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regions.i, align 4
  %size.i = getelementptr %struct.memblock_region, ptr %7, i32 %i.011, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %10 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_size.i, align 4
  %sub.i = sub i32 %11, %9
  store i32 %sub.i, ptr %total_size.i, align 4
  %arrayidx2.i = getelementptr %struct.memblock_region, ptr %7, i32 %i.011
  %arrayidx4.i = getelementptr %struct.memblock_region, ptr %7, i32 %i.0.in10
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %sub6.i = sub i32 %13, %i.0.in10
  %mul.i = mul i32 %sub6.i, 12
  %14 = call ptr @memmove(ptr %arrayidx2.i, ptr %arrayidx4.i, i32 %mul.i)
  %15 = load i32, ptr %type, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.memblock_remove_region.exit_crit_edge

for.body.memblock_remove_region.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_remove_region.exit

if.then.i:                                        ; preds = %for.body
  %16 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10.not.i = icmp eq i32 %17, 0
  br i1 %cmp10.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i, !prof !155

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 348, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  %19 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regions.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %22 = load ptr, ptr %regions.i, align 4
  %size35.i = getelementptr inbounds %struct.memblock_region, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %size35.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %size35.i, align 4
  %24 = load ptr, ptr %regions.i, align 4
  %flags.i = getelementptr inbounds %struct.memblock_region, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags.i, align 4
  br label %memblock_remove_region.exit

memblock_remove_region.exit:                      ; preds = %if.end.i, %for.body.memblock_remove_region.exit_crit_edge
  %i.0 = add i32 %i.011, -1
  %cmp.not = icmp slt i32 %i.0, %5
  br i1 %cmp.not, label %memblock_remove_region.exit.cleanup_crit_edge, label %memblock_remove_region.exit.for.body_crit_edge

memblock_remove_region.exit.for.body_crit_edge:   ; preds = %memblock_remove_region.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

memblock_remove_region.exit.cleanup_crit_edge:    ; preds = %memblock_remove_region.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %memblock_remove_region.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %memblock_remove_region.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end_rgn) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start_rgn) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memblock_free(ptr noundef %ptr, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %ptr to i32
  %call = tail call i32 @__virt_to_phys(i32 noundef %0) #18
  %call1 = tail call i32 @memblock_phys_free(i32 noundef %call, i32 noundef %size)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_phys_free(i32 noundef %base, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %start_rgn.i = alloca i32, align 4
  %end_rgn.i = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %add = add i32 %base, -1
  %sub = add i32 %add, %size
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %end, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, ptr noundef nonnull %base.addr, ptr noundef nonnull %end, ptr noundef %2) #21
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.addr, align 4
  call void @kmemleak_free_part_phys(i32 noundef %4, i32 noundef %size) #18
  %5 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start_rgn.i) #18
  %7 = ptrtoint ptr %start_rgn.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %start_rgn.i, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end_rgn.i) #18
  %8 = ptrtoint ptr %end_rgn.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %end_rgn.i, align 4, !annotation !159
  %call.i = call fastcc i32 @memblock_isolate_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %6, i32 noundef %size, ptr noundef nonnull %start_rgn.i, ptr noundef nonnull %end_rgn.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end3.memblock_remove_range.exit_crit_edge

do.end3.memblock_remove_range.exit_crit_edge:     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_remove_range.exit

if.end.i:                                         ; preds = %do.end3
  %9 = ptrtoint ptr %end_rgn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end_rgn.i, align 4
  %11 = ptrtoint ptr %start_rgn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start_rgn.i, align 4
  %i.0.i8 = add i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i8, i32 %12)
  %cmp.not.i9 = icmp slt i32 %i.0.i8, %12
  br i1 %cmp.not.i9, label %if.end.i.memblock_remove_range.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.memblock_remove_range.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_remove_range.exit

for.body.i:                                       ; preds = %memblock_remove_region.exit.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.0.i11 = phi i32 [ %i.0.i, %memblock_remove_region.exit.for.body.i_crit_edge ], [ %i.0.i8, %if.end.i.for.body.i_crit_edge ]
  %i.0.in.i10 = phi i32 [ %i.0.i11, %memblock_remove_region.exit.for.body.i_crit_edge ], [ %10, %if.end.i.for.body.i_crit_edge ]
  %13 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %size.i = getelementptr %struct.memblock_region, ptr %13, i32 %i.0.i11, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  %sub.i = sub i32 %16, %15
  store i32 %sub.i, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  %arrayidx2.i = getelementptr %struct.memblock_region, ptr %13, i32 %i.0.i11
  %arrayidx4.i = getelementptr %struct.memblock_region, ptr %13, i32 %i.0.in.i10
  %17 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %sub6.i = sub i32 %17, %i.0.in.i10
  %mul.i = mul i32 %sub6.i, 12
  %18 = call ptr @memmove(ptr %arrayidx2.i, ptr %arrayidx4.i, i32 %mul.i)
  %19 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.i.memblock_remove_region.exit_crit_edge

for.body.i.memblock_remove_region.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_remove_region.exit

if.then.i:                                        ; preds = %for.body.i
  %20 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp10.not.i = icmp eq i32 %20, 0
  br i1 %cmp10.not.i, label %if.then.i.if.end.i7_crit_edge, label %do.end.i, !prof !155

if.then.i.if.end.i7_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i7

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 348, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i7

if.end.i7:                                        ; preds = %do.end.i, %if.then.i.if.end.i7_crit_edge
  store i32 1, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %21, align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %size35.i = getelementptr inbounds %struct.memblock_region, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %size35.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %size35.i, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %flags.i = getelementptr inbounds %struct.memblock_region, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags.i, align 4
  br label %memblock_remove_region.exit

memblock_remove_region.exit:                      ; preds = %if.end.i7, %for.body.i.memblock_remove_region.exit_crit_edge
  %i.0.i = add i32 %i.0.i11, -1
  %cmp.not.i = icmp slt i32 %i.0.i, %12
  br i1 %cmp.not.i, label %memblock_remove_region.exit.memblock_remove_range.exit_crit_edge, label %memblock_remove_region.exit.for.body.i_crit_edge

memblock_remove_region.exit.for.body.i_crit_edge: ; preds = %memblock_remove_region.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

memblock_remove_region.exit.memblock_remove_range.exit_crit_edge: ; preds = %memblock_remove_region.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_remove_range.exit

memblock_remove_range.exit:                       ; preds = %memblock_remove_region.exit.memblock_remove_range.exit_crit_edge, %if.end.i.memblock_remove_range.exit_crit_edge, %do.end3.memblock_remove_range.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end3.memblock_remove_range.exit_crit_edge ], [ 0, %if.end.i.memblock_remove_range.exit_crit_edge ], [ 0, %memblock_remove_region.exit.memblock_remove_range.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end_rgn.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start_rgn.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_free_part_phys(i32 noundef, i32 noundef) local_unnamed_addr #5 section ".ref.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_reserve(i32 noundef %base, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %base.addr = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %add = add i32 %base, -1
  %sub = add i32 %add, %size
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %end, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, ptr noundef nonnull %base.addr, ptr noundef nonnull %end, ptr noundef %2) #21
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.addr, align 4
  %call4 = call fastcc i32 @memblock_add_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %4, i32 noundef %size, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_mark_hotplug(i32 noundef %base, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @memblock_setclr_flag(i32 noundef %base, i32 noundef %size, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memblock_setclr_flag(i32 noundef %base, i32 noundef %size, i32 noundef %set, i32 noundef %flag) unnamed_addr #2 align 64 {
entry:
  %start_rgn = alloca i32, align 4
  %end_rgn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start_rgn) #18
  %0 = ptrtoint ptr %start_rgn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start_rgn, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end_rgn) #18
  %1 = ptrtoint ptr %end_rgn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end_rgn, align 4, !annotation !159
  %call = call fastcc i32 @memblock_isolate_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %base, i32 noundef %size, ptr noundef nonnull %start_rgn, ptr noundef nonnull %end_rgn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %start_rgn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_rgn, align 4
  %4 = ptrtoint ptr %end_rgn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end_rgn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp16 = icmp slt i32 %3, %5
  br i1 %cmp16, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool1.not = icmp eq i32 %set, 0
  %neg = xor i32 %flag, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ %3, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %flags3 = getelementptr %struct.memblock_region, ptr %6, i32 %i.017, i32 2
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags3, align 4
  %and = and i32 %8, %neg
  %or = or i32 %8, %flag
  %and.sink = select i1 %tobool1.not, i32 %and, i32 %or
  store i32 %and.sink, ptr %flags3, align 4
  %inc = add nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %9 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp54.not.i = icmp eq i32 %9, 1
  br i1 %cmp54.not.i, label %for.end.cleanup_crit_edge, label %for.end.while.body.i_crit_edge

for.end.while.body.i_crit_edge:                   ; preds = %for.end
  br label %while.body.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %for.end.while.body.i_crit_edge
  %i.055.i = phi i32 [ %i.1.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %for.end.while.body.i_crit_edge ]
  %10 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %arrayidx.i = getelementptr %struct.memblock_region, ptr %10, i32 %i.055.i
  %add.i = add nuw i32 %i.055.i, 1
  %arrayidx2.i = getelementptr %struct.memblock_region, ptr %10, i32 %add.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %size.i = getelementptr %struct.memblock_region, ptr %10, i32 %i.055.i, i32 1
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  %add3.i = add i32 %14, %12
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %16)
  %cmp5.not.i = icmp eq i32 %add3.i, %16
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %while.body.i.do.body.i_crit_edge

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %flags.i = getelementptr %struct.memblock_region, ptr %10, i32 %i.055.i, i32 2
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %flags9.i = getelementptr %struct.memblock_region, ptr %10, i32 %add.i, i32 2
  %19 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp10.not.i = icmp eq i32 %18, %20
  br i1 %cmp10.not.i, label %if.end24.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %while.body.i.do.body.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %16)
  %cmp15.i = icmp ugt i32 %add3.i, %16
  br i1 %cmp15.i, label %do.body18.i, label %do.body.i.cleanup.i_crit_edge, !prof !157

do.body.i.cleanup.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

do.body18.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 515, 0\0A.popsection", ""() #18, !srcloc !158
  unreachable

if.end24.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  %size25.i = getelementptr %struct.memblock_region, ptr %10, i32 %add.i, i32 1
  %21 = ptrtoint ptr %size25.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size25.i, align 4
  %add27.i = add i32 %22, %14
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add27.i, ptr %size.i, align 4
  %add.ptr.i = getelementptr %struct.memblock_region, ptr %arrayidx2.i, i32 1
  %24 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %add29.neg.i = sub nuw i32 -2, %i.055.i
  %sub30.i = add i32 %add29.neg.i, %24
  %mul.i = mul i32 %sub30.i, 12
  %25 = call ptr @memmove(ptr %arrayidx2.i, ptr %add.ptr.i, i32 %mul.i)
  %26 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end24.i, %do.body.i.cleanup.i_crit_edge
  %i.1.i = phi i32 [ %i.055.i, %if.end24.i ], [ %add.i, %do.body.i.cleanup.i_crit_edge ]
  %27 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %sub.i = add i32 %27, -1
  %cmp.i = icmp ult i32 %i.1.i, %sub.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

cleanup:                                          ; preds = %cleanup.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %cleanup.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end_rgn) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start_rgn) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_clear_hotplug(i32 noundef %base, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @memblock_setclr_flag(i32 noundef %base, i32 noundef %size, i32 noundef 0, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_mark_mirror(i32 noundef %base, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @system_has_some_mirror, align 1
  %call = tail call fastcc i32 @memblock_setclr_flag(i32 noundef %base, i32 noundef %size, i32 noundef 1, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_mark_nomap(i32 noundef %base, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @memblock_setclr_flag(i32 noundef %base, i32 noundef %size, i32 noundef 1, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_clear_nomap(i32 noundef %base, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @memblock_setclr_flag(i32 noundef %base, i32 noundef %size, i32 noundef 0, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__next_mem_range(ptr nocapture noundef %idx, i32 noundef %nid, i32 noundef %flags, ptr noundef readonly %type_a, ptr noundef readonly %type_b, ptr noundef writeonly %out_start, ptr noundef writeonly %out_end, ptr noundef writeonly %out_nid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %idx, align 8
  %conv = trunc i64 %1 to i32
  %shr = lshr i64 %1, 32
  %conv1 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nid)
  %cmp = icmp eq i32 %nid, 1
  br i1 %cmp, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b196 = load i1, ptr @__next_mem_range.__already_done, align 1
  br i1 %.b196, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !155

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__next_mem_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1033, i32 noundef 9, ptr noundef nonnull @.str.10) #18
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %spec.select = phi i32 [ %nid, %entry.if.end30_crit_edge ], [ -1, %if.then ], [ -1, %land.rhs.if.end30_crit_edge ]
  %2 = ptrtoint ptr %type_a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_a, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp41223 = icmp ugt i32 %3, %conv
  br i1 %cmp41223, label %for.body.lr.ph, label %if.end30.cleanup136_crit_edge

if.end30.cleanup136_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup136

for.body.lr.ph:                                   ; preds = %if.end30
  %regions = getelementptr inbounds %struct.memblock_type, ptr %type_a, i32 0, i32 3
  %4 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regions, align 4
  %cmp.not.i = icmp eq ptr %type_a, getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 0)
  %and11.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %and17.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %and23.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %tobool47.not = icmp eq ptr %type_b, null
  %regions67 = getelementptr inbounds %struct.memblock_type, ptr %type_b, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc133.for.body_crit_edge, %for.body.lr.ph
  %idx_a.0225 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc134, %for.inc133.for.body_crit_edge ]
  %idx_b.0224 = phi i32 [ %conv1, %for.body.lr.ph ], [ %idx_b.5.ph, %for.inc133.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.memblock_region, ptr %5, i32 %idx_a.0225
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %size = getelementptr %struct.memblock_region, ptr %5, i32 %idx_a.0225, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %add = add i32 %9, %7
  br i1 %cmp.not.i, label %if.end.i, label %for.body.if.end46_crit_edge

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.end.i:                                         ; preds = %for.body
  %10 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select, label %if.end.i.for.inc133_crit_edge [
    i32 -1, label %if.end.i.if.end4.i_crit_edge
    i32 0, label %if.end.i.if.end4.i_crit_edge286
  ]

if.end.i.if.end4.i_crit_edge286:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4.i

if.end.i.for.inc133_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc133

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge286
  br i1 %tobool12.not.i, label %if.end4.i.if.end16.i_crit_edge, label %land.lhs.true13.i

if.end4.i.if.end16.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i

land.lhs.true13.i:                                ; preds = %if.end4.i
  %flags.i.i = getelementptr %struct.memblock_region, ptr %5, i32 %idx_a.0225, i32 2
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true13.i.for.inc133_crit_edge, label %land.lhs.true13.i.if.end16.i_crit_edge

land.lhs.true13.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i

land.lhs.true13.i.for.inc133_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc133

if.end16.i:                                       ; preds = %land.lhs.true13.i.if.end16.i_crit_edge, %if.end4.i.if.end16.i_crit_edge
  br i1 %tobool18.not.i, label %land.lhs.true19.i, label %if.end16.i.if.end22.i_crit_edge

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22.i

land.lhs.true19.i:                                ; preds = %if.end16.i
  %flags.i37.i = getelementptr %struct.memblock_region, ptr %5, i32 %idx_a.0225, i32 2
  %13 = ptrtoint ptr %flags.i37.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i37.i, align 4
  %and.i38.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38.i)
  %tobool.i39.not.i = icmp eq i32 %and.i38.i, 0
  br i1 %tobool.i39.not.i, label %land.lhs.true19.i.if.end22.i_crit_edge, label %land.lhs.true19.i.for.inc133_crit_edge

land.lhs.true19.i.for.inc133_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc133

land.lhs.true19.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true19.i.if.end22.i_crit_edge, %if.end16.i.if.end22.i_crit_edge
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %if.end22.i.if.end46_crit_edge

if.end22.i.if.end46_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

land.lhs.true25.i:                                ; preds = %if.end22.i
  %flags.i40.i = getelementptr %struct.memblock_region, ptr %5, i32 %idx_a.0225, i32 2
  %15 = ptrtoint ptr %flags.i40.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i40.i, align 4
  %and.i41.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41.i)
  %tobool.i42.not.i = icmp eq i32 %and.i41.i, 0
  br i1 %tobool.i42.not.i, label %land.lhs.true25.i.if.end46_crit_edge, label %land.lhs.true25.i.for.inc133_crit_edge

land.lhs.true25.i.for.inc133_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc133

land.lhs.true25.i.if.end46_crit_edge:             ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true25.i.if.end46_crit_edge, %if.end22.i.if.end46_crit_edge, %for.body.if.end46_crit_edge
  br i1 %tobool47.not, label %if.then48, label %for.cond61.preheader

for.cond61.preheader:                             ; preds = %if.end46
  %17 = ptrtoint ptr %type_b to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type_b, align 4
  %add63 = add i32 %18, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx_b.0224, i32 %add63)
  %cmp64220 = icmp ult i32 %idx_b.0224, %add63
  br i1 %cmp64220, label %for.body66.lr.ph, label %for.cond61.preheader.for.inc133_crit_edge

for.cond61.preheader.for.inc133_crit_edge:        ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc133

for.body66.lr.ph:                                 ; preds = %for.cond61.preheader
  %19 = ptrtoint ptr %regions67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regions67, align 4
  br label %for.body66

if.then48:                                        ; preds = %if.end46
  %tobool49.not = icmp eq ptr %out_start, null
  br i1 %tobool49.not, label %if.then48.if.end51_crit_edge, label %if.then50

if.then48.if.end51_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %out_start to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %7, ptr %out_start, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then48.if.end51_crit_edge
  %tobool52.not = icmp eq ptr %out_end, null
  br i1 %tobool52.not, label %if.end51.if.end54_crit_edge, label %if.then53

if.end51.if.end54_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %out_end to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %out_end, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51.if.end54_crit_edge
  %tobool55.not = icmp eq ptr %out_nid, null
  br i1 %tobool55.not, label %if.end54.if.end57_crit_edge, label %if.then56

if.end54.if.end57_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %out_nid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %out_nid, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end54.if.end57_crit_edge
  %inc = add nuw i32 %idx_a.0225, 1
  %conv58 = zext i32 %inc to i64
  %conv59194 = zext i32 %idx_b.0224 to i64
  %shl = shl nuw i64 %conv59194, 32
  %or = or i64 %shl, %conv58
  br label %cleanup136

for.body66:                                       ; preds = %for.inc.for.body66_crit_edge, %for.body66.lr.ph
  %idx_b.1221 = phi i32 [ %idx_b.0224, %for.body66.lr.ph ], [ %inc126, %for.inc.for.body66_crit_edge ]
  %arrayidx68 = getelementptr %struct.memblock_region, ptr %20, i32 %idx_b.1221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx_b.1221)
  %tobool69.not = icmp eq i32 %idx_b.1221, 0
  br i1 %tobool69.not, label %for.body66.cond.end_crit_edge, label %cond.true

for.body66.cond.end_crit_edge:                    ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx70 = getelementptr %struct.memblock_region, ptr %arrayidx68, i32 -1
  %24 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx70, align 4
  %size73 = getelementptr inbounds %struct.memblock_region, ptr %arrayidx70, i32 0, i32 1
  %26 = ptrtoint ptr %size73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size73, align 4
  %add74 = add i32 %27, %25
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body66.cond.end_crit_edge
  %cond = phi i32 [ %add74, %cond.true ], [ 0, %for.body66.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx_b.1221, i32 %18)
  %cmp76 = icmp ult i32 %idx_b.1221, %18
  br i1 %cmp76, label %cond.true78, label %cond.end.cond.end81_crit_edge

cond.end.cond.end81_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end81

cond.true78:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx68, align 4
  br label %cond.end81

cond.end81:                                       ; preds = %cond.true78, %cond.end.cond.end81_crit_edge
  %cond82 = phi i32 [ %29, %cond.true78 ], [ -1, %cond.end.cond.end81_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %add)
  %cmp83.not = icmp ult i32 %cond, %add
  br i1 %cmp83.not, label %if.end86, label %cond.end81.for.inc133_crit_edge

cond.end81.for.inc133_crit_edge:                  ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc133

if.end86:                                         ; preds = %cond.end81
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cond82)
  %cmp87 = icmp ult i32 %7, %cond82
  br i1 %cmp87, label %if.then89, label %for.inc

if.then89:                                        ; preds = %if.end86
  %tobool90.not = icmp eq ptr %out_start, null
  br i1 %tobool90.not, label %if.then89.if.end99_crit_edge, label %if.then91

if.then89.if.end99_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end99

if.then91:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #20
  %30 = tail call i32 @llvm.umax.i32(i32 %7, i32 %cond)
  %31 = ptrtoint ptr %out_start to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %out_start, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then91, %if.then89.if.end99_crit_edge
  %tobool100.not = icmp eq ptr %out_end, null
  br i1 %tobool100.not, label %if.end99.if.end109_crit_edge, label %if.then101

if.end99.if.end109_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end109

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #20
  %32 = tail call i32 @llvm.umin.i32(i32 %add, i32 %cond82)
  %33 = ptrtoint ptr %out_end to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %out_end, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then101, %if.end99.if.end109_crit_edge
  %tobool110.not = icmp eq ptr %out_nid, null
  br i1 %tobool110.not, label %if.end109.cleanup.thread_crit_edge, label %if.then111

if.end109.cleanup.thread_crit_edge:               ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.then111:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %out_nid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %out_nid, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then111, %if.end109.cleanup.thread_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond82)
  %cmp113.not = icmp ugt i32 %add, %cond82
  %inc117 = zext i1 %cmp113.not to i32
  %idx_b.2 = add nuw i32 %idx_b.1221, %inc117
  %not.cmp113.not = xor i1 %cmp113.not, true
  %inc116 = zext i1 %not.cmp113.not to i32
  %idx_a.2 = add i32 %idx_a.0225, %inc116
  %conv119 = zext i32 %idx_a.2 to i64
  %conv120195 = zext i32 %idx_b.2 to i64
  %shl121 = shl nuw i64 %conv120195, 32
  %or122 = or i64 %shl121, %conv119
  br label %cleanup136

for.inc:                                          ; preds = %if.end86
  %inc126 = add i32 %idx_b.1221, 1
  %exitcond.not = icmp eq i32 %idx_b.1221, %18
  br i1 %exitcond.not, label %for.inc.for.inc133_crit_edge, label %for.inc.for.body66_crit_edge

for.inc.for.body66_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body66

for.inc.for.inc133_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc133

for.inc133:                                       ; preds = %for.inc.for.inc133_crit_edge, %cond.end81.for.inc133_crit_edge, %for.cond61.preheader.for.inc133_crit_edge, %land.lhs.true25.i.for.inc133_crit_edge, %land.lhs.true19.i.for.inc133_crit_edge, %land.lhs.true13.i.for.inc133_crit_edge, %if.end.i.for.inc133_crit_edge
  %idx_b.5.ph = phi i32 [ %idx_b.0224, %if.end.i.for.inc133_crit_edge ], [ %idx_b.0224, %land.lhs.true13.i.for.inc133_crit_edge ], [ %idx_b.0224, %land.lhs.true19.i.for.inc133_crit_edge ], [ %idx_b.0224, %land.lhs.true25.i.for.inc133_crit_edge ], [ %idx_b.0224, %for.cond61.preheader.for.inc133_crit_edge ], [ %add63, %for.inc.for.inc133_crit_edge ], [ %idx_b.1221, %cond.end81.for.inc133_crit_edge ]
  %inc134 = add nuw i32 %idx_a.0225, 1
  %exitcond241.not = icmp eq i32 %inc134, %3
  br i1 %exitcond241.not, label %for.inc133.cleanup136_crit_edge, label %for.inc133.for.body_crit_edge

for.inc133.for.body_crit_edge:                    ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc133.cleanup136_crit_edge:                  ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup136

cleanup136:                                       ; preds = %for.inc133.cleanup136_crit_edge, %cleanup.thread, %if.end57, %if.end30.cleanup136_crit_edge
  %or.sink = phi i64 [ %or, %if.end57 ], [ %or122, %cleanup.thread ], [ -1, %if.end30.cleanup136_crit_edge ], [ -1, %for.inc133.cleanup136_crit_edge ]
  %35 = ptrtoint ptr %idx to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %or.sink, ptr %idx, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__next_mem_range_rev(ptr nocapture noundef %idx, i32 noundef %nid, i32 noundef %flags, ptr noundef readonly %type_a, ptr noundef readonly %type_b, ptr noundef writeonly %out_start, ptr noundef writeonly %out_end, ptr noundef writeonly %out_nid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %idx, align 8
  %conv = trunc i64 %1 to i32
  %shr = lshr i64 %1, 32
  %conv1 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nid)
  %cmp = icmp eq i32 %nid, 1
  br i1 %cmp, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b206 = load i1, ptr @__next_mem_range_rev.__already_done, align 1
  br i1 %.b206, label %land.rhs.if.end30thread-pre-split_crit_edge, label %if.then, !prof !155

land.rhs.if.end30thread-pre-split_crit_edge:      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30thread-pre-split

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__next_mem_range_rev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1129, i32 noundef 9, ptr noundef nonnull @.str.10) #18
  br label %if.end30thread-pre-split

if.end30thread-pre-split:                         ; preds = %if.then, %land.rhs.if.end30thread-pre-split_crit_edge
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load8_noabort(i32 %2)
  %.pr = load i64, ptr %idx, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end30thread-pre-split, %entry.if.end30_crit_edge
  %spec.select = phi i32 [ -1, %if.end30thread-pre-split ], [ %nid, %entry.if.end30_crit_edge ]
  %3 = phi i64 [ %.pr, %if.end30thread-pre-split ], [ %1, %entry.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %3)
  %cmp41 = icmp eq i64 %3, -1
  br i1 %cmp41, label %if.then43, label %if.end30.if.end49_crit_edge

if.end30.if.end49_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.then43:                                        ; preds = %if.end30
  %4 = ptrtoint ptr %type_a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type_a, align 4
  %sub = add i32 %5, -1
  %cmp44.not = icmp eq ptr %type_b, null
  br i1 %cmp44.not, label %if.then43.if.end49_crit_edge, label %if.then46

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %type_b to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type_b, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.then43.if.end49_crit_edge, %if.end30.if.end49_crit_edge
  %idx_b.0 = phi i32 [ %7, %if.then46 ], [ %conv1, %if.end30.if.end49_crit_edge ], [ 0, %if.then43.if.end49_crit_edge ]
  %idx_a.0 = phi i32 [ %sub, %if.then46 ], [ %conv, %if.end30.if.end49_crit_edge ], [ %sub, %if.then43.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx_a.0)
  %cmp50232 = icmp sgt i32 %idx_a.0, -1
  br i1 %cmp50232, label %for.body.lr.ph, label %if.end49.cleanup144_crit_edge

if.end49.cleanup144_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup144

for.body.lr.ph:                                   ; preds = %if.end49
  %regions = getelementptr inbounds %struct.memblock_type, ptr %type_a, i32 0, i32 3
  %8 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regions, align 4
  %cmp.not.i = icmp eq ptr %type_a, getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 0)
  %and11.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %and17.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %and23.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %tobool56.not = icmp eq ptr %type_b, null
  %regions74 = getelementptr inbounds %struct.memblock_type, ptr %type_b, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc141.for.body_crit_edge, %for.body.lr.ph
  %idx_a.1234 = phi i32 [ %idx_a.0, %for.body.lr.ph ], [ %dec142, %for.inc141.for.body_crit_edge ]
  %idx_b.1233 = phi i32 [ %idx_b.0, %for.body.lr.ph ], [ %idx_b.6.ph, %for.inc141.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.memblock_region, ptr %9, i32 %idx_a.1234
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %size = getelementptr %struct.memblock_region, ptr %9, i32 %idx_a.1234, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %add = add i32 %13, %11
  br i1 %cmp.not.i, label %if.end.i, label %for.body.if.end55_crit_edge

for.body.if.end55_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

if.end.i:                                         ; preds = %for.body
  %14 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %spec.select, label %if.end.i.for.inc141_crit_edge [
    i32 -1, label %if.end.i.if.end4.i_crit_edge
    i32 0, label %if.end.i.if.end4.i_crit_edge293
  ]

if.end.i.if.end4.i_crit_edge293:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4.i

if.end.i.for.inc141_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc141

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge293
  br i1 %tobool12.not.i, label %if.end4.i.if.end16.i_crit_edge, label %land.lhs.true13.i

if.end4.i.if.end16.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i

land.lhs.true13.i:                                ; preds = %if.end4.i
  %flags.i.i = getelementptr %struct.memblock_region, ptr %9, i32 %idx_a.1234, i32 2
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true13.i.for.inc141_crit_edge, label %land.lhs.true13.i.if.end16.i_crit_edge

land.lhs.true13.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i

land.lhs.true13.i.for.inc141_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc141

if.end16.i:                                       ; preds = %land.lhs.true13.i.if.end16.i_crit_edge, %if.end4.i.if.end16.i_crit_edge
  br i1 %tobool18.not.i, label %land.lhs.true19.i, label %if.end16.i.if.end22.i_crit_edge

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22.i

land.lhs.true19.i:                                ; preds = %if.end16.i
  %flags.i37.i = getelementptr %struct.memblock_region, ptr %9, i32 %idx_a.1234, i32 2
  %17 = ptrtoint ptr %flags.i37.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i37.i, align 4
  %and.i38.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38.i)
  %tobool.i39.not.i = icmp eq i32 %and.i38.i, 0
  br i1 %tobool.i39.not.i, label %land.lhs.true19.i.if.end22.i_crit_edge, label %land.lhs.true19.i.for.inc141_crit_edge

land.lhs.true19.i.for.inc141_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc141

land.lhs.true19.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true19.i.if.end22.i_crit_edge, %if.end16.i.if.end22.i_crit_edge
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %if.end22.i.if.end55_crit_edge

if.end22.i.if.end55_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

land.lhs.true25.i:                                ; preds = %if.end22.i
  %flags.i40.i = getelementptr %struct.memblock_region, ptr %9, i32 %idx_a.1234, i32 2
  %19 = ptrtoint ptr %flags.i40.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i40.i, align 4
  %and.i41.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41.i)
  %tobool.i42.not.i = icmp eq i32 %and.i41.i, 0
  br i1 %tobool.i42.not.i, label %land.lhs.true25.i.if.end55_crit_edge, label %land.lhs.true25.i.for.inc141_crit_edge

land.lhs.true25.i.for.inc141_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc141

land.lhs.true25.i.if.end55_crit_edge:             ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true25.i.if.end55_crit_edge, %if.end22.i.if.end55_crit_edge, %for.body.if.end55_crit_edge
  br i1 %tobool56.not, label %if.then57, label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx_b.1233)
  %cmp71229 = icmp sgt i32 %idx_b.1233, -1
  br i1 %cmp71229, label %for.body73.lr.ph, label %for.cond70.preheader.for.inc141_crit_edge

for.cond70.preheader.for.inc141_crit_edge:        ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc141

for.body73.lr.ph:                                 ; preds = %for.cond70.preheader
  %21 = ptrtoint ptr %regions74 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regions74, align 4
  %23 = ptrtoint ptr %type_b to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type_b, align 4
  br label %for.body73

if.then57:                                        ; preds = %if.end55
  %tobool58.not = icmp eq ptr %out_start, null
  br i1 %tobool58.not, label %if.then57.if.end60_crit_edge, label %if.then59

if.then57.if.end60_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end60

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %out_start to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %11, ptr %out_start, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then57.if.end60_crit_edge
  %tobool61.not = icmp eq ptr %out_end, null
  br i1 %tobool61.not, label %if.end60.if.end63_crit_edge, label %if.then62

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end63

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %out_end to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %out_end, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end60.if.end63_crit_edge
  %tobool64.not = icmp eq ptr %out_nid, null
  br i1 %tobool64.not, label %if.end63.if.end66_crit_edge, label %if.then65

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  %27 = ptrtoint ptr %out_nid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %out_nid, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  %dec = add nsw i32 %idx_a.1234, -1
  %conv67 = zext i32 %dec to i64
  %conv68204 = zext i32 %idx_b.1233 to i64
  %shl = shl nuw i64 %conv68204, 32
  %or = or i64 %shl, %conv67
  br label %cleanup144

for.body73:                                       ; preds = %for.inc.for.body73_crit_edge, %for.body73.lr.ph
  %idx_b.2230 = phi i32 [ %idx_b.1233, %for.body73.lr.ph ], [ %dec134, %for.inc.for.body73_crit_edge ]
  %arrayidx75 = getelementptr %struct.memblock_region, ptr %22, i32 %idx_b.2230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx_b.2230)
  %tobool76.not = icmp eq i32 %idx_b.2230, 0
  br i1 %tobool76.not, label %for.body73.cond.end_crit_edge, label %cond.true

for.body73.cond.end_crit_edge:                    ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx77 = getelementptr %struct.memblock_region, ptr %arrayidx75, i32 -1
  %28 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx77, align 4
  %size80 = getelementptr inbounds %struct.memblock_region, ptr %arrayidx77, i32 0, i32 1
  %30 = ptrtoint ptr %size80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size80, align 4
  %add81 = add i32 %31, %29
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body73.cond.end_crit_edge
  %cond = phi i32 [ %add81, %cond.true ], [ 0, %for.body73.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx_b.2230, i32 %24)
  %cmp83 = icmp ult i32 %idx_b.2230, %24
  br i1 %cmp83, label %cond.true85, label %cond.end.cond.end88_crit_edge

cond.end.cond.end88_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end88

cond.true85:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %32 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx75, align 4
  br label %cond.end88

cond.end88:                                       ; preds = %cond.true85, %cond.end.cond.end88_crit_edge
  %cond89 = phi i32 [ %33, %cond.true85 ], [ -1, %cond.end.cond.end88_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond89, i32 %11)
  %cmp90.not = icmp ugt i32 %cond89, %11
  br i1 %cmp90.not, label %if.end93, label %cond.end88.for.inc141_crit_edge

cond.end88.for.inc141_crit_edge:                  ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc141

if.end93:                                         ; preds = %cond.end88
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond)
  %cmp94 = icmp ugt i32 %add, %cond
  br i1 %cmp94, label %if.then96, label %for.inc

if.then96:                                        ; preds = %if.end93
  %tobool97.not = icmp eq ptr %out_start, null
  br i1 %tobool97.not, label %if.then96.if.end106_crit_edge, label %if.then98

if.then96.if.end106_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

if.then98:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #20
  %34 = tail call i32 @llvm.umax.i32(i32 %11, i32 %cond)
  %35 = ptrtoint ptr %out_start to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %out_start, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then98, %if.then96.if.end106_crit_edge
  %tobool107.not = icmp eq ptr %out_end, null
  br i1 %tobool107.not, label %if.end106.if.end116_crit_edge, label %if.then108

if.end106.if.end116_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end116

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #20
  %36 = tail call i32 @llvm.umin.i32(i32 %add, i32 %cond89)
  %37 = ptrtoint ptr %out_end to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %out_end, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then108, %if.end106.if.end116_crit_edge
  %tobool117.not = icmp eq ptr %out_nid, null
  br i1 %tobool117.not, label %if.end116.cleanup.thread_crit_edge, label %if.then118

if.end116.cleanup.thread_crit_edge:               ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #20
  %38 = ptrtoint ptr %out_nid to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %out_nid, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then118, %if.end116.cleanup.thread_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cond)
  %cmp120.not = icmp ult i32 %11, %cond
  %dec125 = sext i1 %cmp120.not to i32
  %idx_b.3 = add nsw i32 %idx_b.2230, %dec125
  %not.cmp120.not = xor i1 %cmp120.not, true
  %dec123 = sext i1 %not.cmp120.not to i32
  %idx_a.3 = add i32 %idx_a.1234, %dec123
  %conv127 = zext i32 %idx_a.3 to i64
  %conv128205 = zext i32 %idx_b.3 to i64
  %shl129 = shl nuw i64 %conv128205, 32
  %or130 = or i64 %shl129, %conv127
  br label %cleanup144

for.inc:                                          ; preds = %if.end93
  %dec134 = add nsw i32 %idx_b.2230, -1
  %cmp71 = icmp sgt i32 %idx_b.2230, 0
  br i1 %cmp71, label %for.inc.for.body73_crit_edge, label %for.inc.for.inc141_crit_edge

for.inc.for.inc141_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc141

for.inc.for.body73_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body73

for.inc141:                                       ; preds = %for.inc.for.inc141_crit_edge, %cond.end88.for.inc141_crit_edge, %for.cond70.preheader.for.inc141_crit_edge, %land.lhs.true25.i.for.inc141_crit_edge, %land.lhs.true19.i.for.inc141_crit_edge, %land.lhs.true13.i.for.inc141_crit_edge, %if.end.i.for.inc141_crit_edge
  %idx_b.6.ph = phi i32 [ %idx_b.1233, %if.end.i.for.inc141_crit_edge ], [ %idx_b.1233, %land.lhs.true13.i.for.inc141_crit_edge ], [ %idx_b.1233, %land.lhs.true19.i.for.inc141_crit_edge ], [ %idx_b.1233, %land.lhs.true25.i.for.inc141_crit_edge ], [ %idx_b.1233, %for.cond70.preheader.for.inc141_crit_edge ], [ -1, %for.inc.for.inc141_crit_edge ], [ %idx_b.2230, %cond.end88.for.inc141_crit_edge ]
  %dec142 = add nsw i32 %idx_a.1234, -1
  %cmp50 = icmp sgt i32 %idx_a.1234, 0
  br i1 %cmp50, label %for.inc141.for.body_crit_edge, label %for.inc141.cleanup144_crit_edge

for.inc141.cleanup144_crit_edge:                  ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup144

for.inc141.for.body_crit_edge:                    ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup144:                                       ; preds = %for.inc141.cleanup144_crit_edge, %cleanup.thread, %if.end66, %if.end49.cleanup144_crit_edge
  %or.sink = phi i64 [ %or, %if.end66 ], [ %or130, %cleanup.thread ], [ -1, %if.end49.cleanup144_crit_edge ], [ -1, %for.inc141.cleanup144_crit_edge ]
  %39 = ptrtoint ptr %idx to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %or.sink, ptr %idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__next_mem_pfn_range(ptr nocapture noundef %idx, i32 noundef %nid, ptr noundef writeonly %out_start_pfn, ptr noundef writeonly %out_end_pfn, ptr noundef writeonly %out_nid) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nid)
  %switch = icmp ult i32 %nid, 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %idx, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %2)
  %cmp = icmp ult i32 %inc, %2
  br i1 %cmp, label %while.body, label %if.then11

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %arrayidx = getelementptr %struct.memblock_region, ptr %3, i32 %inc
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %5, 4095
  %shr = lshr i32 %sub, 12
  %size = getelementptr %struct.memblock_region, ptr %3, i32 %inc, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %add2 = add i32 %7, %5
  %shr3 = lshr i32 %add2, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr3)
  %cmp4.not = icmp ult i32 %shr, %shr3
  %or.cond = and i1 %switch, %cmp4.not
  br i1 %or.cond, label %if.end12, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

if.then11:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %idx, align 4
  br label %cleanup

if.end12:                                         ; preds = %while.body
  %tobool.not = icmp eq ptr %out_start_pfn, null
  br i1 %tobool.not, label %if.end12.if.end18_crit_edge, label %if.then13

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %sub16 = add i32 %10, 4095
  %shr17 = lshr i32 %sub16, 12
  %11 = ptrtoint ptr %out_start_pfn to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr17, ptr %out_start_pfn, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end12.if.end18_crit_edge
  %tobool19.not = icmp eq ptr %out_end_pfn, null
  br i1 %tobool19.not, label %if.end18.if.end25_crit_edge, label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %add23 = add i32 %15, %13
  %shr24 = lshr i32 %add23, 12
  %16 = ptrtoint ptr %out_end_pfn to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr24, ptr %out_end_pfn, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end18.if.end25_crit_edge
  %tobool26.not = icmp eq ptr %out_nid, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %out_nid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %out_nid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %if.then11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_set_node(i32 noundef %base, i32 noundef %size, ptr nocapture noundef readnone %type, i32 noundef %nid) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_alloc_range_nid(i32 noundef %size, i32 noundef %align, i32 noundef %start, i32 noundef %end, i32 noundef %nid, i1 noundef zeroext %exact_nid) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  %size.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %size, ptr %size.addr, align 4
  %.b1.i = load i1, ptr @system_has_some_mirror, align 1
  %cond.i = select i1 %.b1.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nid)
  %cmp = icmp eq i32 %nid, 1
  br i1 %cmp, label %land.rhs, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b90 = load i1, ptr @memblock_alloc_range_nid.__already_done, align 1
  br i1 %.b90, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !155

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @memblock_alloc_range_nid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1363, i32 noundef 9, ptr noundef nonnull @.str.10) #18
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %spec.select = phi i32 [ %nid, %entry.if.end28_crit_edge ], [ -1, %if.then ], [ -1, %land.rhs.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align)
  %tobool39.not = icmp eq i32 %align, 0
  br i1 %tobool39.not, label %if.then40, label %if.end28.if.end41_crit_edge

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.then40:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_stack() #21
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end28.if.end41_crit_edge
  %align.addr.0 = phi i32 [ %align, %if.end28.if.end41_crit_edge ], [ 128, %if.then40 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp48.not = icmp eq i32 %spec.select, -1
  %brmerge = or i1 %cmp48.not, %exact_nid
  br label %again

again:                                            ; preds = %if.then61, %if.end41
  %flags.0 = phi i32 [ %cond.i, %if.end41 ], [ 0, %if.then61 ]
  %1 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size.addr, align 4
  %call42 = call fastcc i32 @memblock_find_in_range_node(i32 noundef %2, i32 noundef %align.addr.0, i32 noundef %start, i32 noundef %end, i32 noundef %spec.select, i32 noundef %flags.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %again.if.end47_crit_edge, label %land.lhs.true

again.if.end47_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

land.lhs.true:                                    ; preds = %again
  %3 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.addr, align 4
  %call44 = call i32 @memblock_reserve(i32 noundef %call42, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true.done_crit_edge, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %done

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %again.if.end47_crit_edge
  br i1 %brmerge, label %if.end47.if.end59_crit_edge, label %if.then51

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

if.then51:                                        ; preds = %if.end47
  %5 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.addr, align 4
  %call52 = call fastcc i32 @memblock_find_in_range_node(i32 noundef %6, i32 noundef %align.addr.0, i32 noundef %start, i32 noundef %end, i32 noundef -1, i32 noundef %flags.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.if.end59_crit_edge, label %land.lhs.true54

if.then51.if.end59_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

land.lhs.true54:                                  ; preds = %if.then51
  %7 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.addr, align 4
  %call55 = call i32 @memblock_reserve(i32 noundef %call52, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true54.done_crit_edge, label %land.lhs.true54.if.end59_crit_edge

land.lhs.true54.if.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

land.lhs.true54.done_crit_edge:                   ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #20
  br label %done

if.end59:                                         ; preds = %land.lhs.true54.if.end59_crit_edge, %if.then51.if.end59_crit_edge, %if.end47.if.end59_crit_edge
  %tobool60.not = icmp eq i32 %flags.0, 0
  br i1 %tobool60.not, label %if.end59.cleanup_crit_edge, label %if.then61

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %size.addr) #21
  br label %again

done:                                             ; preds = %land.lhs.true54.done_crit_edge, %land.lhs.true.done_crit_edge
  %found.0 = phi i32 [ %call52, %land.lhs.true54.done_crit_edge ], [ %call42, %land.lhs.true.done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %end)
  %cmp69.not = icmp eq i32 %end, 1
  br i1 %cmp69.not, label %done.cleanup_crit_edge, label %if.then70

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then70:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.addr, align 4
  call void @kmemleak_alloc_phys(i32 noundef %found.0, i32 noundef %10, i32 noundef 0, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %done.cleanup_crit_edge, %if.end59.cleanup_crit_edge
  %retval.0 = phi i32 [ %found.0, %if.then70 ], [ %found.0, %done.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memblock_find_in_range_node(i32 noundef %size, i32 noundef %align, i32 noundef %start, i32 noundef %end, i32 noundef %nid, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %this_start.i27 = alloca i32, align 4
  %this_end.i28 = alloca i32, align 4
  %i.i29 = alloca i64, align 8
  %this_start.i = alloca i32, align 4
  %this_end.i = alloca i32, align 4
  %i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %end)
  %switch = icmp ult i32 %end, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %end.addr.0 = phi i32 [ %0, %if.then ], [ %end, %entry.if.end_crit_edge ]
  %1 = tail call i32 @llvm.umax.i32(i32 %start, i32 4096)
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 %end.addr.0)
  %3 = load i8, ptr @memblock, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this_start.i) #18
  %4 = ptrtoint ptr %this_start.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %this_start.i, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this_end.i) #18
  %5 = ptrtoint ptr %this_end.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %this_end.i, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i.i) #18
  %6 = ptrtoint ptr %i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %i.i, align 8
  call void @__next_mem_range(ptr noundef nonnull %i.i, i32 noundef %nid, i32 noundef %flags, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %this_start.i, ptr noundef nonnull %this_end.i, ptr noundef null) #18
  %7 = ptrtoint ptr %i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %8)
  %cmp.not42.i = icmp eq i64 %8, -1
  br i1 %cmp.not42.i, label %if.then9.__memblock_find_range_bottom_up.exit_crit_edge, label %for.body.lr.ph.i

if.then9.__memblock_find_range_bottom_up.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %__memblock_find_range_bottom_up.exit

for.body.lr.ph.i:                                 ; preds = %if.then9
  %sub20.i = add i32 %align, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %9 = ptrtoint ptr %this_start.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %this_start.i, align 4
  %11 = call i32 @llvm.umax.i32(i32 %10, i32 %1) #18
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 %2) #18
  %13 = ptrtoint ptr %this_start.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %this_start.i, align 4
  %14 = ptrtoint ptr %this_end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %this_end.i, align 4
  %16 = call i32 @llvm.umax.i32(i32 %15, i32 %1) #18
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 %2) #18
  %18 = ptrtoint ptr %this_end.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %this_end.i, align 4
  %sub.i = add i32 %12, -1
  %or.i = or i32 %sub.i, %sub20.i
  %add.i = add i32 %or.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add.i)
  %cmp21.i = icmp ule i32 %17, %add.i
  %sub22.i = sub i32 %17, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i, i32 %size)
  %cmp23.not.i = icmp ult i32 %sub22.i, %size
  %or.cond.i = or i1 %cmp21.i, %cmp23.not.i
  br i1 %or.cond.i, label %for.inc.i, label %for.body.i.__memblock_find_range_bottom_up.exit_crit_edge

for.body.i.__memblock_find_range_bottom_up.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__memblock_find_range_bottom_up.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__next_mem_range(ptr noundef nonnull %i.i, i32 noundef %nid, i32 noundef %flags, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %this_start.i, ptr noundef nonnull %this_end.i, ptr noundef null) #18
  %19 = ptrtoint ptr %i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i.i, align 8
  %cmp.not.i = icmp eq i64 %20, -1
  br i1 %cmp.not.i, label %for.inc.i.__memblock_find_range_bottom_up.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.__memblock_find_range_bottom_up.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__memblock_find_range_bottom_up.exit

__memblock_find_range_bottom_up.exit:             ; preds = %for.inc.i.__memblock_find_range_bottom_up.exit_crit_edge, %for.body.i.__memblock_find_range_bottom_up.exit_crit_edge, %if.then9.__memblock_find_range_bottom_up.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then9.__memblock_find_range_bottom_up.exit_crit_edge ], [ %add.i, %for.body.i.__memblock_find_range_bottom_up.exit_crit_edge ], [ 0, %for.inc.i.__memblock_find_range_bottom_up.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_end.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_start.i) #18
  br label %return

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this_start.i27) #18
  %21 = ptrtoint ptr %this_start.i27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %this_start.i27, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this_end.i28) #18
  %22 = ptrtoint ptr %this_end.i28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %this_end.i28, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i.i29) #18
  %23 = ptrtoint ptr %i.i29 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %i.i29, align 8
  call void @__next_mem_range_rev(ptr noundef nonnull %i.i29, i32 noundef %nid, i32 noundef %flags, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %this_start.i27, ptr noundef nonnull %this_end.i28, ptr noundef null) #18
  %24 = ptrtoint ptr %i.i29 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i.i29, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %25)
  %cmp.not43.i = icmp eq i64 %25, -1
  br i1 %cmp.not43.i, label %if.else.__memblock_find_range_top_down.exit_crit_edge, label %for.body.lr.ph.i30

if.else.__memblock_find_range_top_down.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %__memblock_find_range_top_down.exit

for.body.lr.ph.i30:                               ; preds = %if.else
  %neg.i = sub i32 0, %align
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.inc.i34.for.body.i31_crit_edge, %for.body.lr.ph.i30
  %26 = ptrtoint ptr %this_start.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %this_start.i27, align 4
  %28 = call i32 @llvm.umax.i32(i32 %27, i32 %1) #18
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 %2) #18
  %30 = ptrtoint ptr %this_start.i27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %this_start.i27, align 4
  %31 = ptrtoint ptr %this_end.i28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %this_end.i28, align 4
  %33 = call i32 @llvm.umax.i32(i32 %32, i32 %1) #18
  %34 = call i32 @llvm.umin.i32(i32 %33, i32 %2) #18
  %35 = ptrtoint ptr %this_end.i28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %this_end.i28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %size)
  %cmp20.i = icmp ult i32 %34, %size
  br i1 %cmp20.i, label %for.body.i31.for.inc.i34_crit_edge, label %if.end.i

for.body.i31.for.inc.i34_crit_edge:               ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i34

if.end.i:                                         ; preds = %for.body.i31
  %sub.i32 = sub i32 %34, %size
  %and.i = and i32 %sub.i32, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %29)
  %cmp22.not.i = icmp ult i32 %and.i, %29
  br i1 %cmp22.not.i, label %if.end.i.for.inc.i34_crit_edge, label %if.end.i.__memblock_find_range_top_down.exit_crit_edge

if.end.i.__memblock_find_range_top_down.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__memblock_find_range_top_down.exit

if.end.i.for.inc.i34_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i34

for.inc.i34:                                      ; preds = %if.end.i.for.inc.i34_crit_edge, %for.body.i31.for.inc.i34_crit_edge
  call void @__next_mem_range_rev(ptr noundef nonnull %i.i29, i32 noundef %nid, i32 noundef %flags, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %this_start.i27, ptr noundef nonnull %this_end.i28, ptr noundef null) #18
  %36 = ptrtoint ptr %i.i29 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i.i29, align 8
  %cmp.not.i33 = icmp eq i64 %37, -1
  br i1 %cmp.not.i33, label %for.inc.i34.__memblock_find_range_top_down.exit_crit_edge, label %for.inc.i34.for.body.i31_crit_edge

for.inc.i34.for.body.i31_crit_edge:               ; preds = %for.inc.i34
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i31

for.inc.i34.__memblock_find_range_top_down.exit_crit_edge: ; preds = %for.inc.i34
  call void @__sanitizer_cov_trace_pc() #20
  br label %__memblock_find_range_top_down.exit

__memblock_find_range_top_down.exit:              ; preds = %for.inc.i34.__memblock_find_range_top_down.exit_crit_edge, %if.end.i.__memblock_find_range_top_down.exit_crit_edge, %if.else.__memblock_find_range_top_down.exit_crit_edge
  %retval.0.i35 = phi i32 [ 0, %if.else.__memblock_find_range_top_down.exit_crit_edge ], [ %and.i, %if.end.i.__memblock_find_range_top_down.exit_crit_edge ], [ 0, %for.inc.i34.__memblock_find_range_top_down.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i.i29) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_end.i28) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_start.i27) #18
  br label %return

return:                                           ; preds = %__memblock_find_range_top_down.exit, %__memblock_find_range_bottom_up.exit
  %retval.0 = phi i32 [ %retval.0.i, %__memblock_find_range_bottom_up.exit ], [ %retval.0.i35, %__memblock_find_range_top_down.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_alloc_phys(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5 section ".ref.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_phys_alloc_range(i32 noundef %size, i32 noundef %align, i32 noundef %start, i32 noundef %end) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %start.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %start, ptr %start.addr, align 4
  %1 = ptrtoint ptr %end.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %end, ptr %end.addr, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i32 %size to i64
  %conv2 = zext i32 %align to i64
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i64 noundef %conv, i64 noundef %conv2, ptr noundef nonnull %start.addr, ptr noundef nonnull %end.addr, ptr noundef %2) #21
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %start.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start.addr, align 4
  %5 = ptrtoint ptr %end.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.addr, align 4
  %call4 = call i32 @memblock_alloc_range_nid(i32 noundef %size, i32 noundef %align, i32 noundef %4, i32 noundef %6, i32 noundef -1, i1 noundef zeroext false) #22
  ret i32 %call4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_phys_alloc_try_nid(i32 noundef %size, i32 noundef %align, i32 noundef %nid) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @memblock_alloc_range_nid(i32 noundef %size, i32 noundef %align, i32 noundef 0, i32 noundef 0, i32 noundef %nid, i1 noundef zeroext false) #22
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @memblock_alloc_exact_nid_raw(i32 noundef %size, i32 noundef %align, i32 noundef %min_addr, i32 noundef %max_addr, i32 noundef %nid) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  %min_addr.addr = alloca i32, align 4
  %max_addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %min_addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %min_addr, ptr %min_addr.addr, align 4
  %1 = ptrtoint ptr %max_addr.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %max_addr, ptr %max_addr.addr, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i32 %size to i64
  %conv2 = zext i32 %align to i64
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i64 noundef %conv, i64 noundef %conv2, i32 noundef %nid, ptr noundef nonnull %min_addr.addr, ptr noundef nonnull %max_addr.addr, ptr noundef %2) #21
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %min_addr.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %min_addr.addr, align 4
  %5 = ptrtoint ptr %max_addr.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_addr.addr, align 4
  %call4 = call fastcc ptr @memblock_alloc_internal(i32 noundef %size, i32 noundef %align, i32 noundef %4, i32 noundef %6, i32 noundef %nid, i1 noundef zeroext true) #22
  ret ptr %call4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @memblock_alloc_internal(i32 noundef %size, i32 noundef %align, i32 noundef %min_addr, i32 noundef %max_addr, i32 noundef %nid, i1 noundef zeroext %exact_nid) unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @slab_is_available() #18
  br i1 %call, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b67 = load i1, ptr @memblock_alloc_internal.__already_done, align 1
  br i1 %.b67, label %land.rhs.if.end5.i.i_crit_edge, label %if.then, !prof !155

land.rhs.if.end5.i.i_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i.i

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @memblock_alloc_internal.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1487, i32 noundef 9, ptr noundef null) #18
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then, %land.rhs.if.end5.i.i_crit_edge
  %call.i2.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 2304) #23
  br label %cleanup

if.end39:                                         ; preds = %entry
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 %max_addr)
  %call43 = tail call i32 @memblock_alloc_range_nid(i32 noundef %size, i32 noundef %align, i32 noundef %min_addr, i32 noundef %1, i32 noundef %nid, i1 noundef zeroext %exact_nid) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true, label %if.end39.if.end52_crit_edge

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_addr)
  %tobool45.not = icmp eq i32 %min_addr, 0
  br i1 %tobool45.not, label %land.lhs.true.cleanup_crit_edge, label %if.end49

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true
  %call48 = tail call i32 @memblock_alloc_range_nid(i32 noundef %size, i32 noundef %align, i32 noundef 0, i32 noundef %1, i32 noundef %nid, i1 noundef zeroext %exact_nid) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool50.not = icmp eq i32 %call48, 0
  br i1 %tobool50.not, label %if.end49.cleanup_crit_edge, label %if.end49.if.end52_crit_edge

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end52:                                         ; preds = %if.end49.if.end52_crit_edge, %if.end39.if.end52_crit_edge
  %alloc.074 = phi i32 [ %call48, %if.end49.if.end52_crit_edge ], [ %call43, %if.end39.if.end52_crit_edge ]
  %2 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %alloc.074, i32 -2130706432, i32 8454144) #24, !srcloc !161
  %3 = inttoptr i32 %2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end49.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end5.i.i
  %retval.0 = phi ptr [ %3, %if.end52 ], [ null, %if.end49.cleanup_crit_edge ], [ %call.i2.i.i, %if.end5.i.i ], [ null, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @memblock_alloc_try_nid_raw(i32 noundef %size, i32 noundef %align, i32 noundef %min_addr, i32 noundef %max_addr, i32 noundef %nid) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  %min_addr.addr = alloca i32, align 4
  %max_addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %min_addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %min_addr, ptr %min_addr.addr, align 4
  %1 = ptrtoint ptr %max_addr.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %max_addr, ptr %max_addr.addr, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i32 %size to i64
  %conv2 = zext i32 %align to i64
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, i64 noundef %conv, i64 noundef %conv2, i32 noundef %nid, ptr noundef nonnull %min_addr.addr, ptr noundef nonnull %max_addr.addr, ptr noundef %2) #21
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %min_addr.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %min_addr.addr, align 4
  %5 = ptrtoint ptr %max_addr.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_addr.addr, align 4
  %call4 = call fastcc ptr @memblock_alloc_internal(i32 noundef %size, i32 noundef %align, i32 noundef %4, i32 noundef %6, i32 noundef %nid, i1 noundef zeroext false) #22
  ret ptr %call4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @memblock_alloc_try_nid(i32 noundef %size, i32 noundef %align, i32 noundef %min_addr, i32 noundef %max_addr, i32 noundef %nid) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  %min_addr.addr = alloca i32, align 4
  %max_addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %min_addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %min_addr, ptr %min_addr.addr, align 4
  %1 = ptrtoint ptr %max_addr.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %max_addr, ptr %max_addr.addr, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i32 %size to i64
  %conv2 = zext i32 %align to i64
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, i64 noundef %conv, i64 noundef %conv2, i32 noundef %nid, ptr noundef nonnull %min_addr.addr, ptr noundef nonnull %max_addr.addr, ptr noundef %2) #21
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = ptrtoint ptr %min_addr.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %min_addr.addr, align 4
  %5 = ptrtoint ptr %max_addr.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_addr.addr, align 4
  %call5 = call fastcc ptr @memblock_alloc_internal(i32 noundef %size, i32 noundef %align, i32 noundef %4, i32 noundef %6, i32 noundef %nid, i1 noundef zeroext false) #22
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end4.if.end8_crit_edge, label %if.then7

do.end4.if.end8_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then7:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #20
  %7 = call ptr @memset(ptr %call5, i32 0, i32 %size)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end4.if.end8_crit_edge
  ret ptr %call5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @memblock_free_late(i32 noundef %base, i32 noundef %size) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  %base.addr = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %add = add i32 %base, -1
  %sub = add i32 %add, %size
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %end, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.19, ptr noundef nonnull %base.addr, ptr noundef nonnull %end, ptr noundef %2) #21
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.addr, align 4
  call void @kmemleak_free_part_phys(i32 noundef %4, i32 noundef %size) #18
  %5 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.addr, align 4
  %sub5 = add i32 %6, 4095
  %shr = lshr i32 %sub5, 12
  %add6 = add i32 %6, %size
  %shr7 = lshr i32 %add6, 12
  %7 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr7, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr7)
  %cmp14 = icmp ult i32 %shr, %shr7
  br i1 %cmp14, label %do.end3.for.body_crit_edge, label %do.end3.for.end_crit_edge

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

do.end3.for.body_crit_edge:                       ; preds = %do.end3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end3.for.body_crit_edge
  %cursor.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %shr, %do.end3.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub8 = sub i32 %cursor.015, %9
  %add.ptr = getelementptr %struct.page, ptr %8, i32 %sub8
  call void @memblock_free_pages(ptr noundef %add.ptr, i32 noundef %cursor.015, i32 noundef 0) #18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr nonnull @_totalram_pages, i32 1, i32 3, i32 1) #18
  %10 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @_totalram_pages, ptr nonnull @_totalram_pages, i32 1, ptr nonnull elementtype(i32) @_totalram_pages) #18, !srcloc !162
  %inc = add nuw i32 %cursor.015, 1
  %11 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end3.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_phys_mem_size() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_reserved_size() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_start_of_DRAM() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_end_of_DRAM() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %sub = add i32 %0, -1
  %1 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %arrayidx = getelementptr %struct.memblock_region, ptr %1, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %size = getelementptr %struct.memblock_region, ptr %1, i32 %sub, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %add = add i32 %5, %3
  ret i32 %add
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @memblock_enforce_memory_limit(i32 noundef %limit) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit)
  %tobool.not = icmp eq i32 %limit, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr %struct.memblock_region, ptr %0, i32 %1
  %cmp11.i = icmp ult ptr %0, %add.ptr.i
  br i1 %cmp11.i, label %if.end.for.body.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %r.013.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %0, %if.end.for.body.i_crit_edge ]
  %limit.addr.012.i = phi i32 [ %sub.i, %if.end.i.for.body.i_crit_edge ], [ %limit, %if.end.for.body.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.memblock_region, ptr %r.013.i, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %limit.addr.012.i, i32 %3)
  %cmp1.not.i = icmp ugt i32 %limit.addr.012.i, %3
  br i1 %cmp1.not.i, label %if.end.i, label %__find_max_addr.exit

if.end.i:                                         ; preds = %for.body.i
  %sub.i = sub i32 %limit.addr.012.i, %3
  %incdec.ptr.i = getelementptr %struct.memblock_region, ptr %r.013.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

__find_max_addr.exit:                             ; preds = %for.body.i
  %4 = ptrtoint ptr %r.013.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r.013.i, align 4
  %add.i = add i32 %5, %limit.addr.012.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp = icmp eq i32 %add.i, -1
  br i1 %cmp, label %__find_max_addr.exit.cleanup_crit_edge, label %if.end2

__find_max_addr.exit.cleanup_crit_edge:           ; preds = %__find_max_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end2:                                          ; preds = %__find_max_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = tail call fastcc i32 @memblock_remove_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %add.i, i32 noundef -1)
  %call4 = tail call fastcc i32 @memblock_remove_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %add.i, i32 noundef -1)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %__find_max_addr.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @memblock_cap_memory_range(i32 noundef %base, i32 noundef %size) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  %start_rgn = alloca i32, align 4
  %end_rgn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start_rgn) #18
  %0 = ptrtoint ptr %start_rgn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start_rgn, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end_rgn) #18
  %1 = ptrtoint ptr %end_rgn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end_rgn, align 4, !annotation !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @memblock_isolate_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %base, i32 noundef %size, ptr noundef nonnull %start_rgn, ptr noundef nonnull %end_rgn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %3 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %4 = ptrtoint ptr %end_rgn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end_rgn, align 4
  %i.041 = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.041, i32 %5)
  %cmp.not42 = icmp slt i32 %i.041, %5
  br i1 %cmp.not42, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.043 = phi i32 [ %i.0, %for.inc.for.body_crit_edge ], [ %i.041, %if.end7.for.body_crit_edge ]
  %6 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %flags.i = getelementptr %struct.memblock_region, ptr %6, i32 %i.043, i32 2
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @memblock_remove_region(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %i.043)
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.043, -1
  %cmp.not = icmp slt i32 %i.0, %5
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  %9 = ptrtoint ptr %start_rgn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_rgn, align 4
  %i.144 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.144)
  %cmp1345 = icmp sgt i32 %i.144, -1
  br i1 %cmp1345, label %for.end.for.body14_crit_edge, label %for.end.for.end21_crit_edge

for.end.for.end21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end21

for.end.for.body14_crit_edge:                     ; preds = %for.end
  br label %for.body14

for.body14:                                       ; preds = %for.inc19.for.body14_crit_edge, %for.end.for.body14_crit_edge
  %i.146 = phi i32 [ %i.1, %for.inc19.for.body14_crit_edge ], [ %i.144, %for.end.for.body14_crit_edge ]
  %11 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %flags.i38 = getelementptr %struct.memblock_region, ptr %11, i32 %i.146, i32 2
  %12 = ptrtoint ptr %flags.i38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i38, align 4
  %and.i39 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool.i40.not = icmp eq i32 %and.i39, 0
  br i1 %tobool.i40.not, label %if.then17, label %for.body14.for.inc19_crit_edge

for.body14.for.inc19_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc19

if.then17:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @memblock_remove_region(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %i.146)
  br label %for.inc19

for.inc19:                                        ; preds = %if.then17, %for.body14.for.inc19_crit_edge
  %i.1 = add i32 %i.146, -1
  %cmp13 = icmp sgt i32 %i.1, -1
  br i1 %cmp13, label %for.inc19.for.body14_crit_edge, label %for.inc19.for.end21_crit_edge

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end21

for.inc19.for.body14_crit_edge:                   ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body14

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %for.end.for.end21_crit_edge
  %call22 = tail call fastcc i32 @memblock_remove_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef 0, i32 noundef %base)
  %add = add i32 %size, %base
  %call23 = tail call fastcc i32 @memblock_remove_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %add, i32 noundef -1)
  br label %cleanup

cleanup:                                          ; preds = %for.end21, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end_rgn) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start_rgn) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memblock_isolate_range(ptr noundef %type, i32 noundef %base, i32 noundef %size, ptr nocapture noundef writeonly %start_rgn, ptr nocapture noundef %end_rgn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i = xor i32 %base, -1
  %0 = tail call i32 @llvm.umin.i32(i32 %size, i32 %sub.i) #18
  %add = tail call i32 @llvm.uadd.sat.i32(i32 %size, i32 %base)
  %1 = ptrtoint ptr %end_rgn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %end_rgn, align 4
  %2 = ptrtoint ptr %start_rgn to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %start_rgn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup48_crit_edge, label %while.cond.preheader

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup48

while.cond.preheader:                             ; preds = %entry
  %max = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %add1 = add i32 %4, 2
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %6)
  %cmp = icmp ugt i32 %add1, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = tail call fastcc i32 @memblock_double_array(ptr noundef %type, i32 noundef %base, i32 noundef %0)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %while.body.cleanup48_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.body.cleanup48_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup48

while.end:                                        ; preds = %while.cond
  %regions = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7126.not = icmp eq i32 %4, 0
  br i1 %cmp7126.not, label %while.end.cleanup48_crit_edge, label %for.body.lr.ph

while.end.cleanup48_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup48

for.body.lr.ph:                                   ; preds = %while.end
  %7 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regions, align 4
  %total_size33 = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rgn.0128 = phi ptr [ %8, %for.body.lr.ph ], [ %arrayidx47, %for.inc.for.body_crit_edge ]
  %idx.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %rgn.0128 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rgn.0128, align 4
  %size9 = getelementptr inbounds %struct.memblock_region, ptr %rgn.0128, i32 0, i32 1
  %11 = ptrtoint ptr %size9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size9, align 4
  %add10 = add i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp11.not = icmp ugt i32 %add, %10
  br i1 %cmp11.not, label %if.end13, label %for.body.cleanup48_crit_edge

for.body.cleanup48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup48

if.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %base)
  %cmp14.not = icmp ugt i32 %add10, %base
  br i1 %cmp14.not, label %if.end16, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %base)
  %cmp17 = icmp ult i32 %10, %base
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %13 = ptrtoint ptr %rgn.0128 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %base, ptr %rgn.0128, align 4
  %sub = sub i32 %base, %10
  %sub21 = sub i32 %12, %sub
  %14 = ptrtoint ptr %size9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub21, ptr %size9, align 4
  %15 = ptrtoint ptr %total_size33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total_size33, align 4
  %sub23 = sub i32 %16, %sub
  store i32 %sub23, ptr %total_size33, align 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %19 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not.i = icmp ult i32 %18, %20
  br i1 %cmp.not.i, label %memblock_insert_region.exit, label %do.body2.i, !prof !155

do.body2.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #18, !srcloc !156
  unreachable

memblock_insert_region.exit:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  %flags = getelementptr inbounds %struct.memblock_region, ptr %rgn.0128, i32 0, i32 2
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %23 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regions, align 4
  %arrayidx.i = getelementptr %struct.memblock_region, ptr %24, i32 %idx.0127
  %add.ptr.i = getelementptr %struct.memblock_region, ptr %arrayidx.i, i32 1
  %sub.i102 = sub i32 %18, %idx.0127
  %mul.i = mul i32 %sub.i102, 12
  %25 = call ptr @memmove(ptr %add.ptr.i, ptr %arrayidx.i, i32 %mul.i)
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %10, ptr %arrayidx.i, align 4
  %size10.i = getelementptr %struct.memblock_region, ptr %24, i32 %idx.0127, i32 1
  %27 = ptrtoint ptr %size10.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %size10.i, align 4
  %flags11.i = getelementptr %struct.memblock_region, ptr %24, i32 %idx.0127, i32 2
  %28 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %22, ptr %flags11.i, align 4
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %type, align 4
  %31 = ptrtoint ptr %total_size33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total_size33, align 4
  %add.i = add i32 %32, %sub
  store i32 %add.i, ptr %total_size33, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %add)
  %cmp26 = icmp ugt i32 %add10, %add
  br i1 %cmp26, label %if.then27, label %if.else38

if.then27:                                        ; preds = %if.else
  %33 = ptrtoint ptr %rgn.0128 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %rgn.0128, align 4
  %sub29 = sub i32 %add, %10
  %sub31 = sub i32 %12, %sub29
  %34 = ptrtoint ptr %size9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub31, ptr %size9, align 4
  %35 = ptrtoint ptr %total_size33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total_size33, align 4
  %sub34 = sub i32 %36, %sub29
  store i32 %sub34, ptr %total_size33, align 4
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  %39 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.not.i104 = icmp ult i32 %38, %40
  br i1 %cmp.not.i104, label %memblock_insert_region.exit116, label %do.body2.i105, !prof !155

do.body2.i105:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #18, !srcloc !156
  unreachable

memblock_insert_region.exit116:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  %flags37 = getelementptr inbounds %struct.memblock_region, ptr %rgn.0128, i32 0, i32 2
  %41 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags37, align 4
  %dec = add i32 %idx.0127, -1
  %43 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regions, align 4
  %arrayidx.i107 = getelementptr %struct.memblock_region, ptr %44, i32 %idx.0127
  %add.ptr.i108 = getelementptr %struct.memblock_region, ptr %arrayidx.i107, i32 1
  %sub.i109 = sub i32 %38, %idx.0127
  %mul.i110 = mul i32 %sub.i109, 12
  %45 = call ptr @memmove(ptr %add.ptr.i108, ptr %arrayidx.i107, i32 %mul.i110)
  %46 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %10, ptr %arrayidx.i107, align 4
  %size10.i111 = getelementptr %struct.memblock_region, ptr %44, i32 %idx.0127, i32 1
  %47 = ptrtoint ptr %size10.i111 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub29, ptr %size10.i111, align 4
  %flags11.i112 = getelementptr %struct.memblock_region, ptr %44, i32 %idx.0127, i32 2
  %48 = ptrtoint ptr %flags11.i112 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %42, ptr %flags11.i112, align 4
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type, align 4
  %inc.i113 = add i32 %50, 1
  store i32 %inc.i113, ptr %type, align 4
  %51 = ptrtoint ptr %total_size33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %total_size33, align 4
  %add.i115 = add i32 %52, %sub29
  store i32 %add.i115, ptr %total_size33, align 4
  br label %for.inc

if.else38:                                        ; preds = %if.else
  %53 = ptrtoint ptr %end_rgn to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %end_rgn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool39.not = icmp eq i32 %54, 0
  br i1 %tobool39.not, label %if.then40, label %if.else38.if.end41_crit_edge

if.else38.if.end41_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.then40:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #20
  %55 = ptrtoint ptr %start_rgn to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %idx.0127, ptr %start_rgn, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.else38.if.end41_crit_edge
  %add42 = add nuw i32 %idx.0127, 1
  %56 = ptrtoint ptr %end_rgn to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add42, ptr %end_rgn, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end41, %memblock_insert_region.exit116, %memblock_insert_region.exit, %if.end13.for.inc_crit_edge
  %idx.2.ph = phi i32 [ %idx.0127, %if.end41 ], [ %dec, %memblock_insert_region.exit116 ], [ %idx.0127, %memblock_insert_region.exit ], [ %idx.0127, %if.end13.for.inc_crit_edge ]
  %inc = add i32 %idx.2.ph, 1
  %57 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regions, align 4
  %arrayidx47 = getelementptr %struct.memblock_region, ptr %58, i32 %inc
  %59 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type, align 4
  %cmp7 = icmp ult i32 %inc, %60
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.cleanup48_crit_edge

for.inc.cleanup48_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup48

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup48:                                        ; preds = %for.inc.cleanup48_crit_edge, %for.body.cleanup48_crit_edge, %while.end.cleanup48_crit_edge, %while.body.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup48_crit_edge ], [ 0, %while.end.cleanup48_crit_edge ], [ 0, %for.body.cleanup48_crit_edge ], [ 0, %for.inc.cleanup48_crit_edge ], [ -12, %while.body.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memblock_remove_region(ptr nocapture noundef %type, i32 noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %regions = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 3
  %0 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regions, align 4
  %size = getelementptr %struct.memblock_region, ptr %1, i32 %r, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %total_size = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 2
  %4 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_size, align 4
  %sub = sub i32 %5, %3
  store i32 %sub, ptr %total_size, align 4
  %arrayidx2 = getelementptr %struct.memblock_region, ptr %1, i32 %r
  %add = add i32 %r, 1
  %arrayidx4 = getelementptr %struct.memblock_region, ptr %1, i32 %add
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %sub6 = sub i32 %7, %add
  %mul = mul i32 %sub6, 12
  %8 = call ptr @memmove(ptr %arrayidx2, ptr %arrayidx4, i32 %mul)
  %9 = load i32, ptr %type, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10.not = icmp eq i32 %11, 0
  br i1 %cmp10.not, label %if.then.if.end_crit_edge, label %do.end, !prof !155

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 348, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type, align 4
  %13 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regions, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %16 = load ptr, ptr %regions, align 4
  %size35 = getelementptr inbounds %struct.memblock_region, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %size35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %size35, align 4
  %18 = load ptr, ptr %regions, align 4
  %flags = getelementptr inbounds %struct.memblock_region, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end, %entry.if.end40_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @memblock_mem_limit_remove_map(i32 noundef %limit) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit)
  %tobool.not = icmp eq i32 %limit, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr %struct.memblock_region, ptr %0, i32 %1
  %cmp11.i = icmp ult ptr %0, %add.ptr.i
  br i1 %cmp11.i, label %if.end.for.body.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %r.013.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %0, %if.end.for.body.i_crit_edge ]
  %limit.addr.012.i = phi i32 [ %sub.i, %if.end.i.for.body.i_crit_edge ], [ %limit, %if.end.for.body.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.memblock_region, ptr %r.013.i, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %limit.addr.012.i, i32 %3)
  %cmp1.not.i = icmp ugt i32 %limit.addr.012.i, %3
  br i1 %cmp1.not.i, label %if.end.i, label %__find_max_addr.exit

if.end.i:                                         ; preds = %for.body.i
  %sub.i = sub i32 %limit.addr.012.i, %3
  %incdec.ptr.i = getelementptr %struct.memblock_region, ptr %r.013.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

__find_max_addr.exit:                             ; preds = %for.body.i
  %4 = ptrtoint ptr %r.013.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r.013.i, align 4
  %add.i = add i32 %5, %limit.addr.012.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp = icmp eq i32 %add.i, -1
  br i1 %cmp, label %__find_max_addr.exit.cleanup_crit_edge, label %if.end2

__find_max_addr.exit.cleanup_crit_edge:           ; preds = %__find_max_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end2:                                          ; preds = %__find_max_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @memblock_cap_memory_range(i32 noundef 0, i32 noundef %add.i) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %__find_max_addr.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_is_reserved(i32 noundef %addr) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %left.0.i = phi i32 [ 0, %entry ], [ %left.2.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %right.0.i = phi i32 [ %0, %entry ], [ %right.2.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %add.i = add i32 %right.0.i, %left.0.i
  %div26.i = lshr i32 %add.i, 1
  %arrayidx.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp.i = icmp ugt i32 %3, %addr
  br i1 %cmp.i, label %do.body.i.do.cond.i_crit_edge, label %if.else.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.i

if.else.i:                                        ; preds = %do.body.i
  %size.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %add6.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %addr)
  %cmp7.not.i = icmp ugt i32 %add6.i, %addr
  br i1 %cmp7.not.i, label %if.else.i.memblock_search.exit_crit_edge, label %if.then8.i

if.else.i.memblock_search.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_search.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %add9.i = add nuw i32 %div26.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then8.i, %do.body.i.do.cond.i_crit_edge
  %left.2.ph.i = phi i32 [ %left.0.i, %do.body.i.do.cond.i_crit_edge ], [ %add9.i, %if.then8.i ]
  %right.2.ph.i = phi i32 [ %div26.i, %do.body.i.do.cond.i_crit_edge ], [ %right.0.i, %if.then8.i ]
  %cmp12.i = icmp ult i32 %left.2.ph.i, %right.2.ph.i
  br i1 %cmp12.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.memblock_search.exit_crit_edge

do.cond.i.memblock_search.exit_crit_edge:         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_search.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

memblock_search.exit:                             ; preds = %do.cond.i.memblock_search.exit_crit_edge, %if.else.i.memblock_search.exit_crit_edge
  %retval.2.i = phi i32 [ -1, %do.cond.i.memblock_search.exit_crit_edge ], [ %div26.i, %if.else.i.memblock_search.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.2.i)
  %cmp = icmp ne i32 %retval.2.i, -1
  ret i1 %cmp
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_is_memory(i32 noundef %addr) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %left.0.i = phi i32 [ 0, %entry ], [ %left.2.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %right.0.i = phi i32 [ %0, %entry ], [ %right.2.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %add.i = add i32 %right.0.i, %left.0.i
  %div26.i = lshr i32 %add.i, 1
  %arrayidx.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp.i = icmp ugt i32 %3, %addr
  br i1 %cmp.i, label %do.body.i.do.cond.i_crit_edge, label %if.else.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.i

if.else.i:                                        ; preds = %do.body.i
  %size.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %add6.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %addr)
  %cmp7.not.i = icmp ugt i32 %add6.i, %addr
  br i1 %cmp7.not.i, label %if.else.i.memblock_search.exit_crit_edge, label %if.then8.i

if.else.i.memblock_search.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_search.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %add9.i = add nuw i32 %div26.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then8.i, %do.body.i.do.cond.i_crit_edge
  %left.2.ph.i = phi i32 [ %left.0.i, %do.body.i.do.cond.i_crit_edge ], [ %add9.i, %if.then8.i ]
  %right.2.ph.i = phi i32 [ %div26.i, %do.body.i.do.cond.i_crit_edge ], [ %right.0.i, %if.then8.i ]
  %cmp12.i = icmp ult i32 %left.2.ph.i, %right.2.ph.i
  br i1 %cmp12.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.memblock_search.exit_crit_edge

do.cond.i.memblock_search.exit_crit_edge:         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_search.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

memblock_search.exit:                             ; preds = %do.cond.i.memblock_search.exit_crit_edge, %if.else.i.memblock_search.exit_crit_edge
  %retval.2.i = phi i32 [ -1, %do.cond.i.memblock_search.exit_crit_edge ], [ %div26.i, %if.else.i.memblock_search.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.2.i)
  %cmp = icmp ne i32 %retval.2.i, -1
  ret i1 %cmp
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_is_map_memory(i32 noundef %addr) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %left.0.i = phi i32 [ 0, %entry ], [ %left.2.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %right.0.i = phi i32 [ %0, %entry ], [ %right.2.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %add.i = add i32 %right.0.i, %left.0.i
  %div26.i = lshr i32 %add.i, 1
  %arrayidx.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp.i = icmp ugt i32 %3, %addr
  br i1 %cmp.i, label %do.body.i.do.cond.i_crit_edge, label %if.else.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.i

if.else.i:                                        ; preds = %do.body.i
  %size.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %add6.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %addr)
  %cmp7.not.i = icmp ugt i32 %add6.i, %addr
  br i1 %cmp7.not.i, label %if.end, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %add9.i = add nuw i32 %div26.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then8.i, %do.body.i.do.cond.i_crit_edge
  %left.2.ph.i = phi i32 [ %left.0.i, %do.body.i.do.cond.i_crit_edge ], [ %add9.i, %if.then8.i ]
  %right.2.ph.i = phi i32 [ %div26.i, %do.body.i.do.cond.i_crit_edge ], [ %right.0.i, %if.then8.i ]
  %cmp12.i = icmp ult i32 %left.2.ph.i, %right.2.ph.i
  br i1 %cmp12.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.end:                                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %flags.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i, i32 2
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.cond.i.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool.i.not, %if.end ], [ false, %do.cond.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memblock_search_pfn_nid(i32 noundef %pfn, ptr nocapture noundef writeonly %start_pfn, ptr nocapture noundef writeonly %end_pfn) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %pfn, 12
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %left.0.i = phi i32 [ 0, %entry ], [ %left.2.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %right.0.i = phi i32 [ %0, %entry ], [ %right.2.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %add.i = add i32 %right.0.i, %left.0.i
  %div26.i = lshr i32 %add.i, 1
  %arrayidx.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl)
  %cmp.i = icmp ugt i32 %3, %shl
  br i1 %cmp.i, label %do.body.i.do.cond.i_crit_edge, label %if.else.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.i

if.else.i:                                        ; preds = %do.body.i
  %size.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %add6.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %shl)
  %cmp7.not.i = icmp ugt i32 %add6.i, %shl
  br i1 %cmp7.not.i, label %if.end, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %add9.i = add nuw i32 %div26.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then8.i, %do.body.i.do.cond.i_crit_edge
  %left.2.ph.i = phi i32 [ %left.0.i, %do.body.i.do.cond.i_crit_edge ], [ %add9.i, %if.then8.i ]
  %right.2.ph.i = phi i32 [ %div26.i, %do.body.i.do.cond.i_crit_edge ], [ %right.0.i, %if.then8.i ]
  %cmp12.i = icmp ult i32 %left.2.ph.i, %right.2.ph.i
  br i1 %cmp12.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.end:                                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %shr = lshr i32 %7, 12
  %8 = ptrtoint ptr %start_pfn to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %start_pfn, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %arrayidx2 = getelementptr %struct.memblock_region, ptr %9, i32 %div26.i
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %size = getelementptr %struct.memblock_region, ptr %9, i32 %div26.i, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %add = add i32 %13, %11
  %shr6 = lshr i32 %add, 12
  %14 = ptrtoint ptr %end_pfn to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr6, ptr %end_pfn, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %do.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_is_region_memory(i32 noundef %base, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %left.0.i = phi i32 [ 0, %entry ], [ %left.2.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %right.0.i = phi i32 [ %0, %entry ], [ %right.2.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %add.i = add i32 %right.0.i, %left.0.i
  %div26.i = lshr i32 %add.i, 1
  %arrayidx.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %base)
  %cmp.i = icmp ugt i32 %3, %base
  br i1 %cmp.i, label %do.body.i.do.cond.i_crit_edge, label %if.else.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.i

if.else.i:                                        ; preds = %do.body.i
  %size.i = getelementptr %struct.memblock_region, ptr %1, i32 %div26.i, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %add6.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %base)
  %cmp7.not.i = icmp ugt i32 %add6.i, %base
  br i1 %cmp7.not.i, label %if.end, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %add9.i = add nuw i32 %div26.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then8.i, %do.body.i.do.cond.i_crit_edge
  %left.2.ph.i = phi i32 [ %left.0.i, %do.body.i.do.cond.i_crit_edge ], [ %add9.i, %if.then8.i ]
  %right.2.ph.i = phi i32 [ %div26.i, %do.body.i.do.cond.i_crit_edge ], [ %right.0.i, %if.then8.i ]
  %cmp12.i = icmp ult i32 %left.2.ph.i, %right.2.ph.i
  br i1 %cmp12.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.end:                                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %add = tail call i32 @llvm.uadd.sat.i32(i32 %size, i32 %base)
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %add5 = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %add)
  %cmp6 = icmp uge i32 %add5, %add
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.cond.i.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp6, %if.end ], [ false, %do.cond.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef %base, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp17.not.i = icmp eq i32 %0, 0
  br i1 %cmp17.not.i, label %entry.memblock_overlaps_region.exit_crit_edge, label %for.body.lr.ph.i

entry.memblock_overlaps_region.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_overlaps_region.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %add1.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %size, i32 %base) #18
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %size4.i1 = getelementptr %struct.memblock_region, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %size4.i1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size4.i1, align 4
  %add.i.i2 = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i2, i32 %base)
  %cmp.i.i3 = icmp ule i32 %add.i.i2, %base
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %3)
  %cmp2.i.i4 = icmp ule i32 %add1.i.i, %3
  %tobool.not.i5 = or i1 %cmp2.i.i4, %cmp.i.i3
  br i1 %tobool.not.i5, label %for.body.lr.ph.i.for.cond.i_crit_edge, label %for.body.lr.ph.i.memblock_overlaps_region.exit_crit_edge

for.body.lr.ph.i.memblock_overlaps_region.exit_crit_edge: ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_overlaps_region.exit

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.018.i6 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.018.i6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %0)
  %exitcond.not.i = icmp eq i32 %inc.i, %0
  br i1 %exitcond.not.i, label %for.cond.i.memblock_overlaps_region.exit.loopexit_crit_edge, label %for.body.i

for.cond.i.memblock_overlaps_region.exit.loopexit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_overlaps_region.exit.loopexit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.memblock_region, ptr %1, i32 %inc.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %size4.i = getelementptr %struct.memblock_region, ptr %1, i32 %inc.i, i32 1
  %8 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size4.i, align 4
  %add.i.i = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %base)
  %cmp.i.i = icmp ule i32 %add.i.i, %base
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %7)
  %cmp2.i.i = icmp ule i32 %add1.i.i, %7
  %tobool.not.i = or i1 %cmp2.i.i, %cmp.i.i
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.memblock_overlaps_region.exit.loopexit_crit_edge

for.body.i.memblock_overlaps_region.exit.loopexit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_overlaps_region.exit.loopexit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

memblock_overlaps_region.exit.loopexit:           ; preds = %for.body.i.memblock_overlaps_region.exit.loopexit_crit_edge, %for.cond.i.memblock_overlaps_region.exit.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %0)
  %cmp.i.le = icmp ult i32 %inc.i, %0
  br label %memblock_overlaps_region.exit

memblock_overlaps_region.exit:                    ; preds = %memblock_overlaps_region.exit.loopexit, %for.body.lr.ph.i.memblock_overlaps_region.exit_crit_edge, %entry.memblock_overlaps_region.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ false, %entry.memblock_overlaps_region.exit_crit_edge ], [ true, %for.body.lr.ph.i.memblock_overlaps_region.exit_crit_edge ], [ %cmp.i.le, %memblock_overlaps_region.exit.loopexit ]
  ret i1 %cmp.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memblock_trim_memory(i32 noundef %align) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %add.ptr30 = getelementptr %struct.memblock_region, ptr %0, i32 %1
  %cmp31 = icmp ult ptr %0, %add.ptr30
  br i1 %cmp31, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub2 = add i32 %align, -1
  %neg = sub i32 0, %align
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %23, %for.inc.for.body_crit_edge ]
  %3 = phi ptr [ %0, %for.body.lr.ph ], [ %22, %for.inc.for.body_crit_edge ]
  %r.032 = phi ptr [ %0, %for.body.lr.ph ], [ %incdec.ptr13, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %r.032 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r.032, align 4
  %size = getelementptr inbounds %struct.memblock_region, ptr %r.032, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %add = add i32 %7, %5
  %sub = add i32 %5, -1
  %or = or i32 %sub, %sub2
  %add3 = add i32 %or, 1
  %and = and i32 %add, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %5)
  %cmp5 = icmp eq i32 %add3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add)
  %cmp6 = icmp eq i32 %and, %add
  %or.cond = select i1 %cmp5, i1 %cmp6, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add3)
  %cmp7 = icmp ugt i32 %and, %add3
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %r.032 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add3, ptr %r.032, align 4
  %sub10 = sub i32 %and, %add3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub10, ptr %size, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %r.032 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %size.i = getelementptr %struct.memblock_region, ptr %3, i32 %sub.ptr.div, i32 1
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), align 4
  %sub.i = sub i32 %12, %11
  store i32 %sub.i, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), align 4
  %arrayidx2.i = getelementptr %struct.memblock_region, ptr %3, i32 %sub.ptr.div
  %add.i = add nsw i32 %sub.ptr.div, 1
  %arrayidx4.i = getelementptr %struct.memblock_region, ptr %3, i32 %add.i
  %sub6.i = sub i32 %2, %add.i
  %mul.i = mul i32 %sub6.i, 12
  %13 = call ptr @memmove(ptr %arrayidx2.i, ptr %arrayidx4.i, i32 %mul.i)
  %14 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.memblock_remove_region.exit_crit_edge

if.else.memblock_remove_region.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_remove_region.exit

if.then.i:                                        ; preds = %if.else
  %15 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10.not.i = icmp eq i32 %15, 0
  br i1 %cmp10.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i, !prof !155

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 348, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  store i32 1, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %size35.i = getelementptr inbounds %struct.memblock_region, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %size35.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %size35.i, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %flags.i = getelementptr inbounds %struct.memblock_region, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flags.i, align 4
  br label %memblock_remove_region.exit

memblock_remove_region.exit:                      ; preds = %if.end.i, %if.else.memblock_remove_region.exit_crit_edge
  %incdec.ptr = getelementptr %struct.memblock_region, ptr %r.032, i32 -1
  br label %for.inc

for.inc:                                          ; preds = %memblock_remove_region.exit, %if.then8, %for.body.for.inc_crit_edge
  %r.1 = phi ptr [ %r.032, %if.then8 ], [ %incdec.ptr, %memblock_remove_region.exit ], [ %r.032, %for.body.for.inc_crit_edge ]
  %incdec.ptr13 = getelementptr %struct.memblock_region, ptr %r.1, i32 1
  %22 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %add.ptr = getelementptr %struct.memblock_region, ptr %22, i32 %23
  %cmp = icmp ult ptr %incdec.ptr13, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @memblock_set_current_limit(i32 noundef %limit) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %limit, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_get_current_limit() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memblock_dump_all() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #21
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2)) #21
  tail call fastcc void @memblock_dump(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2)) #18
  tail call fastcc void @memblock_dump(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3)) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @memblock_allow_resize() local_unnamed_addr #12 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @memblock_can_resize, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @early_memblock(ptr noundef readonly %p) #13 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call ptr @strstr(ptr noundef nonnull %p, ptr noundef nonnull @.str.38)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @memblock_debug, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reset_node_managed_pages(ptr noundef %pgdat) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.zone, ptr %pgdat, i32 4
  %cmp6 = icmp ugt ptr %add.ptr, %pgdat
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %z.07 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %pgdat, %entry.for.body_crit_edge ]
  %managed_pages = getelementptr inbounds %struct.zone, ptr %z.07, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %managed_pages, i32 noundef 4) #18
  %0 = ptrtoint ptr %managed_pages to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %managed_pages, align 4
  %incdec.ptr = getelementptr %struct.zone, ptr %z.07, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @reset_all_zones_managed_pages() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @reset_managed_pages_done, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @first_online_pgdat() #18
  %tobool1.not5 = icmp eq ptr %call, null
  br i1 %tobool1.not5, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %reset_node_managed_pages.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %pgdat.06 = phi ptr [ %call2, %reset_node_managed_pages.exit.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %add.ptr.i = getelementptr %struct.zone, ptr %pgdat.06, i32 4
  %cmp6.i = icmp ugt ptr %add.ptr.i, %pgdat.06
  br i1 %cmp6.i, label %for.body.for.body.i_crit_edge, label %for.body.reset_node_managed_pages.exit_crit_edge

for.body.reset_node_managed_pages.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %reset_node_managed_pages.exit

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %z.07.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %pgdat.06, %for.body.for.body.i_crit_edge ]
  %managed_pages.i = getelementptr inbounds %struct.zone, ptr %z.07.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %managed_pages.i, i32 noundef 4) #18
  %0 = ptrtoint ptr %managed_pages.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %managed_pages.i, align 4
  %incdec.ptr.i = getelementptr %struct.zone, ptr %z.07.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.reset_node_managed_pages.exit_crit_edge

for.body.i.reset_node_managed_pages.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %reset_node_managed_pages.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

reset_node_managed_pages.exit:                    ; preds = %for.body.i.reset_node_managed_pages.exit_crit_edge, %for.body.reset_node_managed_pages.exit_crit_edge
  %call2 = tail call ptr @next_online_pgdat(ptr noundef nonnull %pgdat.06) #18
  %tobool1.not = icmp eq ptr %call2, null
  br i1 %tobool1.not, label %reset_node_managed_pages.exit.for.end_crit_edge, label %reset_node_managed_pages.exit.for.body_crit_edge

reset_node_managed_pages.exit.for.body_crit_edge: ; preds = %reset_node_managed_pages.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

reset_node_managed_pages.exit.for.end_crit_edge:  ; preds = %reset_node_managed_pages.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %reset_node_managed_pages.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  store i1 true, ptr @reset_managed_pages_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_online_pgdat(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @memblock_free_all() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @free_unused_memmap() #22
  tail call void @reset_all_zones_managed_pages() #22
  %call = tail call fastcc i32 @free_low_memory_core_early() #22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr nonnull @_totalram_pages, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @_totalram_pages, ptr nonnull @_totalram_pages, i32 %call, ptr nonnull elementtype(i32) @_totalram_pages) #18, !srcloc !162
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_unused_memmap() unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %1 = add i32 %0, -1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %i.0 = phi i32 [ -1, %entry ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %1)
  %exitcond.not = icmp eq i32 %i.0, %1
  br i1 %exitcond.not, label %while.cond.i.for.end_crit_edge, label %while.body.i

while.cond.i.for.end_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

while.body.i:                                     ; preds = %while.cond.i
  %inc.i = add i32 %i.0, 1
  %2 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %arrayidx.i = getelementptr %struct.memblock_region, ptr %2, i32 %inc.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %4, 4095
  %shr.i = lshr i32 %sub.i, 12
  %size.i = getelementptr %struct.memblock_region, ptr %2, i32 %inc.i, i32 1
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  %add2.i = add i32 %6, %4
  %shr3.i = lshr i32 %add2.i, 12
  %cmp4.not.i = icmp ult i32 %shr.i, %shr3.i
  br i1 %cmp4.not.i, label %__next_mem_pfn_range.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

__next_mem_pfn_range.exit:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inc.i)
  %cmp25 = icmp sgt i32 %inc.i, -1
  br i1 %cmp25, label %__next_mem_pfn_range.exit.for.body_crit_edge, label %__next_mem_pfn_range.exit.for.end_crit_edge

__next_mem_pfn_range.exit.for.end_crit_edge:      ; preds = %__next_mem_pfn_range.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

__next_mem_pfn_range.exit.for.body_crit_edge:     ; preds = %__next_mem_pfn_range.exit
  br label %for.body

for.body:                                         ; preds = %__next_mem_pfn_range.exit22.for.body_crit_edge, %__next_mem_pfn_range.exit.for.body_crit_edge
  %prev_end.029 = phi i32 [ %and2, %__next_mem_pfn_range.exit22.for.body_crit_edge ], [ 0, %__next_mem_pfn_range.exit.for.body_crit_edge ]
  %i.228 = phi i32 [ %inc.i5, %__next_mem_pfn_range.exit22.for.body_crit_edge ], [ %inc.i, %__next_mem_pfn_range.exit.for.body_crit_edge ]
  %end.127 = phi i32 [ %shr3.i13, %__next_mem_pfn_range.exit22.for.body_crit_edge ], [ %shr3.i, %__next_mem_pfn_range.exit.for.body_crit_edge ]
  %start.126 = phi i32 [ %shr.i10, %__next_mem_pfn_range.exit22.for.body_crit_edge ], [ %shr.i, %__next_mem_pfn_range.exit.for.body_crit_edge ]
  %and = and i32 %start.126, 1046528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_end.029)
  %tobool.not = icmp ne i32 %prev_end.029, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_end.029, i32 %and)
  %cmp1 = icmp ult i32 %prev_end.029, %and
  %or.cond = select i1 %tobool.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @free_memmap(i32 noundef %prev_end.029, i32 noundef %and) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %add = add nuw nsw i32 %end.127, 2047
  %and2 = and i32 %add, 2095104
  %7 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  br label %while.cond.i7

while.cond.i7:                                    ; preds = %while.body.i15.while.cond.i7_crit_edge, %if.end
  %i.3 = phi i32 [ %i.228, %if.end ], [ %inc.i5, %while.body.i15.while.cond.i7_crit_edge ]
  %inc.i5 = add i32 %i.3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i5, i32 %7)
  %cmp.i6 = icmp ult i32 %inc.i5, %7
  br i1 %cmp.i6, label %while.body.i15, label %while.cond.i7.for.end_crit_edge

while.cond.i7.for.end_crit_edge:                  ; preds = %while.cond.i7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

while.body.i15:                                   ; preds = %while.cond.i7
  %8 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %arrayidx.i8 = getelementptr %struct.memblock_region, ptr %8, i32 %inc.i5
  %9 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i8, align 4
  %sub.i9 = add i32 %10, 4095
  %shr.i10 = lshr i32 %sub.i9, 12
  %size.i11 = getelementptr %struct.memblock_region, ptr %8, i32 %inc.i5, i32 1
  %11 = ptrtoint ptr %size.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i11, align 4
  %add2.i12 = add i32 %12, %10
  %shr3.i13 = lshr i32 %add2.i12, 12
  %cmp4.not.i14 = icmp ult i32 %shr.i10, %shr3.i13
  br i1 %cmp4.not.i14, label %__next_mem_pfn_range.exit22, label %while.body.i15.while.cond.i7_crit_edge

while.body.i15.while.cond.i7_crit_edge:           ; preds = %while.body.i15
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i7

__next_mem_pfn_range.exit22:                      ; preds = %while.body.i15
  %cmp = icmp sgt i32 %inc.i5, -1
  br i1 %cmp, label %__next_mem_pfn_range.exit22.for.body_crit_edge, label %__next_mem_pfn_range.exit22.for.end_crit_edge

__next_mem_pfn_range.exit22.for.end_crit_edge:    ; preds = %__next_mem_pfn_range.exit22
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

__next_mem_pfn_range.exit22.for.body_crit_edge:   ; preds = %__next_mem_pfn_range.exit22
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %__next_mem_pfn_range.exit22.for.end_crit_edge, %while.cond.i7.for.end_crit_edge, %__next_mem_pfn_range.exit.for.end_crit_edge, %while.cond.i.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @free_low_memory_core_early() unnamed_addr #8 section ".init.text" align 64 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #18
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #18
  %call.i = tail call fastcc i32 @memblock_setclr_flag(i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef 1) #18
  tail call fastcc void @memmap_init_reserved_pages() #22
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %i, align 8
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %start, ptr noundef nonnull %end, ptr noundef null)
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %4)
  %cmp.not3 = icmp eq i64 %4, -1
  br i1 %cmp.not3, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %__free_memory_core.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %count.04 = phi i32 [ %add, %__free_memory_core.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start, align 4
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  %sub.i = add i32 %6, 4095
  %shr.i = lshr i32 %sub.i, 12
  %shr1.i = lshr i32 %8, 12
  %9 = load i32, ptr @max_low_pfn, align 4
  %10 = call i32 @llvm.umin.i32(i32 %shr1.i, i32 %9) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %shr.i)
  %cmp2.not.i = icmp ugt i32 %10, %shr.i
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.__free_memory_core.exit_crit_edge

for.body.__free_memory_core.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %__free_memory_core.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @__free_pages_memory(i32 noundef %shr.i, i32 noundef %10) #21
  %sub3.i = sub nsw i32 %10, %shr.i
  br label %__free_memory_core.exit

__free_memory_core.exit:                          ; preds = %if.end.i, %for.body.__free_memory_core.exit_crit_edge
  %retval.0.i = phi i32 [ %sub3.i, %if.end.i ], [ 0, %for.body.__free_memory_core.exit_crit_edge ]
  %add = add i32 %retval.0.i, %count.04
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %start, ptr noundef nonnull %end, ptr noundef null)
  %11 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i, align 8
  %cmp.not = icmp eq i64 %12, -1
  br i1 %cmp.not, label %__free_memory_core.exit.for.end_crit_edge, label %__free_memory_core.exit.for.body_crit_edge

__free_memory_core.exit.for.body_crit_edge:       ; preds = %__free_memory_core.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

__free_memory_core.exit.for.end_crit_edge:        ; preds = %__free_memory_core.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %__free_memory_core.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %__free_memory_core.exit.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #18
  ret i32 %count.0.lcssa
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @memblock_init_debugfs() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.39, ptr noundef null) #18
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %call, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef nonnull @memblock_debug_fops) #18
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %call, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull @memblock_debug_fops) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memblock_double_array(ptr noundef %type, i32 noundef %new_area_start, i32 noundef %new_area_size) unnamed_addr #2 align 64 {
entry:
  %base.addr.i = alloca i32, align 4
  %end.i = alloca i32, align 4
  %size.addr.i142 = alloca i32, align 4
  %size.addr.i = alloca i32, align 4
  %addr = alloca i32, align 4
  %new_end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_end) #18
  %call = tail call zeroext i1 @slab_is_available() #18
  %conv = zext i1 %call to i32
  %.b138 = load i1, ptr @memblock_can_resize, align 4
  br i1 %.b138, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %max = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 1
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  %mul = mul i32 %1, 12
  %shl = mul i32 %1, 24
  %add = add i32 %mul, 4095
  %and = and i32 %add, -4096
  %add1 = add i32 %shl, 4095
  %and2 = and i32 %add1, -4096
  %cmp = icmp eq ptr %type, getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2)
  %memblock_memory_in_slab.memblock_reserved_in_slab = select i1 %cmp, ptr @memblock_memory_in_slab, ptr @memblock_reserved_in_slab
  br i1 %call, label %if.end8.i, label %if.else11

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl, i32 noundef 3264) #23
  %tobool9.not = icmp eq ptr %call9.i, null
  br i1 %tobool9.not, label %if.end8.i.cond.end_crit_edge, label %cond.true

if.end8.i.cond.end_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %call9.i to i32
  %call10 = tail call i32 @__virt_to_phys(i32 noundef %2) #18
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end8.i.cond.end_crit_edge
  %retval.1.i160 = phi ptr [ %call9.i, %cond.true ], [ null, %if.end8.i.cond.end_crit_edge ]
  %cond = phi i32 [ %call10, %cond.true ], [ 0, %if.end8.i.cond.end_crit_edge ]
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %addr, align 4
  br label %if.end35

if.else11:                                        ; preds = %if.end
  %cmp12.not = icmp eq ptr %type, getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3)
  %spec.select = select i1 %cmp12.not, i32 %new_area_size, i32 0
  %spec.select139 = select i1 %cmp12.not, i32 %new_area_start, i32 0
  %add16 = add i32 %spec.select, %spec.select139
  %4 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.addr.i)
  %5 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and2, ptr %size.addr.i, align 4
  %.b1.i.i = load i1, ptr @system_has_some_mirror, align 1
  %cond.i.i = select i1 %.b1.i.i, i32 2, i32 0
  %call11.i = tail call fastcc i32 @memblock_find_in_range_node(i32 noundef %and2, i32 noundef 4096, i32 noundef %add16, i32 noundef %4, i32 noundef -1, i32 noundef %cond.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not2.i = icmp eq i32 %call11.i, 0
  %6 = and i1 %.b1.i.i, %tobool.not2.i
  br i1 %6, label %do.end.preheader.i, label %if.else11.memblock_find_in_range.exit_crit_edge

if.else11.memblock_find_in_range.exit_crit_edge:  ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_find_in_range.exit

do.end.preheader.i:                               ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #20
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %size.addr.i) #21
  %7 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.addr.i, align 4
  %call1.i = call fastcc i32 @memblock_find_in_range_node(i32 noundef %8, i32 noundef 4096, i32 noundef %add16, i32 noundef %4, i32 noundef -1, i32 noundef 0) #18
  br label %memblock_find_in_range.exit

memblock_find_in_range.exit:                      ; preds = %do.end.preheader.i, %if.else11.memblock_find_in_range.exit_crit_edge
  %call1.lcssa.i = phi i32 [ %call11.i, %if.else11.memblock_find_in_range.exit_crit_edge ], [ %call1.i, %do.end.preheader.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.addr.i)
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call1.lcssa.i, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.lcssa.i)
  %tobool18.not = icmp ne i32 %call1.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool19.not = icmp eq i32 %spec.select, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %memblock_find_in_range.exit.if.end28_crit_edge, label %if.then20

memblock_find_in_range.exit.if.end28_crit_edge:   ; preds = %memblock_find_in_range.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then20:                                        ; preds = %memblock_find_in_range.exit
  %10 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  %11 = call i32 @llvm.umin.i32(i32 %spec.select139, i32 %10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.addr.i142)
  %12 = ptrtoint ptr %size.addr.i142 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and2, ptr %size.addr.i142, align 4
  %.b1.i.i143 = load i1, ptr @system_has_some_mirror, align 1
  %cond.i.i144 = select i1 %.b1.i.i143, i32 2, i32 0
  %call11.i145 = call fastcc i32 @memblock_find_in_range_node(i32 noundef %and2, i32 noundef 4096, i32 noundef 0, i32 noundef %11, i32 noundef -1, i32 noundef %cond.i.i144) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i145)
  %tobool.not2.i146 = icmp eq i32 %call11.i145, 0
  %13 = and i1 %.b1.i.i143, %tobool.not2.i146
  br i1 %13, label %do.end.preheader.i149, label %if.then20.memblock_find_in_range.exit152_crit_edge

if.then20.memblock_find_in_range.exit152_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_find_in_range.exit152

do.end.preheader.i149:                            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  %call3.i147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %size.addr.i142) #21
  %14 = ptrtoint ptr %size.addr.i142 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.addr.i142, align 4
  %call1.i148 = call fastcc i32 @memblock_find_in_range_node(i32 noundef %15, i32 noundef 4096, i32 noundef 0, i32 noundef %11, i32 noundef -1, i32 noundef 0) #18
  br label %memblock_find_in_range.exit152

memblock_find_in_range.exit152:                   ; preds = %do.end.preheader.i149, %if.then20.memblock_find_in_range.exit152_crit_edge
  %call1.lcssa.i150 = phi i32 [ %call11.i145, %if.then20.memblock_find_in_range.exit152_crit_edge ], [ %call1.i148, %do.end.preheader.i149 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.addr.i142)
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call1.lcssa.i150, ptr %addr, align 4
  br label %if.end28

if.end28:                                         ; preds = %memblock_find_in_range.exit152, %memblock_find_in_range.exit.if.end28_crit_edge
  %17 = phi i32 [ %call1.lcssa.i150, %memblock_find_in_range.exit152 ], [ %call1.lcssa.i, %memblock_find_in_range.exit.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool29.not = icmp eq i32 %17, 0
  br i1 %tobool29.not, label %if.end28.if.end35thread-pre-split_crit_edge, label %cond.true30

if.end28.if.end35thread-pre-split_crit_edge:      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35thread-pre-split

cond.true30:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  %18 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %17, i32 -2130706432, i32 8454144) #24, !srcloc !161
  %19 = inttoptr i32 %18 to ptr
  br label %if.end35thread-pre-split

if.end35thread-pre-split:                         ; preds = %cond.true30, %if.end28.if.end35thread-pre-split_crit_edge
  %new_array.0.ph = phi ptr [ null, %if.end28.if.end35thread-pre-split_crit_edge ], [ %19, %cond.true30 ]
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %addr, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35thread-pre-split, %cond.end
  %21 = phi i32 [ %.pr, %if.end35thread-pre-split ], [ %cond, %cond.end ]
  %new_array.0 = phi ptr [ %new_array.0.ph, %if.end35thread-pre-split ], [ %retval.1.i160, %cond.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool36.not = icmp eq i32 %21, 0
  br i1 %tobool36.not, label %do.end, label %if.end43

do.end:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 4
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  %24 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max, align 4
  %mul41 = shl i32 %25, 1
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %23, i32 noundef %25, i32 noundef %mul41) #21
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %add44 = add i32 %shl, -1
  %sub = add i32 %add44, %21
  %26 = ptrtoint ptr %new_end to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %new_end, align 4
  %.b = load i1, ptr @memblock_debug, align 4
  br i1 %.b, label %do.end50, label %if.end43.do.end58_crit_edge

if.end43.do.end58_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end58

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  %name52 = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 4
  %27 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name52, align 4
  %29 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max, align 4
  %mul54 = shl i32 %30, 1
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %28, i32 noundef %mul54, ptr noundef nonnull %addr, ptr noundef nonnull %new_end) #21
  br label %do.end58

do.end58:                                         ; preds = %do.end50, %if.end43.do.end58_crit_edge
  %regions = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 3
  %31 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regions, align 4
  %33 = call ptr @memcpy(ptr %new_array.0, ptr %32, i32 %mul)
  %34 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max, align 4
  %add.ptr = getelementptr %struct.memblock_region, ptr %new_array.0, i32 %35
  %36 = call ptr @memset(ptr %add.ptr, i32 0, i32 %mul)
  %37 = load ptr, ptr %regions, align 4
  store ptr %new_array.0, ptr %regions, align 4
  %38 = load i32, ptr %max, align 4
  %shl63 = shl i32 %38, 1
  store i32 %shl63, ptr %max, align 4
  %39 = ptrtoint ptr %memblock_memory_in_slab.memblock_reserved_in_slab to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %memblock_memory_in_slab.memblock_reserved_in_slab, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool64.not = icmp eq i32 %40, 0
  br i1 %tobool64.not, label %if.else66, label %if.then65

if.then65:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef %37) #18
  br label %if.end74

if.else66:                                        ; preds = %do.end58
  %cmp67.not = icmp eq ptr %37, @memblock_memory_init_regions
  %cmp70.not = icmp eq ptr %37, @memblock_reserved_init_regions
  %or.cond140 = or i1 %cmp67.not, %cmp70.not
  %tobool.not.i = icmp eq ptr %37, null
  %or.cond161 = or i1 %tobool.not.i, %or.cond140
  br i1 %or.cond161, label %if.else66.if.end74_crit_edge, label %if.then.i154

if.else66.if.end74_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end74

if.then.i154:                                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %37 to i32
  %call.i = call i32 @__virt_to_phys(i32 noundef %41) #18
  %call1.i153 = call i32 @memblock_phys_free(i32 noundef %call.i, i32 noundef %and) #18
  br label %if.end74

if.end74:                                         ; preds = %if.then.i154, %if.else66.if.end74_crit_edge, %if.then65
  br i1 %call, label %if.end74.if.end92_crit_edge, label %do.body77

if.end74.if.end92_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92

do.body77:                                        ; preds = %if.end74
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %44 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %base.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #18
  %add.i = add i32 %and2, -1
  %sub.i = add i32 %add.i, %43
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.i, ptr %end.i, align 4
  %.b.i = load i1, ptr @memblock_debug, align 4
  br i1 %.b.i, label %do.end.i, label %do.body77.memblock_reserve.exit_crit_edge

do.body77.memblock_reserve.exit_crit_edge:        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #20
  br label %memblock_reserve.exit

do.end.i:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #20
  %46 = call ptr @llvm.returnaddress(i32 0) #18
  %call.i156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, ptr noundef nonnull %base.addr.i, ptr noundef nonnull %end.i, ptr noundef %46) #21
  br label %memblock_reserve.exit

memblock_reserve.exit:                            ; preds = %do.end.i, %do.body77.memblock_reserve.exit_crit_edge
  %47 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base.addr.i, align 4
  %call4.i = call fastcc i32 @memblock_add_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %48, i32 noundef %and2, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool79.not = icmp eq i32 %call4.i, 0
  br i1 %tobool79.not, label %memblock_reserve.exit.if.end92_crit_edge, label %do.body83, !prof !155

memblock_reserve.exit.if.end92_crit_edge:         ; preds = %memblock_reserve.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92

do.body83:                                        ; preds = %memblock_reserve.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 488, 0\0A.popsection", ""() #18, !srcloc !163
  unreachable

if.end92:                                         ; preds = %memblock_reserve.exit.if.end92_crit_edge, %if.end74.if.end92_crit_edge
  %49 = ptrtoint ptr %memblock_memory_in_slab.memblock_reserved_in_slab to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %memblock_memory_in_slab.memblock_reserved_in_slab, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end92 ], [ -1, %do.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_end) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @slab_is_available() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memblock_dump(ptr nocapture noundef readonly %type) unnamed_addr #2 align 64 {
entry:
  %base = alloca i32, align 4
  %end = alloca i32, align 4
  %size = alloca i32, align 4
  %nid_buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #18
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %base, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #18
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size, align 4, !annotation !159
  %name = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 4
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %4, i32 noundef %6) #21
  %regions = getelementptr inbounds %struct.memblock_type, ptr %type, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp23.not = icmp eq i32 %8, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %9 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regions, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %idx.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %rgn.024 = phi ptr [ %arrayidx12, %for.body.for.body_crit_edge ], [ %10, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nid_buf) #18
  %11 = call ptr @memset(ptr %nid_buf, i32 0, i32 32)
  %12 = ptrtoint ptr %rgn.024 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rgn.024, align 4
  %14 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %base, align 4
  %size3 = getelementptr inbounds %struct.memblock_region, ptr %rgn.024, i32 0, i32 1
  %15 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size3, align 4
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %size, align 4
  %add = add i32 %13, -1
  %sub = add i32 %add, %16
  %18 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %end, align 4
  %flags4 = getelementptr inbounds %struct.memblock_region, ptr %rgn.024, i32 0, i32 2
  %19 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags4, align 4
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %22, i32 noundef %idx.025, ptr noundef nonnull %base, ptr noundef nonnull %end, ptr noundef nonnull %size, ptr noundef nonnull %nid_buf, i32 noundef %20) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nid_buf) #18
  %inc = add nuw i32 %idx.025, 1
  %23 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regions, align 4
  %arrayidx12 = getelementptr %struct.memblock_region, ptr %24, i32 %inc
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_memmap(i32 noundef %start_pfn, i32 noundef %end_pfn) unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %2 = xor i32 %1, -1
  %sub1 = add i32 %2, %start_pfn
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub1
  %add.ptr2 = getelementptr %struct.page, ptr %add.ptr, i32 1
  %sub4 = add i32 %2, %end_pfn
  %add.ptr5 = getelementptr %struct.page, ptr %0, i32 %sub4
  %add.ptr6 = getelementptr %struct.page, ptr %add.ptr5, i32 1
  %3 = ptrtoint ptr %add.ptr2 to i32
  %call = tail call i32 @__virt_to_phys(i32 noundef %3) #18
  %add = add i32 %call, 4095
  %and = and i32 %add, -4096
  %4 = ptrtoint ptr %add.ptr6 to i32
  %call7 = tail call i32 @__virt_to_phys(i32 noundef %4) #18
  %and8 = and i32 %call7, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and8, i32 %and)
  %cmp = icmp ugt i32 %and8, %and
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sub9 = sub i32 %and8, %and
  %call10 = tail call i32 @memblock_phys_free(i32 noundef %and, i32 noundef %sub9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memmap_init_reserved_pages() unnamed_addr #8 section ".init.text" align 64 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #18
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #18
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %i, align 8
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef null, ptr noundef nonnull %start, ptr noundef nonnull %end, ptr noundef null)
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %4)
  %cmp.not10 = icmp eq i64 %4, -1
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start, align 4
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @reserve_bootmem_region(i32 noundef %6, i32 noundef %8) #18
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef null, ptr noundef nonnull %start, ptr noundef nonnull %end, ptr noundef null)
  %9 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i, align 8
  %cmp.not = icmp eq i64 %10, -1
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %add.ptr11 = getelementptr %struct.memblock_region, ptr %11, i32 %12
  %cmp212 = icmp ult ptr %11, %add.ptr11
  br i1 %cmp212, label %for.end.for.body3_crit_edge, label %for.end.for.end5_crit_edge

for.end.for.end5_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end5

for.end.for.body3_crit_edge:                      ; preds = %for.end
  br label %for.body3

for.body3:                                        ; preds = %for.inc4.for.body3_crit_edge, %for.end.for.body3_crit_edge
  %region.013 = phi ptr [ %incdec.ptr, %for.inc4.for.body3_crit_edge ], [ %11, %for.end.for.body3_crit_edge ]
  %flags.i = getelementptr inbounds %struct.memblock_region, ptr %region.013, i32 0, i32 2
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body3.for.inc4_crit_edge, label %if.then

for.body3.for.inc4_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc4

if.then:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %region.013 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %region.013, align 4
  %17 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %start, align 4
  %size = getelementptr inbounds %struct.memblock_region, ptr %region.013, i32 0, i32 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %add = add i32 %19, %16
  %20 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %end, align 4
  call void @reserve_bootmem_region(i32 noundef %16, i32 noundef %add) #18
  br label %for.inc4

for.inc4:                                         ; preds = %if.then, %for.body3.for.inc4_crit_edge
  %incdec.ptr = getelementptr %struct.memblock_region, ptr %region.013, i32 1
  %21 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %add.ptr = getelementptr %struct.memblock_region, ptr %21, i32 %22
  %cmp2 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp2, label %for.inc4.for.body3_crit_edge, label %for.inc4.for.end5_crit_edge

for.inc4.for.end5_crit_edge:                      ; preds = %for.inc4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end5

for.inc4.for.body3_crit_edge:                     ; preds = %for.inc4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body3

for.end5:                                         ; preds = %for.inc4.for.end5_crit_edge, %for.end.for.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reserve_bootmem_region(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__free_pages_memory(i32 noundef %start, i32 noundef %end) unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp19 = icmp ult i32 %start, %end
  br i1 %cmp19, label %entry.while.body_crit_edge, label %entry.while.end7_crit_edge

entry.while.end7_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end7

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %entry.while.body_crit_edge
  %start.addr.020 = phi i32 [ %add, %while.end.while.body_crit_edge ], [ %start, %entry.while.body_crit_edge ]
  %0 = tail call i32 @llvm.cttz.i32(i32 %start.addr.020, i1 false) #18, !range !164
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 11)
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2.while.cond2_crit_edge, %while.body
  %order.0 = phi i32 [ %1, %while.body ], [ %dec, %while.cond2.while.cond2_crit_edge ]
  %shl = shl nuw i32 1, %order.0
  %add = add i32 %shl, %start.addr.020
  %cmp3 = icmp ugt i32 %add, %end
  %dec = add i32 %order.0, -1
  br i1 %cmp3, label %while.cond2.while.cond2_crit_edge, label %while.end

while.cond2.while.cond2_crit_edge:                ; preds = %while.cond2
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond2

while.end:                                        ; preds = %while.cond2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %start.addr.020, %3
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %sub
  tail call void @memblock_free_pages(ptr noundef %add.ptr, i32 noundef %start.addr.020, i32 noundef %order.0) #18
  %cmp = icmp ult i32 %add, %end
  br i1 %cmp, label %while.end.while.body_crit_edge, label %while.end.while.end7_crit_edge

while.end.while.end7_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end7

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end7:                                       ; preds = %while.end.while.end7_crit_edge, %entry.while.end7_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memblock_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @memblock_debug_show, ptr noundef %1) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memblock_debug_show(ptr noundef %m, ptr nocapture noundef readnone %private) #2 align 64 {
entry:
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private1 = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %2 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %end, align 4, !annotation !159
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp11.not = icmp eq i32 %4, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regions = getelementptr inbounds %struct.memblock_type, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regions, align 4
  %arrayidx = getelementptr %struct.memblock_region, ptr %6, i32 %i.012
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %size = getelementptr %struct.memblock_region, ptr %6, i32 %i.012, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %add = add i32 %8, -1
  %sub = add i32 %add, %10
  %11 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %end, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %i.012) #18
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, ptr noundef %arrayidx, ptr noundef nonnull %end) #18
  %inc = add nuw i32 %i.012, 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { cold }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !111, !113, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !140, !142, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__ksymtab_contig_page_data, !1, !"__ksymtab_contig_page_data", i1 false, i1 false}
!1 = !{!"../mm/memblock.c", i32 97, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/memblock.c", i32 115, i32 18}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/memblock.c", i32 120, i32 20}
!6 = !{ptr @memblock, !7, !"memblock", i1 false, i1 false}
!7 = !{!"../mm/memblock.c", i32 111, i32 17}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/memblock.c", i32 677, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @memblock_add_node._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @memblock_add_node._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../mm/memblock.c", i32 698, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @memblock_add._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @memblock_add._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../mm/memblock.c", i32 799, i32 2}
!21 = !{ptr @memblock_remove._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @memblock_remove._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../mm/memblock.c", i32 831, i32 2}
!25 = !{ptr @memblock_phys_free._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @memblock_phys_free._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../mm/memblock.c", i32 842, i32 2}
!29 = !{ptr @memblock_reserve._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @memblock_reserve._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../mm/memblock.c", i32 1032, i32 6}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../mm/memblock.c", i32 1129, i32 6}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../mm/memblock.c", i32 1363, i32 6}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../mm/memblock.c", i32 1388, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @memblock_alloc_range_nid._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @memblock_alloc_range_nid._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../mm/memblock.c", i32 1429, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @memblock_phys_alloc_range._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @memblock_phys_alloc_range._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../mm/memblock.c", i32 1530, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @memblock_alloc_exact_nid_raw._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @memblock_alloc_exact_nid_raw._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../mm/memblock.c", i32 1562, i32 2}
!55 = !{ptr @memblock_alloc_try_nid_raw._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @memblock_alloc_try_nid_raw._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../mm/memblock.c", i32 1594, i32 2}
!59 = !{ptr @memblock_alloc_try_nid._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @memblock_alloc_try_nid._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../mm/memblock.c", i32 1619, i32 2}
!63 = !{ptr @memblock_free_late._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @memblock_free_late._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../mm/memblock.c", i32 1708, i32 3}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @memblock_cap_memory_range._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @memblock_cap_memory_range._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @__setup_early_memblock, !71, !"__setup_early_memblock", i1 false, i1 false}
!71 = !{!"../mm/memblock.c", i32 1929, i32 1}
!72 = !{ptr @__initcall__kmod_memblock__272_2156_memblock_init_debugfs6, !73, !"__initcall__kmod_memblock__272_2156_memblock_init_debugfs6", i1 false, i1 false}
!73 = !{!"../mm/memblock.c", i32 2156, i32 1}
!74 = !{ptr @contig_page_data, !75, !"contig_page_data", i1 false, i1 false}
!75 = !{!"../mm/memblock.c", i32 96, i32 30}
!76 = !{ptr @max_low_pfn, !77, !"max_low_pfn", i1 false, i1 false}
!77 = !{!"../mm/memblock.c", i32 100, i32 15}
!78 = !{ptr @min_low_pfn, !79, !"min_low_pfn", i1 false, i1 false}
!79 = !{!"../mm/memblock.c", i32 101, i32 15}
!80 = !{ptr @max_pfn, !81, !"max_pfn", i1 false, i1 false}
!81 = !{!"../mm/memblock.c", i32 102, i32 15}
!82 = !{ptr @max_possible_pfn, !83, !"max_possible_pfn", i1 false, i1 false}
!83 = !{!"../mm/memblock.c", i32 103, i32 20}
!84 = !{ptr @memblock_memory_init_regions, !85, !"memblock_memory_init_regions", i1 false, i1 false}
!85 = !{!"../mm/memblock.c", i32 105, i32 31}
!86 = !{ptr @memblock_reserved_init_regions, !87, !"memblock_reserved_init_regions", i1 false, i1 false}
!87 = !{!"../mm/memblock.c", i32 106, i32 31}
!88 = distinct !{null, !89, !"memblock_debug", i1 false, i1 false}
!89 = !{!"../mm/memblock.c", i32 154, i32 12}
!90 = distinct !{null, !91, !"memblock_can_resize", i1 false, i1 false}
!91 = !{!"../mm/memblock.c", i32 156, i32 12}
!92 = distinct !{null, !93, !"reset_managed_pages_done", i1 false, i1 false}
!93 = !{!"../mm/memblock.c", i32 2084, i32 12}
!94 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../mm/memblock.c", i32 456, i32 3}
!96 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @memblock_double_array._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @memblock_double_array._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.25, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../mm/memblock.c", i32 462, i32 2}
!101 = !{ptr @memblock_double_array._entry.24, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @memblock_double_array._entry_ptr.26, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @memblock_memory_in_slab, !104, !"memblock_memory_in_slab", i1 false, i1 false}
!104 = !{!"../mm/memblock.c", i32 157, i32 12}
!105 = !{ptr @memblock_reserved_in_slab, !106, !"memblock_reserved_in_slab", i1 false, i1 false}
!106 = !{!"../mm/memblock.c", i32 158, i32 12}
!107 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../mm/memblock.c", i32 330, i32 3}
!109 = !{ptr @memblock_find_in_range._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @memblock_find_in_range._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"system_has_some_mirror", i1 false, i1 false}
!112 = !{!"../mm/memblock.c", i32 155, i32 13}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../mm/memblock.c", i32 1487, i32 6}
!115 = distinct !{null, !116, !"memblock_memory", i1 false, i1 false}
!116 = !{!"../mm/memblock.c", i32 141, i32 40}
!117 = !{ptr @.str.28, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../mm/memblock.c", i32 1900, i32 2}
!119 = !{ptr @.str.29, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @__memblock_dump_all._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @__memblock_dump_all._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.31, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../mm/memblock.c", i32 1901, i32 2}
!124 = !{ptr @__memblock_dump_all._entry.30, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @__memblock_dump_all._entry_ptr.32, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.33, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../mm/memblock.c", i32 1879, i32 2}
!128 = !{ptr @.str.34, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @memblock_dump._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @memblock_dump._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.36, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../mm/memblock.c", i32 1893, i32 3}
!133 = !{ptr @memblock_dump._entry.35, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @memblock_dump._entry_ptr.37, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @__setup_str_early_memblock, !71, !"__setup_str_early_memblock", i1 false, i1 false}
!136 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../mm/memblock.c", i32 1925, i32 21}
!138 = !{ptr @.str.39, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../mm/memblock.c", i32 2143, i32 43}
!140 = !{ptr @memblock_debug_fops, !141, !"memblock_debug_fops", i1 false, i1 false}
!141 = !{!"../mm/memblock.c", i32 2139, i32 1}
!142 = !{ptr @.str.40, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../mm/memblock.c", i32 2134, i32 17}
!144 = !{ptr @.str.41, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../mm/memblock.c", i32 2135, i32 17}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"branch_weights", i32 2000, i32 1}
!156 = !{i64 2153991756, i64 2153992234, i64 2153991793, i64 2153991849, i64 2153991883, i64 2153991907, i64 2153991948, i64 2153991969, i64 2153991997, i64 2153992031}
!157 = !{!"branch_weights", i32 1, i32 2000}
!158 = !{i64 2153990174, i64 2153990652, i64 2153990211, i64 2153990267, i64 2153990301, i64 2153990325, i64 2153990366, i64 2153990387, i64 2153990415, i64 2153990449}
!159 = !{!"auto-init"}
!160 = !{i8 0, i8 2}
!161 = !{i64 2149084870, i64 2149084893, i64 2149084925, i64 2149084957, i64 2149084995, i64 2149085025}
!162 = !{i64 2148269854, i64 2148269880, i64 2148269909, i64 2148269943, i64 2148269974, i64 2148269997}
!163 = !{i64 2153988564, i64 2153989042, i64 2153988601, i64 2153988657, i64 2153988691, i64 2153988715, i64 2153988756, i64 2153988777, i64 2153988805, i64 2153988839}
!164 = !{i32 0, i32 33}
