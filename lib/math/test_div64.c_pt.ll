; ModuleID = '/llk/IR_all_yes/lib/math/test_div64.c_pt.bc'
source_filename = "../lib/math/test_div64.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon = type { i64, i32 }
%struct.timespec64 = type { i64, i32 }

@__initcall__kmod_test_div64__106_244_test_div64_init6 = internal global ptr @test_div64_init, section ".initcall6.init", align 4
@__exitcall_test_div64_exit = internal global ptr @test_div64_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author107 = internal constant [56 x i8] c"test_div64.author=Maciej W. Rozycki <macro@orcam.me.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [36 x i8] c"test_div64.file=lib/math/test_div64\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [23 x i8] c"test_div64.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description110 = internal constant [67 x i8] c"test_div64.description=64bit/32bit division and modulo test module\00", section ".modinfo", align 1
@test_div64_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016test_div64: Starting 64bit/32bit division and modulo test\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_div64_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lib/math/test_div64.c\00", [42 x i8] zeroinitializer }, align 32
@test_div64_init._entry_ptr = internal global ptr @test_div64_init._entry, section ".printk_index", align 4
@test_div64_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016test_div64: Completed 64bit/32bit division and modulo test, %llu.%09lus elapsed\0A\00", [45 x i8] zeroinitializer }, align 32
@test_div64_init._entry_ptr.5 = internal global ptr @test_div64_init._entry.3, section ".printk_index", align 4
@test_div64_dividends = internal constant { [9 x i64], [56 x i8] } { [9 x i64] [i64 2871480448, i64 68303984985, i64 984823264433, i64 14583980826361, i64 177623454040215, i64 2145937644793418, i64 32329108835653257, i64 595306966091178628, i64 -691507871807262621], [56 x i8] zeroinitializer }, align 32
@test_div64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013test_div64: ERROR: %016llx / %08x => %016llx,%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_div64\00", [21 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr = internal global ptr @test_div64._entry, section ".printk_index", align 4
@test_div64._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013test_div64: ERROR: expected value              => %016llx,%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.10 = internal global ptr @test_div64._entry.8, section ".printk_index", align 4
@test_div64_results = internal constant { [9 x [9 x %struct.anon]], [336 x i8] } { [9 x [9 x %struct.anon]] [[9 x %struct.anon] [%struct.anon { i64 319053383, i32 1 }, %struct.anon { i64 23157100, i32 48 }, %struct.anon { i64 5564884, i32 304 }, %struct.anon { i64 55158, i32 10126 }, %struct.anon { i64 43815, i32 20608 }, %struct.anon { i64 5060, i32 315008 }, %struct.anon { i64 686, i32 1971260 }, %struct.anon { i64 15, i32 3401068 }, %struct.anon { i64 0, i32 -1423486848 }], [9 x %struct.anon] [%struct.anon { i64 7589331665, i32 0 }, %struct.anon { i64 550838588, i32 73 }, %struct.anon { i64 132372063, i32 477 }, %struct.anon { i64 1312049, i32 26094 }, %struct.anon { i64 1042236, i32 6489 }, %struct.anon { i64 120375, i32 320985 }, %struct.anon { i64 16329, i32 463803 }, %struct.anon { i64 357, i32 43695741 }, %struct.anon { i64 18, i32 1855946295 }], [9 x %struct.anon] [%struct.anon { i64 109424807159, i32 2 }, %struct.anon { i64 7942123100, i32 33 }, %struct.anon { i64 1908572217, i32 461 }, %struct.anon { i64 18917444, i32 47237 }, %struct.anon { i64 15027210, i32 29873 }, %struct.anon { i64 1735603, i32 467761 }, %struct.anon { i64 235437, i32 181787 }, %struct.anon { i64 5150, i32 116010633 }, %struct.anon { i64 266, i32 -1426052393 }], [9 x %struct.anon] [%struct.anon { i64 1620442314040, i32 1 }, %struct.anon { i64 117612748599, i32 85 }, %struct.anon { i64 28263528733, i32 133 }, %struct.anon { i64 280143314, i32 42835 }, %struct.anon { i64 222533887, i32 7929 }, %struct.anon { i64 25702086, i32 379897 }, %struct.anon { i64 3486523, i32 1551327 }, %struct.anon { i64 76273, i32 179589645 }, %struct.anon { i64 3950, i32 -1967075685 }], [9 x %struct.anon] [%struct.anon { i64 19735939337801, i32 6 }, %struct.anon { i64 1432447210001, i32 91 }, %struct.anon { i64 344231500077, i32 483 }, %struct.anon { i64 3411964387, i32 17382 }, %struct.anon { i64 2710318817, i32 49303 }, %struct.anon { i64 313034792, i32 224407 }, %struct.anon { i64 42463599, i32 2894373 }, %struct.anon { i64 928967, i32 47546851 }, %struct.anon { i64 48116, i32 463506435 }], [9 x %struct.anon] [%struct.anon { i64 238437516088157, i32 5 }, %struct.anon { i64 17305948748334, i32 2 }, %struct.anon { i64 4158793885258, i32 290 }, %struct.anon { i64 41221261353, i32 17591 }, %struct.anon { i64 32744409863, i32 11850 }, %struct.anon { i64 3781894394, i32 172362 }, %struct.anon { i64 513019170, i32 3488558 }, %struct.anon { i64 11223212, i32 117155514 }, %struct.anon { i64 581309, i32 1926857573 }], [9 x %struct.anon] [%struct.anon { i64 3592123203961473, i32 0 }, %struct.anon { i64 260718619642364, i32 121 }, %struct.anon { i64 62653311697002, i32 225 }, %struct.anon { i64 621009025061, i32 2658 }, %struct.anon { i64 493303052301, i32 54921 }, %struct.anon { i64 56975222823, i32 535305 }, %struct.anon { i64 7728767258, i32 3664093 }, %struct.anon { i64 169080617, i32 90628093 }, %struct.anon { i64 8757579, i32 601057062 }], [9 x %struct.anon] [%struct.anon { i64 66145218454575403, i32 1 }, %struct.anon { i64 4800862629767569, i32 72 }, %struct.anon { i64 1153695670719338, i32 220 }, %struct.anon { i64 11435236291345, i32 49273 }, %struct.anon { i64 9083663423022, i32 8836 }, %struct.anon { i64 1049139560700, i32 541828 }, %struct.anon { i64 142317222905, i32 2925638 }, %struct.anon { i64 3113443984, i32 4815300 }, %struct.anon { i64 161261725, i32 -1649129793 }], [9 x %struct.anon] [%struct.anon { i64 1972804022433587666, i32 1 }, %struct.anon { i64 143187388725018459, i32 79 }, %struct.anon { i64 34409372484306761, i32 319 }, %struct.anon { i64 341059878251643, i32 6058 }, %struct.anon { i64 270923403959690, i32 45155 }, %struct.anon { i64 31290950333264, i32 297059 }, %struct.anon { i64 4244660405842, i32 2248359 }, %struct.anon { i64 92859543876, i32 104897203 }, %struct.anon { i64 4809686755, i32 -1449375576 }]], [336 x i8] zeroinitializer }, align 32
@test_div64._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.12 = internal global ptr @test_div64._entry.11, section ".printk_index", align 4
@test_div64._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.14 = internal global ptr @test_div64._entry.13, section ".printk_index", align 4
@test_div64._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.16 = internal global ptr @test_div64._entry.15, section ".printk_index", align 4
@test_div64._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.18 = internal global ptr @test_div64._entry.17, section ".printk_index", align 4
@test_div64._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.20 = internal global ptr @test_div64._entry.19, section ".printk_index", align 4
@test_div64._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.22 = internal global ptr @test_div64._entry.21, section ".printk_index", align 4
@test_div64._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.24 = internal global ptr @test_div64._entry.23, section ".printk_index", align 4
@test_div64._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.26 = internal global ptr @test_div64._entry.25, section ".printk_index", align 4
@test_div64._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.28 = internal global ptr @test_div64._entry.27, section ".printk_index", align 4
@test_div64._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.30 = internal global ptr @test_div64._entry.29, section ".printk_index", align 4
@test_div64._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.32 = internal global ptr @test_div64._entry.31, section ".printk_index", align 4
@test_div64._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.34 = internal global ptr @test_div64._entry.33, section ".printk_index", align 4
@test_div64._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.36 = internal global ptr @test_div64._entry.35, section ".printk_index", align 4
@test_div64._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.38 = internal global ptr @test_div64._entry.37, section ".printk_index", align 4
@test_div64._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.40 = internal global ptr @test_div64._entry.39, section ".printk_index", align 4
@test_div64._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.42 = internal global ptr @test_div64._entry.41, section ".printk_index", align 4
@test_div64_divisors = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 9, i32 124, i32 516, i32 52059, i32 65536, i32 567424, i32 4182958, i32 191205292, i32 -603409591], [60 x i8] zeroinitializer }, align 32
@test_div64._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.44 = internal global ptr @test_div64._entry.43, section ".printk_index", align 4
@test_div64._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_div64._entry_ptr.46 = internal global ptr @test_div64._entry.45, section ".printk_index", align 4
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 225, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 234, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"test_div64_dividends\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 19, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 193, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"test_div64_results\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 58, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 195, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 197, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 199, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 201, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 203, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 205, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 207, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 209, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c"test_div64_divisors\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 42, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private constant [25 x i8] c"../lib/math/test_div64.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 212, i32 9 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_description110, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__exitcall_test_div64_exit, ptr @__initcall__kmod_test_div64__106_244_test_div64_init6, ptr @test_div64._entry, ptr @test_div64._entry.11, ptr @test_div64._entry.13, ptr @test_div64._entry.15, ptr @test_div64._entry.17, ptr @test_div64._entry.19, ptr @test_div64._entry.21, ptr @test_div64._entry.23, ptr @test_div64._entry.25, ptr @test_div64._entry.27, ptr @test_div64._entry.29, ptr @test_div64._entry.31, ptr @test_div64._entry.33, ptr @test_div64._entry.35, ptr @test_div64._entry.37, ptr @test_div64._entry.39, ptr @test_div64._entry.41, ptr @test_div64._entry.43, ptr @test_div64._entry.45, ptr @test_div64._entry.8, ptr @test_div64._entry_ptr, ptr @test_div64._entry_ptr.10, ptr @test_div64._entry_ptr.12, ptr @test_div64._entry_ptr.14, ptr @test_div64._entry_ptr.16, ptr @test_div64._entry_ptr.18, ptr @test_div64._entry_ptr.20, ptr @test_div64._entry_ptr.22, ptr @test_div64._entry_ptr.24, ptr @test_div64._entry_ptr.26, ptr @test_div64._entry_ptr.28, ptr @test_div64._entry_ptr.30, ptr @test_div64._entry_ptr.32, ptr @test_div64._entry_ptr.34, ptr @test_div64._entry_ptr.36, ptr @test_div64._entry_ptr.38, ptr @test_div64._entry_ptr.40, ptr @test_div64._entry_ptr.42, ptr @test_div64._entry_ptr.44, ptr @test_div64._entry_ptr.46, ptr @test_div64_exit, ptr @test_div64_init._entry, ptr @test_div64_init._entry.3, ptr @test_div64_init._entry_ptr, ptr @test_div64_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @test_div64_dividends, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @test_div64_results, ptr @test_div64_divisors], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64_dividends to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64_results to i32), i32 1296, i32 1632, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64_divisors to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_div64._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_div64_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_div64_init() #1 section ".init.text" align 64 {
entry:
  %ts0 = alloca %struct.timespec64, align 8
  %ts1 = alloca %struct.timespec64, align 8
  %tmp2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts0) #5
  %0 = call ptr @memset(ptr %ts0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts1) #5
  %1 = call ptr @memset(ptr %ts1, i32 255, i32 16)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  call void @ktime_get_ts64(ptr noundef nonnull %ts0) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %call1 = call fastcc zeroext i1 @test_div64() #9
  %call1.not = xor i1 %call1, true
  %inc = add nuw nsw i32 %i.018, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 1024
  %or.cond = select i1 %call1.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @ktime_get_ts64(ptr noundef nonnull %ts1) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp2) #5
  %2 = ptrtoint ptr %ts1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %.fca.0.load = load i64, ptr %ts1, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %ts1, i32 0, i32 1
  %3 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %3)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %4 = ptrtoint ptr %ts0 to i32
  call void @__asan_load8_noabort(i32 %4)
  %.fca.0.load10 = load i64, ptr %ts0, align 8
  %.fca.1.gep12 = getelementptr inbounds [2 x i64], ptr %ts0, i32 0, i32 1
  %5 = ptrtoint ptr %.fca.1.gep12 to i32
  call void @__asan_load8_noabort(i32 %5)
  %.fca.1.load13 = load i64, ptr %.fca.1.gep12, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load13, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %6 = call ptr @memset(ptr %tmp2, i32 255, i32 16)
  %sub.i = sub i64 %.fca.0.load, %.fca.0.load10
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp2, i64 noundef %sub.i, i64 noundef %conv.i) #5
  %7 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %ts.sroa.0.0.copyload15 = load i64, ptr %tmp2, align 8
  %ts.sroa.5.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 8
  %8 = ptrtoint ptr %ts.sroa.5.0.tmp2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %ts.sroa.5.0.copyload16 = load i32, ptr %ts.sroa.5.0.tmp2.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp2) #5
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %ts.sroa.0.0.copyload15, i32 noundef %ts.sroa.5.0.copyload16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts0) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @test_div64() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %if.end179

