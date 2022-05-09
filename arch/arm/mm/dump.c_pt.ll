; ModuleID = '/llk/IR_all_yes/arch/arm/mm/dump.c_pt.bc'
source_filename = "../arch/arm/mm/dump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mm_struct = type { %struct.anon.16, [0 x i32] }
%struct.anon.16 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pg_level = type { ptr, i32, i64, ptr, ptr }
%struct.prot_bits = type { i64, i64, ptr, ptr, i8, i8 }
%struct.ptdump_info = type { ptr, ptr, i32 }
%struct.addr_marker = type { i32, ptr }
%struct.pg_state = type { ptr, ptr, i32, i32, i64, i8, i32, ptr }

@init_mm = external dso_local global %struct.mm_struct, align 8
@ptdump_check_wx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014Checked W+X mappings: FAILED, %lu W+X pages found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ptdump_check_wx\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arch/arm/mm/dump.c\00", [45 x i8] zeroinitializer }, align 32
@ptdump_check_wx._entry_ptr = internal global ptr @ptdump_check_wx._entry, section ".printk_index", align 4
@ptdump_check_wx._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016Checked W+X mappings: passed, no W+X pages found\0A\00", [44 x i8] zeroinitializer }, align 32
@ptdump_check_wx._entry_ptr.5 = internal global ptr @ptdump_check_wx._entry.3, section ".printk_index", align 4
@__initcall__kmod_dump__217_475_ptdump_init6 = internal global ptr @ptdump_init, section ".initcall6.init", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KERNEL \00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USER   \00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IO     \00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VECTORS\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@note_page.units = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"KMGTPE\00", [25 x i8] zeroinitializer }, align 32
@pg_level = internal global { [6 x %struct.pg_level], [48 x i8] } { [6 x %struct.pg_level] [%struct.pg_level zeroinitializer, %struct.pg_level zeroinitializer, %struct.pg_level zeroinitializer, %struct.pg_level zeroinitializer, %struct.pg_level { ptr @section_bits, i32 6, i64 0, ptr null, ptr null }, %struct.pg_level { ptr @pte_bits, i32 14, i64 0, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"---[ %s ]---\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x%08lx-0x%08lx   \00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%9lu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@section_bits = internal constant { [6 x %struct.prot_bits], [32 x i8] } { [6 x %struct.prot_bits] [%struct.prot_bits { i64 35840, i64 33792, ptr @.str.16, ptr null, i8 1, i8 0 }, %struct.prot_bits { i64 35840, i64 1024, ptr @.str.17, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 35840, i64 2048, ptr @.str.18, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 35840, i64 3072, ptr @.str.19, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 16, i64 16, ptr @.str.20, ptr @.str.21, i8 0, i8 1 }, %struct.prot_bits { i64 65536, i64 65536, ptr @.str.22, ptr @.str.23, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@pte_bits = internal constant { [14 x %struct.prot_bits], [96 x i8] } { [14 x %struct.prot_bits] [%struct.prot_bits { i64 256, i64 256, ptr @.str.24, ptr @.str.23, i8 0, i8 0 }, %struct.prot_bits { i64 128, i64 128, ptr @.str.25, ptr @.str.26, i8 1, i8 0 }, %struct.prot_bits { i64 512, i64 512, ptr @.str.20, ptr @.str.21, i8 0, i8 1 }, %struct.prot_bits { i64 1024, i64 1024, ptr @.str.22, ptr @.str.23, i8 0, i8 0 }, %struct.prot_bits { i64 60, i64 0, ptr @.str.27, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 60, i64 4, ptr @.str.28, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 60, i64 8, ptr @.str.29, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 60, i64 12, ptr @.str.30, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 60, i64 24, ptr @.str.31, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 60, i64 28, ptr @.str.32, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 60, i64 16, ptr @.str.33, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 60, i64 48, ptr @.str.34, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 60, i64 36, ptr @.str.35, ptr null, i8 0, i8 0 }, %struct.prot_bits { i64 60, i64 44, ptr @.str.36, ptr null, i8 0, i8 0 }], [96 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"    ro\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"    RW\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USR ro\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USR RW\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NX\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x \00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SHD\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USR\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RW\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SO/UNCACHED\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MEM/BUFFERABLE/WC\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MEM/CACHED/WT\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MEM/CACHED/WBRA\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MEM/MINICACHE\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MEM/CACHED/WBWA\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DEV/SHARED\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DEV/NONSHARED\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DEV/WC\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DEV/CACHED\00", [21 x i8] zeroinitializer }, align 32
@note_prot_wx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"arm/mm: Found insecure W+X mapping at address %pS\0A\00", [45 x i8] zeroinitializer }, align 32
@kernel_ptdump_info = internal global { %struct.ptdump_info, [20 x i8] } { %struct.ptdump_info { ptr @init_mm, ptr @address_markers, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel_page_tables\00", [45 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@address_markers = internal global { [10 x %struct.addr_marker], [48 x i8] } { [10 x %struct.addr_marker] [%struct.addr_marker { i32 -1226833920, ptr @.str.39 }, %struct.addr_marker { i32 -1090519040, ptr @.str.40 }, %struct.addr_marker { i32 -1090519040, ptr @.str.41 }, %struct.addr_marker { i32 -1073741824, ptr @.str.42 }, %struct.addr_marker { i32 0, ptr @.str.43 }, %struct.addr_marker { i32 -8388608, ptr @.str.44 }, %struct.addr_marker { i32 -3670016, ptr @.str.45 }, %struct.addr_marker { i32 -65536, ptr @.str.46 }, %struct.addr_marker { i32 -57344, ptr @.str.47 }, %struct.addr_marker { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Kasan shadow start\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Kasan shadow end\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Modules\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Kernel Mapping\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vmalloc() Area\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vmalloc() End\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Fixmap Area\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Vectors\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Vectors End\00", [20 x i8] zeroinitializer }, align 32
@switch.table.walk_pgd = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@switch.table.walk_pgd.48 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 463, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 466, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 324, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 326, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 328, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 330, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 332, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 261, i32 20 }
@___asan_gen_.85 = private unnamed_addr constant [9 x i8] c"pg_level\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 210, i32 24 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 268, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 277, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 285, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 287, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 291, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"section_bits\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 138, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"pte_bits\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 68, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 154, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 159, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 163, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 167, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 191, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 192, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 197, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 198, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 72, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 77, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 78, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 94, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 98, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 102, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 106, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 111, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 116, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 120, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 125, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 130, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 134, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 252, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"kernel_ptdump_info\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 443, i32 27 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 472, i32 47 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"address_markers\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 21, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 23, i32 24 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 24, i32 22 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 26, i32 19 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 27, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 28, i32 9 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 29, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 30, i32 19 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 31, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [22 x i8] c"../arch/arm/mm/dump.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 32, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant [22 x i8] c"switch.table.walk_pgd\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [25 x i8] c"switch.table.walk_pgd.48\00", align 1
@llvm.compiler.used = appending global [59 x ptr] [ptr @__initcall__kmod_dump__217_475_ptdump_init6, ptr @ptdump_check_wx._entry, ptr @ptdump_check_wx._entry.3, ptr @ptdump_check_wx._entry_ptr, ptr @ptdump_check_wx._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @note_page.units, ptr @pg_level, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @section_bits, ptr @pte_bits, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @kernel_ptdump_info, ptr @.str.38, ptr @address_markers, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @switch.table.walk_pgd, ptr @switch.table.walk_pgd.48], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptdump_check_wx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptdump_check_wx._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @note_page.units to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_level to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @section_bits to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pte_bits to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_ptdump_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @address_markers to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.walk_pgd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.walk_pgd.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ptdump_walk_pgd(ptr noundef %m, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %st = alloca %struct.pg_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #6
  %0 = getelementptr inbounds i8, ptr %st, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %m, ptr %st, align 8
  %marker = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 1
  %markers = getelementptr inbounds %struct.ptdump_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %markers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %markers, align 4
  %5 = ptrtoint ptr %marker to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %marker, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %base_addr = getelementptr inbounds %struct.ptdump_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 4
  call fastcc void @walk_pgd(ptr noundef nonnull %st, ptr noundef %7, i32 noundef %9)
  call fastcc void @note_page(ptr noundef nonnull %st, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @walk_pgd(ptr noundef %st, ptr nocapture noundef readonly %mm, i32 noundef %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pgd1 = getelementptr inbounds %struct.anon.16, ptr %mm, i32 0, i32 8
  %0 = ptrtoint ptr %pgd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgd1, align 4
  br label %for.body

for.body:                                         ; preds = %walk_p4d.exit.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %walk_p4d.exit.for.body_crit_edge ]
  %pgd.010 = phi ptr [ %1, %entry ], [ %incdec.ptr, %walk_p4d.exit.for.body_crit_edge ]
  %mul = shl nuw i32 %i.011, 21
  %add = add i32 %mul, %start
  %add8.i.i.i = add i32 %add, 1048576
  %2 = ptrtoint ptr %pgd.010 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgd.010, align 4
  %and.i.i.i.i = lshr i32 %3, 5
  %4 = and i32 %and.i.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %switch.lookup, label %for.body.get_domain_name.exit.i.i.i_crit_edge

for.body.get_domain_name.exit.i.i.i_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_domain_name.exit.i.i.i

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.walk_pgd, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_domain_name.exit.i.i.i

get_domain_name.exit.i.i.i:                       ; preds = %switch.lookup, %for.body.get_domain_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.10, %for.body.get_domain_name.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp ne i32 %3, 0
  %and.i.i.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %or.cond.i.i.i = and i1 %tobool.not.i.i.i, %tobool2.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %get_domain_name.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = zext i32 %3 to i64
  tail call fastcc void @note_page(ptr noundef %st, i32 noundef %add, i32 noundef 3, i64 noundef %conv.i.i.i, ptr noundef nonnull %retval.0.i.i.i.i) #6
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %get_domain_name.exit.i.i.i
  %and1.i.i.i.i.i.i = and i32 %3, -4096
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i.i.i, i32 -2130706432, i32 8454144) #9, !srcloc !118
  %8 = inttoptr i32 %7 to ptr
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.else.i.i.i
  %i.05.i.i.i.i = phi i32 [ 0, %if.else.i.i.i ], [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %pte.04.i.i.i.i = phi ptr [ %8, %if.else.i.i.i ], [ %incdec.ptr.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %mul.i.i.i.i = shl nuw nsw i32 %i.05.i.i.i.i, 12
  %add.i.i.i.i = add i32 %mul.i.i.i.i, %add
  %9 = ptrtoint ptr %pte.04.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pte.04.i.i.i.i, align 4
  %conv.i.i.i.i = zext i32 %10 to i64
  tail call fastcc void @note_page(ptr noundef %st, i32 noundef %add.i.i.i.i, i32 noundef 5, i64 noundef %conv.i.i.i.i, ptr noundef nonnull %retval.0.i.i.i.i) #6
  %inc.i.i.i.i = add nuw nsw i32 %i.05.i.i.i.i, 1
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %pte.04.i.i.i.i, i32 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 512
  br i1 %exitcond.not.i.i.i.i, label %for.body.i.i.i.i.if.end.i.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i

for.body.i.i.i.i.if.end.i.i.i_crit_edge:          ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %pgd.010, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i, align 4
  %and5.i.i.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end.i.i.i.walk_p4d.exit_crit_edge, label %if.then7.i.i.i

if.end.i.i.i.walk_p4d.exit_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %walk_p4d.exit

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  %and.i32.i.i.i = lshr i32 %12, 5
  %13 = and i32 %and.i32.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %switch.lookup12, label %if.then7.i.i.i.get_domain_name.exit38.i.i.i_crit_edge

if.then7.i.i.i.get_domain_name.exit38.i.i.i_crit_edge: ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_domain_name.exit38.i.i.i

switch.lookup12:                                  ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep13 = getelementptr inbounds [4 x ptr], ptr @switch.table.walk_pgd.48, i32 0, i32 %13
  %15 = ptrtoint ptr %switch.gep13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load14 = load ptr, ptr %switch.gep13, align 4
  br label %get_domain_name.exit38.i.i.i

get_domain_name.exit38.i.i.i:                     ; preds = %switch.lookup12, %if.then7.i.i.i.get_domain_name.exit38.i.i.i_crit_edge
  %retval.0.i37.i.i.i = phi ptr [ %switch.load14, %switch.lookup12 ], [ @.str.10, %if.then7.i.i.i.get_domain_name.exit38.i.i.i_crit_edge ]
  %conv10.i.i.i = zext i32 %12 to i64
  tail call fastcc void @note_page(ptr noundef %st, i32 noundef %add8.i.i.i, i32 noundef 4, i64 noundef %conv10.i.i.i, ptr noundef nonnull %retval.0.i37.i.i.i) #6
  br label %walk_p4d.exit

walk_p4d.exit:                                    ; preds = %get_domain_name.exit38.i.i.i, %if.end.i.i.i.walk_p4d.exit_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %incdec.ptr = getelementptr [2 x i32], ptr %pgd.010, i32 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %for.end, label %walk_p4d.exit.for.body_crit_edge

walk_p4d.exit.for.body_crit_edge:                 ; preds = %walk_p4d.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %walk_p4d.exit
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @note_page(ptr noundef %st, i32 noundef %addr, i32 noundef %level, i64 noundef %val, ptr noundef %domain) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr [6 x %struct.pg_level], ptr @pg_level, i32 0, i32 %level, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mask, align 8
  %and = and i64 %1, %val
  %level1 = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 3
  %2 = ptrtoint ptr %level1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %level1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %level, ptr %level1, align 4
  %current_prot = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 4
  %5 = ptrtoint ptr %current_prot to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %and, ptr %current_prot, align 8
  %current_domain = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 7
  %6 = ptrtoint ptr %current_domain to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %domain, ptr %current_domain, align 8
  %7 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %st, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.then.if.end85_crit_edge, label %if.then4

if.then.if.end85_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %marker = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 1
  %9 = ptrtoint ptr %marker to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %marker, align 4
  %name = getelementptr inbounds %struct.addr_marker, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %8, ptr noundef nonnull @.str.11, ptr noundef %12) #6
  br label %if.end85

if.else:                                          ; preds = %entry
  %current_prot6 = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 4
  %13 = ptrtoint ptr %current_prot6 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %current_prot6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %14)
  %cmp.not = icmp eq i64 %and, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %level)
  %cmp8.not = icmp eq i32 %3, %level
  %or.cond = select i1 %cmp.not, i1 %cmp8.not, i1 false
  br i1 %or.cond, label %lor.lhs.false9, label %if.else.if.then16_crit_edge

if.else.if.then16_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false9:                                   ; preds = %if.else
  %current_domain10 = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 7
  %15 = ptrtoint ptr %current_domain10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %current_domain10, align 8
  %cmp11.not = icmp eq ptr %16, %domain
  br i1 %cmp11.not, label %lor.lhs.false12, label %lor.lhs.false9.if.then16_crit_edge

lor.lhs.false9.if.then16_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %marker13 = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 1
  %17 = ptrtoint ptr %marker13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %marker13, align 4
  %arrayidx14 = getelementptr %struct.addr_marker, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %addr)
  %cmp15.not = icmp ugt i32 %20, %addr
  br i1 %cmp15.not, label %lor.lhs.false12.if.end85_crit_edge, label %lor.lhs.false12.if.then16_crit_edge

