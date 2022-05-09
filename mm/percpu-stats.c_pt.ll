; ModuleID = '/llk/IR_all_yes/mm/percpu-stats.c_pt.bc'
source_filename = "../mm/percpu-stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.percpu_stats = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.pcpu_alloc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.pcpu_group_info] }
%struct.pcpu_group_info = type { i32, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, ptr, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.59 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.60 = type { ptr }
%struct.pcpu_chunk = type { i32, i32, %struct.list_head, i32, %struct.pcpu_block_md, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, ptr, i32, i32, i32, [0 x i32] }
%struct.pcpu_block_md = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_percpu_stats__205_235_init_percpu_stats_debugfs7 = internal global ptr @init_percpu_stats_debugfs, section ".initcall7.init", align 4
@pcpu_stats = dso_local global { %struct.percpu_stats, [48 x i8] } zeroinitializer, align 32
@pcpu_stats_ai = dso_local global { %struct.pcpu_alloc_info, [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"percpu_stats\00", [19 x i8] zeroinitializer }, align 32
@percpu_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @percpu_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pcpu_lock = external dso_local global %struct.spinlock, align 4
@.str.1 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Percpu Memory Statistics\0AAllocation Info:\0A----------------------------------------\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  %-20s: %12lld\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unit_size\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"static_size\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reserved_size\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dyn_size\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atom_size\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alloc_size\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Global Stats:\0A----------------------------------------\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  %-20s: %12llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_alloc\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_dealloc\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nr_cur_alloc\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nr_max_alloc\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nr_chunks\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nr_max_chunks\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"min_alloc_size\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_alloc_size\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"empty_pop_pages\00", [16 x i8] zeroinitializer }, align 32
@pcpu_nr_empty_pop_pages = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Per Chunk Stats:\0A----------------------------------------\0A\00", [37 x i8] zeroinitializer }, align 32
@pcpu_reserved_chunk = external dso_local local_unnamed_addr global ptr, align 4
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Chunk: <- Reserved Chunk\0A\00", [38 x i8] zeroinitializer }, align 32
@pcpu_nr_slots = external dso_local local_unnamed_addr global i32, align 4
@pcpu_chunk_lists = external dso_local local_unnamed_addr global ptr, align 4
@pcpu_first_chunk = external dso_local local_unnamed_addr global ptr, align 4
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chunk: <- First Chunk\0A\00", [41 x i8] zeroinitializer }, align 32
@pcpu_to_depopulate_slot = external dso_local local_unnamed_addr global i32, align 4
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chunk (to_depopulate)\0A\00", [41 x i8] zeroinitializer }, align 32
@pcpu_sidelined_slot = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chunk (sidelined):\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Chunk:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"first_bit\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"free_bytes\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"contig_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sum_frag\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_frag\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cur_min_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cur_med_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cur_max_alloc\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"pcpu_stats\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 22, i32 21 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"pcpu_stats_ai\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 23, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 229, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"percpu_stats_fops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 225, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 164, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 167, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 168, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 169, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 170, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 171, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 172, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 181, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 183, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 184, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 185, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 186, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 187, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 188, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 189, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 190, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 191, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 197, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 201, i32 15 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 208, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 210, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 212, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 214, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 124, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 125, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 126, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 127, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 128, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 129, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 130, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [21 x i8] c"../mm/percpu-stats.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 131, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__initcall__kmod_percpu_stats__205_235_init_percpu_stats_debugfs7, ptr @pcpu_stats, ptr @pcpu_stats_ai, ptr @.str, ptr @percpu_stats_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_stats to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_stats_ai to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_percpu_stats_debugfs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef null, ptr noundef null, ptr noundef nonnull @percpu_stats_fops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @percpu_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @percpu_stats_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @percpu_stats_show(ptr noundef %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %alloc_buffer

alloc_buffer:                                     ; preds = %if.then4, %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_nr_slots to i32))
  %0 = load i32, ptr @pcpu_nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp26.i = icmp sgt i32 %0, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %alloc_buffer.find_max_nr_alloc.exit_crit_edge

alloc_buffer.find_max_nr_alloc.exit_crit_edge:    ; preds = %alloc_buffer
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_max_nr_alloc.exit

