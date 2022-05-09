; ModuleID = '/llk/IR_all_yes/mm/debug.c_pt.bc'
source_filename = "../mm/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dump_page\22, \22a\22\09"
module asm "\09.weak\09__crc_dump_page\09\09\09\09"
module asm "\09.long\09__crc_dump_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_page:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_page\22\09\09\09\09\09"
module asm "__kstrtabns_dump_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dump_vma\22, \22a\22\09"
module asm "\09.weak\09__crc_dump_vma\09\09\09\09"
module asm "\09.long\09__crc_dump_vma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_vma:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_vma\22\09\09\09\09\09"
module asm "__kstrtabns_dump_vma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+page_init_poison\22, \22a\22\09"
module asm "\09.weak\09__crc_page_init_poison\09\09\09\09"
module asm "\09.long\09__crc_page_init_poison\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_init_poison:\09\09\09\09\09"
module asm "\09.asciz \09\22page_init_poison\22\09\09\09\09\09"
module asm "__kstrtabns_page_init_poison:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.trace_print_flags = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.99, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.99 = type { %struct.atomic_t }
%struct.anon.93 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.anon.105 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.76, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compaction\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"memory_failure\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"memory_hotplug\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"syscall_or_cpuset\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mempolicy_mbind\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"numa_misplaced\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"contig_range\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"longterm_pin\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"demotion\00", [23 x i8] zeroinitializer }, align 32
@migrate_reason_names = dso_local global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"locked\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waiters\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"referenced\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uptodate\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dirty\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lru\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"workingset\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slab\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"owner_priv_1\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"arch_1\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"private\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"private_2\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeback\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"head\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mappedtodisk\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reclaim\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"swapbacked\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unevictable\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlocked\00", [24 x i8] zeroinitializer }, align 32
@pageflag_names = dso_local constant { [23 x %struct.trace_print_flags], [40 x i8] } { [23 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.9 }, %struct.trace_print_flags { i32 128, ptr @.str.10 }, %struct.trace_print_flags { i32 256, ptr @.str.11 }, %struct.trace_print_flags { i32 2, ptr @.str.12 }, %struct.trace_print_flags { i32 4, ptr @.str.13 }, %struct.trace_print_flags { i32 8, ptr @.str.14 }, %struct.trace_print_flags { i32 16, ptr @.str.15 }, %struct.trace_print_flags { i32 32, ptr @.str.16 }, %struct.trace_print_flags { i32 64, ptr @.str.17 }, %struct.trace_print_flags { i32 512, ptr @.str.18 }, %struct.trace_print_flags { i32 1024, ptr @.str.19 }, %struct.trace_print_flags { i32 2048, ptr @.str.20 }, %struct.trace_print_flags { i32 4096, ptr @.str.21 }, %struct.trace_print_flags { i32 8192, ptr @.str.22 }, %struct.trace_print_flags { i32 16384, ptr @.str.23 }, %struct.trace_print_flags { i32 32768, ptr @.str.24 }, %struct.trace_print_flags { i32 65536, ptr @.str.25 }, %struct.trace_print_flags { i32 131072, ptr @.str.26 }, %struct.trace_print_flags { i32 262144, ptr @.str.27 }, %struct.trace_print_flags { i32 524288, ptr @.str.28 }, %struct.trace_print_flags { i32 1048576, ptr @.str.29 }, %struct.trace_print_flags { i32 2097152, ptr @.str.30 }, %struct.trace_print_flags zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GFP_TRANSHUGE\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GFP_TRANSHUGE_LIGHT\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GFP_HIGHUSER_MOVABLE\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GFP_HIGHUSER\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GFP_USER\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GFP_KERNEL_ACCOUNT\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GFP_KERNEL\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GFP_NOFS\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GFP_ATOMIC\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GFP_NOIO\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GFP_NOWAIT\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GFP_DMA\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__GFP_HIGHMEM\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GFP_DMA32\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__GFP_HIGH\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__GFP_ATOMIC\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"__GFP_IO\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"__GFP_FS\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__GFP_NOWARN\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__GFP_RETRY_MAYFAIL\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__GFP_NOFAIL\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__GFP_NORETRY\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__GFP_COMP\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__GFP_ZERO\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__GFP_NOMEMALLOC\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__GFP_MEMALLOC\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__GFP_HARDWALL\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__GFP_THISNODE\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__GFP_RECLAIMABLE\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__GFP_MOVABLE\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__GFP_ACCOUNT\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__GFP_WRITE\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__GFP_RECLAIM\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__GFP_DIRECT_RECLAIM\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__GFP_KSWAPD_RECLAIM\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__GFP_ZEROTAGS\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__GFP_SKIP_KASAN_POISON\00", [40 x i8] zeroinitializer }, align 32
@gfpflag_names = dso_local constant { [38 x %struct.trace_print_flags], [80 x i8] } { [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.31 }, %struct.trace_print_flags { i32 18620618, ptr @.str.32 }, %struct.trace_print_flags { i32 17829066, ptr @.str.33 }, %struct.trace_print_flags { i32 1051842, ptr @.str.34 }, %struct.trace_print_flags { i32 1051840, ptr @.str.35 }, %struct.trace_print_flags { i32 4197568, ptr @.str.36 }, %struct.trace_print_flags { i32 3264, ptr @.str.37 }, %struct.trace_print_flags { i32 3136, ptr @.str.38 }, %struct.trace_print_flags { i32 2592, ptr @.str.39 }, %struct.trace_print_flags { i32 3072, ptr @.str.40 }, %struct.trace_print_flags { i32 2048, ptr @.str.41 }, %struct.trace_print_flags { i32 1, ptr @.str.42 }, %struct.trace_print_flags { i32 2, ptr @.str.43 }, %struct.trace_print_flags { i32 4, ptr @.str.44 }, %struct.trace_print_flags { i32 32, ptr @.str.45 }, %struct.trace_print_flags { i32 512, ptr @.str.46 }, %struct.trace_print_flags { i32 64, ptr @.str.47 }, %struct.trace_print_flags { i32 128, ptr @.str.48 }, %struct.trace_print_flags { i32 8192, ptr @.str.49 }, %struct.trace_print_flags { i32 16384, ptr @.str.50 }, %struct.trace_print_flags { i32 32768, ptr @.str.51 }, %struct.trace_print_flags { i32 65536, ptr @.str.52 }, %struct.trace_print_flags { i32 262144, ptr @.str.53 }, %struct.trace_print_flags { i32 256, ptr @.str.54 }, %struct.trace_print_flags { i32 524288, ptr @.str.55 }, %struct.trace_print_flags { i32 131072, ptr @.str.56 }, %struct.trace_print_flags { i32 1048576, ptr @.str.57 }, %struct.trace_print_flags { i32 2097152, ptr @.str.58 }, %struct.trace_print_flags { i32 16, ptr @.str.59 }, %struct.trace_print_flags { i32 8, ptr @.str.60 }, %struct.trace_print_flags { i32 4194304, ptr @.str.61 }, %struct.trace_print_flags { i32 4096, ptr @.str.62 }, %struct.trace_print_flags { i32 3072, ptr @.str.63 }, %struct.trace_print_flags { i32 1024, ptr @.str.64 }, %struct.trace_print_flags { i32 2048, ptr @.str.65 }, %struct.trace_print_flags { i32 8388608, ptr @.str.66 }, %struct.trace_print_flags { i32 16777216, ptr @.str.67 }, %struct.trace_print_flags zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exec\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shared\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mayread\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maywrite\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mayexec\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mayshare\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"growsdown\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uffd_missing\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pfnmap\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uffd_wp\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"seqread\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"randread\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dontcopy\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dontexpand\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lockonfault\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"account\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"noreserve\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hugetlb\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wipeonfork\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dontdump\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mixedmap\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hugepage\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nohugepage\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mergeable\00", [22 x i8] zeroinitializer }, align 32
@vmaflag_names = dso_local constant { [31 x %struct.trace_print_flags], [40 x i8] } { [31 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.68 }, %struct.trace_print_flags { i32 2, ptr @.str.69 }, %struct.trace_print_flags { i32 4, ptr @.str.70 }, %struct.trace_print_flags { i32 8, ptr @.str.71 }, %struct.trace_print_flags { i32 16, ptr @.str.72 }, %struct.trace_print_flags { i32 32, ptr @.str.73 }, %struct.trace_print_flags { i32 64, ptr @.str.74 }, %struct.trace_print_flags { i32 128, ptr @.str.75 }, %struct.trace_print_flags { i32 256, ptr @.str.76 }, %struct.trace_print_flags { i32 512, ptr @.str.77 }, %struct.trace_print_flags { i32 1024, ptr @.str.78 }, %struct.trace_print_flags { i32 4096, ptr @.str.79 }, %struct.trace_print_flags { i32 8192, ptr @.str.9 }, %struct.trace_print_flags { i32 16384, ptr @.str.80 }, %struct.trace_print_flags { i32 32768, ptr @.str.81 }, %struct.trace_print_flags { i32 65536, ptr @.str.82 }, %struct.trace_print_flags { i32 131072, ptr @.str.83 }, %struct.trace_print_flags { i32 262144, ptr @.str.84 }, %struct.trace_print_flags { i32 524288, ptr @.str.85 }, %struct.trace_print_flags { i32 1048576, ptr @.str.86 }, %struct.trace_print_flags { i32 2097152, ptr @.str.87 }, %struct.trace_print_flags { i32 4194304, ptr @.str.88 }, %struct.trace_print_flags { i32 8388608, ptr @.str.89 }, %struct.trace_print_flags { i32 16777216, ptr @.str.20 }, %struct.trace_print_flags { i32 33554432, ptr @.str.90 }, %struct.trace_print_flags { i32 67108864, ptr @.str.91 }, %struct.trace_print_flags { i32 268435456, ptr @.str.92 }, %struct.trace_print_flags { i32 536870912, ptr @.str.93 }, %struct.trace_print_flags { i32 1073741824, ptr @.str.94 }, %struct.trace_print_flags { i32 -2147483648, ptr @.str.95 }, %struct.trace_print_flags zeroinitializer], [40 x i8] zeroinitializer }, align 32
@dump_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.98, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014page:%p is uninitialized and poisoned\00", [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_page\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mm/debug.c\00", [21 x i8] zeroinitializer }, align 32
@dump_page._entry_ptr = internal global ptr @dump_page._entry, section ".printk_index", align 4
@dump_page._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.97, ptr @.str.98, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014page dumped because: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@dump_page._entry_ptr.101 = internal global ptr @dump_page._entry.99, section ".printk_index", align 4
@__kstrtab_dump_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_page = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_page to i32), ptr @__kstrtab_dump_page, ptr @__kstrtabns_dump_page }, section "___ksymtab+dump_page", align 4
@dump_vma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.98, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [141 x i8], [51 x i8] } { [141 x i8] c"\010vma %px start %px end %px\0Anext %px prev %px mm %px\0Aprot %lx anon_vma %px vm_ops %px\0Apgoff %lx file %px private_data %px\0Aflags: %#lx(%pGv)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_vma\00", [23 x i8] zeroinitializer }, align 32
@dump_vma._entry_ptr = internal global ptr @dump_vma._entry, section ".printk_index", align 4
@__kstrtab_dump_vma = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_vma = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_vma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_vma to i32), ptr @__kstrtab_dump_vma, ptr @__kstrtabns_dump_vma }, section "___ksymtab+dump_vma", align 4
@dump_mm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.98, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [571 x i8], [133 x i8] } { [571 x i8] c"\010mm %px mmap %px seqnum %llu task_size %lu\0Aget_unmapped_area %px\0Ammap_base %lu mmap_legacy_base %lu highest_vm_end %lu\0Apgd %px mm_users %d mm_count %d pgtables_bytes %lu map_count %d\0Ahiwater_rss %lx hiwater_vm %lx total_vm %lx locked_vm %lx\0Apinned_vm %llx data_vm %lx exec_vm %lx stack_vm %lx\0Astart_code %lx end_code %lx start_data %lx end_data %lx\0Astart_brk %lx brk %lx start_stack %lx\0Aarg_start %lx arg_end %lx env_start %lx env_end %lx\0Abinfmt %px flags %lx\0Aioctx_table %px\0Aowner %px exe_file %px\0Anotifier_subscriptions %px\0Atlb_flush_pending %d\0Adef_flags: %#lx(%pGv)\0A\00", [133 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dump_mm\00", [24 x i8] zeroinitializer }, align 32
@dump_mm._entry_ptr = internal global ptr @dump_mm._entry, section ".printk_index", align 4
@__setup_str_setup_vm_debug = internal constant [9 x i8] c"vm_debug\00", section ".init.rodata", align 1
@__setup_setup_vm_debug = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_vm_debug, ptr @setup_vm_debug, i32 0 }, section ".init.setup", align 4
@page_init_poisoning = internal unnamed_addr global i8 1, section ".data..read_mostly", align 1
@__kstrtab_page_init_poison = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_init_poison = external dso_local constant [0 x i8], align 1
@__ksymtab_page_init_poison = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_init_poison to i32), ptr @__kstrtab_page_init_poison, ptr @__kstrtabns_page_init_poison }, section "___ksymtab_gpl+page_init_poison", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.106 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__dump_page._entry = internal constant %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.98, i32 93, ptr null, ptr null }, align 1
@.str.107 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014page:%p refcount:%d mapcount:%d mapping:%p index:%#lx pfn:%#lx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__dump_page\00", [20 x i8] zeroinitializer }, align 32
@__dump_page._entry_ptr = internal global ptr @__dump_page._entry, section ".printk_index", align 4
@__dump_page._entry.109 = internal constant %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.98, i32 99, ptr null, ptr null }, align 1
@.str.110 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014head:%p order:%u compound_mapcount:%d compound_pincount:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@__dump_page._entry_ptr.111 = internal global ptr @__dump_page._entry.109, section ".printk_index", align 4
@__dump_page._entry.112 = internal constant %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.98, i32 103, ptr null, ptr null }, align 1
@.str.113 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014head:%p order:%u compound_mapcount:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@__dump_page._entry_ptr.114 = internal global ptr @__dump_page._entry.112, section ".printk_index", align 4
@__dump_page._entry.115 = internal constant %struct.pi_entry { ptr @.str.116, ptr @.str.108, ptr @.str.98, i32 109, ptr null, ptr null }, align 1
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\014memcg:%lx\0A\00", [19 x i8] zeroinitializer }, align 32
@__dump_page._entry_ptr.117 = internal global ptr @__dump_page._entry.115, section ".printk_index", align 4
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ksm \00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"anon \00", [26 x i8] zeroinitializer }, align 32
@__dump_page._entry.120 = internal constant %struct.pi_entry { ptr @.str.121, ptr @.str.108, ptr @.str.98, i32 120, ptr null, ptr null }, align 1
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\014%sflags: %pGp%s\0A\00", [45 x i8] zeroinitializer }, align 32
@__dump_page._entry_ptr.122 = internal global ptr @__dump_page._entry.120, section ".printk_index", align 4
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" CMA\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raw: \00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"head: \00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@page_owner_inited = external dso_local global %struct.static_key_false, align 4
@setup_vm_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.98, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013vm_debug option '%c' unknown. skipped\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_vm_debug\00", [17 x i8] zeroinitializer }, align 32
@setup_vm_debug._entry_ptr = internal global ptr @setup_vm_debug._entry, section ".printk_index", align 4
@setup_vm_debug._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.98, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014Page struct poisoning disabled by kernel command line option 'vm_debug'\0A\00", [53 x i8] zeroinitializer }, align 32
@setup_vm_debug._entry_ptr.133 = internal global ptr @setup_vm_debug._entry.131, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 31, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"migrate_reason_names\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 30, i32 13 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 35, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [15 x i8] c"pageflag_names\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 34, i32 32 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 40, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [14 x i8] c"gfpflag_names\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 39, i32 32 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 45, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [14 x i8] c"vmaflag_names\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 44, i32 32 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 133, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 137, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 146, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 162, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 62, i32 15 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 91, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 96, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 101, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 109, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 112, i32 10 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 114, i32 10 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 119, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 121, i32 17 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 121, i32 31 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 125, i32 32 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 428, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 698, i32 1 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 247, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.528 = private constant [14 x i8] c"../mm/debug.c\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 255, i32 3 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__dump_page._entry, ptr @__dump_page._entry.109, ptr @__dump_page._entry.112, ptr @__dump_page._entry.115, ptr @__dump_page._entry.120, ptr @__dump_page._entry_ptr, ptr @__dump_page._entry_ptr.111, ptr @__dump_page._entry_ptr.114, ptr @__dump_page._entry_ptr.117, ptr @__dump_page._entry_ptr.122, ptr @__ksymtab_dump_page, ptr @__ksymtab_dump_vma, ptr @__ksymtab_page_init_poison, ptr @__setup_setup_vm_debug, ptr @dump_mm._entry, ptr @dump_mm._entry_ptr, ptr @dump_page._entry, ptr @dump_page._entry.99, ptr @dump_page._entry_ptr, ptr @dump_page._entry_ptr.101, ptr @dump_vma._entry, ptr @dump_vma._entry_ptr, ptr @setup_vm_debug._entry, ptr @setup_vm_debug._entry.131, ptr @setup_vm_debug._entry_ptr, ptr @setup_vm_debug._entry_ptr.133, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @migrate_reason_names, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @pageflag_names, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @gfpflag_names, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @vmaflag_names, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @migrate_reason_names to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pageflag_names to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfpflag_names to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmaflag_names to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_page._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_vma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 571, i32 704, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_vm_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_vm_debug._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_page(ptr noundef %page, ptr noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, -1
  br i1 %cmp.i.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %page) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i80 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not.i81 = icmp eq i32 %and.i80, 0
  br i1 %tobool.not.i81, label %if.end.i84, label %if.then.i83, !prof !195

