; ModuleID = '/llk/IR_all_yes/kernel/crash_core.c_pt.bc'
source_filename = "../kernel/crash_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+paddr_vmcoreinfo_note\22, \22a\22\09"
module asm "\09.weak\09__crc_paddr_vmcoreinfo_note\09\09\09\09"
module asm "\09.long\09__crc_paddr_vmcoreinfo_note\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_paddr_vmcoreinfo_note:\09\09\09\09\09"
module asm "\09.asciz \09\22paddr_vmcoreinfo_note\22\09\09\09\09\09"
module asm "__kstrtabns_paddr_vmcoreinfo_note:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nodemask_t = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.elf32_note = type { i32, i32, i32 }
%struct.__va_list = type { ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"crashkernel=\00", [19 x i8] zeroinitializer }, align 32
@suffix_tbl = internal unnamed_addr constant [3 x ptr] [ptr @.str.38, ptr @.str.39, ptr null], section ".init.data", align 4
@__setup_str_parse_crashkernel_dummy = internal constant [12 x i8] c"crashkernel\00", section ".init.rodata", align 1
@__setup_parse_crashkernel_dummy = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_crashkernel_dummy, ptr @parse_crashkernel_dummy, i32 1 }, section ".init.setup", align 4
@vmcoreinfo_data = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@vmcoreinfo_size = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@vmcoreinfo_data_safecopy = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vmcoreinfo_note = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CRASHTIME=%lld\0A\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_paddr_vmcoreinfo_note = external dso_local constant [0 x i8], align 1
@__kstrtabns_paddr_vmcoreinfo_note = external dso_local constant [0 x i8], align 1
@__ksymtab_paddr_vmcoreinfo_note = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @paddr_vmcoreinfo_note to i32), ptr @__kstrtab_paddr_vmcoreinfo_note, ptr @__kstrtabns_paddr_vmcoreinfo_note }, section "___ksymtab+paddr_vmcoreinfo_note", align 4
@__initcall__kmod_crash_core__224_493_crash_save_vmcoreinfo_init4 = internal global ptr @crash_save_vmcoreinfo_init, section ".initcall4.init", align 4
@parse_crashkernel_suffix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014crashkernel: memory value expected\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parse_crashkernel_suffix\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/crash_core.c\00", [44 x i8] zeroinitializer }, align 32
@parse_crashkernel_suffix._entry_ptr = internal global ptr @parse_crashkernel_suffix._entry, section ".printk_index", align 4
@parse_crashkernel_suffix._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014crashkernel: unrecognized char: %c\0A\00", [58 x i8] zeroinitializer }, align 32
@parse_crashkernel_suffix._entry_ptr.7 = internal global ptr @parse_crashkernel_suffix._entry.5, section ".printk_index", align 4
@parse_crashkernel_suffix._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_crashkernel_suffix._entry_ptr.9 = internal global ptr @parse_crashkernel_suffix._entry.8, section ".printk_index", align 4
@parse_crashkernel_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014crashkernel: Memory value expected\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parse_crashkernel_mem\00", [42 x i8] zeroinitializer }, align 32
@parse_crashkernel_mem._entry_ptr = internal global ptr @parse_crashkernel_mem._entry, section ".printk_index", align 4
@parse_crashkernel_mem._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014crashkernel: '-' expected\0A\00", [35 x i8] zeroinitializer }, align 32
@parse_crashkernel_mem._entry_ptr.14 = internal global ptr @parse_crashkernel_mem._entry.12, section ".printk_index", align 4
@parse_crashkernel_mem._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_crashkernel_mem._entry_ptr.16 = internal global ptr @parse_crashkernel_mem._entry.15, section ".printk_index", align 4
@parse_crashkernel_mem._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.4, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014crashkernel: end <= start\0A\00", [35 x i8] zeroinitializer }, align 32
@parse_crashkernel_mem._entry_ptr.19 = internal global ptr @parse_crashkernel_mem._entry.17, section ".printk_index", align 4
@parse_crashkernel_mem._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.4, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014crashkernel: ':' expected\0A\00", [35 x i8] zeroinitializer }, align 32
@parse_crashkernel_mem._entry_ptr.22 = internal global ptr @parse_crashkernel_mem._entry.20, section ".printk_index", align 4
@parse_crashkernel_mem._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.4, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014Memory value expected\0A\00", [39 x i8] zeroinitializer }, align 32
@parse_crashkernel_mem._entry_ptr.25 = internal global ptr @parse_crashkernel_mem._entry.23, section ".printk_index", align 4
@parse_crashkernel_mem._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.4, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014crashkernel: invalid size\0A\00", [35 x i8] zeroinitializer }, align 32
@parse_crashkernel_mem._entry_ptr.28 = internal global ptr @parse_crashkernel_mem._entry.26, section ".printk_index", align 4
@parse_crashkernel_mem._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.11, ptr @.str.4, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Memory value expected after '@'\0A\00", [61 x i8] zeroinitializer }, align 32
@parse_crashkernel_mem._entry_ptr.31 = internal global ptr @parse_crashkernel_mem._entry.29, section ".printk_index", align 4
@parse_crashkernel_mem._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.11, ptr @.str.4, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016crashkernel size resulted in zero bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@parse_crashkernel_mem._entry_ptr.34 = internal global ptr @parse_crashkernel_mem._entry.32, section ".printk_index", align 4
@parse_crashkernel_simple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.35, ptr @.str.4, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parse_crashkernel_simple\00", [39 x i8] zeroinitializer }, align 32
@parse_crashkernel_simple._entry_ptr = internal global ptr @parse_crashkernel_simple._entry, section ".printk_index", align 4
@parse_crashkernel_simple._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.35, ptr @.str.4, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_crashkernel_simple._entry_ptr.37 = internal global ptr @parse_crashkernel_simple._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",high\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",low\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VMCOREINFO\00", [21 x i8] zeroinitializer }, align 32
@crash_save_vmcoreinfo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014Memory allocation for vmcoreinfo_data failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"crash_save_vmcoreinfo_init\00", [37 x i8] zeroinitializer }, align 32
@crash_save_vmcoreinfo_init._entry_ptr = internal global ptr @crash_save_vmcoreinfo_init._entry, section ".printk_index", align 4
@crash_save_vmcoreinfo_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014Memory allocation for vmcoreinfo_note failed\0A\00", [48 x i8] zeroinitializer }, align 32
@crash_save_vmcoreinfo_init._entry_ptr.45 = internal global ptr @crash_save_vmcoreinfo_init._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OSRELEASE=%s\0A\00", [18 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BUILD-ID=%20phN\0A\00", [47 x i8] zeroinitializer }, align 32
@vmlinux_build_id = external dso_local global [20 x i8], align 1
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PAGESIZE=%ld\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SYMBOL(%s)=%lx\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_uts_ns\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OFFSET(%s.%s)=%lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uts_namespace\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"node_online_map\00", [16 x i8] zeroinitializer }, align 32
@node_states = external dso_local global [7 x %struct.nodemask_t], align 4
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"swapper_pg_dir\00", [17 x i8] zeroinitializer }, align 32
@swapper_pg_dir = external dso_local global [2048 x [2 x i32]], align 4
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"_stext\00", [25 x i8] zeroinitializer }, align 32
@_stext = external dso_local global [0 x i8], align 1
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vmap_area_list\00", [17 x i8] zeroinitializer }, align 32
@vmap_area_list = external dso_local global %struct.list_head, align 4
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mem_map\00", [24 x i8] zeroinitializer }, align 32
@mem_map = external dso_local global ptr, align 4
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"contig_page_data\00", [47 x i8] zeroinitializer }, align 32
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SIZE(%s)=%lu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"page\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pglist_data\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zone\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"free_area\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list_head\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nodemask_t\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_refcount\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mapping\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lru\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_mapcount\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"private\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"compound_dtor\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"compound_order\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"compound_head\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"node_zones\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_zones\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"node_mem_map\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"node_start_pfn\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"node_spanned_pages\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"node_id\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vm_stat\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spanned_pages\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"free_list\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"next\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prev\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vmap_area\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"va_start\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"list\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LENGTH(%s)=%lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zone.free_area\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"free_area.free_list\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NUMBER(%s)=%ld\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NR_FREE_PAGES\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PG_lru\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PG_private\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PG_swapcache\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PG_swapbacked\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PG_slab\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PG_head_mask\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PAGE_BUDDY_MAPCOUNT_VALUE\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 32, i64 64]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 32, i64 64]
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 278, i32 6 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"vmcoreinfo_data\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 19, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"vmcoreinfo_size\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 20, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant [25 x i8] c"vmcoreinfo_data_safecopy\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 24, i32 23 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"vmcoreinfo_note\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 21, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 359, i32 24 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 172, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 178, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 183, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 54, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 59, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 68, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 73, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 79, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 86, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 91, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 109, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 114, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 134, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 141, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 152, i32 18 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 153, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 337, i32 29 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 397, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 406, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 410, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 411, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 412, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 414, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 415, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 416, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 418, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 420, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 421, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 424, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 425, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 435, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 436, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 437, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 438, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 439, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 440, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 441, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 442, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 443, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 444, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 445, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 446, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 447, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 448, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 449, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 450, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 451, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 453, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 455, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 456, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 457, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 459, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 460, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 461, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 462, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 463, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 464, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 465, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 466, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 468, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 469, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 470, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 471, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 472, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 473, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 474, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 478, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.396 = private constant [23 x i8] c"../kernel/crash_core.c\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 480, i32 2 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__initcall__kmod_crash_core__224_493_crash_save_vmcoreinfo_init4, ptr @__ksymtab_paddr_vmcoreinfo_note, ptr @__setup_parse_crashkernel_dummy, ptr @crash_save_vmcoreinfo_init._entry, ptr @crash_save_vmcoreinfo_init._entry.43, ptr @crash_save_vmcoreinfo_init._entry_ptr, ptr @crash_save_vmcoreinfo_init._entry_ptr.45, ptr @parse_crashkernel_mem._entry, ptr @parse_crashkernel_mem._entry.12, ptr @parse_crashkernel_mem._entry.15, ptr @parse_crashkernel_mem._entry.17, ptr @parse_crashkernel_mem._entry.20, ptr @parse_crashkernel_mem._entry.23, ptr @parse_crashkernel_mem._entry.26, ptr @parse_crashkernel_mem._entry.29, ptr @parse_crashkernel_mem._entry.32, ptr @parse_crashkernel_mem._entry_ptr, ptr @parse_crashkernel_mem._entry_ptr.14, ptr @parse_crashkernel_mem._entry_ptr.16, ptr @parse_crashkernel_mem._entry_ptr.19, ptr @parse_crashkernel_mem._entry_ptr.22, ptr @parse_crashkernel_mem._entry_ptr.25, ptr @parse_crashkernel_mem._entry_ptr.28, ptr @parse_crashkernel_mem._entry_ptr.31, ptr @parse_crashkernel_mem._entry_ptr.34, ptr @parse_crashkernel_simple._entry, ptr @parse_crashkernel_simple._entry.36, ptr @parse_crashkernel_simple._entry_ptr, ptr @parse_crashkernel_simple._entry_ptr.37, ptr @parse_crashkernel_suffix._entry, ptr @parse_crashkernel_suffix._entry.5, ptr @parse_crashkernel_suffix._entry.8, ptr @parse_crashkernel_suffix._entry_ptr, ptr @parse_crashkernel_suffix._entry_ptr.7, ptr @parse_crashkernel_suffix._entry_ptr.9, ptr @.str, ptr @vmcoreinfo_data, ptr @vmcoreinfo_size, ptr @vmcoreinfo_data_safecopy, ptr @vmcoreinfo_note, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcoreinfo_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcoreinfo_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcoreinfo_data_safecopy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmcoreinfo_note to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_suffix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_suffix._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_suffix._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_mem._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_mem._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_mem._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_mem._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_mem._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_mem._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_mem._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_mem._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_simple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_crashkernel_simple._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crash_save_vmcoreinfo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crash_save_vmcoreinfo_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parse_crashkernel(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__parse_crashkernel(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base, ptr noundef null) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__parse_crashkernel(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef writeonly %crash_base, ptr noundef %suffix) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crash_size, null
  %tobool1.not = icmp eq ptr %crash_base, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.body5, label %do.end10, !prof !206

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/crash_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #14, !srcloc !207
  unreachable

