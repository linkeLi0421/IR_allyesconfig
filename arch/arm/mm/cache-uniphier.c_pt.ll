; ModuleID = '/llk/IR_all_yes/arch/arm/mm/cache-uniphier.c_pt.bc'
source_filename = "../arch/arm/mm/cache-uniphier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.uniphier_cache_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.list_head }

@uniphier_cache_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-system-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cache-level\00", [20 x i8] zeroinitializer }, align 32
@uniphier_cache_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013uniphier: failed to initialize L2 cache\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uniphier_cache_init\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mm/cache-uniphier.c\00", [35 x i8] zeroinitializer }, align 32
@uniphier_cache_init._entry_ptr = internal global ptr @uniphier_cache_init._entry, section ".printk_index", align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@uniphier_cache_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016uniphier: enabled outer cache (cache level: %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@uniphier_cache_init._entry_ptr.6 = internal global ptr @uniphier_cache_init._entry.4, section ".printk_index", align 4
@__uniphier_cache_init._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 323, ptr null, ptr null }, align 1
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013uniphier: L%d: not compatible with uniphier cache\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__uniphier_cache_init\00", [42 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry_ptr = internal global ptr @__uniphier_cache_init._entry, section ".printk_index", align 4
@__uniphier_cache_init._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 328, ptr null, ptr null }, align 1
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013uniphier: L%d: cache-level is not specified\0A\00", [49 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry_ptr.11 = internal global ptr @__uniphier_cache_init._entry.9, section ".printk_index", align 4
@__uniphier_cache_init._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 334, ptr null, ptr null }, align 1
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013uniphier: L%d: cache-level is unexpected value %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry_ptr.14 = internal global ptr @__uniphier_cache_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cache-unified\00", [18 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.3, i32 339, ptr null, ptr null }, align 1
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013uniphier: L%d: cache-unified is not specified\0A\00", [47 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry_ptr.18 = internal global ptr @__uniphier_cache_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cache-line-size\00", [16 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.3, i32 350, ptr null, ptr null }, align 1
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013uniphier: L%d: cache-line-size is unspecified or invalid\0A\00", [36 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry_ptr.22 = internal global ptr @__uniphier_cache_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache-sets\00", [21 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.3, i32 358, ptr null, ptr null }, align 1
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013uniphier: L%d: cache-sets is unspecified or invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry_ptr.26 = internal global ptr @__uniphier_cache_init._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache-size\00", [21 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry.28 = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.8, ptr @.str.3, i32 366, ptr null, ptr null }, align 1
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013uniphier: L%d: cache-size is unspecified or invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry_ptr.30 = internal global ptr @__uniphier_cache_init._entry.28, section ".printk_index", align 4
@__uniphier_cache_init._entry.31 = internal constant %struct.pi_entry { ptr @.str.32, ptr @.str.8, ptr @.str.3, i32 376, ptr null, ptr null }, align 1
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013uniphier: L%d: failed to map control register\0A\00", [47 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry_ptr.33 = internal global ptr @__uniphier_cache_init._entry.31, section ".printk_index", align 4
@__uniphier_cache_init._entry.34 = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.8, ptr @.str.3, i32 383, ptr null, ptr null }, align 1
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013uniphier: L%d: failed to map revision register\0A\00", [46 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry_ptr.36 = internal global ptr @__uniphier_cache_init._entry.34, section ".printk_index", align 4
@__uniphier_cache_init._entry.37 = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.8, ptr @.str.3, i32 390, ptr null, ptr null }, align 1
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013uniphier: L%d: failed to map operation register\0A\00", [45 x i8] zeroinitializer }, align 32
@__uniphier_cache_init._entry_ptr.39 = internal global ptr @__uniphier_cache_init._entry.37, section ".printk_index", align 4
@uniphier_cache_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @uniphier_cache_list, ptr @uniphier_cache_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 17, i64 18, i64 22]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 459, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 475, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 492, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 322, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 328, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 333, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 338, i32 33 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 339, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 347, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 349, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 355, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 357, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 363, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 365, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 376, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 383, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 390, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"uniphier_cache_list\00", align 1
@___asan_gen_.107 = private constant [32 x i8] c"../arch/arm/mm/cache-uniphier.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 88, i32 8 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__uniphier_cache_init._entry, ptr @__uniphier_cache_init._entry.12, ptr @__uniphier_cache_init._entry.16, ptr @__uniphier_cache_init._entry.20, ptr @__uniphier_cache_init._entry.24, ptr @__uniphier_cache_init._entry.28, ptr @__uniphier_cache_init._entry.31, ptr @__uniphier_cache_init._entry.34, ptr @__uniphier_cache_init._entry.37, ptr @__uniphier_cache_init._entry.9, ptr @__uniphier_cache_init._entry_ptr, ptr @__uniphier_cache_init._entry_ptr.11, ptr @__uniphier_cache_init._entry_ptr.14, ptr @__uniphier_cache_init._entry_ptr.18, ptr @__uniphier_cache_init._entry_ptr.22, ptr @__uniphier_cache_init._entry_ptr.26, ptr @__uniphier_cache_init._entry_ptr.30, ptr @__uniphier_cache_init._entry_ptr.33, ptr @__uniphier_cache_init._entry_ptr.36, ptr @__uniphier_cache_init._entry_ptr.39, ptr @uniphier_cache_init._entry, ptr @uniphier_cache_init._entry.4, ptr @uniphier_cache_init._entry_ptr, ptr @uniphier_cache_init._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @uniphier_cache_list], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_cache_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_cache_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_cache_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uniphier_cache_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %cache_level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cache_level) #8
  %0 = ptrtoint ptr %cache_level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cache_level, align 4, !annotation !74
  %call.i28 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @uniphier_cache_match, ptr noundef null) #8
  %tobool.not29 = icmp eq ptr %call.i28, null
  br i1 %tobool.not29, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %call.i30 = phi ptr [ %call.i, %if.end.while.body_crit_edge ], [ %call.i28, %entry.while.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i30, ptr noundef nonnull @.str, ptr noundef nonnull %cache_level, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool2.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool2.not, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %1 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cache_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.end5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %call.i = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %call.i30, ptr noundef nonnull @uniphier_cache_match, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true
  %call6 = call fastcc i32 @__uniphier_cache_init(ptr noundef nonnull %call.i30, ptr noundef nonnull %cache_level) #11
  call void @of_node_put(ptr noundef nonnull %call.i30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end13_crit_edge, label %if.then8

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then8:                                         ; preds = %if.end5
  %3 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cache_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp9 = icmp eq i32 %4, 2
  br i1 %cmp9, label %do.end, label %if.end12

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %4, -1
  %5 = ptrtoint ptr %cache_level to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec, ptr %cache_level, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end5.if.end13_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @outer_cache to i32))
  store ptr @uniphier_cache_inv_range, ptr @outer_cache, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  store ptr @uniphier_cache_clean_range, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  store ptr @uniphier_cache_flush_range, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3) to i32))
  store ptr @uniphier_cache_flush_all, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 4) to i32))
  store ptr @uniphier_cache_disable, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 4), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 5) to i32))
  store ptr @uniphier_cache_sync, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 5), align 4
  call fastcc void @uniphier_cache_enable() #11
  %6 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache_level, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.end13 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cache_level) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uniphier_cache_init(ptr noundef %np, ptr nocapture noundef %cache_level) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %level = alloca i32, align 4
  %cache_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #8
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %level, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cache_size) #8
  %1 = ptrtoint ptr %cache_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cache_size, align 4, !annotation !74
  %call = tail call ptr @of_match_node(ptr noundef nonnull @uniphier_cache_match, ptr noundef %np) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_level, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %level, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cache_level, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %5) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level, align 4
  %8 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cache_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %9, i32 noundef %7) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.15, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_level, align 4
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %11) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 40) #13
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %line_size = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 6
  %call.i.i196 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.19, ptr noundef %line_size, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i196)
  %tobool31.not = icmp sgt i32 %call.i.i196, -1
  br i1 %tobool31.not, label %lor.lhs.false, label %if.end29.err_crit_edge