lor.lhs.false12.if.then16_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false12.if.end85_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then16:                                        ; preds = %lor.lhs.false12.if.then16_crit_edge, %lor.lhs.false9.if.then16_crit_edge, %if.else.if.then16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool18.not = icmp eq i64 %14, 0
  br i1 %tobool18.not, label %if.then16.if.end63_crit_edge, label %if.then19

if.then16.if.end63_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then19:                                        ; preds = %if.then16
  %check_wx.i = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 5
  %21 = ptrtoint ptr %check_wx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %check_wx.i, align 8, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.then19.note_prot_wx.exit_crit_edge, label %if.end.i

if.then19.note_prot_wx.exit_crit_edge:            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %note_prot_wx.exit

if.end.i:                                         ; preds = %if.then19
  %ro_bit.i = getelementptr [6 x %struct.pg_level], ptr @pg_level, i32 0, i32 %3, i32 3
  %23 = ptrtoint ptr %ro_bit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ro_bit.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  %and.i = and i64 %26, %14
  %val.i = getelementptr inbounds %struct.prot_bits, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %val.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %28)
  %cmp.i = icmp eq i64 %and.i, %28
  br i1 %cmp.i, label %if.end.i.note_prot_wx.exit_crit_edge, label %if.end5.i

if.end.i.note_prot_wx.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %note_prot_wx.exit

