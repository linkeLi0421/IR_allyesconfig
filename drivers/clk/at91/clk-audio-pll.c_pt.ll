; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-audio-pll.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-audio-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_audio_frac = type { %struct.clk_hw, ptr, i32, i8 }
%struct.clk_audio_pad = type { %struct.clk_hw, ptr, i8, i8 }
%struct.clk_audio_pmc = type { %struct.clk_hw, ptr, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@audio_pll_frac_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_frac_enable, ptr @clk_audio_pll_frac_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_frac_recalc_rate, ptr null, ptr @clk_audio_pll_frac_determine_rate, ptr null, ptr null, ptr @clk_audio_pll_frac_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@audio_pll_pad_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pad_enable, ptr @clk_audio_pll_pad_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pad_recalc_rate, ptr @clk_audio_pll_pad_round_rate, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pad_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@audio_pll_pmc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pmc_enable, ptr @clk_audio_pll_pmc_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pmc_recalc_rate, ptr @clk_audio_pll_pmc_round_rate, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pmc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_audio_pll_frac_recalc_rate.__UNIQUE_ID_ddebug169 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_audio_pll\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clk_audio_pll_frac_recalc_rate\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/at91/clk-audio-pll.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"A PLL: %s, fout = %lu (nd = %u, fracr = %lu)\0A\00", [50 x i8] zeroinitializer }, align 32
@clk_audio_pll_fout.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_audio_pll_fout\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"A PLL: %s, fr = %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@clk_audio_pll_fout.__UNIQUE_ID_ddebug168 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@clk_audio_pll_frac_determine_rate.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clk_audio_pll_frac_determine_rate\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"A PLL: %s, rate = %lu (parent_rate = %lu)\0A\00", [53 x i8] zeroinitializer }, align 32
@clk_audio_pll_frac_determine_rate.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"A PLL: %s, best_rate = %lu (nd = %lu, fracr = %lu)\0A\00", [44 x i8] zeroinitializer }, align 32
@clk_audio_pll_frac_set_rate.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.7, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clk_audio_pll_frac_set_rate\00", [36 x i8] zeroinitializer }, align 32
@clk_audio_pll_pad_recalc_rate.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clk_audio_pll_pad_recalc_rate\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"A PLL/PAD: %s, apad_rate = %lu (div = %u, qdaudio = %u)\0A\00", [39 x i8] zeroinitializer }, align 32
@clk_audio_pll_pad_round_rate.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk_audio_pll_pad_round_rate\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"A PLL/PAD: %s, rate = %lu (parent_rate = %lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@clk_audio_pll_pad_round_rate.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"A PLL/PAD: %s, best_rate = %ld, best_parent_rate = %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@clk_audio_pll_pad_set_rate.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.13, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_audio_pll_pad_set_rate\00", [37 x i8] zeroinitializer }, align 32
@clk_audio_pll_pmc_recalc_rate.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clk_audio_pll_pmc_recalc_rate\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"A PLL/PMC: %s, apmc_rate = %lu (qdpmc = %u)\0A\00", [51 x i8] zeroinitializer }, align 32
@clk_audio_pll_pmc_round_rate.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk_audio_pll_pmc_round_rate\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"A PLL/PMC: %s, rate = %lu (parent_rate = %lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@clk_audio_pll_pmc_round_rate.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"A PLL/PMC: %s, best_rate = %ld, best_parent_rate = %lu (qd = %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@clk_audio_pll_pmc_set_rate.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.19, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_audio_pll_pmc_set_rate\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"audio_pll_frac_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 427, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"audio_pll_pad_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 435, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"audio_pll_pmc_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 443, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 181, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 164, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 250, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 267, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 371, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 196, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 285, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 318, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 393, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 210, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 335, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 358, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [36 x i8] c"../drivers/clk/at91/clk-audio-pll.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 419, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @audio_pll_frac_ops, ptr @audio_pll_pad_ops, ptr @audio_pll_pmc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll_frac_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll_pad_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll_pmc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_audio_pll_frac(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_name) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @audio_pll_frac_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %flags, align 4
  %init3 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init3, align 8
  %regmap4 = getelementptr inbounds %struct.clk_audio_frac, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap4, align 4
  %call6 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %11 = inttoptr i32 %call6 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then8 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_audio_pll_pad(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_name) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @audio_pll_pad_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %flags, align 4
  %init3 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init3, align 8
  %regmap4 = getelementptr inbounds %struct.clk_audio_pad, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap4, align 4
  %call6 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %11 = inttoptr i32 %call6 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then8 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_audio_pll_pmc(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_name) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @audio_pll_pmc_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %flags, align 4
  %init3 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init3, align 8
  %regmap4 = getelementptr inbounds %struct.clk_audio_pmc, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap4, align 4
  %call6 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %11 = inttoptr i32 %call6 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then8 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_frac_enable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_audio_frac, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 332, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 332, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %fracr = getelementptr inbounds %struct.clk_audio_frac, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %fracr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fracr, align 4
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 336, i32 noundef 4194303, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %nd = getelementptr inbounds %struct.clk_audio_frac, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %nd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nd, align 4
  %conv = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, 1
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 332, i32 noundef 32513, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_audio_pll_frac_disable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_audio_frac, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 332, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 332, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_frac_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nd = getelementptr inbounds %struct.clk_audio_frac, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %nd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nd, align 4
  %conv = zext i8 %1 to i32
  %fracr = getelementptr inbounds %struct.clk_audio_frac, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %fracr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fracr, align 4
  %conv.i = zext i32 %parent_rate to i64
  %conv1.i = zext i32 %3 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_fout.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_frac_recalc_rate, %if.then.i)) #6
          to label %if.end196.i [label %if.then.i], !srcloc !65

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_fout.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %mul.i) #6
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then.i, %entry
  %add.i = add nuw i64 %mul.i, 2097152
  %shr.i = lshr i64 %add.i, 22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_fout.__UNIQUE_ID_ddebug168, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_frac_recalc_rate, %if.then211.i)) #6
          to label %clk_audio_pll_fout.exit [label %if.then211.i], !srcloc !65