do.end10:                                         ; preds = %entry
  %0 = ptrtoint ptr %crash_size to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %crash_size, align 8
  %1 = ptrtoint ptr %crash_base to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %crash_base, align 8
  %call = tail call fastcc ptr @get_last_crashkernel(ptr noundef %cmdline, ptr noundef %suffix) #17
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %add.ptr = getelementptr i8, ptr %call, i32 12
  %tobool15.not = icmp eq ptr %suffix, null
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call fastcc i32 @parse_crashkernel_suffix(ptr noundef %add.ptr, ptr noundef nonnull %crash_size, ptr noundef nonnull %suffix) #17
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call19 = tail call ptr @strchr(ptr noundef %add.ptr, i32 noundef 58)
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end18.if.end25_crit_edge, label %land.lhs.true

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end18
  %call20 = tail call ptr @strchr(ptr noundef %add.ptr, i32 noundef 32)
  %tobool22.not = icmp eq ptr %call20, null
  %cmp = icmp ult ptr %call19, %call20
  %or.cond = select i1 %tobool22.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then23, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = tail call fastcc i32 @parse_crashkernel_mem(ptr noundef %add.ptr, i64 noundef %system_ram, ptr noundef nonnull %crash_size, ptr noundef nonnull %crash_base) #17
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %call26 = tail call fastcc i32 @parse_crashkernel_simple(ptr noundef %add.ptr, ptr noundef nonnull %crash_size, ptr noundef nonnull %crash_base) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23, %if.then16, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then16 ], [ %call24, %if.then23 ], [ %call26, %if.end25 ], [ -22, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parse_crashkernel_high(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__parse_crashkernel(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base, ptr noundef nonnull @.str.38) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parse_crashkernel_low(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__parse_crashkernel(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base, ptr noundef nonnull @.str.39) #17
  ret i32 %call
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_crashkernel_dummy(ptr nocapture noundef readnone %arg) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @append_elf_note(ptr noundef %buf, ptr nocapture noundef readonly %name, i32 noundef %type, ptr nocapture noundef readonly %data, i32 noundef %data_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #18
  %add = add i32 %call, 1
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %buf, align 4
  %n_descsz = getelementptr inbounds %struct.elf32_note, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %n_descsz to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %data_len, ptr %n_descsz, align 4
  %n_type = getelementptr inbounds %struct.elf32_note, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %n_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %n_type, align 4
  %add.ptr = getelementptr i32, ptr %buf, i32 3
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 %add)
  %sub = add i32 %call, 4
  %div22 = lshr i32 %sub, 2
  %add.ptr4 = getelementptr i32, ptr %add.ptr, i32 %div22
  %4 = call ptr @memcpy(ptr %add.ptr4, ptr %data, i32 %data_len)
  %sub6 = add i32 %data_len, 3
  %div723 = lshr i32 %sub6, 2
  %add.ptr8 = getelementptr i32, ptr %add.ptr4, i32 %div723
  ret ptr %add.ptr8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @final_note(ptr nocapture noundef writeonly %buf) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %buf, i32 0, i32 12)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @crash_update_vmcoreinfo_safecopy(ptr noundef %ptr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load ptr, ptr @vmcoreinfo_data, align 4
  %1 = load i32, ptr @vmcoreinfo_size, align 4
  %2 = call ptr @memcpy(ptr %ptr, ptr %0, i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store ptr %ptr, ptr @vmcoreinfo_data_safecopy, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crash_save_vmcoreinfo() local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vmcoreinfo_note, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @vmcoreinfo_data_safecopy, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %1, ptr @vmcoreinfo_data, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call = tail call i64 @ktime_get_real_seconds() #14
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.1, i64 noundef %call)
  %2 = load i32, ptr @vmcoreinfo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end3.return_crit_edge, label %if.end.i

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load ptr, ptr @vmcoreinfo_note, align 4
  %4 = load ptr, ptr @vmcoreinfo_data, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %3, align 4
  %n_descsz.i.i = getelementptr inbounds %struct.elf32_note, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %n_descsz.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %2, ptr %n_descsz.i.i, align 4
  %n_type.i.i = getelementptr inbounds %struct.elf32_note, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %n_type.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %n_type.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 3
  %8 = call ptr @memcpy(ptr %add.ptr.i.i, ptr @.str.40, i32 11)
  %add.ptr4.i.i = getelementptr i32, ptr %3, i32 6
  %9 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr %4, i32 %2)
  %sub6.i.i = add i32 %2, 3
  %div723.i.i = lshr i32 %sub6.i.i, 2
  %add.ptr8.i.i = getelementptr i32, ptr %add.ptr4.i.i, i32 %div723.i.i
  %10 = call ptr @memset(ptr %add.ptr8.i.i, i32 0, i32 12)
  br label %return

return:                                           ; preds = %if.end.i, %if.end3.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmcoreinfo_append_str(ptr noundef %fmt, ...) local_unnamed_addr #7 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #14
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #14
  %1 = call ptr @memset(ptr %buf, i32 255, i32 80)
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vscnprintf(ptr noundef nonnull %buf, i32 noundef 80, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #14
  call void @llvm.va_end(ptr nonnull %args)
  %3 = load i32, ptr @vmcoreinfo_size, align 4
  %sub = sub i32 4096, %3
  %4 = call i32 @llvm.umin.i32(i32 %call, i32 %sub)
  %5 = load ptr, ptr @vmcoreinfo_data, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %3
  %6 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 %4)
  %7 = load i32, ptr @vmcoreinfo_size, align 4
  %add = add i32 %7, %4
  store i32 %add, ptr @vmcoreinfo_size, align 4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_crash_save_vmcoreinfo() local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @paddr_vmcoreinfo_note() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vmcoreinfo_note, align 4
  %1 = ptrtoint ptr %0 to i32
  %call = tail call i32 @__virt_to_phys(i32 noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crash_save_vmcoreinfo_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #14
  %0 = inttoptr i32 %call to ptr
  store ptr %0, ptr @vmcoreinfo_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #19
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @alloc_pages_exact(i32 noundef 4132, i32 noundef 3520) #20
  store ptr %call2, ptr @vmcoreinfo_note, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %1 = load ptr, ptr @vmcoreinfo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  tail call void @free_pages(i32 noundef %2, i32 noundef 0) #14
  store ptr null, ptr @vmcoreinfo_data, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #19
  br label %return

if.end9:                                          ; preds = %if.end
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.46, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.47, ptr noundef nonnull @vmlinux_build_id)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.48, i32 noundef 4096)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef ptrtoint (ptr @init_uts_ns to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.54, i32 noundef ptrtoint (ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 1) to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.55, i32 noundef ptrtoint (ptr @swapper_pg_dir to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.56, i32 noundef ptrtoint (ptr @_stext to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.57, i32 noundef ptrtoint (ptr @vmap_area_list to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.58, i32 noundef ptrtoint (ptr @mem_map to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.59, i32 noundef ptrtoint (ptr @contig_page_data to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 36)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.62, i32 noundef 5504)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.63, i32 noundef 1152)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.64, i32 noundef 52)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.65, i32 noundef 8)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.66, i32 noundef 4)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.67, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.68, i32 noundef 28)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.69, i32 noundef 12)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.70, i32 noundef 4)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.71, i32 noundef 24)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.72, i32 noundef 20)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.73, i32 noundef 8)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.74, i32 noundef 9)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.75, i32 noundef 4)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.76, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.77, i32 noundef 4648)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.78, i32 noundef 4652)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.79, i32 noundef 4660)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.80, i32 noundef 4668)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.81, i32 noundef 4672)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 128)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.82, i32 noundef 1024)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.83, i32 noundef 68)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.84, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.85, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.86, i32 noundef 4)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.89, i32 noundef 20)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 12)
  tail call void @log_buf_vmcoreinfo_setup() #14
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.92, i32 noundef 6)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.95, i32 noundef 4)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.96, i32 noundef 13)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.97, i32 noundef 10)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.98, i32 noundef 19)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.99, i32 noundef 9)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.100, i32 noundef 65536)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.101, i32 noundef -129)
  tail call void @arch_crash_save_vmcoreinfo()
  %3 = load i32, ptr @vmcoreinfo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end9.return_crit_edge, label %if.end.i

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %4 = load ptr, ptr @vmcoreinfo_note, align 4
  %5 = load ptr, ptr @vmcoreinfo_data, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 11, ptr %4, align 4
  %n_descsz.i.i = getelementptr inbounds %struct.elf32_note, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %n_descsz.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %n_descsz.i.i, align 4
  %n_type.i.i = getelementptr inbounds %struct.elf32_note, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %n_type.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %n_type.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %4, i32 3
  %9 = call ptr @memcpy(ptr %add.ptr.i.i, ptr @.str.40, i32 11)
  %add.ptr4.i.i = getelementptr i32, ptr %4, i32 6
  %10 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr %5, i32 %3)
  %sub6.i.i = add i32 %3, 3
  %div723.i.i = lshr i32 %sub6.i.i, 2
  %add.ptr8.i.i = getelementptr i32, ptr %add.ptr4.i.i, i32 %div723.i.i
  %11 = call ptr @memset(ptr %add.ptr8.i.i, i32 0, i32 12)
  br label %return