if.end5.i:                                        ; preds = %if.end.i
  %nx_bit.i = getelementptr [6 x %struct.pg_level], ptr @pg_level, i32 0, i32 %3, i32 4
  %29 = ptrtoint ptr %nx_bit.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nx_bit.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  %and10.i = and i64 %32, %14
  %val14.i = getelementptr inbounds %struct.prot_bits, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %val14.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %val14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and10.i, i64 %34)
  %cmp15.i = icmp eq i64 %and10.i, %34
  br i1 %cmp15.i, label %if.end5.i.note_prot_wx.exit_crit_edge, label %land.end.i

if.end5.i.note_prot_wx.exit_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %note_prot_wx.exit

land.end.i:                                       ; preds = %if.end5.i
  %.b65.i = load i1, ptr @note_prot_wx.__already_done, align 1
  br i1 %.b65.i, label %land.end.i.if.end45.i_crit_edge, label %if.then23.i, !prof !120

land.end.i.if.end45.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.then23.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @note_prot_wx.__already_done, align 1
  %start_address.i = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 2
  %35 = ptrtoint ptr %start_address.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %start_address.i, align 8
  %37 = inttoptr i32 %36 to ptr
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 253, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %37) #6
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then23.i, %land.end.i.if.end45.i_crit_edge
  %start_address53.i = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 2
  %38 = ptrtoint ptr %start_address53.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %start_address53.i, align 8
  %sub.i = sub i32 %addr, %39
  %div66.i = lshr i32 %sub.i, 12
  %wx_pages.i = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 6
  %40 = ptrtoint ptr %wx_pages.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wx_pages.i, align 4
  %add.i = add i32 %div66.i, %41
  store i32 %add.i, ptr %wx_pages.i, align 4
  br label %note_prot_wx.exit