if.then.i83:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i82 = add i32 %4, -1
  br label %_compound_head.exit86

if.end.i84:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit86

_compound_head.exit86:                            ; preds = %if.end.i84, %if.then.i83
  %retval.0.i85 = phi i32 [ %sub.i82, %if.then.i83 ], [ %5, %if.end.i84 ]
  %6 = inttoptr i32 %retval.0.i85 to ptr
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %page, align 4
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %_compound_head.exit86.PageCompound.exit.i_crit_edge

_compound_head.exit86.PageCompound.exit.i_crit_edge: ; preds = %_compound_head.exit86
  call void @__sanitizer_cov_trace_pc() #7
  br label %PageCompound.exit.i

lor.rhs.i.i:                                      ; preds = %_compound_head.exit86
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %11, 1
  br label %PageCompound.exit.i

PageCompound.exit.i:                              ; preds = %lor.rhs.i.i, %_compound_head.exit86.PageCompound.exit.i_crit_edge
  %12 = phi i32 [ 1, %_compound_head.exit86.PageCompound.exit.i_crit_edge ], [ %and.i.i.i, %lor.rhs.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %14
  %call2.i = tail call i32 @get_pfnblock_flags_mask(ptr noundef %page, i32 noundef %add.i, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call2.i)
  %cmp.i13 = icmp eq i32 %call2.i, 4
  %cmp4.i = icmp ule ptr %6, %page
  %add.ptr.i = getelementptr %struct.page, ptr %6, i32 2048
  %cmp5.not.i = icmp ugt ptr %add.ptr.i, %page
  %or.cond.i = and i1 %cmp4.i, %cmp5.not.i
  br i1 %or.cond.i, label %if.else10.i, label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %mapping6.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %mapping6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapping6.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %and9.i = and i32 %17, -4
  %18 = inttoptr i32 %and9.i to ptr
  %mapping.0.i = select i1 %tobool7.not.i, ptr %18, ptr null
  br label %if.end12.i

if.else10.i:                                      ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i = icmp ne i32 %12, 0
  %call11.i = tail call ptr @page_mapping(ptr noundef %page) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else10.i, %if.then.i
  %compound.0.off0.i = phi i1 [ false, %if.then.i ], [ %tobool.i, %if.else10.i ]
  %mapping.1.i = phi ptr [ %mapping.0.i, %if.then.i ], [ %call11.i, %if.else10.i ]
  %head.0.i = phi ptr [ %page, %if.then.i ], [ %6, %if.else10.i ]
  %19 = getelementptr inbounds %struct.page, ptr %head.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i73 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.not.i74 = icmp eq i32 %and.i73, 0
  br i1 %tobool.not.i74, label %if.end.i77, label %if.then.i76, !prof !195

if.then.i76:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i75 = add i32 %21, -1
  br label %_compound_head.exit79

if.end.i77:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %head.0.i to i32
  br label %_compound_head.exit79

_compound_head.exit79:                            ; preds = %if.end.i77, %if.then.i76
  %retval.0.i78 = phi i32 [ %sub.i75, %if.then.i76 ], [ %22, %if.end.i77 ]
  %23 = inttoptr i32 %retval.0.i78 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i71.not = icmp eq i32 %25, -1
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %19, align 4
  %and.i64 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  br i1 %cmp.i71.not, label %if.then.i.i, label %PageSlab.exit.i, !prof !196

if.then.i.i:                                      ; preds = %_compound_head.exit79
  br i1 %tobool.not.i65, label %if.end.i68, label %if.then.i67, !prof !195

if.then.i67:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i66 = add i32 %27, -1
  br label %_compound_head.exit70

if.end.i68:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %head.0.i to i32
  br label %_compound_head.exit70

_compound_head.exit70:                            ; preds = %if.end.i68, %if.then.i67
  %retval.0.i69 = phi i32 [ %sub.i66, %if.then.i67 ], [ %28, %if.end.i68 ]
  %29 = inttoptr i32 %retval.0.i69 to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.127) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #5, !srcloc !197
  unreachable