for.body.lr.ph.i:                                 ; preds = %alloc_buffer
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_chunk_lists to i32))
  %1 = load ptr, ptr @pcpu_chunk_lists, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc12.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %slot.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc12.i.for.body.i_crit_edge ]
  %max_nr_alloc.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %max_nr_alloc.1.lcssa.i, %for.inc12.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.list_head, ptr %1, i32 %slot.028.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn22.i = load ptr, ptr %arrayidx.i, align 4
  %cmp3.not23.i = icmp eq ptr %.pn22.i, %arrayidx.i
  br i1 %cmp3.not23.i, label %for.body.i.for.inc12.i_crit_edge, label %for.body.i.for.body4.i_crit_edge

for.body.i.for.body4.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body4.i

for.body.i.for.inc12.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body.i.for.body4.i_crit_edge
  %.pn25.i = phi ptr [ %.pn.i, %for.body4.i.for.body4.i_crit_edge ], [ %.pn22.i, %for.body.i.for.body4.i_crit_edge ]
  %max_nr_alloc.124.i = phi i32 [ %5, %for.body4.i.for.body4.i_crit_edge ], [ %max_nr_alloc.027.i, %for.body.i.for.body4.i_crit_edge ]
  %chunk.0.i = getelementptr i8, ptr %.pn25.i, i32 -8
  %3 = ptrtoint ptr %chunk.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chunk.0.i, align 4
  %5 = tail call i32 @llvm.smax.i32(i32 %max_nr_alloc.124.i, i32 %4) #6
  %6 = ptrtoint ptr %.pn25.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn25.i, align 4
  %cmp3.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp3.not.i, label %for.body4.i.for.inc12.i_crit_edge, label %for.body4.i.for.body4.i_crit_edge

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i

for.body4.i.for.inc12.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %for.body4.i.for.inc12.i_crit_edge, %for.body.i.for.inc12.i_crit_edge
  %max_nr_alloc.1.lcssa.i = phi i32 [ %max_nr_alloc.027.i, %for.body.i.for.inc12.i_crit_edge ], [ %5, %for.body4.i.for.inc12.i_crit_edge ]
  %inc.i = add nuw nsw i32 %slot.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %0
  br i1 %exitcond.not.i, label %for.inc12.i.find_max_nr_alloc.exit_crit_edge, label %for.inc12.i.for.body.i_crit_edge

for.inc12.i.for.body.i_crit_edge:                 ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc12.i.find_max_nr_alloc.exit_crit_edge:     ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_max_nr_alloc.exit

find_max_nr_alloc.exit:                           ; preds = %for.inc12.i.find_max_nr_alloc.exit_crit_edge, %alloc_buffer.find_max_nr_alloc.exit_crit_edge
  %max_nr_alloc.0.lcssa.i = phi i32 [ 0, %alloc_buffer.find_max_nr_alloc.exit_crit_edge ], [ %max_nr_alloc.1.lcssa.i, %for.inc12.i.find_max_nr_alloc.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcpu_lock) #6
  %mul = shl i32 %max_nr_alloc.0.lcssa.i, 1
  %add = or i32 %mul, 1
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #6
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %retval.0.i = select i1 %8, i32 -1, i32 %9
  %call2 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %find_max_nr_alloc.exit.cleanup_crit_edge, label %if.end

find_max_nr_alloc.exit.cleanup_crit_edge:         ; preds = %find_max_nr_alloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %find_max_nr_alloc.exit
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_nr_slots to i32))
  %10 = load i32, ptr @pcpu_nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp26.i89 = icmp sgt i32 %10, 0
  br i1 %cmp26.i89, label %for.body.lr.ph.i90, label %if.end.find_max_nr_alloc.exit108_crit_edge

if.end.find_max_nr_alloc.exit108_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_max_nr_alloc.exit108

for.body.lr.ph.i90:                               ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_chunk_lists to i32))
  %11 = load ptr, ptr @pcpu_chunk_lists, align 4
  br label %for.body.i96