note_prot_wx.exit:                                ; preds = %if.end45.i, %if.end5.i.note_prot_wx.exit_crit_edge, %if.end.i.note_prot_wx.exit_crit_edge, %if.then19.note_prot_wx.exit_crit_edge
  %42 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %st, align 8
  %tobool21.not = icmp eq ptr %43, null
  br i1 %tobool21.not, label %note_prot_wx.exit.if.end25_crit_edge, label %if.then22

note_prot_wx.exit.if.end25_crit_edge:             ; preds = %note_prot_wx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %note_prot_wx.exit
  call void @__sanitizer_cov_trace_pc() #8
  %start_address24 = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 2
  %44 = ptrtoint ptr %start_address24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %start_address24, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %43, ptr noundef nonnull @.str.12, i32 noundef %45, i32 noundef %addr) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %note_prot_wx.exit.if.end25_crit_edge
  %start_address26 = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 2
  %46 = ptrtoint ptr %start_address26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %start_address26, align 8
  %sub = sub i32 %addr, %47
  %delta.0 = lshr i32 %sub, 10
  %48 = and i32 %sub, 1047552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool28.not = icmp eq i32 %48, 0
  br i1 %tobool28.not, label %land.rhs, label %if.end25.while.end_crit_edge

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs:                                         ; preds = %if.end25
  %delta.0.1 = lshr i32 %sub, 20
  %49 = and i32 %sub, 1072693248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool28.not.1 = icmp eq i32 %49, 0
  br i1 %tobool28.not.1, label %land.rhs.1, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.1:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %delta.0.2 = lshr i32 %sub, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %sub)
  %tobool28.not.2 = icmp ult i32 %sub, 1073741824
  %spec.select = select i1 %tobool28.not.2, ptr getelementptr inbounds ([7 x i8], ptr @note_page.units, i32 0, i32 5), ptr getelementptr inbounds ([7 x i8], ptr @note_page.units, i32 0, i32 2)
  br label %while.end