return:                                           ; preds = %if.end.i, %if.end9.return_crit_edge, %if.then4, %do.end
  %retval.0 = phi i32 [ -12, %if.then4 ], [ -12, %do.end ], [ 0, %if.end9.return_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_last_crashkernel(ptr noundef readonly %cmdline, ptr noundef readonly %suffix) unnamed_addr #10 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strstr(ptr noundef %cmdline, ptr noundef nonnull @.str)
  %tobool.not2 = icmp eq ptr %call, null
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool4.not = icmp eq ptr %suffix, null
  br label %while.body

while.body:                                       ; preds = %next.while.body_crit_edge, %while.body.lr.ph
  %ck_cmdline.06 = phi ptr [ null, %while.body.lr.ph ], [ %ck_cmdline.2, %next.while.body_crit_edge ]
  %p.03 = phi ptr [ %call, %while.body.lr.ph ], [ %call27, %next.while.body_crit_edge ]
  %call1 = tail call ptr @strchr(ptr noundef nonnull %p.03, i32 noundef 32)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 @strlen(ptr noundef nonnull %p.03) #18
  %add.ptr = getelementptr i8, ptr %p.03, i32 %call3
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %end_p.0 = phi ptr [ %call1, %while.body.if.end_crit_edge ], [ %add.ptr, %if.then ]
  br i1 %tobool4.not, label %if.end.for.body_crit_edge, label %if.else

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %inc, 2
  br i1 %exitcond, label %for.cond.next_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.next_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %next

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.01 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x ptr], ptr @suffix_tbl, i32 0, i32 %i.01
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call i32 @strlen(ptr noundef %1) #18
  %idx.neg = sub i32 0, %call8
  %add.ptr9 = getelementptr i8, ptr %end_p.0, i32 %idx.neg
  %call13 = tail call i32 @strncmp(ptr noundef %add.ptr9, ptr noundef %1, i32 noundef %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.body.next_crit_edge, label %for.cond

for.body.next_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %next

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 @strlen(ptr noundef nonnull %suffix) #18
  %idx.neg18 = sub i32 0, %call17
  %add.ptr19 = getelementptr i8, ptr %end_p.0, i32 %idx.neg18
  %call21 = tail call i32 @strncmp(ptr noundef %add.ptr19, ptr noundef nonnull %suffix, i32 noundef %call17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %spec.select = select i1 %tobool22.not, ptr %p.03, ptr %ck_cmdline.06
  br label %next

next:                                             ; preds = %if.else, %for.body.next_crit_edge, %for.cond.next_crit_edge
  %ck_cmdline.2 = phi ptr [ %spec.select, %if.else ], [ %p.03, %for.cond.next_crit_edge ], [ %ck_cmdline.06, %for.body.next_crit_edge ]
  %add.ptr26 = getelementptr i8, ptr %p.03, i32 1
  %call27 = tail call ptr @strstr(ptr noundef %add.ptr26, ptr noundef nonnull @.str)
  %tobool.not = icmp eq ptr %call27, null
  br i1 %tobool.not, label %next.while.end_crit_edge, label %next.while.body_crit_edge

next.while.body_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

next.while.end_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %next.while.end_crit_edge, %entry.while.end_crit_edge
  %ck_cmdline.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %ck_cmdline.2, %next.while.end_crit_edge ]
  ret ptr %ck_cmdline.0.lcssa
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_crashkernel_suffix(ptr noundef %cmdline, ptr nocapture noundef writeonly %crash_size, ptr nocapture noundef readonly %suffix) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %cur = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur) #14
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cmdline, ptr %cur, align 4
  %call = call i64 @memparse(ptr noundef %cmdline, ptr noundef nonnull %cur) #14
  %1 = ptrtoint ptr %crash_size to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call, ptr %crash_size, align 8
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 4
  %cmp = icmp eq ptr %3, %cmdline
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @strlen(ptr noundef %suffix) #18
  %call3 = call i32 @strncmp(ptr noundef %3, ptr noundef %suffix, i32 noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv) #19
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %3, i32 %call2
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %cur, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %do.end21 [
    i8 32, label %if.end10.cleanup_crit_edge
    i8 0, label %if.end10.cleanup_crit_edge30
  ]