if.end179:                                        ; preds = %for.inc2449.if.end179_crit_edge, %entry
  %cmp3594 = phi i1 [ true, %entry ], [ %cmp, %for.inc2449.if.end179_crit_edge ]
  %i.03593 = phi i32 [ 0, %entry ], [ %inc2450, %for.inc2449.if.end179_crit_edge ]
  %arrayidx = getelementptr [9 x i64], ptr @test_div64_dividends, i32 0, i32 %i.03593
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %conv15 = trunc i64 %1 to i32
  %2 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2049638230412172401, i64 %1) #10, !srcloc !89
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2049638230412172401, i64 %1, i64 %2, i32 0) #10, !srcloc !90
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %div1593311 = lshr i64 %asmresult10.i, 3
  %conv160 = trunc i64 %div1593311 to i32
  %mul161.neg = mul i32 %conv160, -9
  %sub162 = add i32 %mul161.neg, %conv15
  %arrayidx1.i = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 0
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %div1593311)
  %cmp.i = icmp eq i64 %5, %div1593311
  br i1 %cmp.i, label %test_div64_verify.exit, label %if.end179.do.end_crit_edge

if.end179.do.end_crit_edge:                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

test_div64_verify.exit:                           ; preds = %if.end179
  %remainder5.i = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 0, i32 1
  %6 = ptrtoint ptr %remainder5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %remainder5.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub162)
  %cmp6.i = icmp eq i32 %7, %sub162
  br i1 %cmp6.i, label %if.end424, label %test_div64_verify.exit.do.end_crit_edge