while.end:                                        ; preds = %land.rhs.1, %land.rhs.while.end_crit_edge, %if.end25.while.end_crit_edge
  %unit.0.lcssa = phi ptr [ @note_page.units, %if.end25.while.end_crit_edge ], [ getelementptr inbounds ([7 x i8], ptr @note_page.units, i32 0, i32 1), %land.rhs.while.end_crit_edge ], [ %spec.select, %land.rhs.1 ]
  %delta.0.lcssa = phi i32 [ %delta.0, %if.end25.while.end_crit_edge ], [ %delta.0.1, %land.rhs.while.end_crit_edge ], [ %delta.0.2, %land.rhs.1 ]
  %50 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %st, align 8
  %tobool33.not = icmp eq ptr %51, null
  br i1 %tobool33.not, label %while.end.if.end37_crit_edge, label %if.then34

while.end.if.end37_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %unit.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %unit.0.lcssa, align 1
  %conv36 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %51, ptr noundef nonnull @.str.13, i32 noundef %delta.0.lcssa, i32 noundef %conv36) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %while.end.if.end37_crit_edge
  %current_domain38 = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 7
  %54 = ptrtoint ptr %current_domain38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %current_domain38, align 8
  %tobool39.not = icmp eq ptr %55, null
  br i1 %tobool39.not, label %if.end37.if.end47_crit_edge, label %if.then40

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then40:                                        ; preds = %if.end37
  %56 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %st, align 8
  %tobool42.not = icmp eq ptr %57, null
  br i1 %tobool42.not, label %if.then40.if.end47_crit_edge, label %if.then43

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %57, ptr noundef nonnull @.str.14, ptr noundef nonnull %55) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.then40.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %58 = ptrtoint ptr %level1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %level1, align 4
  %arrayidx49 = getelementptr [6 x %struct.pg_level], ptr @pg_level, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx49, align 8
  %tobool50.not = icmp eq ptr %61, null
  br i1 %tobool50.not, label %if.end47.if.end57_crit_edge, label %if.then51

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then51:                                        ; preds = %if.end47
  %num = getelementptr [6 x %struct.pg_level], ptr @pg_level, i32 0, i32 %59, i32 1
  %62 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp16.not.i = icmp eq i32 %63, 0
  br i1 %cmp16.not.i, label %if.then51.if.end57_crit_edge, label %if.then51.for.body.i_crit_edge