if.then211.i:                                     ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_fout.__UNIQUE_ID_ddebug168, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %shr.i) #6
  br label %clk_audio_pll_fout.exit

clk_audio_pll_fout.exit:                          ; preds = %if.then211.i, %if.end196.i
  %add215.i = add nuw nsw i32 %conv, 1
  %mul216.i = mul i32 %add215.i, %parent_rate
  %4 = trunc i64 %shr.i to i32
  %conv219.i = add i32 %mul216.i, %4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_frac_recalc_rate.__UNIQUE_ID_ddebug169, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_frac_recalc_rate, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %clk_audio_pll_fout.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %nd to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nd, align 4
  %conv6 = zext i8 %6 to i32
  %7 = ptrtoint ptr %fracr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fracr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_frac_recalc_rate.__UNIQUE_ID_ddebug169, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv219.i, i32 noundef %conv6, i32 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %clk_audio_pll_fout.exit
  ret i32 %conv219.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_frac_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_frac_determine_rate.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_frac_determine_rate, %if.then)) #6
          to label %if.end.i [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %best_parent_rate, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_frac_determine_rate.__UNIQUE_ID_ddebug172, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef %3) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then, %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 620000000)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 700000000)
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %req, align 4
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_rate, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 620000000)
  %12 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %min_rate, align 4
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_rate, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 700000000)
  %16 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_rate, align 4
  %best_parent_rate27 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %17 = ptrtoint ptr %best_parent_rate27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %best_parent_rate27, align 4
  %.frozen = freeze i32 %7
  %.frozen95 = freeze i32 %18
  %div179.i = udiv i32 %.frozen, %.frozen95
  %conv180.i = zext i32 %div179.i to i64
  %19 = add nsw i64 %conv180.i, -127
  call void @__sanitizer_cov_trace_const_cmp8(i64 -126, i64 %19)
  %20 = icmp ult i64 %19, -126
  br i1 %20, label %if.end.i.cleanup_crit_edge, label %if.end192.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end192.i:                                      ; preds = %if.end.i
  %21 = mul i32 %div179.i, %.frozen95
  %rem177.i.decomposed = sub i32 %.frozen, %21
  %conv187.i = zext i32 %rem177.i.decomposed to i64
  %conv194.i = add nsw i32 %div179.i, -1
  %mul195.i = shl nuw nsw i64 %conv187.i, 22
  %div196589.i = lshr i32 %18, 1
  %conv197.i = zext i32 %div196589.i to i64
  %add198.i = add nuw nsw i64 %mul195.i, %conv197.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add198.i)
  %cmp400.i = icmp ult i64 %add198.i, 4294967296
  br i1 %cmp400.i, label %if.then408.i, label %if.else414.i, !prof !66