if.end29.err_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

lor.lhs.false:                                    ; preds = %if.end29
  %13 = ptrtoint ptr %line_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %line_size, align 8
  %15 = call i32 @llvm.ctpop.i32(i32 %14) #8, !range !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %if.end40, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end40:                                         ; preds = %lor.lhs.false
  %nsets = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 5
  %call.i.i197 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.23, ptr noundef %nsets, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i197)
  %tobool42.not = icmp sgt i32 %call.i.i197, -1
  br i1 %tobool42.not, label %lor.lhs.false43, label %if.end40.err_crit_edge

if.end40.err_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

lor.lhs.false43:                                  ; preds = %if.end40
  %17 = ptrtoint ptr %nsets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nsets, align 4
  %19 = call i32 @llvm.ctpop.i32(i32 %18) #8, !range !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %if.end52, label %lor.lhs.false43.err_crit_edge

lor.lhs.false43.err_crit_edge:                    ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end52:                                         ; preds = %lor.lhs.false43
  %call.i.i202 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.27, ptr noundef nonnull %cache_size, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i202)
  %tobool54.not = icmp sgt i32 %call.i.i202, -1
  br i1 %tobool54.not, label %lor.lhs.false55, label %if.end52.err_crit_edge

if.end52.err_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

lor.lhs.false55:                                  ; preds = %if.end52
  %21 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cache_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp56 = icmp eq i32 %22, 0
  br i1 %cmp56, label %lor.lhs.false55.err_crit_edge, label %lor.lhs.false57