if.then51.for.body.i_crit_edge:                   ; preds = %if.then51
  br label %for.body.i

if.then51.if.end57_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %if.then51.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %if.then51.for.body.i_crit_edge ]
  %bits.addr.017.i = phi ptr [ %incdec.ptr.i, %if.end7.i.for.body.i_crit_edge ], [ %61, %if.then51.for.body.i_crit_edge ]
  %64 = ptrtoint ptr %current_prot6 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %current_prot6, align 8
  %66 = ptrtoint ptr %bits.addr.017.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %bits.addr.017.i, align 8
  %and.i148 = and i64 %67, %65
  %val.i149 = getelementptr inbounds %struct.prot_bits, ptr %bits.addr.017.i, i32 0, i32 1
  %68 = ptrtoint ptr %val.i149 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %val.i149, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i148, i64 %69)
  %cmp1.i = icmp eq i64 %and.i148, %69
  %set.i = getelementptr inbounds %struct.prot_bits, ptr %bits.addr.017.i, i32 0, i32 2
  %clear.i = getelementptr inbounds %struct.prot_bits, ptr %bits.addr.017.i, i32 0, i32 3
  %s.0.in.i = select i1 %cmp1.i, ptr %set.i, ptr %clear.i
  %70 = ptrtoint ptr %s.0.in.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %s.0.i = load ptr, ptr %s.0.in.i, align 4
  %tobool.not.i150 = icmp eq ptr %s.0.i, null
  br i1 %tobool.not.i150, label %for.body.i.if.end7.i_crit_edge, label %if.then2.i

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then2.i:                                       ; preds = %for.body.i
  %71 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %st, align 8
  %tobool3.not.i = icmp eq ptr %72, null
  br i1 %tobool3.not.i, label %if.then2.i.if.end7.i_crit_edge, label %if.then4.i

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %72, ptr noundef nonnull @.str.14, ptr noundef nonnull %s.0.i) #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.then2.i.if.end7.i_crit_edge, %for.body.i.if.end7.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %incdec.ptr.i = getelementptr %struct.prot_bits, ptr %bits.addr.017.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %63
  br i1 %exitcond.not.i, label %if.end7.i.if.end57_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end7.i.if.end57_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.end57:                                         ; preds = %if.end7.i.if.end57_crit_edge, %if.then51.if.end57_crit_edge, %if.end47.if.end57_crit_edge
  %73 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %st, align 8
  %tobool59.not = icmp eq ptr %74, null
  br i1 %tobool59.not, label %if.end57.if.end63_crit_edge, label %if.then60

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %74, ptr noundef nonnull @.str.15) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end57.if.end63_crit_edge, %if.then16.if.end63_crit_edge
  %marker64 = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 1
  %75 = ptrtoint ptr %marker64 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %marker64, align 4
  %arrayidx65 = getelementptr %struct.addr_marker, ptr %76, i32 1
  %77 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %addr)
  %cmp67.not = icmp ugt i32 %78, %addr
  br i1 %cmp67.not, label %if.end63.if.end79_crit_edge, label %if.then69

if.end63.if.end79_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then69:                                        ; preds = %if.end63
  %79 = ptrtoint ptr %marker64 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx65, ptr %marker64, align 4
  %80 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %st, align 8
  %tobool73.not = icmp eq ptr %81, null
  br i1 %tobool73.not, label %if.then69.if.end79_crit_edge, label %if.then74

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %name77 = getelementptr %struct.addr_marker, ptr %76, i32 1, i32 1
  %82 = ptrtoint ptr %name77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name77, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %81, ptr noundef nonnull @.str.11, ptr noundef %83) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.then69.if.end79_crit_edge, %if.end63.if.end79_crit_edge
  %start_address80 = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 2
  %84 = ptrtoint ptr %start_address80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %addr, ptr %start_address80, align 8
  %85 = ptrtoint ptr %current_prot6 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %and, ptr %current_prot6, align 8
  %current_domain82 = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 7
  %86 = ptrtoint ptr %current_domain82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %domain, ptr %current_domain82, align 8
  %87 = ptrtoint ptr %level1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %level, ptr %level1, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.end79, %lor.lhs.false12.if.end85_crit_edge, %if.then4, %if.then.if.end85_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ptdump_check_wx() local_unnamed_addr #0 align 64 {