if.then408.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv409.i = trunc i64 %add198.i to i32
  %div412.i = udiv i32 %conv409.i, %18
  %conv413.i = zext i32 %div412.i to i64
  br label %if.end418.i

if.else414.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %add198.i) #10, !srcloc !67
  %asmresult1.i620.i = extractvalue { i64, i64 } %22, 1
  br label %if.end418.i

if.end418.i:                                      ; preds = %if.else414.i, %if.then408.i
  %_tmp.0.i = phi i64 [ %conv413.i, %if.then408.i ], [ %asmresult1.i620.i, %if.else414.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %_tmp.0.i)
  %cmp421.i = icmp ugt i64 %_tmp.0.i, 4194303
  br i1 %cmp421.i, label %if.end418.i.cleanup_crit_edge, label %if.end31

if.end418.i.cleanup_crit_edge:                    ; preds = %if.end418.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end418.i
  %conv425.i = trunc i64 %_tmp.0.i to i32
  %conv.i83 = zext i32 %18 to i64
  %mul.i84 = mul nuw nsw i64 %_tmp.0.i, %conv.i83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_fout.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_frac_determine_rate, %if.then.i)) #6
          to label %if.end196.i [label %if.then.i], !srcloc !65

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_fout.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %mul.i84) #6
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then.i, %if.end31
  %add.i85 = add nuw nsw i64 %mul.i84, 2097152
  %shr.i86 = lshr i64 %add.i85, 22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_fout.__UNIQUE_ID_ddebug168, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_frac_determine_rate, %if.then211.i)) #6
          to label %clk_audio_pll_fout.exit [label %if.then211.i], !srcloc !65

if.then211.i:                                     ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_fout.__UNIQUE_ID_ddebug168, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %shr.i86) #6
  br label %clk_audio_pll_fout.exit

clk_audio_pll_fout.exit:                          ; preds = %if.then211.i, %if.end196.i
  %mul216.i = mul i32 %18, %div179.i
  %23 = trunc i64 %shr.i86 to i32
  %conv219.i = add i32 %mul216.i, %23
  %24 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv219.i, ptr %req, align 4
  %call35 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %25 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call35, ptr %best_parent_hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_frac_determine_rate.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_frac_determine_rate, %if.then48)) #6
          to label %cleanup [label %if.then48], !srcloc !65

if.then48:                                        ; preds = %clk_audio_pll_fout.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %req, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_frac_determine_rate.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %27, i32 noundef %conv194.i, i32 noundef %conv425.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %clk_audio_pll_fout.exit, %if.end418.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then48 ], [ 0, %clk_audio_pll_fout.exit ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end418.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_frac_set_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_frac_set_rate.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_frac_set_rate, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_frac_set_rate.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef %rate, i32 noundef %parent_rate) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = add i32 %rate, -700000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -80000001, i32 %0)
  %1 = icmp ult i32 %0, -80000001
  br i1 %1, label %do.end.cleanup_crit_edge, label %if.then175.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then175.i:                                     ; preds = %do.end
  %div179.i = udiv i32 %rate, %parent_rate
  %conv180.i = zext i32 %div179.i to i64
  %2 = add nsw i64 %conv180.i, -127
  call void @__sanitizer_cov_trace_const_cmp8(i64 -126, i64 %2)
  %3 = icmp ult i64 %2, -126
  br i1 %3, label %if.then175.i.cleanup_crit_edge, label %if.end192.i