lor.lhs.false55.err_crit_edge:                    ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

lor.lhs.false57:                                  ; preds = %lor.lhs.false55
  %23 = ptrtoint ptr %nsets to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nsets, align 4
  %25 = ptrtoint ptr %line_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %line_size, align 8
  %mul = mul i32 %26, %24
  %rem = urem i32 %22, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool60.not = icmp eq i32 %rem, 0
  br i1 %tobool60.not, label %if.end67, label %lor.lhs.false57.err_crit_edge

lor.lhs.false57.err_crit_edge:                    ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end67:                                         ; preds = %lor.lhs.false57
  %div = udiv i32 %22, %24
  %div70 = udiv i32 %div, %26
  %sub71 = sub i32 32, %div70
  %shr = lshr i32 -1, %sub71
  %way_mask = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %way_mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr, ptr %way_mask, align 8
  %call72 = call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call72, ptr %call7.i.i, align 8
  %tobool74.not = icmp eq ptr %call72, null
  br i1 %tobool74.not, label %if.end67.err_crit_edge, label %if.end81

if.end67.err_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end81:                                         ; preds = %if.end67
  %call82 = call ptr @of_iomap(ptr noundef %np, i32 noundef 1) #8
  %rev_base = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %rev_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call82, ptr %rev_base, align 4
  %tobool84.not = icmp eq ptr %call82, null
  br i1 %tobool84.not, label %if.end81.err_crit_edge, label %if.end91

if.end81.err_crit_edge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end91:                                         ; preds = %if.end81
  %call92 = call ptr @of_iomap(ptr noundef %np, i32 noundef 2) #8
  %op_base = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %op_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call92, ptr %op_base, align 8
  %tobool94.not = icmp eq ptr %call92, null
  br i1 %tobool94.not, label %if.end91.err_crit_edge, label %if.end101

if.end91.err_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end101:                                        ; preds = %if.end91
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %add.ptr = getelementptr i8, ptr %32, i32 3072
  %way_ctrl_base = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %way_ctrl_base to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr, ptr %way_ctrl_base, align 4
  %34 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cache_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp103 = icmp eq i32 %35, 2
  br i1 %cmp103, label %if.then104, label %if.end101.if.end120_crit_edge

if.end101.if.end120_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then104:                                       ; preds = %if.end101
  %36 = ptrtoint ptr %rev_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rev_base, align 4
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !76
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %39)
  %cmp110 = icmp ult i32 %39, 23
  br i1 %cmp110, label %if.then111, label %if.then104.if.end112_crit_edge

if.then104.if.end112_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then111:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  %range_op_max_size = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %range_op_max_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4194304, ptr %range_op_max_size, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.then104.if.end112_crit_edge
  %41 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %if.end112.if.end120_crit_edge [
    i32 17, label %if.end112.if.end120.sink.split_crit_edge
    i32 18, label %if.end112.sw.bb116_crit_edge
    i32 22, label %if.end112.sw.bb116_crit_edge206
  ]