PageSlab.exit.i:                                  ; preds = %_compound_head.exit79
  br i1 %tobool.not.i65, label %if.end.i62, label %if.then.i61, !prof !195

if.then.i61:                                      ; preds = %PageSlab.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add i32 %27, -1
  br label %_compound_head.exit

if.end.i62:                                       ; preds = %PageSlab.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %head.0.i to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i62, %if.then.i61
  %retval.0.i63 = phi i32 [ %sub.i, %if.then.i61 ], [ %30, %if.end.i62 ]
  %31 = inttoptr i32 %retval.0.i63 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool14.not.i = icmp eq i32 %34, 0
  br i1 %tobool14.not.i, label %cond.false.i, label %_compound_head.exit.cond.end.i_crit_edge

_compound_head.exit.cond.end.i_crit_edge:         ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.false.i:                                     ; preds = %_compound_head.exit
  %35 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %page, align 4
  %37 = and i32 %36, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i50 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i50, label %PageCompound.exit.i53, label %cond.false.i.if.then.i54_crit_edge

cond.false.i.if.then.i54_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i54

PageCompound.exit.i53:                            ; preds = %cond.false.i
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %2, align 4
  %and.i.i.i51 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i51)
  %tobool.not.i52 = icmp eq i32 %and.i.i.i51, 0
  br i1 %tobool.not.i52, label %if.end.i57, label %PageCompound.exit.i53.if.then.i54_crit_edge, !prof !195