test_div64_verify.exit.do.end_crit_edge:          ; preds = %test_div64_verify.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %test_div64_verify.exit.do.end_crit_edge, %if.end179.do.end_crit_edge
  %call184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %1, i32 noundef 9, i64 noundef %div1593311, i32 noundef %sub162) #8
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx1.i, align 8
  br label %cleanup.sink.split

if.end424:                                        ; preds = %test_div64_verify.exit
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8925843906633654008, i64 %1, i32 0) #10, !srcloc !91
  %asmresult.i = extractvalue { i64, i32 } %10, 0
  %asmresult4.i = extractvalue { i64, i32 } %10, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8925843906633654008, i64 %1, i64 %asmresult.i, i32 %asmresult4.i) #10, !srcloc !90
  %asmresult10.i3322 = extractvalue { i64, i32 } %11, 0
  %div4003312 = lshr i64 %asmresult10.i3322, 6
  %conv401 = trunc i64 %div4003312 to i32
  %mul402.neg = mul i32 %conv401, -124
  %sub403 = add i32 %mul402.neg, %conv15
  %arrayidx1.i3323 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 1
  %12 = ptrtoint ptr %arrayidx1.i3323 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1.i3323, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %div4003312)
  %cmp.i3324 = icmp eq i64 %13, %div4003312
  br i1 %cmp.i3324, label %test_div64_verify.exit3328, label %if.end424.do.end430_crit_edge