if.end112.sw.bb116_crit_edge206:                  ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb116

if.end112.sw.bb116_crit_edge:                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb116

if.end112.if.end120.sink.split_crit_edge:         ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120.sink.split

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

sw.bb116:                                         ; preds = %if.end112.sw.bb116_crit_edge, %if.end112.sw.bb116_crit_edge206
  br label %if.end120.sink.split

if.end120.sink.split:                             ; preds = %sw.bb116, %if.end112.if.end120.sink.split_crit_edge
  %.sink205 = phi i32 [ 2112, %sw.bb116 ], [ 2160, %if.end112.if.end120.sink.split_crit_edge ]
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i, align 8
  %add.ptr114 = getelementptr i8, ptr %43, i32 %.sink205
  %44 = ptrtoint ptr %way_ctrl_base to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr114, ptr %way_ctrl_base, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.end120.sink.split, %if.end112.if.end120_crit_edge, %if.end101.if.end120_crit_edge
  %45 = ptrtoint ptr %line_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %line_size, align 8
  %range_op_max_size122 = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %range_op_max_size122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %range_op_max_size122, align 4
  %sub123 = sub i32 %48, %46
  store i32 %sub123, ptr %range_op_max_size122, align 4
  %list = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %list, ptr %prev.i, align 4
  %51 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @uniphier_cache_list, i32 0, i32 1), align 4
  %call.i.i203 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %51, ptr noundef nonnull @uniphier_cache_list) #8
  br i1 %call.i.i203, label %if.end.i.i, label %if.end120.list_add_tail.exit_crit_edge

if.end120.list_add_tail.exit_crit_edge:           ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @uniphier_cache_list, i32 0, i32 1), align 4
  %52 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @uniphier_cache_list, ptr %list, align 8
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %prev.i, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end120.list_add_tail.exit_crit_edge
  %call125 = call ptr @of_find_next_cache_node(ptr noundef %np) #8
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %list_add_tail.exit.if.end129_crit_edge, label %if.then127

list_add_tail.exit.if.end129_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then127:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cache_level, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %cache_level, align 4
  %call128 = call fastcc i32 @__uniphier_cache_init(ptr noundef nonnull %call125, ptr noundef %cache_level) #11
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %list_add_tail.exit.if.end129_crit_edge
  %ret.0 = phi i32 [ %call128, %if.then127 ], [ 0, %list_add_tail.exit.if.end129_crit_edge ]
  call void @of_node_put(ptr noundef %call125) #8
  br label %cleanup