PageCompound.exit.i53.if.then.i54_crit_edge:      ; preds = %PageCompound.exit.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i54

if.then.i54:                                      ; preds = %PageCompound.exit.i53.if.then.i54_crit_edge, %cond.false.i.if.then.i54_crit_edge
  %call3.i = tail call i32 @__page_mapcount(ptr noundef %page) #5
  br label %cond.end.i

if.end.i57:                                       ; preds = %PageCompound.exit.i53
  call void @__sanitizer_cov_trace_pc() #7
  %40 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i.i55 = tail call zeroext i1 @__kasan_check_read(ptr noundef %40, i32 noundef 4) #5
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %add.i56 = add i32 %42, 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i57, %if.then.i54, %_compound_head.exit.cond.end.i_crit_edge
  %cond.i = phi i32 [ 0, %_compound_head.exit.cond.end.i_crit_edge ], [ %call3.i, %if.then.i54 ], [ %add.i56, %if.end.i57 ]
  %_refcount.i = getelementptr inbounds %struct.page, ptr %head.0.i, i32 0, i32 3
  %call.i.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i, i32 noundef 4) #5
  %43 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %_refcount.i, align 4
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %45 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast20.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast20.i
  %sub.ptr.div22.i = sdiv exact i32 %sub.ptr.sub21.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %48 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add23.i = add i32 %sub.ptr.div22.i, %48
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %page, i32 noundef %44, i32 noundef %cond.i, ptr noundef %mapping.1.i, i32 noundef %46, i32 noundef %add23.i) #8
  br i1 %compound.0.off0.i, label %if.then26.i, label %cond.end.i.if.end46.i_crit_edge

cond.end.i.if.end46.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46.i

if.then26.i:                                      ; preds = %cond.end.i
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i5.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i5.i, label %if.then26.i._compound_head.exit.i_crit_edge, label %if.then.i.i38, !prof !195

if.then26.i._compound_head.exit.i_crit_edge:      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_compound_head.exit.i

if.then.i.i38:                                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %50, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i38, %if.then26.i._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i38 ], [ %sub.ptr.lhs.cast.i, %if.then26.i._compound_head.exit.i_crit_edge ]
  %51 = inttoptr i32 %retval.0.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %54 = and i32 %53, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i39 = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i39, label %PageCompound.exit.i43, label %_compound_head.exit.i.land.rhs.i_crit_edge

_compound_head.exit.i.land.rhs.i_crit_edge:       ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