if.then175.i.cleanup_crit_edge:                   ; preds = %if.then175.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end192.i:                                      ; preds = %if.then175.i
  %4 = mul i32 %div179.i, %parent_rate
  %rem177.i.decomposed = sub i32 %rate, %4
  %conv187.i = zext i32 %rem177.i.decomposed to i64
  %5 = trunc i32 %div179.i to i8
  %conv194.i = add nsw i8 %5, -1
  %mul195.i = shl nuw nsw i64 %conv187.i, 22
  %div196589.i = lshr i32 %parent_rate, 1
  %conv197.i = zext i32 %div196589.i to i64
  %add198.i = add nuw nsw i64 %mul195.i, %conv197.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add198.i)
  %cmp400.i = icmp ult i64 %add198.i, 4294967296
  br i1 %cmp400.i, label %if.then408.i, label %if.else414.i, !prof !66

if.then408.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv409.i = trunc i64 %add198.i to i32
  %div412.i = udiv i32 %conv409.i, %parent_rate
  %conv413.i = zext i32 %div412.i to i64
  br label %if.end418.i

if.else414.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %add198.i) #10, !srcloc !67
  %asmresult1.i620.i = extractvalue { i64, i64 } %6, 1
  br label %if.end418.i

if.end418.i:                                      ; preds = %if.else414.i, %if.then408.i
  %_tmp.0.i = phi i64 [ %conv413.i, %if.then408.i ], [ %asmresult1.i620.i, %if.else414.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %_tmp.0.i)
  %cmp421.i = icmp ugt i64 %_tmp.0.i, 4194303
  br i1 %cmp421.i, label %if.end418.i.cleanup_crit_edge, label %if.end10

if.end418.i.cleanup_crit_edge:                    ; preds = %if.end418.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end418.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv425.i = trunc i64 %_tmp.0.i to i32
  %nd11 = getelementptr inbounds %struct.clk_audio_frac, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %nd11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv194.i, ptr %nd11, align 4
  %fracr12 = getelementptr inbounds %struct.clk_audio_frac, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %fracr12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv425.i, ptr %fracr12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end418.i.cleanup_crit_edge, %if.then175.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.then175.i.cleanup_crit_edge ], [ -22, %if.end418.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pad_enable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_audio_pad, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %qdaudio = getelementptr inbounds %struct.clk_audio_pad, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %qdaudio to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qdaudio, align 4
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 26
  %and = and i32 %shl, 2080374784
  %div = getelementptr inbounds %struct.clk_audio_pad, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %div, align 1
  %conv1 = zext i8 %5 to i32
  %shl2 = shl nuw i32 %conv1, 24
  %and3 = and i32 %shl2, 50331648
  %or = or i32 %and3, %and
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 336, i32 noundef 2130706432, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 332, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_audio_pll_pad_disable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_audio_pad, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 332, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pad_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qdaudio = getelementptr inbounds %struct.clk_audio_pad, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %qdaudio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qdaudio, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %div = getelementptr inbounds %struct.clk_audio_pad, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %div, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv1 = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv1, %conv
  %div7 = udiv i32 %parent_rate, %mul
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %apad_rate.0 = phi i32 [ %div7, %if.then ], [ 0, %land.lhs.true.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_pad_recalc_rate.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_pad_recalc_rate, %if.then12)) #6
          to label %do.end [label %if.then12], !srcloc !65

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %div13 = getelementptr inbounds %struct.clk_audio_pad, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %div13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %div13, align 1
  %conv14 = zext i8 %5 to i32
  %6 = ptrtoint ptr %qdaudio to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %qdaudio, align 4
  %conv16 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_pad_recalc_rate.__UNIQUE_ID_ddebug170, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %apad_rate.0, i32 noundef %conv14, i32 noundef %conv16) #6
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  ret i32 %apad_rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pad_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_pad_round_rate.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_pad_round_rate, %if.then)) #6
          to label %for.cond4.preheader [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_pad_round_rate.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %rate, i32 noundef %1) #6
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc.1.for.cond4.preheader_crit_edge, %if.then, %entry
  %best_rate.074 = phi i32 [ %best_rate.2.1, %for.inc.1.for.cond4.preheader_crit_edge ], [ -22, %entry ], [ -22, %if.then ]
  %tmp_qd.072 = phi i32 [ %inc23, %for.inc.1.for.cond4.preheader_crit_edge ], [ 1, %entry ], [ 1, %if.then ]
  %best_diff.071 = phi i32 [ %best_diff.2.1, %for.inc.1.for.cond4.preheader_crit_edge ], [ -1, %entry ], [ -1, %if.then ]
  %rem = urem i32 %tmp_qd.072, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %for.cond4.preheader.if.end10.1_crit_edge, label %if.end10