err:                                              ; preds = %if.end91.err_crit_edge, %if.end81.err_crit_edge, %if.end67.err_crit_edge, %lor.lhs.false57.err_crit_edge, %lor.lhs.false55.err_crit_edge, %if.end52.err_crit_edge, %lor.lhs.false43.err_crit_edge, %if.end40.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end29.err_crit_edge
  %.str.38.sink = phi ptr [ @.str.21, %lor.lhs.false.err_crit_edge ], [ @.str.21, %if.end29.err_crit_edge ], [ @.str.25, %lor.lhs.false43.err_crit_edge ], [ @.str.25, %if.end40.err_crit_edge ], [ @.str.29, %if.end52.err_crit_edge ], [ @.str.29, %lor.lhs.false55.err_crit_edge ], [ @.str.29, %lor.lhs.false57.err_crit_edge ], [ @.str.32, %if.end67.err_crit_edge ], [ @.str.35, %if.end81.err_crit_edge ], [ @.str.38, %if.end91.err_crit_edge ]
  %ret.1 = phi i32 [ -22, %lor.lhs.false.err_crit_edge ], [ -22, %if.end29.err_crit_edge ], [ -22, %lor.lhs.false43.err_crit_edge ], [ -22, %if.end40.err_crit_edge ], [ -22, %if.end52.err_crit_edge ], [ -22, %lor.lhs.false55.err_crit_edge ], [ -22, %lor.lhs.false57.err_crit_edge ], [ -12, %if.end67.err_crit_edge ], [ -12, %if.end81.err_crit_edge ], [ -12, %if.end91.err_crit_edge ]
  %57 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cache_level, align 4
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.38.sink, i32 noundef %58) #12
  %op_base130 = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %op_base130 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %op_base130, align 8
  call void @iounmap(ptr noundef %60) #8
  %rev_base131 = getelementptr inbounds %struct.uniphier_cache_data, ptr %call7.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %rev_base131 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rev_base131, align 4
  call void @iounmap(ptr noundef %62) #8
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call7.i.i, align 8
  call void @iounmap(ptr noundef %64) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end129, %if.end25.cleanup_crit_edge, %do.end22, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -22, %do.end14 ], [ %ret.1, %err ], [ %ret.0, %if.end129 ], [ -22, %do.end22 ], [ -22, %do.end ], [ -12, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cache_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_cache_inv_range(i32 noundef %start, i32 noundef %end) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @uniphier_cache_maint_range(i32 noundef %start, i32 noundef %end, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_cache_clean_range(i32 noundef %start, i32 noundef %end) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @uniphier_cache_maint_range(i32 noundef %start, i32 noundef %end, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_cache_flush_range(i32 noundef %start, i32 noundef %end) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @uniphier_cache_maint_range(i32 noundef %start, i32 noundef %end, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_cache_flush_all() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn7.i = load ptr, ptr @uniphier_cache_list, align 4
  %cmp.not8.i = icmp eq ptr %.pn7.i, @uniphier_cache_list
  br i1 %cmp.not8.i, label %entry.uniphier_cache_maint_all.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.uniphier_cache_maint_all.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_cache_maint_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn9.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn7.i, %entry.for.body.i_crit_edge ]
  %data.0.i = getelementptr i8, ptr %.pn9.i, i32 -32
  tail call fastcc void @__uniphier_cache_maint_common(ptr noundef %data.0.i, i32 noundef 0, i32 noundef 0, i32 noundef 131074) #8
  %op_base.i.i.i = getelementptr i8, ptr %.pn9.i, i32 -24
  %0 = ptrtoint ptr %op_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 134217728) #8, !srcloc !78
  %2 = ptrtoint ptr %op_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_base.i.i.i, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %3, i32 580
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #8, !srcloc !76
  %5 = ptrtoint ptr %.pn9.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn9.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @uniphier_cache_list
  br i1 %cmp.not.i, label %for.body.i.uniphier_cache_maint_all.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.uniphier_cache_maint_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_cache_maint_all.exit

uniphier_cache_maint_all.exit:                    ; preds = %for.body.i.uniphier_cache_maint_all.exit_crit_edge, %entry.uniphier_cache_maint_all.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_cache_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @uniphier_cache_list, i32 0, i32 1), align 4
  %cmp.not8 = icmp eq ptr %.pn7, @uniphier_cache_list
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn9 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn7, %entry.for.body_crit_edge ]
  %data.0 = getelementptr i8, ptr %.pn9, i32 -32
  %0 = ptrtoint ptr %data.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !78
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn9, i32 0, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %.pn, @uniphier_cache_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.pn7.i.i = load ptr, ptr @uniphier_cache_list, align 4
  %cmp.not8.i.i = icmp eq ptr %.pn7.i.i, @uniphier_cache_list
  br i1 %cmp.not8.i.i, label %for.end.uniphier_cache_flush_all.exit_crit_edge, label %for.end.for.body.i.i_crit_edge

for.end.for.body.i.i_crit_edge:                   ; preds = %for.end
  br label %for.body.i.i

for.end.uniphier_cache_flush_all.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_cache_flush_all.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end.for.body.i.i_crit_edge
  %.pn9.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn7.i.i, %for.end.for.body.i.i_crit_edge ]
  %data.0.i.i = getelementptr i8, ptr %.pn9.i.i, i32 -32
  tail call fastcc void @__uniphier_cache_maint_common(ptr noundef %data.0.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 131074) #8
  %op_base.i.i.i.i = getelementptr i8, ptr %.pn9.i.i, i32 -24
  %3 = ptrtoint ptr %op_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %4, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 134217728) #8, !srcloc !78
  %5 = ptrtoint ptr %op_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op_base.i.i.i.i, align 4
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %6, i32 580
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i) #8, !srcloc !76
  %8 = ptrtoint ptr %.pn9.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i.i = load ptr, ptr %.pn9.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @uniphier_cache_list
  br i1 %cmp.not.i.i, label %for.body.i.i.uniphier_cache_flush_all.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.uniphier_cache_flush_all.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_cache_flush_all.exit