if.end424.do.end430_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end430

test_div64_verify.exit3328:                       ; preds = %if.end424
  %remainder5.i3325 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 1, i32 1
  %14 = ptrtoint ptr %remainder5.i3325 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %remainder5.i3325, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub403)
  %cmp6.i3326 = icmp eq i32 %15, %sub403
  br i1 %cmp6.i3326, label %if.end673, label %test_div64_verify.exit3328.do.end430_crit_edge

test_div64_verify.exit3328.do.end430_crit_edge:   ; preds = %test_div64_verify.exit3328
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end430

do.end430:                                        ; preds = %test_div64_verify.exit3328.do.end430_crit_edge, %if.end424.do.end430_crit_edge
  %.lcssa3652 = phi i64 [ %13, %if.end424.do.end430_crit_edge ], [ %div4003312, %test_div64_verify.exit3328.do.end430_crit_edge ]
  %call432 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %1, i32 noundef 124, i64 noundef %div4003312, i32 noundef %sub403) #8
  br label %cleanup.sink.split

if.end673:                                        ; preds = %test_div64_verify.exit3328
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -142998016075267841, i64 %1) #10, !srcloc !89
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -142998016075267841, i64 %1, i64 %16, i32 0) #10, !srcloc !90
  %asmresult10.i3330 = extractvalue { i64, i32 } %17, 0
  %div6493313 = lshr i64 %asmresult10.i3330, 9
  %conv650 = trunc i64 %div6493313 to i32
  %mul651.neg = mul i32 %conv650, -516
  %sub652 = add i32 %mul651.neg, %conv15
  %arrayidx1.i3331 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 2
  %18 = ptrtoint ptr %arrayidx1.i3331 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx1.i3331, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %div6493313)
  %cmp.i3332 = icmp eq i64 %19, %div6493313
  br i1 %cmp.i3332, label %test_div64_verify.exit3336, label %if.end673.do.end679_crit_edge

if.end673.do.end679_crit_edge:                    ; preds = %if.end673
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end679

test_div64_verify.exit3336:                       ; preds = %if.end673
  %remainder5.i3333 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 2, i32 1
  %20 = ptrtoint ptr %remainder5.i3333 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %remainder5.i3333, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %sub652)
  %cmp6.i3334 = icmp eq i32 %21, %sub652
  br i1 %cmp6.i3334, label %if.end922, label %test_div64_verify.exit3336.do.end679_crit_edge

test_div64_verify.exit3336.do.end679_crit_edge:   ; preds = %test_div64_verify.exit3336
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end679

do.end679:                                        ; preds = %test_div64_verify.exit3336.do.end679_crit_edge, %if.end673.do.end679_crit_edge
  %.lcssa3680 = phi i64 [ %19, %if.end673.do.end679_crit_edge ], [ %div6493313, %test_div64_verify.exit3336.do.end679_crit_edge ]
  %call681 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %1, i32 noundef 516, i64 noundef %div6493313, i32 noundef %sub652) #8
  br label %cleanup.sink.split

if.end922:                                        ; preds = %test_div64_verify.exit3336
  %22 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6835631493611689818, i64 %1, i32 0) #10, !srcloc !91
  %asmresult.i3338 = extractvalue { i64, i32 } %22, 0
  %asmresult4.i3339 = extractvalue { i64, i32 } %22, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6835631493611689818, i64 %1, i64 %asmresult.i3338, i32 %asmresult4.i3339) #10, !srcloc !90
  %asmresult10.i3340 = extractvalue { i64, i32 } %23, 0
  %div8983314 = lshr i64 %asmresult10.i3340, 15
  %conv899 = trunc i64 %div8983314 to i32
  %mul900.neg = mul i32 %conv899, -52059
  %sub901 = add i32 %mul900.neg, %conv15
  %arrayidx1.i3341 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 3
  %24 = ptrtoint ptr %arrayidx1.i3341 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx1.i3341, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %div8983314)
  %cmp.i3342 = icmp eq i64 %25, %div8983314
  br i1 %cmp.i3342, label %test_div64_verify.exit3346, label %if.end922.do.end928_crit_edge

if.end922.do.end928_crit_edge:                    ; preds = %if.end922
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end928