if.end10.cleanup_crit_edge30:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %conv12 = zext i8 %8 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv12) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end10.cleanup_crit_edge, %if.end10.cleanup_crit_edge30, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ -22, %do.end21 ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_crashkernel_mem(ptr noundef %cmdline, i64 noundef %system_ram, ptr nocapture noundef %crash_size, ptr nocapture noundef writeonly %crash_base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp, align 4, !annotation !208
  br label %do.body

do.body:                                          ; preds = %do.cond75.do.body_crit_edge, %entry
  %cur.0 = phi ptr [ %cmdline, %entry ], [ %incdec.ptr76, %do.cond75.do.body_crit_edge ]
  %call = call i64 @memparse(ptr noundef %cur.0, ptr noundef nonnull %tmp) #14
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tmp, align 4
  %cmp = icmp eq ptr %cur.0, %2
  br i1 %cmp, label %do.body.cleanup115.sink.split_crit_edge, label %if.end

do.body.cleanup115.sink.split_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split

if.end:                                           ; preds = %do.body
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %4)
  %cmp4.not = icmp eq i8 %4, 45
  br i1 %cmp4.not, label %if.end12, label %if.end.cleanup115.sink.split_crit_edge

if.end.cleanup115.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split

if.end12:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %6)
  %cmp14.not = icmp eq i8 %6, 58
  br i1 %cmp14.not, label %if.end12.if.end46_crit_edge, label %if.then16