for.body.i96:                                     ; preds = %for.inc12.i106.for.body.i96_crit_edge, %for.body.lr.ph.i90
  %slot.028.i91 = phi i32 [ 0, %for.body.lr.ph.i90 ], [ %inc.i104, %for.inc12.i106.for.body.i96_crit_edge ]
  %max_nr_alloc.027.i92 = phi i32 [ 0, %for.body.lr.ph.i90 ], [ %max_nr_alloc.1.lcssa.i103, %for.inc12.i106.for.body.i96_crit_edge ]
  %arrayidx.i93 = getelementptr %struct.list_head, ptr %11, i32 %slot.028.i91
  %12 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn22.i94 = load ptr, ptr %arrayidx.i93, align 4
  %cmp3.not23.i95 = icmp eq ptr %.pn22.i94, %arrayidx.i93
  br i1 %cmp3.not23.i95, label %for.body.i96.for.inc12.i106_crit_edge, label %for.body.i96.for.body4.i102_crit_edge

for.body.i96.for.body4.i102_crit_edge:            ; preds = %for.body.i96
  br label %for.body4.i102

for.body.i96.for.inc12.i106_crit_edge:            ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12.i106

for.body4.i102:                                   ; preds = %for.body4.i102.for.body4.i102_crit_edge, %for.body.i96.for.body4.i102_crit_edge
  %.pn25.i97 = phi ptr [ %.pn.i100, %for.body4.i102.for.body4.i102_crit_edge ], [ %.pn22.i94, %for.body.i96.for.body4.i102_crit_edge ]
  %max_nr_alloc.124.i98 = phi i32 [ %15, %for.body4.i102.for.body4.i102_crit_edge ], [ %max_nr_alloc.027.i92, %for.body.i96.for.body4.i102_crit_edge ]
  %chunk.0.i99 = getelementptr i8, ptr %.pn25.i97, i32 -8
  %13 = ptrtoint ptr %chunk.0.i99 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chunk.0.i99, align 4
  %15 = tail call i32 @llvm.smax.i32(i32 %max_nr_alloc.124.i98, i32 %14) #6
  %16 = ptrtoint ptr %.pn25.i97 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i100 = load ptr, ptr %.pn25.i97, align 4
  %cmp3.not.i101 = icmp eq ptr %.pn.i100, %arrayidx.i93
  br i1 %cmp3.not.i101, label %for.body4.i102.for.inc12.i106_crit_edge, label %for.body4.i102.for.body4.i102_crit_edge

for.body4.i102.for.body4.i102_crit_edge:          ; preds = %for.body4.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i102

for.body4.i102.for.inc12.i106_crit_edge:          ; preds = %for.body4.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12.i106

for.inc12.i106:                                   ; preds = %for.body4.i102.for.inc12.i106_crit_edge, %for.body.i96.for.inc12.i106_crit_edge
  %max_nr_alloc.1.lcssa.i103 = phi i32 [ %max_nr_alloc.027.i92, %for.body.i96.for.inc12.i106_crit_edge ], [ %15, %for.body4.i102.for.inc12.i106_crit_edge ]
  %inc.i104 = add nuw nsw i32 %slot.028.i91, 1
  %exitcond.not.i105 = icmp eq i32 %inc.i104, %10
  br i1 %exitcond.not.i105, label %for.inc12.i106.find_max_nr_alloc.exit108_crit_edge, label %for.inc12.i106.for.body.i96_crit_edge

for.inc12.i106.for.body.i96_crit_edge:            ; preds = %for.inc12.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i96

for.inc12.i106.find_max_nr_alloc.exit108_crit_edge: ; preds = %for.inc12.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_max_nr_alloc.exit108

find_max_nr_alloc.exit108:                        ; preds = %for.inc12.i106.find_max_nr_alloc.exit108_crit_edge, %if.end.find_max_nr_alloc.exit108_crit_edge
  %max_nr_alloc.0.lcssa.i107 = phi i32 [ 0, %if.end.find_max_nr_alloc.exit108_crit_edge ], [ %max_nr_alloc.1.lcssa.i103, %for.inc12.i106.find_max_nr_alloc.exit108_crit_edge ]
  %cmp = icmp slt i32 %max_nr_alloc.0.lcssa.i, %max_nr_alloc.0.lcssa.i107
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %find_max_nr_alloc.exit108
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcpu_lock) #6
  tail call void @vfree(ptr noundef nonnull %call2) #6
  br label %alloc_buffer