uniphier_cache_flush_all.exit:                    ; preds = %for.body.i.i.uniphier_cache_flush_all.exit_crit_edge, %for.end.uniphier_cache_flush_all.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_cache_sync() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn7 = load ptr, ptr @uniphier_cache_list, align 4
  %cmp.not8 = icmp eq ptr %.pn7, @uniphier_cache_list
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn9 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn7, %entry.for.body_crit_edge ]
  %op_base.i = getelementptr i8, ptr %.pn9, i32 -24
  %0 = ptrtoint ptr %op_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #8, !srcloc !78
  %2 = ptrtoint ptr %op_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 580
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !76
  %5 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, @uniphier_cache_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_cache_enable() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @uniphier_cache_maint_all(i32 noundef 0) #8
  %.pn8 = load ptr, ptr @uniphier_cache_list, align 4
  %cmp.not9 = icmp eq ptr %.pn8, @uniphier_cache_list
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn10 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn8, %entry.for.body_crit_edge ]
  %data.0 = getelementptr i8, ptr %.pn10, i32 -32
  %0 = ptrtoint ptr %data.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16778752) #8, !srcloc !78
  tail call fastcc void @__uniphier_cache_set_active_ways(ptr noundef %data.0) #11
  %2 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, @uniphier_cache_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_next_cache_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_cache_maint_range(i32 noundef %start, i32 noundef %end, i32 noundef %operation) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn10 = load ptr, ptr @uniphier_cache_list, align 4
  %cmp.not11 = icmp eq ptr %.pn10, @uniphier_cache_list
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %or.i = or i32 %operation, 131072
  br label %for.body

for.body:                                         ; preds = %__uniphier_cache_maint_range.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn12 = phi ptr [ %.pn10, %for.body.lr.ph ], [ %.pn, %__uniphier_cache_maint_range.exit.for.body_crit_edge ]
  %data.0 = getelementptr i8, ptr %.pn12, i32 -32
  %line_size.i = getelementptr i8, ptr %.pn12, i32 -8
  %0 = ptrtoint ptr %line_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line_size.i, align 4
  %neg.i = sub i32 0, %1
  %and.i = and i32 %neg.i, %start
  %sub1.i = sub i32 %end, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %neg.i)
  %cmp.not.i = icmp ult i32 %sub1.i, %neg.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !79

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__uniphier_cache_maint_common(ptr noundef %data.0, i32 noundef 0, i32 noundef 0, i32 noundef %or.i) #8
  %op_base.i.i7 = getelementptr i8, ptr %.pn12, i32 -24
  %2 = ptrtoint ptr %op_base.i.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_base.i.i7, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %3, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8, i32 134217728) #8, !srcloc !78
  %4 = ptrtoint ptr %op_base.i.i7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_base.i.i7, align 4
  %add.ptr2.i.i9 = getelementptr i8, ptr %5, i32 580
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i9) #8, !srcloc !76
  br label %__uniphier_cache_maint_range.exit

if.end.i:                                         ; preds = %for.body
  %sub.i = add i32 %1, -1
  %add.i = add i32 %sub.i, %sub1.i
  %and10.i = and i32 %add.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not34.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not34.i, label %if.end.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %range_op_max_size.i = getelementptr i8, ptr %.pn12, i32 -4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %start.addr.036.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ %add13.i, %while.body.i.while.body.i_crit_edge ]
  %size.035.i = phi i32 [ %and10.i, %while.body.lr.ph.i ], [ %sub14.i, %while.body.i.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %range_op_max_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %range_op_max_size.i, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %size.035.i, i32 %8) #8
  tail call fastcc void @__uniphier_cache_maint_common(ptr noundef %data.0, i32 noundef %start.addr.036.i, i32 noundef %9, i32 noundef %operation) #8
  %add13.i = add i32 %9, %start.addr.036.i
  %sub14.i = sub i32 %size.035.i, %9
  %tobool11.not.i = icmp eq i32 %sub14.i, 0
  br i1 %tobool11.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %op_base.i.i = getelementptr i8, ptr %.pn12, i32 -24
  %10 = ptrtoint ptr %op_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %op_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 134217728) #8, !srcloc !78
  %12 = ptrtoint ptr %op_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %op_base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %13, i32 580
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !76
  br label %__uniphier_cache_maint_range.exit