test_div64_verify.exit3346:                       ; preds = %if.end922
  %remainder5.i3343 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 3, i32 1
  %26 = ptrtoint ptr %remainder5.i3343 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %remainder5.i3343, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub901)
  %cmp6.i3344 = icmp eq i32 %27, %sub901
  br i1 %cmp6.i3344, label %if.end1171, label %test_div64_verify.exit3346.do.end928_crit_edge

test_div64_verify.exit3346.do.end928_crit_edge:   ; preds = %test_div64_verify.exit3346
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end928

do.end928:                                        ; preds = %test_div64_verify.exit3346.do.end928_crit_edge, %if.end922.do.end928_crit_edge
  %.lcssa3705 = phi i64 [ %25, %if.end922.do.end928_crit_edge ], [ %div8983314, %test_div64_verify.exit3346.do.end928_crit_edge ]
  %call930 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %1, i32 noundef 52059, i64 noundef %div8983314, i32 noundef %sub901) #8
  br label %cleanup.sink.split

if.end1171:                                       ; preds = %test_div64_verify.exit3346
  %conv961 = and i32 %conv15, 65535
  %shr977 = lshr i64 %1, 16
  %arrayidx1.i3351 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 4
  %28 = ptrtoint ptr %arrayidx1.i3351 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx1.i3351, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %shr977)
  %cmp.i3352 = icmp eq i64 %29, %shr977
  br i1 %cmp.i3352, label %test_div64_verify.exit3356, label %if.end1171.do.end1177_crit_edge

if.end1171.do.end1177_crit_edge:                  ; preds = %if.end1171
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1177

test_div64_verify.exit3356:                       ; preds = %if.end1171
  %remainder5.i3353 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 4, i32 1
  %30 = ptrtoint ptr %remainder5.i3353 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %remainder5.i3353, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv961)
  %cmp6.i3354 = icmp eq i32 %31, %conv961
  br i1 %cmp6.i3354, label %if.end1420, label %test_div64_verify.exit3356.do.end1177_crit_edge

test_div64_verify.exit3356.do.end1177_crit_edge:  ; preds = %test_div64_verify.exit3356
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1177

do.end1177:                                       ; preds = %test_div64_verify.exit3356.do.end1177_crit_edge, %if.end1171.do.end1177_crit_edge
  %.lcssa3727 = phi i64 [ %29, %if.end1171.do.end1177_crit_edge ], [ %shr977, %test_div64_verify.exit3356.do.end1177_crit_edge ]
  %call1179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %1, i32 noundef 65536, i64 noundef %shr977, i32 noundef %conv961) #8
  br label %cleanup.sink.split

if.end1420:                                       ; preds = %test_div64_verify.exit3356
  %32 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -1402335383000252401, i64 %1) #10, !srcloc !89
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -1402335383000252401, i64 %1, i64 %32, i32 0) #10, !srcloc !90
  %asmresult10.i3358 = extractvalue { i64, i32 } %33, 0
  %div13963316 = lshr i64 %asmresult10.i3358, 19
  %conv1397 = trunc i64 %div13963316 to i32
  %mul1398.neg = mul i32 %conv1397, -567424
  %sub1399 = add i32 %mul1398.neg, %conv15
  %arrayidx1.i3359 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 5
  %34 = ptrtoint ptr %arrayidx1.i3359 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx1.i3359, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %div13963316)
  %cmp.i3360 = icmp eq i64 %35, %div13963316
  br i1 %cmp.i3360, label %test_div64_verify.exit3364, label %if.end1420.do.end1426_crit_edge

if.end1420.do.end1426_crit_edge:                  ; preds = %if.end1420
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1426

test_div64_verify.exit3364:                       ; preds = %if.end1420
  %remainder5.i3361 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 5, i32 1
  %36 = ptrtoint ptr %remainder5.i3361 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %remainder5.i3361, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %sub1399)
  %cmp6.i3362 = icmp eq i32 %37, %sub1399
  br i1 %cmp6.i3362, label %if.end1669, label %test_div64_verify.exit3364.do.end1426_crit_edge

test_div64_verify.exit3364.do.end1426_crit_edge:  ; preds = %test_div64_verify.exit3364
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1426

do.end1426:                                       ; preds = %test_div64_verify.exit3364.do.end1426_crit_edge, %if.end1420.do.end1426_crit_edge
  %.lcssa3746 = phi i64 [ %35, %if.end1420.do.end1426_crit_edge ], [ %div13963316, %test_div64_verify.exit3364.do.end1426_crit_edge ]
  %call1428 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %1, i32 noundef 567424, i64 noundef %div13963316, i32 noundef %sub1399) #8
  br label %cleanup.sink.split

if.end1669:                                       ; preds = %test_div64_verify.exit3364
  %38 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4624194915137581299, i64 %1) #10, !srcloc !89
  %39 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 4624194915137581299, i64 %1, i64 %38) #10, !srcloc !92
  %div16453317 = lshr i64 %39, 20
  %conv1646 = trunc i64 %div16453317 to i32
  %mul1647.neg = mul i32 %conv1646, -4182958
  %sub1648 = add i32 %mul1647.neg, %conv15
  %arrayidx1.i3366 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 6
  %40 = ptrtoint ptr %arrayidx1.i3366 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx1.i3366, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %div16453317)
  %cmp.i3367 = icmp eq i64 %41, %div16453317
  br i1 %cmp.i3367, label %test_div64_verify.exit3371, label %if.end1669.do.end1675_crit_edge