for.cond4.preheader.if.end10.1_crit_edge:         ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.1

if.end10:                                         ; preds = %for.cond4.preheader
  %mul = shl nuw nsw i32 %tmp_qd.072, 1
  %mul11 = mul i32 %mul, %rate
  %call12 = tail call i32 @clk_hw_round_rate(ptr noundef %call, i32 noundef %mul11) #6
  %div14 = udiv i32 %call12, %mul
  %sub = sub i32 %rate, %div14
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.071)
  %cmp18 = icmp slt i32 %best_diff.071, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.071, i32 %2)
  %cmp19 = icmp sgt i32 %best_diff.071, %2
  %or.cond60 = select i1 %cmp18, i1 true, i1 %cmp19
  br i1 %or.cond60, label %if.then20, label %if.end10.if.end10.1_crit_edge

if.end10.if.end10.1_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.1

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call12, ptr %parent_rate, align 4
  br label %if.end10.1

if.end10.1:                                       ; preds = %if.then20, %if.end10.if.end10.1_crit_edge, %for.cond4.preheader.if.end10.1_crit_edge
  %best_diff.2 = phi i32 [ %2, %if.then20 ], [ %best_diff.071, %for.cond4.preheader.if.end10.1_crit_edge ], [ %best_diff.071, %if.end10.if.end10.1_crit_edge ]
  %best_rate.2 = phi i32 [ %div14, %if.then20 ], [ %best_rate.074, %for.cond4.preheader.if.end10.1_crit_edge ], [ %best_rate.074, %if.end10.if.end10.1_crit_edge ]
  %mul.1 = mul nuw nsw i32 %tmp_qd.072, 3
  %mul11.1 = mul i32 %mul.1, %rate
  %call12.1 = tail call i32 @clk_hw_round_rate(ptr noundef %call, i32 noundef %mul11.1) #6
  %div14.1 = udiv i32 %call12.1, %mul.1
  %sub.1 = sub i32 %rate, %div14.1
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.2)
  %cmp18.1 = icmp slt i32 %best_diff.2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2, i32 %4)
  %cmp19.1 = icmp sgt i32 %best_diff.2, %4
  %or.cond60.1 = select i1 %cmp18.1, i1 true, i1 %cmp19.1
  br i1 %or.cond60.1, label %if.then20.1, label %if.end10.1.for.inc.1_crit_edge

if.end10.1.for.inc.1_crit_edge:                   ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then20.1:                                      ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call12.1, ptr %parent_rate, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then20.1, %if.end10.1.for.inc.1_crit_edge
  %best_diff.2.1 = phi i32 [ %4, %if.then20.1 ], [ %best_diff.2, %if.end10.1.for.inc.1_crit_edge ]
  %best_rate.2.1 = phi i32 [ %div14.1, %if.then20.1 ], [ %best_rate.2, %if.end10.1.for.inc.1_crit_edge ]
  %inc23 = add nuw nsw i32 %tmp_qd.072, 1
  %exitcond.not = icmp eq i32 %inc23, 31
  br i1 %exitcond.not, label %do.body25, label %for.inc.1.for.cond4.preheader_crit_edge

for.inc.1.for.cond4.preheader_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.preheader