PageCompound.exit.i43:                            ; preds = %_compound_head.exit.i
  %55 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %and.i.i.i40 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i40)
  %tobool.not.i42 = icmp eq i32 %and.i.i.i40, 0
  br i1 %tobool.not.i42, label %PageCompound.exit.i43.do.end40.i_crit_edge, label %PageCompound.exit.i43.land.rhs.i_crit_edge

PageCompound.exit.i43.land.rhs.i_crit_edge:       ; preds = %PageCompound.exit.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

PageCompound.exit.i43.do.end40.i_crit_edge:       ; preds = %PageCompound.exit.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40.i

land.rhs.i:                                       ; preds = %PageCompound.exit.i43.land.rhs.i_crit_edge, %_compound_head.exit.i.land.rhs.i_crit_edge
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp.i.i.i44.not = icmp eq i32 %59, -1
  br i1 %cmp.i.i.i44.not, label %if.then.i.i.i46, label %PageHead.exit.i.i, !prof !196

if.then.i.i.i46:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str.128) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #5, !srcloc !198
  unreachable

PageHead.exit.i.i:                                ; preds = %land.rhs.i
  %60 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %51, align 4
  %62 = and i32 %61, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i6.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i6.i, label %PageHead.exit.i.i.do.end40.i_crit_edge, label %hpage_pincount_available.exit

PageHead.exit.i.i.do.end40.i_crit_edge:           ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40.i

hpage_pincount_available.exit:                    ; preds = %PageHead.exit.i.i
  %63 = getelementptr %struct.page, ptr %51, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.93, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %compound_order.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %65)
  %cmp.i48 = icmp ugt i8 %65, 1
  br i1 %cmp.i48, label %do.end31.i, label %hpage_pincount_available.exit.do.end40.i_crit_edge

hpage_pincount_available.exit.do.end40.i_crit_edge: ; preds = %hpage_pincount_available.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40.i

do.end31.i:                                       ; preds = %hpage_pincount_available.exit
  %66 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %head.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp.i.i25.not = icmp eq i32 %67, -1
  br i1 %cmp.i.i25.not, label %if.then.i.i28, label %PageHead.exit.i32, !prof !196

if.then.i.i28:                                    ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %head.0.i, ptr noundef nonnull @.str.128) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #5, !srcloc !198
  unreachable

PageHead.exit.i32:                                ; preds = %do.end31.i
  %68 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %head.0.i, align 4
  %70 = and i32 %69, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i31 = icmp eq i32 %70, 0
  br i1 %tobool.not.i31, label %PageHead.exit.i32.compound_order.exit37_crit_edge, label %if.end.i35

PageHead.exit.i32.compound_order.exit37_crit_edge: ; preds = %PageHead.exit.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %compound_order.exit37

if.end.i35:                                       ; preds = %PageHead.exit.i32
  call void @__sanitizer_cov_trace_pc() #7
  %71 = getelementptr %struct.page, ptr %head.0.i, i32 1, i32 1
  %compound_order.i33 = getelementptr inbounds %struct.anon.93, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %compound_order.i33 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %compound_order.i33, align 1
  %conv.i34 = zext i8 %73 to i32
  br label %compound_order.exit37

compound_order.exit37:                            ; preds = %if.end.i35, %PageHead.exit.i32.compound_order.exit37_crit_edge
  %retval.0.i36 = phi i32 [ %conv.i34, %if.end.i35 ], [ 0, %PageHead.exit.i32.compound_order.exit37_crit_edge ]
  %compound_mapcount.i.i22 = getelementptr %struct.page, ptr %head.0.i, i32 1, i32 1, i32 0, i32 1
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef %compound_mapcount.i.i22, i32 noundef 4) #5
  %74 = ptrtoint ptr %compound_mapcount.i.i22 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %compound_mapcount.i.i22, align 4
  %add.i24 = add i32 %75, 1
  %hpage_pinned_refcount.i.i = getelementptr %struct.page, ptr %head.0.i, i32 2, i32 1, i32 0, i32 0, i32 1
  %call.i.i.i21 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpage_pinned_refcount.i.i, i32 noundef 4) #5
  %76 = ptrtoint ptr %hpage_pinned_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %hpage_pinned_refcount.i.i, align 4
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %head.0.i, i32 noundef %retval.0.i36, i32 noundef %add.i24, i32 noundef %77) #8
  br label %if.end46.i

do.end40.i:                                       ; preds = %hpage_pincount_available.exit.do.end40.i_crit_edge, %PageHead.exit.i.i.do.end40.i_crit_edge, %PageCompound.exit.i43.do.end40.i_crit_edge
  %78 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %head.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp.i.i.not = icmp eq i32 %79, -1
  br i1 %cmp.i.i.not, label %if.then.i.i17, label %PageHead.exit.i, !prof !196

if.then.i.i17:                                    ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %head.0.i, ptr noundef nonnull @.str.128) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #5, !srcloc !198
  unreachable

PageHead.exit.i:                                  ; preds = %do.end40.i
  %80 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %head.0.i, align 4
  %82 = and i32 %81, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i, label %PageHead.exit.i.compound_order.exit_crit_edge, label %if.end.i

PageHead.exit.i.compound_order.exit_crit_edge:    ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %compound_order.exit

if.end.i:                                         ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = getelementptr %struct.page, ptr %head.0.i, i32 1, i32 1
  %compound_order.i = getelementptr inbounds %struct.anon.93, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %compound_order.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %compound_order.i, align 1
  %conv.i20 = zext i8 %85 to i32
  br label %compound_order.exit

compound_order.exit:                              ; preds = %if.end.i, %PageHead.exit.i.compound_order.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i20, %if.end.i ], [ 0, %PageHead.exit.i.compound_order.exit_crit_edge ]
  %compound_mapcount.i.i = getelementptr %struct.page, ptr %head.0.i, i32 1, i32 1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %compound_mapcount.i.i, i32 noundef 4) #5
  %86 = ptrtoint ptr %compound_mapcount.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %compound_mapcount.i.i, align 4
  %add.i15 = add i32 %87, 1
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %head.0.i, i32 noundef %retval.0.i, i32 noundef %add.i15) #8
  br label %if.end46.i

if.end46.i:                                       ; preds = %compound_order.exit, %compound_order.exit37, %cond.end.i.if.end46.i_crit_edge
  %memcg_data.i = getelementptr inbounds %struct.page, ptr %head.0.i, i32 0, i32 4
  %88 = ptrtoint ptr %memcg_data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %memcg_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool47.not.i = icmp eq i32 %89, 0
  br i1 %tobool47.not.i, label %if.end46.i.if.end55.i_crit_edge, label %do.end51.i