entry:
  %st = alloca %struct.pg_state, align 8
  %.compoundliteral = alloca [2 x %struct.addr_marker], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #6
  %0 = call ptr @memset(ptr %st, i32 0, i32 40)
  %marker = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 1
  %1 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %.compoundliteral, align 4
  %name = getelementptr inbounds %struct.addr_marker, ptr %.compoundliteral, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %name, align 4
  %arrayinit.element = getelementptr inbounds %struct.addr_marker, ptr %.compoundliteral, i32 1
  %3 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %arrayinit.element, align 4
  %name2 = getelementptr inbounds %struct.addr_marker, ptr %.compoundliteral, i32 1, i32 1
  %4 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %name2, align 4
  %5 = ptrtoint ptr %marker to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %.compoundliteral, ptr %marker, align 4
  %check_wx = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 5
  %6 = ptrtoint ptr %check_wx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %check_wx, align 8
  call fastcc void @walk_pgd(ptr noundef nonnull %st, ptr noundef nonnull @init_mm, i32 noundef 0)
  call fastcc void @note_page(ptr noundef nonnull %st, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %wx_pages = getelementptr inbounds %struct.pg_state, ptr %st, i32 0, i32 6
  %7 = ptrtoint ptr %wx_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wx_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.end7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %8) #10
  br label %if.end

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ptdump_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ptdump_initialize() #11
  tail call void @ptdump_debugfs_register(ptr noundef nonnull @kernel_ptdump_info, ptr noundef nonnull @.str.38) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ptdump_initialize() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc32.for.body_crit_edge, %entry
  %i.055 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.pg_level], ptr @pg_level, i32 0, i32 %i.055
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc32_crit_edge, label %for.cond1.preheader

for.body.for.inc32_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.cond1.preheader:                              ; preds = %for.body
  %num = getelementptr [6 x %struct.pg_level], ptr @pg_level, i32 0, i32 %i.055, i32 1
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp352.not = icmp eq i32 %3, 0
  br i1 %cmp352.not, label %for.cond1.preheader.for.inc32_crit_edge, label %for.body4.lr.ph

for.cond1.preheader.for.inc32_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %mask9 = getelementptr [6 x %struct.pg_level], ptr @pg_level, i32 0, i32 %i.055, i32 2
  %ro_bit19 = getelementptr [6 x %struct.pg_level], ptr @pg_level, i32 0, i32 %i.055, i32 3
  %nx_bit29 = getelementptr [6 x %struct.pg_level], ptr @pg_level, i32 0, i32 %i.055, i32 4
  %4 = ptrtoint ptr %mask9 to i32
  call void @__asan_load8_noabort(i32 %4)
  %mask9.promoted = load i64, ptr %mask9, align 8
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %5 = phi i64 [ %mask9.promoted, %for.body4.lr.ph ], [ %or, %for.inc.for.body4_crit_edge ]
  %j.053 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.inc.for.body4_crit_edge ]
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx7 = getelementptr %struct.prot_bits, ptr %7, i32 %j.053
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx7, align 8
  %or = or i64 %5, %9
  %ro_bit = getelementptr %struct.prot_bits, ptr %7, i32 %j.053, i32 4
  %10 = ptrtoint ptr %ro_bit to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ro_bit, align 8, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %for.body4.if.end_crit_edge, label %if.then14

for.body4.if.end_crit_edge:                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then14:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %ro_bit19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx7, ptr %ro_bit19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then14, %for.body4.if.end_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %nx_bit = getelementptr %struct.prot_bits, ptr %14, i32 %j.053, i32 5
  %15 = ptrtoint ptr %nx_bit to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nx_bit, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not = icmp eq i8 %16, 0
  br i1 %tobool23.not, label %if.end.for.inc_crit_edge, label %if.then24

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22 = getelementptr %struct.prot_bits, ptr %14, i32 %j.053
  %17 = ptrtoint ptr %nx_bit29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx22, ptr %nx_bit29, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %j.053, 1
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num, align 4
  %cmp3 = icmp ult i32 %inc, %19
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.cond1.for.inc32.loopexit_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.cond1.for.inc32.loopexit_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %mask9 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or, ptr %mask9, align 8
  br label %for.inc32