do.body25:                                        ; preds = %for.inc.1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_pad_round_rate.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_pad_round_rate, %if.then37)) #6
          to label %do.end40 [label %if.then37], !srcloc !65

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_pad_round_rate.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %best_rate.2.1, i32 noundef %call12.1) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25
  ret i32 %best_rate.2.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pad_set_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_pad_set_rate.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_pad_set_rate, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_pad_set_rate.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %rate, i32 noundef %parent_rate) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool4.not = icmp eq i32 %rate, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %parent_rate, %rate
  %rem.lhs.trunc = trunc i32 %div to i8
  %div1132 = udiv i8 %rem.lhs.trunc, 3
  %0 = mul i8 %div1132, 3
  %rem31.decomposed = sub i8 %rem.lhs.trunc, %0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rem31.decomposed)
  %cmp = icmp eq i8 %rem31.decomposed, 0
  %1 = lshr i8 %rem.lhs.trunc, 1
  %div1132.sink = select i1 %cmp, i8 %div1132, i8 %1
  %.sink = select i1 %cmp, i8 3, i8 2
  %qdaudio = getelementptr inbounds %struct.clk_audio_pad, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %qdaudio to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %div1132.sink, ptr %qdaudio, align 4
  %div13 = getelementptr inbounds %struct.clk_audio_pad, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %div13 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %div13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pmc_enable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_audio_pmc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %qdpmc = getelementptr inbounds %struct.clk_audio_pmc, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %qdpmc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qdpmc, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 332, i32 noundef 8323076, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_audio_pll_pmc_disable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_audio_pmc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 332, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pmc_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qdpmc = getelementptr inbounds %struct.clk_audio_pmc, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %qdpmc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qdpmc, align 4
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 1
  %div = udiv i32 %parent_rate, %add
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_pmc_recalc_rate.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_pmc_recalc_rate, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %qdpmc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qdpmc, align 4
  %conv5 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_pmc_recalc_rate.__UNIQUE_ID_ddebug171, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %div, i32 noundef %conv5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pmc_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_pmc_round_rate.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_pmc_round_rate, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_pmc_round_rate.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %rate, i32 noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool4.not = icmp eq i32 %rate, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call7 = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef 1) #6
  %div8 = udiv i32 %call7, %rate
  %4 = tail call i32 @llvm.umax.i32(i32 %div8, i32 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %4)
  %cmp1079 = icmp ult i32 %4, 128
  br i1 %cmp1079, label %if.end6.for.body_crit_edge, label %if.end6.do.body28_crit_edge

if.end6.do.body28_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %best_rate.084 = phi i32 [ %best_rate.1, %for.inc.for.body_crit_edge ], [ -22, %if.end6.for.body_crit_edge ]
  %tmp_qd.083 = phi i32 [ %tmp_qd.1, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %div.081 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %4, %if.end6.for.body_crit_edge ]
  %best_diff.080 = phi i32 [ %best_diff.1, %for.inc.for.body_crit_edge ], [ -1, %if.end6.for.body_crit_edge ]
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %mul = mul i32 %div.081, %rate
  %call12 = tail call i32 @clk_round_rate(ptr noundef %6, i32 noundef %mul) #6
  %div13 = udiv i32 %call12, %div.081
  %sub = sub i32 %rate, %div13
  %7 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.080)
  %cmp21 = icmp slt i32 %best_diff.080, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.080, i32 %7)
  %cmp22 = icmp sgt i32 %best_diff.080, %7
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp22
  br i1 %or.cond, label %if.then23, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then23:                                        ; preds = %for.body
  %8 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call12, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div13, i32 %rate)
  %tobool24.not = icmp eq i32 %div13, %rate
  br i1 %tobool24.not, label %if.then23.do.body28_crit_edge, label %if.then23.for.inc_crit_edge

if.then23.for.inc_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then23.do.body28_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

for.inc:                                          ; preds = %if.then23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_diff.1 = phi i32 [ %7, %if.then23.for.inc_crit_edge ], [ %best_diff.080, %for.body.for.inc_crit_edge ]
  %tmp_qd.1 = phi i32 [ %div.081, %if.then23.for.inc_crit_edge ], [ %tmp_qd.083, %for.body.for.inc_crit_edge ]
  %best_rate.1 = phi i32 [ %div13, %if.then23.for.inc_crit_edge ], [ %best_rate.084, %for.body.for.inc_crit_edge ]
  %inc = add i32 %div.081, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.inc.do.body28_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.body28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