if.end46.i.if.end55.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

do.end51.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %89) #8
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end51.i, %if.end46.i.if.end55.i_crit_edge
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %2, align 4
  %and.i2.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end55.i.PageKsm.exit.i_crit_edge, label %if.then.i.i.i, !prof !195

if.end55.i.PageKsm.exit.i_crit_edge:              ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %PageKsm.exit.i

if.then.i.i.i:                                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = add i32 %91, -1
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.then.i.i.i, %if.end55.i.PageKsm.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %sub.ptr.lhs.cast.i, %if.end55.i.PageKsm.exit.i_crit_edge ]
  %92 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.105, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mapping.i.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  %and.i.i117.i = and i32 %95, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i117.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i117.i, 3
  br i1 %cmp.i.i.i, label %PageKsm.exit.i.do.end72.i_crit_edge, label %if.else58.i

PageKsm.exit.i.do.end72.i_crit_edge:              ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72.i

if.else58.i:                                      ; preds = %PageKsm.exit.i
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %2, align 4
  %and.i2.i118.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i118.i)
  %tobool.not.i.i119.i = icmp eq i32 %and.i2.i118.i, 0
  br i1 %tobool.not.i.i119.i, label %if.else58.i.PageAnon.exit.i_crit_edge, label %if.then.i.i121.i, !prof !195

if.else58.i.PageAnon.exit.i_crit_edge:            ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %PageAnon.exit.i

if.then.i.i121.i:                                 ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i120.i = add i32 %97, -1
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.then.i.i121.i, %if.else58.i.PageAnon.exit.i_crit_edge
  %retval.0.i.i123.i = phi i32 [ %sub.i.i120.i, %if.then.i.i121.i ], [ %sub.ptr.lhs.cast.i, %if.else58.i.PageAnon.exit.i_crit_edge ]
  %98 = inttoptr i32 %retval.0.i.i123.i to ptr
  %mapping.i.i124.i = getelementptr inbounds %struct.anon.105, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %mapping.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mapping.i.i124.i, align 4
  %101 = ptrtoint ptr %100 to i32
  %and.i.i125.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i125.i)
  %cmp.i.i126.i.not = icmp eq i32 %and.i.i125.i, 0
  br i1 %cmp.i.i126.i.not, label %if.else61.i, label %PageAnon.exit.i.do.end72.i_crit_edge

PageAnon.exit.i.do.end72.i_crit_edge:             ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72.i

if.else61.i:                                      ; preds = %PageAnon.exit.i
  %tobool62.not.i = icmp eq ptr %mapping.1.i, null
  br i1 %tobool62.not.i, label %if.else61.i.do.end72.i_crit_edge, label %if.then63.i

if.else61.i.do.end72.i_crit_edge:                 ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72.i

if.then63.i:                                      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_mapping(ptr noundef nonnull %mapping.1.i) #5
  br label %do.end72.i

do.end72.i:                                       ; preds = %if.then63.i, %if.else61.i.do.end72.i_crit_edge, %PageAnon.exit.i.do.end72.i_crit_edge, %PageKsm.exit.i.do.end72.i_crit_edge
  %type.0.i = phi ptr [ @.str.106, %if.then63.i ], [ @.str.106, %if.else61.i.do.end72.i_crit_edge ], [ @.str.118, %PageKsm.exit.i.do.end72.i_crit_edge ], [ @.str.119, %PageAnon.exit.i.do.end72.i_crit_edge ]
  %cond75.i = select i1 %cmp.i13, ptr @.str.123, ptr @.str.106
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull %type.0.i, ptr noundef %head.0.i, ptr noundef nonnull %cond75.i) #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %page, i32 noundef 36, i1 noundef zeroext false) #5
  %cmp77.not.i = icmp eq ptr %head.0.i, %page
  br i1 %cmp77.not.i, label %do.end72.i.if.end_crit_edge, label %if.then78.i

do.end72.i.if.end_crit_edge:                      ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then78.i:                                      ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.126, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %head.0.i, i32 noundef 36, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then78.i, %do.end72.i.if.end_crit_edge, %do.end
  %tobool2.not = icmp eq ptr %reason, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %do.end5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull %reason) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %if.end.if.end8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @page_owner_inited, ptr blockaddress(@dump_page, %if.then.i14)) #5
          to label %dump_page_owner.exit [label %if.then.i14], !srcloc !199

if.then.i14:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dump_page_owner(ptr noundef %page) #5
  br label %dump_page_owner.exit