if.end5:                                          ; preds = %find_max_nr_alloc.exit108
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1) #6
  %17 = load i32, ptr getelementptr inbounds (%struct.pcpu_alloc_info, ptr @pcpu_stats_ai, i32 0, i32 3), align 4
  %conv = zext i32 %17 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef %conv) #6
  %18 = load i32, ptr @pcpu_stats_ai, align 4
  %conv6 = zext i32 %18 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, i64 noundef %conv6) #6
  %19 = load i32, ptr getelementptr inbounds (%struct.pcpu_alloc_info, ptr @pcpu_stats_ai, i32 0, i32 1), align 4
  %conv7 = zext i32 %19 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i64 noundef %conv7) #6
  %20 = load i32, ptr getelementptr inbounds (%struct.pcpu_alloc_info, ptr @pcpu_stats_ai, i32 0, i32 2), align 4
  %conv8 = zext i32 %20 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i64 noundef %conv8) #6
  %21 = load i32, ptr getelementptr inbounds (%struct.pcpu_alloc_info, ptr @pcpu_stats_ai, i32 0, i32 4), align 4
  %conv9 = zext i32 %21 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7, i64 noundef %conv9) #6
  %22 = load i32, ptr getelementptr inbounds (%struct.pcpu_alloc_info, ptr @pcpu_stats_ai, i32 0, i32 5), align 4
  %conv10 = zext i32 %22 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, i64 noundef %conv10) #6
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9) #6
  %23 = load i64, ptr @pcpu_stats, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i64 noundef %23) #6
  %24 = load i64, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 1), align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i64 noundef %24) #6
  %25 = load i64, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 2), align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i64 noundef %25) #6
  %26 = load i64, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 3), align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14, i64 noundef %26) #6
  %27 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 4), align 8
  %conv11 = zext i32 %27 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15, i64 noundef %conv11) #6
  %28 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 5), align 4
  %conv12 = zext i32 %28 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.16, i64 noundef %conv12) #6
  %29 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 6), align 8
  %conv13 = zext i32 %29 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, i64 noundef %conv13) #6
  %30 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 7), align 4
  %conv14 = zext i32 %30 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18, i64 noundef %conv14) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_nr_empty_pop_pages to i32))
  %31 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %conv15 = sext i32 %31 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.19, i64 noundef %conv15) #6
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_reserved_chunk to i32))
  %32 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %tobool16.not = icmp eq ptr %32, null
  br i1 %tobool16.not, label %if.end5.if.end18_crit_edge, label %if.then17

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.21) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_reserved_chunk to i32))
  %33 = load ptr, ptr @pcpu_reserved_chunk, align 4
  tail call fastcc void @chunk_map_stats(ptr noundef %m, ptr noundef %33, ptr noundef nonnull %call2)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end5.if.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_nr_slots to i32))
  %34 = load i32, ptr @pcpu_nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp19118 = icmp sgt i32 %34, 0
  br i1 %cmp19118, label %if.end18.for.body_crit_edge, label %if.end18.for.end46_crit_edge

if.end18.for.end46_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end46

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %if.end18.for.body_crit_edge
  %slot.0119 = phi i32 [ %inc, %for.inc45.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_chunk_lists to i32))
  %35 = load ptr, ptr @pcpu_chunk_lists, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %35, i32 %slot.0119
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn112 = load ptr, ptr %arrayidx, align 4
  %cmp23.not115 = icmp eq ptr %.pn112, %arrayidx
  br i1 %cmp23.not115, label %for.body.for.inc45_crit_edge, label %for.body.for.body25_crit_edge

for.body.for.body25_crit_edge:                    ; preds = %for.body
  br label %for.body25

for.body.for.inc45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc45

for.body25:                                       ; preds = %if.end39.for.body25_crit_edge, %for.body.for.body25_crit_edge
  %.pn116 = phi ptr [ %.pn, %if.end39.for.body25_crit_edge ], [ %.pn112, %for.body.for.body25_crit_edge ]
  %chunk.0117 = getelementptr i8, ptr %.pn116, i32 -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_first_chunk to i32))
  %37 = load ptr, ptr @pcpu_first_chunk, align 4
  %cmp26 = icmp eq ptr %chunk.0117, %37
  br i1 %cmp26, label %for.body25.if.end39_crit_edge, label %if.else