__uniphier_cache_maint_range.exit:                ; preds = %while.end.i, %if.then.i
  %15 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, @uniphier_cache_list
  br i1 %cmp.not, label %__uniphier_cache_maint_range.exit.for.end_crit_edge, label %__uniphier_cache_maint_range.exit.for.body_crit_edge

__uniphier_cache_maint_range.exit.for.body_crit_edge: ; preds = %__uniphier_cache_maint_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

__uniphier_cache_maint_range.exit.for.end_crit_edge: ; preds = %__uniphier_cache_maint_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %__uniphier_cache_maint_range.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__uniphier_cache_maint_common(ptr nocapture noundef readonly %data, i32 noundef %start, i32 noundef %size, i32 noundef %operation) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !80
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %op_base = getelementptr inbounds %struct.uniphier_cache_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %op_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %op_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #8, !srcloc !78
  %or = or i32 %operation, 32768
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %and = and i32 %operation, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15 = icmp eq i32 %and, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %start)
  %5 = tail call i32 @llvm.bswap.i32(i32 %size)
  br label %do.body12

do.body12:                                        ; preds = %do.cond25.do.body12_crit_edge, %do.end11
  %6 = ptrtoint ptr %op_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_base, align 4
  %add.ptr14 = getelementptr i8, ptr %7, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %3) #8, !srcloc !78
  br i1 %cmp15, label %if.then19, label %do.body12.do.cond25_crit_edge, !prof !79

do.body12.do.cond25_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond25

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %op_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %op_base, align 4
  %add.ptr21 = getelementptr i8, ptr %9, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %4) #8, !srcloc !78
  %10 = ptrtoint ptr %op_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %op_base, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %5) #8, !srcloc !78
  br label %do.cond25

do.cond25:                                        ; preds = %if.then19, %do.body12.do.cond25_crit_edge
  %12 = ptrtoint ptr %op_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %op_base, align 4
  %add.ptr27 = getelementptr i8, ptr %13, i32 604
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #8, !srcloc !76
  %15 = and i32 %14, 50331648
  %tobool31.not = icmp eq i32 %15, 0
  br i1 %tobool31.not, label %while.cond.preheader, label %do.cond25.do.body12_crit_edge, !prof !79

do.cond25.do.body12_crit_edge:                    ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

while.cond.preheader:                             ; preds = %do.cond25
  %16 = ptrtoint ptr %op_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %op_base, align 4
  %add.ptr41106 = getelementptr i8, ptr %17, i32 608
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41106) #8, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %18)
  %cmp44.not107 = icmp eq i32 %18, 67108864
  br i1 %cmp44.not107, label %while.cond.preheader.do.body61_crit_edge, label %while.cond.preheader.do.end56_crit_edge, !prof !81

while.cond.preheader.do.end56_crit_edge:          ; preds = %while.cond.preheader
  br label %do.end56

while.cond.preheader.do.body61_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

do.end56:                                         ; preds = %do.end56.do.end56_crit_edge, %while.cond.preheader.do.end56_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !83
  %19 = ptrtoint ptr %op_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %op_base, align 4
  %add.ptr41 = getelementptr i8, ptr %20, i32 608
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #8, !srcloc !76
  %cmp44.not = icmp eq i32 %21, 67108864
  br i1 %cmp44.not, label %do.end56.do.body61_crit_edge, label %do.end56.do.end56_crit_edge, !prof !81

do.end56.do.end56_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

do.end56.do.body61_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

do.body61:                                        ; preds = %do.end56.do.body61_crit_edge, %while.cond.preheader.do.body61_crit_edge
  br i1 %tobool.not, label %if.then70, label %do.body61.do.body72_crit_edge

do.body61.do.body72_crit_edge:                    ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72

if.then70:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body72

do.body72:                                        ; preds = %if.then70, %do.body61.do.body72_crit_edge
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool80.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool80.not, label %if.then89, label %do.body72.do.end92_crit_edge, !prof !81

do.body72.do.end92_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