dump_page_owner.exit:                             ; preds = %if.then.i14, %if.end8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_vma(ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vma, align 4
  %2 = inttoptr i32 %1 to ptr
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %3 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_end, align 4
  %5 = inttoptr i32 %4 to ptr
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 2
  %6 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_next, align 4
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 3
  %8 = ptrtoint ptr %vm_prev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_prev, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %10 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_mm, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %12 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_page_prot, align 4
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %14 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %anon_vma, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %16 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vm_ops, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %18 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_pgoff, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %20 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vm_file, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %22 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vm_private_data, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %24 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_flags, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %vma, ptr noundef %2, ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11, i32 noundef %13, ptr noundef %15, ptr noundef %17, i32 noundef %19, ptr noundef %21, ptr noundef %23, i32 noundef %25, ptr noundef %vm_flags) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_mm(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 8
  %vmacache_seqnum = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 2
  %2 = ptrtoint ptr %vmacache_seqnum to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vmacache_seqnum, align 8
  %task_size = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 6
  %4 = ptrtoint ptr %task_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %task_size, align 4
  %get_unmapped_area = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 3
  %6 = ptrtoint ptr %get_unmapped_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_unmapped_area, align 8
  %mmap_base = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 4
  %8 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mmap_base, align 4
  %mmap_legacy_base = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 5
  %10 = ptrtoint ptr %mmap_legacy_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmap_legacy_base, align 8
  %highest_vm_end = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 7
  %12 = ptrtoint ptr %highest_vm_end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %highest_vm_end, align 8
  %pgd = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 8
  %14 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pgd, align 4
  %mm_users = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users, i32 noundef 4) #5
  %16 = ptrtoint ptr %mm_users to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %mm_users, align 4
  %mm_count = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 11
  %call.i.i47 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_count, i32 noundef 4) #5
  %18 = ptrtoint ptr %mm_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %mm_count, align 4
  %pgtables_bytes.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pgtables_bytes.i, i32 noundef 4) #5
  %20 = ptrtoint ptr %pgtables_bytes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %pgtables_bytes.i, align 4
  %map_count = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 13
  %22 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %map_count, align 8
  %hiwater_rss = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 17
  %24 = ptrtoint ptr %hiwater_rss to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hiwater_rss, align 8
  %hiwater_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 18
  %26 = ptrtoint ptr %hiwater_vm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hiwater_vm, align 4
  %total_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 19
  %28 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_vm, align 8
  %locked_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 20
  %30 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %locked_vm, align 4
  %pinned_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 21
  %call.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pinned_vm, i32 noundef 8) #5
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %pinned_vm) #5
  %data_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 22
  %32 = ptrtoint ptr %data_vm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_vm, align 8
  %exec_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 23
  %34 = ptrtoint ptr %exec_vm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %exec_vm, align 4
  %stack_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 24
  %36 = ptrtoint ptr %stack_vm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stack_vm, align 8
  %start_code = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 28
  %38 = ptrtoint ptr %start_code to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %start_code, align 4
  %end_code = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 29
  %40 = ptrtoint ptr %end_code to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %end_code, align 8
  %start_data = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 30
  %42 = ptrtoint ptr %start_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %start_data, align 4
  %end_data = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 31
  %44 = ptrtoint ptr %end_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %end_data, align 8
  %start_brk = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 32
  %46 = ptrtoint ptr %start_brk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %start_brk, align 4
  %brk = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 33
  %48 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brk, align 8
  %start_stack = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 34
  %50 = ptrtoint ptr %start_stack to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %start_stack, align 4
  %arg_start = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 35
  %52 = ptrtoint ptr %arg_start to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arg_start, align 8
  %arg_end = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 36
  %54 = ptrtoint ptr %arg_end to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arg_end, align 4
  %env_start = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 37
  %56 = ptrtoint ptr %env_start to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %env_start, align 8
  %env_end = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 38
  %58 = ptrtoint ptr %env_end to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %env_end, align 4
  %binfmt = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 41
  %60 = ptrtoint ptr %binfmt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %binfmt, align 8
  %flags = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 43
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 8
  %ioctx_table = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 45
  %64 = ptrtoint ptr %ioctx_table to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioctx_table, align 8
  %owner = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 46
  %66 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %owner, align 4
  %exe_file = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 48
  %68 = ptrtoint ptr %exe_file to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %exe_file, align 4
  %notifier_subscriptions = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 49
  %70 = ptrtoint ptr %notifier_subscriptions to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %notifier_subscriptions, align 8
  %tlb_flush_pending = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 50
  %call.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tlb_flush_pending, i32 noundef 4) #5
  %72 = ptrtoint ptr %tlb_flush_pending to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %tlb_flush_pending, align 4
  %def_flags = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 25
  %74 = ptrtoint ptr %def_flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %def_flags, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %mm, ptr noundef %1, i64 noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i64 noundef %call.i, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, ptr noundef %61, i32 noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71, i32 noundef %73, i32 noundef %75, ptr noundef %def_flags) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_vm_debug(ptr nocapture noundef readonly %str) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %1)
  %cmp.not = icmp eq i8 %1, 61
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

lor.lhs.false:                                    ; preds = %entry
  %incdec.ptr = getelementptr i8, ptr %str, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %incdec.ptr, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %lor.lhs.false.while.body_crit_edge [
    i8 0, label %lor.lhs.false.if.end21_crit_edge
    i8 45, label %lor.lhs.false.out_crit_edge
  ]

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge
  %str.addr.037 = phi ptr [ %incdec.ptr11, %sw.epilog.while.body_crit_edge ], [ %incdec.ptr, %lor.lhs.false.while.body_crit_edge ]
  %__page_init_poisoning.036 = phi i8 [ %__page_init_poisoning.1, %sw.epilog.while.body_crit_edge ], [ 0, %lor.lhs.false.while.body_crit_edge ]
  %5 = phi i8 [ %.pr, %sw.epilog.while.body_crit_edge ], [ %3, %lor.lhs.false.while.body_crit_edge ]
  %conv.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 0
  %sub.i = add i8 %5, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %5, i8 %sub.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %spec.select.i)
  %cond = icmp eq i8 %spec.select.i, 112
  br i1 %cond, label %while.body.sw.epilog_crit_edge, label %do.end

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %conv.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %while.body.sw.epilog_crit_edge
  %__page_init_poisoning.1 = phi i8 [ %__page_init_poisoning.036, %do.end ], [ 1, %while.body.sw.epilog_crit_edge ]
  %incdec.ptr11 = getelementptr i8, ptr %str.addr.037, i32 1
  %9 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %incdec.ptr11, align 1
  %tobool7.not = icmp eq i8 %.pr, 0
  br i1 %tobool7.not, label %out.loopexit, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

out.loopexit:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %10 = and i8 %__page_init_poisoning.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %extract.t.le = icmp ne i8 %10, 0
  br label %out

out:                                              ; preds = %out.loopexit, %lor.lhs.false.out_crit_edge
  %__page_init_poisoning.2.off0 = phi i1 [ false, %lor.lhs.false.out_crit_edge ], [ %extract.t.le, %out.loopexit ]
  %11 = load i8, ptr @page_init_poisoning, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  %brmerge = select i1 %tobool12.not, i1 true, i1 %__page_init_poisoning.2.off0
  br i1 %brmerge, label %out.if.end21_crit_edge, label %do.end18