if.end12.if.end46_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then16:                                        ; preds = %if.end12
  %call17 = call i64 @memparse(ptr noundef %incdec.ptr, ptr noundef nonnull %tmp) #14
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmp, align 4
  %cmp18 = icmp eq ptr %incdec.ptr, %8
  br i1 %cmp18, label %if.then16.cleanup115.sink.split_crit_edge, label %if.end26

if.then16.cleanup115.sink.split_crit_edge:        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split

if.end26:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %call)
  %cmp27.not = icmp ugt i64 %call17, %call
  br i1 %cmp27.not, label %if.end36, label %if.end26.cleanup115.sink.split_crit_edge

if.end26.cleanup115.sink.split_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split

if.end36:                                         ; preds = %if.end26
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %.pr)
  %cmp38.not = icmp eq i8 %.pr, 58
  br i1 %cmp38.not, label %if.end36.if.end46_crit_edge, label %if.end36.cleanup115.sink.split_crit_edge

if.end36.cleanup115.sink.split_crit_edge:         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.end46:                                         ; preds = %if.end36.if.end46_crit_edge, %if.end12.if.end46_crit_edge
  %cur.1149 = phi ptr [ %8, %if.end36.if.end46_crit_edge ], [ %incdec.ptr, %if.end12.if.end46_crit_edge ]
  %end.0148 = phi i64 [ %call17, %if.end36.if.end46_crit_edge ], [ -1, %if.end12.if.end46_crit_edge ]
  %incdec.ptr47 = getelementptr i8, ptr %cur.1149, i32 1
  %call48 = call i64 @memparse(ptr noundef %incdec.ptr47, ptr noundef nonnull %tmp) #14
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tmp, align 4
  %cmp49 = icmp eq ptr %incdec.ptr47, %11
  br i1 %cmp49, label %if.end46.cleanup115.sink.split_crit_edge, label %if.end57