do.body28:                                        ; preds = %for.inc.do.body28_crit_edge, %if.then23.do.body28_crit_edge, %if.end6.do.body28_crit_edge
  %tmp_qd.2 = phi i32 [ 0, %if.end6.do.body28_crit_edge ], [ %tmp_qd.1, %for.inc.do.body28_crit_edge ], [ %div.081, %if.then23.do.body28_crit_edge ]
  %best_rate.2 = phi i32 [ -22, %if.end6.do.body28_crit_edge ], [ %best_rate.1, %for.inc.do.body28_crit_edge ], [ %rate, %if.then23.do.body28_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_pmc_round_rate.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_pmc_round_rate, %if.then40)) #6
          to label %cleanup [label %if.then40], !srcloc !65

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parent_rate, align 4
  %sub41 = add i32 %tmp_qd.2, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_pmc_round_rate.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %best_rate.2, i32 noundef %10, i32 noundef %sub41) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.body28, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %best_rate.2, %if.then40 ], [ %best_rate.2, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pmc_set_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_audio_pll_pmc_set_rate.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_audio_pll_pmc_set_rate, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !65

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_audio_pll_pmc_set_rate.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef %rate, i32 noundef %parent_rate) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %div = udiv i32 %parent_rate, %rate
  %0 = trunc i32 %div to i8
  %conv = add i8 %0, -1
  %qdpmc = getelementptr inbounds %struct.clk_audio_pmc, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %qdpmc to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %qdpmc, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @audio_pll_frac_ops, !1, !"audio_pll_frac_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 427, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 181, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @clk_audio_pll_frac_recalc_rate.__UNIQUE_ID_ddebug169, !3, !"__UNIQUE_ID_ddebug169", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 164, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @clk_audio_pll_fout.__UNIQUE_ID_ddebug167, !9, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!12 = !{ptr @clk_audio_pll_fout.__UNIQUE_ID_ddebug168, !13, !"__UNIQUE_ID_ddebug168", i1 false, i1 false}
!13 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 168, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 250, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @clk_audio_pll_frac_determine_rate.__UNIQUE_ID_ddebug172, !15, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 267, i32 2}
!20 = !{ptr @clk_audio_pll_frac_determine_rate.__UNIQUE_ID_ddebug181, !19, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 371, i32 2}
!23 = !{ptr @clk_audio_pll_frac_set_rate.__UNIQUE_ID_ddebug188, !22, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!24 = !{ptr @audio_pll_pad_ops, !25, !"audio_pll_pad_ops", i1 false, i1 false}
!25 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 435, i32 29}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 196, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @clk_audio_pll_pad_recalc_rate.__UNIQUE_ID_ddebug170, !27, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 285, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @clk_audio_pll_pad_round_rate.__UNIQUE_ID_ddebug182, !31, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 318, i32 2}
!36 = !{ptr @clk_audio_pll_pad_round_rate.__UNIQUE_ID_ddebug183, !35, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 393, i32 2}
!39 = !{ptr @clk_audio_pll_pad_set_rate.__UNIQUE_ID_ddebug189, !38, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!40 = !{ptr @audio_pll_pmc_ops, !41, !"audio_pll_pmc_ops", i1 false, i1 false}
!41 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 443, i32 29}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 210, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @clk_audio_pll_pmc_recalc_rate.__UNIQUE_ID_ddebug171, !43, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 335, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @clk_audio_pll_pmc_round_rate.__UNIQUE_ID_ddebug184, !47, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 358, i32 2}
!52 = !{ptr @clk_audio_pll_pmc_round_rate.__UNIQUE_ID_ddebug187, !51, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/at91/clk-audio-pll.c", i32 419, i32 2}
!55 = !{ptr @clk_audio_pll_pmc_set_rate.__UNIQUE_ID_ddebug190, !54, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148734521, i64 2148734526, i64 2148734539, i64 2148734583, i64 2148734617, i64 2148734638}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2148643240, i64 2148643520, i64 2148643854, i64 2148644188}