if.end1669.do.end1675_crit_edge:                  ; preds = %if.end1669
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1675

test_div64_verify.exit3371:                       ; preds = %if.end1669
  %remainder5.i3368 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 6, i32 1
  %42 = ptrtoint ptr %remainder5.i3368 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %remainder5.i3368, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %sub1648)
  %cmp6.i3369 = icmp eq i32 %43, %sub1648
  br i1 %cmp6.i3369, label %if.end1918, label %test_div64_verify.exit3371.do.end1675_crit_edge

test_div64_verify.exit3371.do.end1675_crit_edge:  ; preds = %test_div64_verify.exit3371
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1675

do.end1675:                                       ; preds = %test_div64_verify.exit3371.do.end1675_crit_edge, %if.end1669.do.end1675_crit_edge
  %.lcssa3762 = phi i64 [ %41, %if.end1669.do.end1675_crit_edge ], [ %div16453317, %test_div64_verify.exit3371.do.end1675_crit_edge ]
  %call1677 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %1, i32 noundef 4182958, i64 noundef %div16453317, i32 noundef %sub1648) #8
  br label %cleanup.sink.split

if.end1918:                                       ; preds = %test_div64_verify.exit3371
  %44 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -5497938877612988819, i64 %1, i32 0) #10, !srcloc !91
  %asmresult.i3373 = extractvalue { i64, i32 } %44, 0
  %asmresult4.i3374 = extractvalue { i64, i32 } %44, 1
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5497938877612988819, i64 %1, i64 %asmresult.i3373, i32 %asmresult4.i3374) #10, !srcloc !90
  %asmresult10.i3375 = extractvalue { i64, i32 } %45, 0
  %div18943318 = lshr i64 %asmresult10.i3375, 27
  %conv1895 = trunc i64 %div18943318 to i32
  %mul1896.neg = mul i32 %conv1895, -191205292
  %sub1897 = add i32 %mul1896.neg, %conv15
  %arrayidx1.i3376 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 7
  %46 = ptrtoint ptr %arrayidx1.i3376 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx1.i3376, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %div18943318)
  %cmp.i3377 = icmp eq i64 %47, %div18943318
  br i1 %cmp.i3377, label %test_div64_verify.exit3381, label %if.end1918.do.end1924_crit_edge

if.end1918.do.end1924_crit_edge:                  ; preds = %if.end1918
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1924

test_div64_verify.exit3381:                       ; preds = %if.end1918
  %remainder5.i3378 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 7, i32 1
  %48 = ptrtoint ptr %remainder5.i3378 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %remainder5.i3378, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %sub1897)
  %cmp6.i3379 = icmp eq i32 %49, %sub1897
  br i1 %cmp6.i3379, label %if.end2167, label %test_div64_verify.exit3381.do.end1924_crit_edge

test_div64_verify.exit3381.do.end1924_crit_edge:  ; preds = %test_div64_verify.exit3381
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1924

do.end1924:                                       ; preds = %test_div64_verify.exit3381.do.end1924_crit_edge, %if.end1918.do.end1924_crit_edge
  %.lcssa3775 = phi i64 [ %47, %if.end1918.do.end1924_crit_edge ], [ %div18943318, %test_div64_verify.exit3381.do.end1924_crit_edge ]
  %call1926 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %1, i32 noundef 191205292, i64 noundef %div18943318, i32 noundef %sub1897) #8
  br label %cleanup.sink.split

if.end2167:                                       ; preds = %test_div64_verify.exit3381
  %50 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -7715750703762441769, i64 %1) #10, !srcloc !89
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7715750703762441769, i64 %1, i64 %50, i32 0) #10, !srcloc !90
  %asmresult10.i3383 = extractvalue { i64, i32 } %51, 0
  %div21433319 = lshr i64 %asmresult10.i3383, 31
  %conv2144 = trunc i64 %div21433319 to i32
  %mul2145.neg = mul i32 %conv2144, 603409591
  %sub2146 = add i32 %mul2145.neg, %conv15
  %arrayidx1.i3384 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 8
  %52 = ptrtoint ptr %arrayidx1.i3384 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx1.i3384, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %div21433319)
  %cmp.i3385 = icmp eq i64 %53, %div21433319
  br i1 %cmp.i3385, label %test_div64_verify.exit3389, label %if.end2167.do.end2173_crit_edge

if.end2167.do.end2173_crit_edge:                  ; preds = %if.end2167
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2173

test_div64_verify.exit3389:                       ; preds = %if.end2167
  %remainder5.i3386 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 8, i32 1
  %54 = ptrtoint ptr %remainder5.i3386 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %remainder5.i3386, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %sub2146)
  %cmp6.i3387 = icmp eq i32 %55, %sub2146
  br i1 %cmp6.i3387, label %for.cond2194.preheader, label %test_div64_verify.exit3389.do.end2173_crit_edge

test_div64_verify.exit3389.do.end2173_crit_edge:  ; preds = %test_div64_verify.exit3389
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2173

for.cond2194.preheader:                           ; preds = %test_div64_verify.exit3389
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03593)
  %cmp2403 = icmp eq i32 %i.03593, 0
  br label %for.body2197