if.end46.cleanup115.sink.split_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split

if.end57:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_cmp8(i64 %call48, i64 %system_ram)
  %cmp58.not = icmp ult i64 %call48, %system_ram
  br i1 %cmp58.not, label %if.end66, label %if.end57.cleanup115.sink.split_crit_edge

if.end57.cleanup115.sink.split_crit_edge:         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split

if.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %system_ram)
  %cmp67.not = icmp ule i64 %call, %system_ram
  call void @__sanitizer_cov_trace_cmp8(i64 %end.0148, i64 %system_ram)
  %cmp69 = icmp ugt i64 %end.0148, %system_ram
  %or.cond = select i1 %cmp67.not, i1 %cmp69, i1 false
  br i1 %or.cond, label %cleanup, label %do.cond75

cleanup:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %crash_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call48, ptr %crash_size, align 8
  br label %do.end80

do.cond75:                                        ; preds = %if.end66
  %incdec.ptr76 = getelementptr i8, ptr %11, i32 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %11, align 1
  %cmp78 = icmp eq i8 %14, 44
  br i1 %cmp78, label %do.cond75.do.body_crit_edge, label %do.end80thread-pre-split

do.cond75.do.body_crit_edge:                      ; preds = %do.cond75
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end80thread-pre-split:                         ; preds = %do.cond75
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %crash_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %.pr156 = load i64, ptr %crash_size, align 8
  br label %do.end80

do.end80:                                         ; preds = %do.end80thread-pre-split, %cleanup
  %16 = phi i64 [ %.pr156, %do.end80thread-pre-split ], [ %call48, %cleanup ]
  %cur.3 = phi ptr [ %incdec.ptr76, %do.end80thread-pre-split ], [ %11, %cleanup ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp81.not = icmp eq i64 %16, 0
  br i1 %cmp81.not, label %do.end80.cleanup115.sink.split_crit_edge, label %do.end80.while.cond_crit_edge

do.end80.while.cond_crit_edge:                    ; preds = %do.end80
  br label %while.cond

do.end80.cleanup115.sink.split_crit_edge:         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split

while.cond:                                       ; preds = %while.body, %do.end80.while.cond_crit_edge
  %cur.4 = phi ptr [ %incdec.ptr92, %while.body ], [ %cur.3, %do.end80.while.cond_crit_edge ]
  %17 = ptrtoint ptr %cur.4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cur.4, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %18, label %while.body [
    i8 64, label %if.then96
    i8 0, label %while.cond.cleanup115_crit_edge
    i8 32, label %while.cond.cleanup115_crit_edge187
  ]

while.cond.cleanup115_crit_edge187:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

while.cond.cleanup115_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr92 = getelementptr i8, ptr %cur.4, i32 1
  br label %while.cond

if.then96:                                        ; preds = %while.cond
  %incdec.ptr97 = getelementptr i8, ptr %cur.4, i32 1
  %call98 = call i64 @memparse(ptr noundef %incdec.ptr97, ptr noundef nonnull %tmp) #14
  %20 = ptrtoint ptr %crash_base to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call98, ptr %crash_base, align 8
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tmp, align 4
  %cmp99 = icmp eq ptr %incdec.ptr97, %22
  br i1 %cmp99, label %if.then96.cleanup115.sink.split_crit_edge, label %if.then96.cleanup115_crit_edge

if.then96.cleanup115_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.then96.cleanup115.sink.split_crit_edge:        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split

cleanup115.sink.split:                            ; preds = %if.then96.cleanup115.sink.split_crit_edge, %do.end80.cleanup115.sink.split_crit_edge, %if.end57.cleanup115.sink.split_crit_edge, %if.end46.cleanup115.sink.split_crit_edge, %if.end36.cleanup115.sink.split_crit_edge, %if.end26.cleanup115.sink.split_crit_edge, %if.then16.cleanup115.sink.split_crit_edge, %if.end.cleanup115.sink.split_crit_edge, %do.body.cleanup115.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.30, %if.then96.cleanup115.sink.split_crit_edge ], [ @.str.33, %do.end80.cleanup115.sink.split_crit_edge ], [ @.str.10, %do.body.cleanup115.sink.split_crit_edge ], [ @.str.13, %if.end.cleanup115.sink.split_crit_edge ], [ @.str.10, %if.then16.cleanup115.sink.split_crit_edge ], [ @.str.18, %if.end26.cleanup115.sink.split_crit_edge ], [ @.str.21, %if.end36.cleanup115.sink.split_crit_edge ], [ @.str.24, %if.end46.cleanup115.sink.split_crit_edge ], [ @.str.27, %if.end57.cleanup115.sink.split_crit_edge ]
  %retval.2.ph = phi i32 [ -22, %if.then96.cleanup115.sink.split_crit_edge ], [ 0, %do.end80.cleanup115.sink.split_crit_edge ], [ -22, %do.body.cleanup115.sink.split_crit_edge ], [ -22, %if.end.cleanup115.sink.split_crit_edge ], [ -22, %if.then16.cleanup115.sink.split_crit_edge ], [ -22, %if.end26.cleanup115.sink.split_crit_edge ], [ -22, %if.end36.cleanup115.sink.split_crit_edge ], [ -22, %if.end46.cleanup115.sink.split_crit_edge ], [ -22, %if.end57.cleanup115.sink.split_crit_edge ]
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.27.sink) #19
  br label %cleanup115