for.inc32:                                        ; preds = %for.cond1.for.inc32.loopexit_crit_edge, %for.cond1.preheader.for.inc32_crit_edge, %for.body.for.inc32_crit_edge
  %inc33 = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc33, 6
  br i1 %exitcond.not, label %for.end34, label %for.inc32.for.body_crit_edge

for.inc32.for.body_crit_edge:                     ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end34:                                        ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %21 = load ptr, ptr @high_memory, align 4
  %22 = ptrtoint ptr %21 to i32
  %add = add i32 %22, 8388608
  %and = and i32 %add, -8388608
  store i32 %and, ptr getelementptr inbounds ([10 x %struct.addr_marker], ptr @address_markers, i32 0, i32 4), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptdump_debugfs_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/dump.c", i32 463, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ptdump_check_wx._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ptdump_check_wx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mm/dump.c", i32 466, i32 3}
!8 = !{ptr @ptdump_check_wx._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ptdump_check_wx._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_dump__217_475_ptdump_init6, !11, !"__initcall__kmod_dump__217_475_ptdump_init6", i1 false, i1 false}
!11 = !{!"../arch/arm/mm/dump.c", i32 475, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mm/dump.c", i32 324, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mm/dump.c", i32 326, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mm/dump.c", i32 328, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mm/dump.c", i32 330, i32 10}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mm/dump.c", i32 332, i32 10}
!22 = !{ptr @note_page.units, !23, !"units", i1 false, i1 false}
!23 = !{!"../arch/arm/mm/dump.c", i32 261, i32 20}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mm/dump.c", i32 268, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mm/dump.c", i32 277, i32 4}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mm/dump.c", i32 285, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mm/dump.c", i32 287, i32 5}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mm/dump.c", i32 291, i32 4}
!34 = !{ptr @pg_level, !35, !"pg_level", i1 false, i1 false}
!35 = !{!"../arch/arm/mm/dump.c", i32 210, i32 24}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mm/dump.c", i32 154, i32 10}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mm/dump.c", i32 159, i32 10}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mm/dump.c", i32 163, i32 10}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mm/dump.c", i32 167, i32 10}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mm/dump.c", i32 191, i32 10}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mm/dump.c", i32 192, i32 12}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mm/dump.c", i32 197, i32 10}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mm/dump.c", i32 198, i32 12}
!52 = !{ptr @section_bits, !53, !"section_bits", i1 false, i1 false}
!53 = !{!"../arch/arm/mm/dump.c", i32 138, i32 31}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mm/dump.c", i32 72, i32 10}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/mm/dump.c", i32 77, i32 10}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mm/dump.c", i32 78, i32 12}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mm/dump.c", i32 94, i32 10}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mm/dump.c", i32 98, i32 10}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/mm/dump.c", i32 102, i32 10}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mm/dump.c", i32 106, i32 10}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mm/dump.c", i32 111, i32 10}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mm/dump.c", i32 116, i32 10}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../arch/arm/mm/dump.c", i32 120, i32 10}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mm/dump.c", i32 125, i32 10}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mm/dump.c", i32 130, i32 10}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/mm/dump.c", i32 134, i32 10}
!80 = !{ptr @pte_bits, !81, !"pte_bits", i1 false, i1 false}
!81 = !{!"../arch/arm/mm/dump.c", i32 68, i32 31}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../arch/arm/mm/dump.c", i32 252, i32 2}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../arch/arm/mm/dump.c", i32 472, i32 47}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/mm/dump.c", i32 23, i32 24}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mm/dump.c", i32 24, i32 22}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/mm/dump.c", i32 26, i32 19}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../arch/arm/mm/dump.c", i32 27, i32 18}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/mm/dump.c", i32 28, i32 9}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../arch/arm/mm/dump.c", i32 29, i32 18}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../arch/arm/mm/dump.c", i32 30, i32 19}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../arch/arm/mm/dump.c", i32 31, i32 18}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../arch/arm/mm/dump.c", i32 32, i32 34}
!105 = !{ptr @address_markers, !106, !"address_markers", i1 false, i1 false}
!106 = !{!"../arch/arm/mm/dump.c", i32 21, i32 27}
!107 = !{ptr @kernel_ptdump_info, !108, !"kernel_ptdump_info", i1 false, i1 false}
!108 = !{!"../arch/arm/mm/dump.c", i32 443, i32 27}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2149081121, i64 2149081144, i64 2149081176, i64 2149081208, i64 2149081246, i64 2149081276}
!119 = !{i8 0, i8 2}
!120 = !{!"branch_weights", i32 2000, i32 1}