for.body25.if.end39_crit_edge:                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.else:                                          ; preds = %for.body25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_to_depopulate_slot to i32))
  %38 = load i32, ptr @pcpu_to_depopulate_slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.0119, i32 %38)
  %cmp29 = icmp eq i32 %slot.0119, %38
  br i1 %cmp29, label %if.else.if.end39_crit_edge, label %if.else32

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_sidelined_slot to i32))
  %39 = load i32, ptr @pcpu_sidelined_slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.0119, i32 %39)
  %cmp33 = icmp eq i32 %slot.0119, %39
  %.str.24..str.25 = select i1 %cmp33, ptr @.str.24, ptr @.str.25
  br label %if.end39

if.end39:                                         ; preds = %if.else32, %if.else.if.end39_crit_edge, %for.body25.if.end39_crit_edge
  %.str.23.sink = phi ptr [ @.str.22, %for.body25.if.end39_crit_edge ], [ @.str.23, %if.else.if.end39_crit_edge ], [ %.str.24..str.25, %if.else32 ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.23.sink) #6
  tail call fastcc void @chunk_map_stats(ptr noundef %m, ptr noundef %chunk.0117, ptr noundef nonnull %call2)
  %40 = ptrtoint ptr %.pn116 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load ptr, ptr %.pn116, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_chunk_lists to i32))
  %41 = load ptr, ptr @pcpu_chunk_lists, align 4
  %arrayidx22 = getelementptr %struct.list_head, ptr %41, i32 %slot.0119
  %cmp23.not = icmp eq ptr %.pn, %arrayidx22
  br i1 %cmp23.not, label %if.end39.for.inc45_crit_edge, label %if.end39.for.body25_crit_edge

if.end39.for.body25_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

if.end39.for.inc45_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc45

for.inc45:                                        ; preds = %if.end39.for.inc45_crit_edge, %for.body.for.inc45_crit_edge
  %inc = add nuw nsw i32 %slot.0119, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcpu_nr_slots to i32))
  %42 = load i32, ptr @pcpu_nr_slots, align 4
  %cmp19 = icmp slt i32 %inc, %42
  br i1 %cmp19, label %for.inc45.for.body_crit_edge, label %for.inc45.for.end46_crit_edge

for.inc45.for.end46_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end46

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end46:                                        ; preds = %for.inc45.for.end46_crit_edge, %if.end18.for.end46_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcpu_lock) #6
  tail call void @vfree(ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end46, %find_max_nr_alloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end46 ], [ -12, %find_max_nr_alloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chunk_map_stats(ptr noundef %m, ptr nocapture noundef readonly %chunk, ptr noundef %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_map = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 6
  %end_offset = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 13
  %0 = ptrtoint ptr %end_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end_offset, align 4
  %div.neg = sdiv i32 %1, -4
  %nr_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 15
  %2 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_pages.i, align 4
  %4 = shl i32 %3, 10
  %div1.i.i = and i32 %4, 1073740800
  %sub = add nsw i32 %div.neg, %div1.i.i
  %sub2 = add nsw i32 %sub, -1
  %5 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_map, align 4
  %call5.i = tail call i32 @_find_last_bit(ptr noundef %6, i32 noundef %sub2) #6
  %7 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alloc_map, align 4
  %div3.i = lshr i32 %call5.i, 5
  %arrayidx.i = getelementptr i32, ptr %8, i32 %div3.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %call5.i, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %add = add i32 %call5.i, 1
  %spec.select = select i1 %tobool.not, i32 0, i32 %add
  %start_offset = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 12
  %13 = ptrtoint ptr %start_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_offset, align 4
  %div6 = sdiv i32 %14, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div6, i32 %spec.select)
  %cmp113 = icmp slt i32 %div6, %spec.select
  br i1 %cmp113, label %while.body.lr.ph, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

while.body.lr.ph:                                 ; preds = %entry
  %bound_map = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %start.0116 = phi i32 [ %div6, %while.body.lr.ph ], [ %call14, %if.end.while.body_crit_edge ]
  %as_len.0114 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %15 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %alloc_map, align 4
  %div3.i107 = lshr i32 %start.0116, 5
  %arrayidx.i108 = getelementptr i32, ptr %16, i32 %div3.i107
  %17 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i108, align 4
  %and.i109 = and i32 %start.0116, 31
  %19 = shl nuw i32 1, %and.i109
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp eq i32 %20, 0
  br i1 %tobool9.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %bound_map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bound_map, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %.sink131 = phi ptr [ %22, %if.then ], [ %16, %while.body.if.end_crit_edge ]
  %.sink = phi i32 [ 1, %if.then ], [ -1, %while.body.if.end_crit_edge ]
  %add13 = add nsw i32 %start.0116, 1
  %call14 = tail call i32 @_find_next_bit_be(ptr noundef %.sink131, i32 noundef %spec.select, i32 noundef %add13) #6
  %23 = getelementptr i32, ptr %buffer, i32 %as_len.0114
  %sub16 = sub i32 %call14, %start.0116
  %mul = shl i32 %sub16, 2
  %inc = add i32 %as_len.0114, 1
  %mul18 = mul i32 %mul, %.sink
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul18, ptr %23, align 4
  %cmp = icmp slt i32 %call14, %spec.select
  br i1 %cmp, label %if.end.while.body_crit_edge, label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %as_len.0114)
  %cmp19 = icmp ult i32 %as_len.0114, 2147483647
  br i1 %cmp19, label %if.then20, label %while.end.if.end38_crit_edge