cleanup115:                                       ; preds = %cleanup115.sink.split, %if.then96.cleanup115_crit_edge, %while.cond.cleanup115_crit_edge, %while.cond.cleanup115_crit_edge187
  %retval.2 = phi i32 [ 0, %if.then96.cleanup115_crit_edge ], [ %retval.2.ph, %cleanup115.sink.split ], [ 0, %while.cond.cleanup115_crit_edge ], [ 0, %while.cond.cleanup115_crit_edge187 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_crashkernel_simple(ptr noundef %cmdline, ptr nocapture noundef writeonly %crash_size, ptr nocapture noundef writeonly %crash_base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %cur = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur) #14
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cmdline, ptr %cur, align 4
  %call = call i64 @memparse(ptr noundef %cmdline, ptr noundef nonnull %cur) #14
  %1 = ptrtoint ptr %crash_size to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call, ptr %crash_size, align 8
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 4
  %cmp = icmp eq ptr %3, %cmdline
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %5, label %do.end15 [
    i8 64, label %if.then4
    i8 32, label %if.end.cleanup_crit_edge
    i8 0, label %if.end.cleanup_crit_edge23
  ]

if.end.cleanup_crit_edge23:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %3, i32 1
  %call5 = call i64 @memparse(ptr noundef %add.ptr, ptr noundef nonnull %cur) #14
  %7 = ptrtoint ptr %crash_base to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call5, ptr %crash_base, align 8
  br label %cleanup

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %5 to i32
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then4, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge23 ], [ 0, %if.then4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @log_buf_vmcoreinfo_setup() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { cold nofree nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !78, !80, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !175, !177, !178, !180, !182, !183, !185, !187, !189, !191, !193, !195}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/crash_core.c", i32 278, i32 6}
!2 = !{ptr @__setup_parse_crashkernel_dummy, !3, !"__setup_parse_crashkernel_dummy", i1 false, i1 false}
!3 = !{!"../kernel/crash_core.c", i32 307, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/crash_core.c", i32 359, i32 24}
!6 = !{ptr @__ksymtab_paddr_vmcoreinfo_note, !7, !"__ksymtab_paddr_vmcoreinfo_note", i1 false, i1 false}
!7 = !{!"../kernel/crash_core.c", i32 391, i32 1}
!8 = !{ptr @__initcall__kmod_crash_core__224_493_crash_save_vmcoreinfo_init4, !9, !"__initcall__kmod_crash_core__224_493_crash_save_vmcoreinfo_init4", i1 false, i1 false}
!9 = !{!"../kernel/crash_core.c", i32 493, i32 1}
!10 = !{ptr @vmcoreinfo_data, !11, !"vmcoreinfo_data", i1 false, i1 false}
!11 = !{!"../kernel/crash_core.c", i32 19, i32 16}
!12 = !{ptr @vmcoreinfo_size, !13, !"vmcoreinfo_size", i1 false, i1 false}
!13 = !{!"../kernel/crash_core.c", i32 20, i32 8}
!14 = !{ptr @vmcoreinfo_note, !15, !"vmcoreinfo_note", i1 false, i1 false}
!15 = !{!"../kernel/crash_core.c", i32 21, i32 6}
!16 = !{ptr @vmcoreinfo_data_safecopy, !17, !"vmcoreinfo_data_safecopy", i1 false, i1 false}
!17 = !{!"../kernel/crash_core.c", i32 24, i32 23}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/crash_core.c", i32 172, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @parse_crashkernel_suffix._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @parse_crashkernel_suffix._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/crash_core.c", i32 178, i32 3}
!26 = !{ptr @parse_crashkernel_suffix._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @parse_crashkernel_suffix._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @parse_crashkernel_suffix._entry.8, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../kernel/crash_core.c", i32 183, i32 3}
!30 = !{ptr @parse_crashkernel_suffix._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/crash_core.c", i32 54, i32 4}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @parse_crashkernel_mem._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @parse_crashkernel_mem._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/crash_core.c", i32 59, i32 4}
!38 = !{ptr @parse_crashkernel_mem._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @parse_crashkernel_mem._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @parse_crashkernel_mem._entry.15, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../kernel/crash_core.c", i32 68, i32 5}
!42 = !{ptr @parse_crashkernel_mem._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/crash_core.c", i32 73, i32 5}
!45 = !{ptr @parse_crashkernel_mem._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @parse_crashkernel_mem._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/crash_core.c", i32 79, i32 4}
!49 = !{ptr @parse_crashkernel_mem._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @parse_crashkernel_mem._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/crash_core.c", i32 86, i32 4}
!53 = !{ptr @parse_crashkernel_mem._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @parse_crashkernel_mem._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/crash_core.c", i32 91, i32 4}
!57 = !{ptr @parse_crashkernel_mem._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @parse_crashkernel_mem._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/crash_core.c", i32 109, i32 5}
!61 = !{ptr @parse_crashkernel_mem._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @parse_crashkernel_mem._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/crash_core.c", i32 114, i32 3}
!65 = !{ptr @parse_crashkernel_mem._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @parse_crashkernel_mem._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../kernel/crash_core.c", i32 134, i32 3}
!69 = !{ptr @parse_crashkernel_simple._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @parse_crashkernel_simple._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @parse_crashkernel_simple._entry.36, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../kernel/crash_core.c", i32 141, i32 3}
!73 = !{ptr @parse_crashkernel_simple._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/crash_core.c", i32 152, i32 18}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/crash_core.c", i32 153, i32 18}
!78 = !{ptr @suffix_tbl, !79, !"suffix_tbl", i1 false, i1 false}
!79 = !{!"../kernel/crash_core.c", i32 151, i32 25}
!80 = !{ptr @__setup_str_parse_crashkernel_dummy, !3, !"__setup_str_parse_crashkernel_dummy", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/crash_core.c", i32 337, i32 29}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../kernel/crash_core.c", i32 397, i32 3}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @crash_save_vmcoreinfo_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @crash_save_vmcoreinfo_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../kernel/crash_core.c", i32 406, i32 3}
!90 = !{ptr @crash_save_vmcoreinfo_init._entry.43, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @crash_save_vmcoreinfo_init._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../kernel/crash_core.c", i32 410, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../kernel/crash_core.c", i32 411, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/crash_core.c", i32 412, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/crash_core.c", i32 414, i32 2}
!100 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../kernel/crash_core.c", i32 415, i32 2}
!103 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../kernel/crash_core.c", i32 416, i32 2}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../kernel/crash_core.c", i32 418, i32 2}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../kernel/crash_core.c", i32 420, i32 2}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../kernel/crash_core.c", i32 421, i32 2}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../kernel/crash_core.c", i32 424, i32 2}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../kernel/crash_core.c", i32 425, i32 2}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../kernel/crash_core.c", i32 435, i32 2}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/crash_core.c", i32 436, i32 2}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/crash_core.c", i32 437, i32 2}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../kernel/crash_core.c", i32 438, i32 2}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../kernel/crash_core.c", i32 439, i32 2}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../kernel/crash_core.c", i32 440, i32 2}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/crash_core.c", i32 441, i32 2}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../kernel/crash_core.c", i32 442, i32 2}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/crash_core.c", i32 443, i32 2}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../kernel/crash_core.c", i32 444, i32 2}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../kernel/crash_core.c", i32 445, i32 2}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../kernel/crash_core.c", i32 446, i32 2}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../kernel/crash_core.c", i32 447, i32 2}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../kernel/crash_core.c", i32 448, i32 2}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../kernel/crash_core.c", i32 449, i32 2}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../kernel/crash_core.c", i32 450, i32 2}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../kernel/crash_core.c", i32 451, i32 2}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../kernel/crash_core.c", i32 453, i32 2}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../kernel/crash_core.c", i32 455, i32 2}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../kernel/crash_core.c", i32 456, i32 2}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../kernel/crash_core.c", i32 457, i32 2}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../kernel/crash_core.c", i32 459, i32 2}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/crash_core.c", i32 460, i32 2}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../kernel/crash_core.c", i32 461, i32 2}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../kernel/crash_core.c", i32 462, i32 2}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../kernel/crash_core.c", i32 463, i32 2}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/crash_core.c", i32 464, i32 2}
!172 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../kernel/crash_core.c", i32 465, i32 2}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../kernel/crash_core.c", i32 466, i32 2}
!177 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../kernel/crash_core.c", i32 468, i32 2}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/crash_core.c", i32 469, i32 2}
!182 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../kernel/crash_core.c", i32 470, i32 2}
!185 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../kernel/crash_core.c", i32 471, i32 2}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../kernel/crash_core.c", i32 472, i32 2}
!189 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../kernel/crash_core.c", i32 473, i32 2}
!191 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../kernel/crash_core.c", i32 474, i32 2}
!193 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../kernel/crash_core.c", i32 478, i32 2}
!195 = !{ptr @.str.101, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../kernel/crash_core.c", i32 480, i32 2}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!206 = !{!"branch_weights", i32 1, i32 2000}
!207 = !{i64 2153440531, i64 2153441015, i64 2153440568, i64 2153440624, i64 2153440658, i64 2153440682, i64 2153440723, i64 2153440744, i64 2153440772, i64 2153440806}
!208 = !{!"auto-init"}