do.end2173:                                       ; preds = %test_div64_verify.exit3389.do.end2173_crit_edge, %if.end2167.do.end2173_crit_edge
  %.lcssa3785 = phi i64 [ %53, %if.end2167.do.end2173_crit_edge ], [ %div21433319, %test_div64_verify.exit3389.do.end2173_crit_edge ]
  %call2175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %1, i32 noundef -603409591, i64 noundef %div21433319, i32 noundef %sub2146) #8
  br label %cleanup.sink.split

for.body2197:                                     ; preds = %for.inc.critedge.for.body2197_crit_edge, %for.cond2194.preheader
  %j.03592 = phi i32 [ 0, %for.cond2194.preheader ], [ %inc, %for.inc.critedge.for.body2197_crit_edge ]
  %arrayidx2202 = getelementptr [9 x i32], ptr @test_div64_divisors, i32 0, i32 %j.03592
  %56 = ptrtoint ptr %arrayidx2202 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx2202, align 4
  br i1 %cmp2403, label %if.then2411, label %if.else2417, !prof !93

if.then2411:                                      ; preds = %for.body2197
  call void @__sanitizer_cov_trace_pc() #7
  %conv15.frozen = freeze i32 %conv15
  %.frozen = freeze i32 %57
  %div2415 = udiv i32 %conv15.frozen, %.frozen
  %58 = mul i32 %div2415, %.frozen
  %rem2413.decomposed = sub i32 %conv15.frozen, %58
  %conv2416 = zext i32 %div2415 to i64
  br label %if.end2421

if.else2417:                                      ; preds = %for.body2197
  call void @__sanitizer_cov_trace_pc() #7
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %57, i64 %1) #10, !srcloc !94
  %asmresult.i3395 = extractvalue { i64, i64 } %59, 0
  %asmresult1.i = extractvalue { i64, i64 } %59, 1
  %shr.i = lshr i64 %asmresult.i3395, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end2421

if.end2421:                                       ; preds = %if.else2417, %if.then2411
  %quotient2199.0 = phi i64 [ %conv2416, %if.then2411 ], [ %asmresult1.i, %if.else2417 ]
  %__rem2203.0 = phi i32 [ %rem2413.decomposed, %if.then2411 ], [ %conv.i, %if.else2417 ]
  %arrayidx1.i3396 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 %j.03592
  %60 = ptrtoint ptr %arrayidx1.i3396 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx1.i3396, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %quotient2199.0)
  %cmp.i3397 = icmp eq i64 %61, %quotient2199.0
  br i1 %cmp.i3397, label %test_div64_verify.exit3401, label %if.end2421.do.end2427_crit_edge

if.end2421.do.end2427_crit_edge:                  ; preds = %if.end2421
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2427

test_div64_verify.exit3401:                       ; preds = %if.end2421
  %remainder5.i3398 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 %j.03592, i32 1
  %62 = ptrtoint ptr %remainder5.i3398 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %remainder5.i3398, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %__rem2203.0)
  %cmp6.i3399 = icmp eq i32 %63, %__rem2203.0
  br i1 %cmp6.i3399, label %for.inc.critedge, label %test_div64_verify.exit3401.do.end2427_crit_edge

test_div64_verify.exit3401.do.end2427_crit_edge:  ; preds = %test_div64_verify.exit3401
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2427

do.end2427:                                       ; preds = %test_div64_verify.exit3401.do.end2427_crit_edge, %if.end2421.do.end2427_crit_edge
  %.lcssa3597 = phi i64 [ %61, %if.end2421.do.end2427_crit_edge ], [ %quotient2199.0, %test_div64_verify.exit3401.do.end2427_crit_edge ]
  %call2430 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %1, i32 noundef %57, i64 noundef %quotient2199.0, i32 noundef %__rem2203.0) #8
  br label %cleanup.sink.split

for.inc.critedge:                                 ; preds = %test_div64_verify.exit3401
  %inc = add nuw nsw i32 %j.03592, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.inc2449, label %for.inc.critedge.for.body2197_crit_edge

for.inc.critedge.for.body2197_crit_edge:          ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body2197

for.inc2449:                                      ; preds = %for.inc.critedge
  %inc2450 = add nuw nsw i32 %i.03593, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.03593)
  %cmp = icmp ult i32 %i.03593, 8
  %exitcond3792.not = icmp eq i32 %inc2450, 9
  br i1 %exitcond3792.not, label %for.inc2449.cleanup_crit_edge, label %for.inc2449.if.end179_crit_edge

for.inc2449.if.end179_crit_edge:                  ; preds = %for.inc2449
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end179