while.end.if.end38_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then20:                                        ; preds = %while.end
  tail call void @sort(ptr noundef %buffer, i32 noundef %inc, i32 noundef 4, ptr noundef nonnull @cmpint, ptr noundef null) #6
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp21118 = icmp slt i32 %26, 0
  br i1 %cmp21118, label %if.then20.for.body_crit_edge, label %if.then20.for.end_crit_edge

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then20.for.body_crit_edge:                     ; preds = %if.then20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then20.for.body_crit_edge
  %27 = phi i32 [ %30, %for.body.for.body_crit_edge ], [ %26, %if.then20.for.body_crit_edge ]
  %max_frag.0124 = phi i32 [ %28, %for.body.for.body_crit_edge ], [ 0, %if.then20.for.body_crit_edge ]
  %sum_frag.0123 = phi i32 [ %sub23, %for.body.for.body_crit_edge ], [ 0, %if.then20.for.body_crit_edge ]
  %p.0122 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buffer, %if.then20.for.body_crit_edge ]
  %i.0121 = phi i32 [ %inc30, %for.body.for.body_crit_edge ], [ 0, %if.then20.for.body_crit_edge ]
  %sub23 = sub i32 %sum_frag.0123, %27
  %mul24 = sub i32 0, %27
  %28 = tail call i32 @llvm.smax.i32(i32 %max_frag.0124, i32 %mul24)
  %inc30 = add nuw nsw i32 %i.0121, 1
  %incdec.ptr = getelementptr i32, ptr %p.0122, i32 1
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp21 = icmp slt i32 %30, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc30, i32 %inc)
  %cmp22 = icmp slt i32 %inc30, %inc
  %or.cond = select i1 %cmp21, i1 %cmp22, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then20.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.then20.for.end_crit_edge ], [ %inc30, %for.body.for.end_crit_edge ]
  %sum_frag.0.lcssa = phi i32 [ 0, %if.then20.for.end_crit_edge ], [ %sub23, %for.body.for.end_crit_edge ]
  %max_frag.0.lcssa = phi i32 [ 0, %if.then20.for.end_crit_edge ], [ %28, %for.body.for.end_crit_edge ]
  %arrayidx31 = getelementptr i32, ptr %buffer, i32 %i.0.lcssa
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx31, align 4
  %sub33 = add i32 %as_len.0114, %i.0.lcssa
  %div34 = sdiv i32 %sub33, 2
  %arrayidx35 = getelementptr i32, ptr %buffer, i32 %div34
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx35, align 4
  %arrayidx37 = getelementptr i32, ptr %buffer, i32 %as_len.0114
  %35 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx37, align 4
  br label %if.end38