if.then89:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %do.body72.do.end92_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !85
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_cache_maint_all(i32 noundef %operation) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn7 = load ptr, ptr @uniphier_cache_list, align 4
  %cmp.not8 = icmp eq ptr %.pn7, @uniphier_cache_list
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %or.i = or i32 %operation, 131072
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn9 = phi ptr [ %.pn7, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %data.0 = getelementptr i8, ptr %.pn9, i32 -32
  tail call fastcc void @__uniphier_cache_maint_common(ptr noundef %data.0, i32 noundef 0, i32 noundef 0, i32 noundef %or.i) #8
  %op_base.i.i = getelementptr i8, ptr %.pn9, i32 -24
  %0 = ptrtoint ptr %op_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 134217728) #8, !srcloc !78
  %2 = ptrtoint ptr %op_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %3, i32 580
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !76
  %5 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, @uniphier_cache_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__uniphier_cache_set_active_ways(ptr nocapture noundef readonly %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %0)
  %cmp5 = icmp ult i32 %call4, %0
  br i1 %cmp5, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %way_mask = getelementptr inbounds %struct.uniphier_cache_data, ptr %data, i32 0, i32 4
  %way_ctrl_base = getelementptr inbounds %struct.uniphier_cache_data, ptr %data, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call6 = phi i32 [ %call4, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %way_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %way_mask, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %way_ctrl_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %way_ctrl_base, align 4
  %mul = shl i32 %call6, 2
  %add.ptr = getelementptr i8, ptr %5, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !78
  %call = tail call i32 @cpumask_next(i32 noundef %call6, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/cache-uniphier.c", i32 459, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/cache-uniphier.c", i32 475, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uniphier_cache_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @uniphier_cache_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mm/cache-uniphier.c", i32 492, i32 2}
!10 = !{ptr @uniphier_cache_init._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @uniphier_cache_init._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @uniphier_cache_match, !13, !"uniphier_cache_match", i1 false, i1 false}
!13 = !{!"../arch/arm/mm/cache-uniphier.c", i32 308, i32 34}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mm/cache-uniphier.c", i32 322, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__uniphier_cache_init._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @__uniphier_cache_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mm/cache-uniphier.c", i32 328, i32 3}
!21 = !{ptr @__uniphier_cache_init._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @__uniphier_cache_init._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mm/cache-uniphier.c", i32 333, i32 3}
!25 = !{ptr @__uniphier_cache_init._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @__uniphier_cache_init._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mm/cache-uniphier.c", i32 338, i32 33}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mm/cache-uniphier.c", i32 339, i32 3}
!31 = !{ptr @__uniphier_cache_init._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__uniphier_cache_init._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mm/cache-uniphier.c", i32 347, i32 31}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mm/cache-uniphier.c", i32 349, i32 3}
!37 = !{ptr @__uniphier_cache_init._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @__uniphier_cache_init._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mm/cache-uniphier.c", i32 355, i32 31}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mm/cache-uniphier.c", i32 357, i32 3}
!43 = !{ptr @__uniphier_cache_init._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @__uniphier_cache_init._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mm/cache-uniphier.c", i32 363, i32 31}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mm/cache-uniphier.c", i32 365, i32 3}
!49 = !{ptr @__uniphier_cache_init._entry.28, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @__uniphier_cache_init._entry_ptr.30, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mm/cache-uniphier.c", i32 376, i32 3}
!53 = !{ptr @__uniphier_cache_init._entry.31, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @__uniphier_cache_init._entry_ptr.33, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mm/cache-uniphier.c", i32 383, i32 3}
!57 = !{ptr @__uniphier_cache_init._entry.34, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @__uniphier_cache_init._entry_ptr.36, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.38, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mm/cache-uniphier.c", i32 390, i32 3}
!61 = !{ptr @__uniphier_cache_init._entry.37, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @__uniphier_cache_init._entry_ptr.39, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @uniphier_cache_list, !64, !"uniphier_cache_list", i1 false, i1 false}
!64 = !{!"../arch/arm/mm/cache-uniphier.c", i32 88, i32 8}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i32 0, i32 33}
!76 = !{i64 1193347}
!77 = !{i64 2152523851}
!78 = !{i64 1192929}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 567579, i64 567640}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2152482561}
!83 = !{i64 2152482403}
!84 = !{i64 570311}
!85 = !{i64 570596}