for.inc2449.cleanup_crit_edge:                    ; preds = %for.inc2449
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end2427, %do.end2173, %do.end1924, %do.end1675, %do.end1426, %do.end1177, %do.end928, %do.end679, %do.end430, %do.end
  %.sink = phi i32 [ 0, %do.end ], [ 1, %do.end430 ], [ 2, %do.end679 ], [ 3, %do.end928 ], [ 4, %do.end1177 ], [ 5, %do.end1426 ], [ 6, %do.end1675 ], [ 7, %do.end1924 ], [ 8, %do.end2173 ], [ %j.03592, %do.end2427 ]
  %.lcssa3597.sink = phi i64 [ %9, %do.end ], [ %.lcssa3652, %do.end430 ], [ %.lcssa3680, %do.end679 ], [ %.lcssa3705, %do.end928 ], [ %.lcssa3727, %do.end1177 ], [ %.lcssa3746, %do.end1426 ], [ %.lcssa3762, %do.end1675 ], [ %.lcssa3775, %do.end1924 ], [ %.lcssa3785, %do.end2173 ], [ %.lcssa3597, %do.end2427 ]
  %remainder194 = getelementptr [9 x [9 x %struct.anon]], ptr @test_div64_results, i32 0, i32 %i.03593, i32 %.sink, i32 1
  %64 = ptrtoint ptr %remainder194 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %remainder194, align 8
  %call2441 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %.lcssa3597.sink, i32 noundef %65) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc2449.cleanup_crit_edge
  %cmp3437 = phi i1 [ %cmp3594, %cleanup.sink.split ], [ %cmp, %for.inc2449.cleanup_crit_edge ]
  %66 = xor i1 %cmp3437, true
  ret i1 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_test_div64__106_244_test_div64_init6, !1, !"__initcall__kmod_test_div64__106_244_test_div64_init6", i1 false, i1 false}
!1 = !{!"../lib/math/test_div64.c", i32 244, i32 1}
!2 = !{ptr @__exitcall_test_div64_exit, !3, !"__exitcall_test_div64_exit", i1 false, i1 false}
!3 = !{!"../lib/math/test_div64.c", i32 245, i32 1}
!4 = !{ptr @__UNIQUE_ID_author107, !5, !"__UNIQUE_ID_author107", i1 false, i1 false}
!5 = !{!"../lib/math/test_div64.c", i32 247, i32 1}
!6 = !{ptr @__UNIQUE_ID_file108, !7, !"__UNIQUE_ID_file108", i1 false, i1 false}
!7 = !{!"../lib/math/test_div64.c", i32 248, i32 1}
!8 = !{ptr @__UNIQUE_ID_license109, !7, !"__UNIQUE_ID_license109", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description110, !10, !"__UNIQUE_ID_description110", i1 false, i1 false}
!10 = !{!"../lib/math/test_div64.c", i32 249, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/math/test_div64.c", i32 225, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @test_div64_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @test_div64_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/math/test_div64.c", i32 234, i32 2}
!19 = !{ptr @test_div64_init._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @test_div64_init._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/math/test_div64.c", i32 193, i32 8}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @test_div64._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @test_div64._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @test_div64._entry.8, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @test_div64._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @test_div64._entry.11, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../lib/math/test_div64.c", i32 195, i32 8}
!31 = !{ptr @test_div64._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @test_div64._entry.13, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @test_div64._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @test_div64._entry.15, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../lib/math/test_div64.c", i32 197, i32 8}
!36 = !{ptr @test_div64._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @test_div64._entry.17, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @test_div64._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @test_div64._entry.19, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../lib/math/test_div64.c", i32 199, i32 8}
!41 = !{ptr @test_div64._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @test_div64._entry.21, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @test_div64._entry_ptr.22, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @test_div64._entry.23, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../lib/math/test_div64.c", i32 201, i32 8}
!46 = !{ptr @test_div64._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @test_div64._entry.25, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @test_div64._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @test_div64._entry.27, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../lib/math/test_div64.c", i32 203, i32 8}
!51 = !{ptr @test_div64._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @test_div64._entry.29, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @test_div64._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @test_div64._entry.31, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../lib/math/test_div64.c", i32 205, i32 8}
!56 = !{ptr @test_div64._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @test_div64._entry.33, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @test_div64._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @test_div64._entry.35, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../lib/math/test_div64.c", i32 207, i32 8}
!61 = !{ptr @test_div64._entry_ptr.36, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @test_div64._entry.37, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @test_div64._entry_ptr.38, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @test_div64._entry.39, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../lib/math/test_div64.c", i32 209, i32 8}
!66 = !{ptr @test_div64._entry_ptr.40, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @test_div64._entry.41, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @test_div64._entry_ptr.42, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @test_div64._entry.43, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../lib/math/test_div64.c", i32 212, i32 9}
!71 = !{ptr @test_div64._entry_ptr.44, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @test_div64._entry.45, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @test_div64._entry_ptr.46, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @test_div64_dividends, !75, !"test_div64_dividends", i1 false, i1 false}
!75 = !{!"../lib/math/test_div64.c", i32 19, i32 18}
!76 = !{ptr @test_div64_results, !77, !"test_div64_results", i1 false, i1 false}
!77 = !{!"../lib/math/test_div64.c", i32 58, i32 3}
!78 = !{ptr @test_div64_divisors, !79, !"test_div64_divisors", i1 false, i1 false}
!79 = !{!"../lib/math/test_div64.c", i32 42, i32 18}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 570879, i64 570906}
!90 = !{i64 571574, i64 571601, i64 571634, i64 571655, i64 571682, i64 571708}
!91 = !{i64 571166, i64 571193, i64 571215, i64 571243}
!92 = !{i64 571389, i64 571416, i64 571450, i64 571471}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2148056710, i64 2148056990, i64 2148057324, i64 2148057658}