if.end38:                                         ; preds = %for.end, %while.end.if.end38_crit_edge, %entry.if.end38_crit_edge
  %sum_frag.1 = phi i32 [ %sum_frag.0.lcssa, %for.end ], [ 0, %while.end.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ]
  %max_frag.1 = phi i32 [ %max_frag.0.lcssa, %for.end ], [ 0, %while.end.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ]
  %cur_min_alloc.0 = phi i32 [ %32, %for.end ], [ 0, %while.end.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ]
  %cur_med_alloc.0 = phi i32 [ %34, %for.end ], [ 0, %while.end.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ]
  %cur_max_alloc.0 = phi i32 [ %36, %for.end ], [ 0, %while.end.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ]
  %37 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chunk, align 4
  %conv = sext i32 %38 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, i64 noundef %conv) #6
  %max_alloc_size = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 1
  %39 = ptrtoint ptr %max_alloc_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_alloc_size, align 4
  %conv39 = zext i32 %40 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18, i64 noundef %conv39) #6
  %nr_empty_pop_pages = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 17
  %41 = ptrtoint ptr %nr_empty_pop_pages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_empty_pop_pages, align 4
  %conv40 = sext i32 %42 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.19, i64 noundef %conv40) #6
  %first_free = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 6
  %43 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %first_free, align 4
  %conv41 = sext i32 %44 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26, i64 noundef %conv41) #6
  %free_bytes = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 3
  %45 = ptrtoint ptr %free_bytes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %free_bytes, align 4
  %conv42 = sext i32 %46 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.27, i64 noundef %conv42) #6
  %contig_hint = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %contig_hint to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %contig_hint, align 4
  %conv43 = sext i32 %48 to i64
  %mul44 = shl nsw i64 %conv43, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.28, i64 noundef %mul44) #6
  %conv45 = sext i32 %sum_frag.1 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.29, i64 noundef %conv45) #6
  %49 = zext i32 %max_frag.1 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.30, i64 noundef %49) #6
  %conv47 = sext i32 %cur_min_alloc.0 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.31, i64 noundef %conv47) #6
  %conv48 = sext i32 %cur_med_alloc.0 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.32, i64 noundef %conv48) #6
  %conv49 = sext i32 %cur_max_alloc.0 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.33, i64 noundef %conv49) #6
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmpint(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_percpu_stats__205_235_init_percpu_stats_debugfs7, !1, !"__initcall__kmod_percpu_stats__205_235_init_percpu_stats_debugfs7", i1 false, i1 false}
!1 = !{!"../mm/percpu-stats.c", i32 235, i32 1}
!2 = !{ptr @pcpu_stats, !3, !"pcpu_stats", i1 false, i1 false}
!3 = !{!"../mm/percpu-stats.c", i32 22, i32 21}
!4 = !{ptr @pcpu_stats_ai, !5, !"pcpu_stats_ai", i1 false, i1 false}
!5 = !{!"../mm/percpu-stats.c", i32 23, i32 24}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../mm/percpu-stats.c", i32 229, i32 22}
!8 = !{ptr @percpu_stats_fops, !9, !"percpu_stats_fops", i1 false, i1 false}
!9 = !{!"../mm/percpu-stats.c", i32 225, i32 1}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/percpu-stats.c", i32 164, i32 4}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/percpu-stats.c", i32 167, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../mm/percpu-stats.c", i32 168, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../mm/percpu-stats.c", i32 169, i32 2}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../mm/percpu-stats.c", i32 170, i32 2}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../mm/percpu-stats.c", i32 171, i32 2}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../mm/percpu-stats.c", i32 172, i32 2}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../mm/percpu-stats.c", i32 181, i32 4}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../mm/percpu-stats.c", i32 183, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../mm/percpu-stats.c", i32 184, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../mm/percpu-stats.c", i32 185, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../mm/percpu-stats.c", i32 186, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../mm/percpu-stats.c", i32 187, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../mm/percpu-stats.c", i32 188, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../mm/percpu-stats.c", i32 189, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../mm/percpu-stats.c", i32 190, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../mm/percpu-stats.c", i32 191, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../mm/percpu-stats.c", i32 197, i32 4}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../mm/percpu-stats.c", i32 201, i32 15}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../mm/percpu-stats.c", i32 208, i32 17}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../mm/percpu-stats.c", i32 210, i32 17}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../mm/percpu-stats.c", i32 212, i32 17}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../mm/percpu-stats.c", i32 214, i32 17}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../mm/percpu-stats.c", i32 124, i32 2}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../mm/percpu-stats.c", i32 125, i32 2}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../mm/percpu-stats.c", i32 126, i32 2}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../mm/percpu-stats.c", i32 127, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../mm/percpu-stats.c", i32 128, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../mm/percpu-stats.c", i32 129, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../mm/percpu-stats.c", i32 130, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../mm/percpu-stats.c", i32 131, i32 2}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