out.if.end21_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end18:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %out.if.end21_crit_edge, %lor.lhs.false.if.end21_crit_edge, %entry.if.end21_crit_edge
  %__page_init_poisoning.2.off034 = phi i1 [ %__page_init_poisoning.2.off0, %out.if.end21_crit_edge ], [ false, %do.end18 ], [ true, %entry.if.end21_crit_edge ], [ true, %lor.lhs.false.if.end21_crit_edge ]
  %frombool = zext i1 %__page_init_poisoning.2.off034 to i8
  store i8 %frombool, ptr @page_init_poisoning, align 1
  ret i32 1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @page_init_poison(ptr nocapture noundef writeonly %page, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @page_init_poisoning, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = call ptr @memset(ptr %page, i32 255, i32 %size)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mapping(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dump_page_owner(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !108, !110, !111, !112, !113, !114, !116, !117, !118, !120, !122, !123, !124, !125, !127, !129, !130, !131, !132, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !159, !161, !162, !163, !164, !166, !168, !170, !172, !174, !175, !177, !178, !179, !180, !182, !183, !184}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/debug.c", i32 31, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @migrate_reason_names, !11, !"migrate_reason_names", i1 false, i1 false}
!11 = !{!"../mm/debug.c", i32 30, i32 13}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/debug.c", i32 35, i32 2}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.11, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.12, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.13, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.14, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.15, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.16, !13, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.17, !13, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.18, !13, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.19, !13, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.20, !13, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.21, !13, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.22, !13, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.23, !13, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.24, !13, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.25, !13, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.26, !13, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.27, !13, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.28, !13, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.29, !13, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.30, !13, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pageflag_names, !36, !"pageflag_names", i1 false, i1 false}
!36 = !{!"../mm/debug.c", i32 34, i32 32}
!37 = !{ptr @.str.31, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../mm/debug.c", i32 40, i32 2}
!39 = !{ptr @.str.32, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.33, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.34, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.35, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.36, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.37, !38, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.38, !38, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.39, !38, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.40, !38, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.41, !38, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.42, !38, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.43, !38, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.44, !38, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.45, !38, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.46, !38, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.47, !38, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.48, !38, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.49, !38, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.50, !38, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.51, !38, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.52, !38, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.53, !38, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.54, !38, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.55, !38, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.56, !38, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.57, !38, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.58, !38, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.59, !38, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.60, !38, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.61, !38, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.62, !38, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.63, !38, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.64, !38, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.65, !38, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.66, !38, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.67, !38, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @gfpflag_names, !76, !"gfpflag_names", i1 false, i1 false}
!76 = !{!"../mm/debug.c", i32 39, i32 32}
!77 = !{ptr @.str.68, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../mm/debug.c", i32 45, i32 2}
!79 = !{ptr @.str.69, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.70, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.71, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.72, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.73, !78, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.74, !78, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.75, !78, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.76, !78, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.77, !78, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.78, !78, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.79, !78, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.80, !78, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.81, !78, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.82, !78, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.83, !78, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.84, !78, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.85, !78, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.86, !78, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.87, !78, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.88, !78, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.89, !78, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.90, !78, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.91, !78, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.92, !78, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.93, !78, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.94, !78, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.95, !78, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @vmaflag_names, !107, !"vmaflag_names", i1 false, i1 false}
!107 = !{!"../mm/debug.c", i32 44, i32 32}
!108 = !{ptr @.str.96, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../mm/debug.c", i32 133, i32 3}
!110 = !{ptr @.str.97, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.98, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @dump_page._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @dump_page._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.100, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../mm/debug.c", i32 137, i32 3}
!116 = !{ptr @dump_page._entry.99, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @dump_page._entry_ptr.101, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @__ksymtab_dump_page, !119, !"__ksymtab_dump_page", i1 false, i1 false}
!119 = !{!"../mm/debug.c", i32 140, i32 1}
!120 = !{ptr @.str.102, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../mm/debug.c", i32 146, i32 2}
!122 = !{ptr @.str.103, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @dump_vma._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @dump_vma._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @__ksymtab_dump_vma, !126, !"__ksymtab_dump_vma", i1 false, i1 false}
!126 = !{!"../mm/debug.c", i32 158, i32 1}
!127 = !{ptr @.str.104, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../mm/debug.c", i32 162, i32 2}
!129 = !{ptr @.str.105, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @dump_mm._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @dump_mm._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @__setup_setup_vm_debug, !133, !"__setup_setup_vm_debug", i1 false, i1 false}
!133 = !{!"../mm/debug.c", i32 261, i32 1}
!134 = !{ptr @__ksymtab_page_init_poison, !135, !"__ksymtab_page_init_poison", i1 false, i1 false}
!135 = !{!"../mm/debug.c", i32 268, i32 1}
!136 = !{ptr @.str.106, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../mm/debug.c", i32 62, i32 15}
!138 = !{ptr @.str.107, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../mm/debug.c", i32 91, i32 2}
!140 = !{ptr @.str.108, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @__dump_page._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @__dump_page._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.110, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../mm/debug.c", i32 96, i32 4}
!145 = !{ptr @__dump_page._entry.109, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @__dump_page._entry_ptr.111, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.113, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../mm/debug.c", i32 101, i32 4}
!149 = !{ptr @__dump_page._entry.112, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @__dump_page._entry_ptr.114, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.116, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../mm/debug.c", i32 109, i32 3}
!153 = !{ptr @__dump_page._entry.115, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @__dump_page._entry_ptr.117, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.118, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../mm/debug.c", i32 112, i32 10}
!157 = !{ptr @.str.119, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../mm/debug.c", i32 114, i32 10}
!159 = !{ptr @.str.121, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../mm/debug.c", i32 119, i32 2}
!161 = !{ptr @__dump_page._entry.120, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @__dump_page._entry_ptr.122, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.123, !160, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.124, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../mm/debug.c", i32 121, i32 17}
!166 = !{ptr @.str.125, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../mm/debug.c", i32 121, i32 31}
!168 = !{ptr @.str.126, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../mm/debug.c", i32 125, i32 32}
!170 = !{ptr @.str.127, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../include/linux/page-flags.h", i32 428, i32 1}
!172 = !{ptr @.str.128, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!174 = !{ptr @__setup_str_setup_vm_debug, !133, !"__setup_str_setup_vm_debug", i1 false, i1 false}
!175 = !{ptr @.str.129, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../mm/debug.c", i32 247, i32 4}
!177 = !{ptr @.str.130, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @setup_vm_debug._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @setup_vm_debug._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.132, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../mm/debug.c", i32 255, i32 3}
!182 = !{ptr @setup_vm_debug._entry.131, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @setup_vm_debug._entry_ptr.133, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @page_init_poisoning, !185, !"page_init_poisoning", i1 false, i1 false}
!185 = !{!"../mm/debug.c", i32 224, i32 13}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{!"branch_weights", i32 1, i32 2000}
!197 = !{i64 2150442356, i64 2150442847, i64 2150442393, i64 2150442449, i64 2150442483, i64 2150442507, i64 2150442548, i64 2150442569, i64 2150442597, i64 2150442631}
!198 = !{i64 2150992133, i64 2150992624, i64 2150992170, i64 2150992226, i64 2150992260, i64 2150992284, i64 2150992325, i64 2150992346, i64 2150992374, i64 2150992408}
!199 = !{i64 2148696659, i64 2148696664, i64 2148696677, i64 2148696721, i64 2148696755, i64 2148696776}
!200 = !{i8 0, i8 2}
