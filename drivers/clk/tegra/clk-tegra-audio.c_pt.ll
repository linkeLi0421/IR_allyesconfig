; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-tegra-audio.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_sync_source_initdata = type { ptr, i32, i32, i32 }
%struct.tegra_audio_clk_initdata = type { ptr, ptr, i32, i32, i32 }
%struct.tegra_audio2x_clk_initdata = type { ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tegra_audio_clk_info = type { ptr, ptr, i32, ptr }

@tegra_audio_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013No audio data passed to tegra_audio_clk_init\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_audio_clk_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clk/tegra/clk-tegra-audio.c\00", [60 x i8] zeroinitializer }, align 32
@tegra_audio_clk_init._entry_ptr = internal global ptr @tegra_audio_clk_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_a_out0_div\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_a\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_a_out0\00", [21 x i8] zeroinitializer }, align 32
@sync_source_clks = internal unnamed_addr constant [7 x %struct.tegra_sync_source_initdata] [%struct.tegra_sync_source_initdata { ptr @.str.6, i32 0, i32 0, i32 232 }, %struct.tegra_sync_source_initdata { ptr @.str.7, i32 0, i32 0, i32 102 }, %struct.tegra_sync_source_initdata { ptr @.str.8, i32 0, i32 0, i32 104 }, %struct.tegra_sync_source_initdata { ptr @.str.9, i32 0, i32 0, i32 106 }, %struct.tegra_sync_source_initdata { ptr @.str.10, i32 0, i32 0, i32 108 }, %struct.tegra_sync_source_initdata { ptr @.str.11, i32 0, i32 0, i32 110 }, %struct.tegra_sync_source_initdata { ptr @.str.12, i32 0, i32 0, i32 271 }], section ".init.data", align 4
@audio_clks = internal global { [6 x %struct.tegra_audio_clk_initdata], [40 x i8] } { [6 x %struct.tegra_audio_clk_initdata] [%struct.tegra_audio_clk_initdata { ptr @.str.13, ptr @.str.14, i32 1184, i32 11, i32 13 }, %struct.tegra_audio_clk_initdata { ptr @.str.15, ptr @.str.16, i32 1188, i32 14, i32 16 }, %struct.tegra_audio_clk_initdata { ptr @.str.17, ptr @.str.18, i32 1192, i32 17, i32 19 }, %struct.tegra_audio_clk_initdata { ptr @.str.19, ptr @.str.20, i32 1196, i32 20, i32 22 }, %struct.tegra_audio_clk_initdata { ptr @.str.21, ptr @.str.22, i32 1200, i32 23, i32 25 }, %struct.tegra_audio_clk_initdata { ptr @.str.23, ptr @.str.24, i32 1204, i32 228, i32 233 }], [40 x i8] zeroinitializer }, align 32
@mux_audio_sync_clk = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.5, ptr @.str.12], [32 x i8] zeroinitializer }, align 32
@dmic_clks = internal global { [3 x %struct.tegra_audio_clk_initdata], [36 x i8] } { [3 x %struct.tegra_audio_clk_initdata] [%struct.tegra_audio_clk_initdata { ptr @.str.25, ptr @.str.26, i32 1376, i32 301, i32 304 }, %struct.tegra_audio_clk_initdata { ptr @.str.27, ptr @.str.28, i32 1380, i32 302, i32 305 }, %struct.tegra_audio_clk_initdata { ptr @.str.29, ptr @.str.30, i32 1720, i32 303, i32 306 }], [36 x i8] zeroinitializer }, align 32
@mux_dmic_sync_clk = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.31, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.5, ptr @.str.12], [32 x i8] zeroinitializer }, align 32
@audio2x_clks = internal constant { [6 x %struct.tegra_audio2x_clk_initdata], [56 x i8] } { [6 x %struct.tegra_audio2x_clk_initdata] [%struct.tegra_audio2x_clk_initdata { ptr @.str.13, ptr @.str.32, ptr @.str.33, ptr @.str.34, i32 12, i32 113, i8 24 }, %struct.tegra_audio2x_clk_initdata { ptr @.str.15, ptr @.str.35, ptr @.str.36, ptr @.str.37, i32 15, i32 114, i8 25 }, %struct.tegra_audio2x_clk_initdata { ptr @.str.17, ptr @.str.38, ptr @.str.39, ptr @.str.40, i32 18, i32 115, i8 26 }, %struct.tegra_audio2x_clk_initdata { ptr @.str.19, ptr @.str.41, ptr @.str.42, ptr @.str.43, i32 21, i32 116, i8 27 }, %struct.tegra_audio2x_clk_initdata { ptr @.str.21, ptr @.str.44, ptr @.str.45, ptr @.str.46, i32 24, i32 117, i8 28 }, %struct.tegra_audio2x_clk_initdata { ptr @.str.23, ptr @.str.47, ptr @.str.48, ptr @.str.49, i32 229, i32 118, i8 29 }], [56 x i8] zeroinitializer }, align 32
@clk_doubler_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spdif_in_sync\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s0_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s1_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s2_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s3_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s4_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vimclk_sync\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio0\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio0_mux\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio1\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio1_mux\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio2\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio2_mux\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio3\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio3_mux\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio4\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio4_mux\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmic1_sync_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmic1_sync_clk_mux\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmic2_sync_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmic2_sync_clk_mux\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmic3_sync_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmic3_sync_clk_mux\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unused\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio0_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio0_doubler\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio0_div\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio1_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio1_doubler\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio1_div\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio2_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio2_doubler\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio2_div\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio3_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio3_doubler\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio3_div\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio4_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio4_doubler\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio4_div\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif_2x\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spdif_doubler\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_div\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_doubler_lock\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 173, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 193, i32 36 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 193, i32 54 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 196, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"audio_clks\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 104, i32 40 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"mux_audio_sync_clk\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 84, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"dmic_clks\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 113, i32 40 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"mux_dmic_sync_clk\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 89, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"audio2x_clks\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 119, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"clk_doubler_lock\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 95, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 96, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 97, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 98, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 99, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 100, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 101, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 105, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 106, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 107, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 108, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 109, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 110, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 114, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 115, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 116, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 89, i32 51 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 120, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 121, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 122, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 123, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 124, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 125, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [39 x i8] c"../drivers/clk/tegra/clk-tegra-audio.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 82, i32 8 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @tegra_audio_clk_init._entry, ptr @tegra_audio_clk_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @audio_clks, ptr @mux_audio_sync_clk, ptr @dmic_clks, ptr @mux_dmic_sync_clk, ptr @audio2x_clks, ptr @clk_doubler_lock, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_audio_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_clks to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_audio_sync_clk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_clks to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_dmic_sync_clk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio2x_clks to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_doubler_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_audio_clk_init(ptr noundef %clk_base, ptr noundef %pmc_base, ptr noundef %tegra_clks, ptr noundef readonly %audio_info, i32 noundef %num_plls, i32 noundef %sync_max_rate) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %audio_info, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_plls)
  %cmp = icmp eq i32 %num_plls, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %do.end, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 174, i32 noundef 9, ptr noundef null) #3
  br label %cleanup80

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0134 = phi i32 [ %inc, %if.end27.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %clk_id = getelementptr %struct.tegra_audio_clk_info, ptr %audio_info, i32 %i.0134, i32 2
  %0 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_id, align 4
  %call23 = tail call ptr @tegra_lookup_dt_id(i32 noundef %1, ptr noundef %tegra_clks) #3
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %for.body.if.end27_crit_edge, label %if.then25

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.tegra_audio_clk_info, ptr %audio_info, i32 %i.0134
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parent = getelementptr %struct.tegra_audio_clk_info, ptr %audio_info, i32 %i.0134, i32 3
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %pll_params = getelementptr %struct.tegra_audio_clk_info, ptr %audio_info, i32 %i.0134, i32 1
  %6 = ptrtoint ptr %pll_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_params, align 4
  %call26 = tail call ptr @tegra_clk_register_pll(ptr noundef %3, ptr noundef %5, ptr noundef %clk_base, ptr noundef %pmc_base, i32 noundef 0, ptr noundef %7, ptr noundef null) #3
  %8 = ptrtoint ptr %call23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call26, ptr %call23, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body.if.end27_crit_edge
  %inc = add nuw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %num_plls
  br i1 %exitcond.not, label %for.end, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end27
  %call28 = tail call ptr @tegra_lookup_dt_id(i32 noundef 138, ptr noundef %tegra_clks) #3
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %for.end.for.body37.preheader_crit_edge, label %if.then30

for.end.for.body37.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body37.preheader

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %clk_base, i32 180
  %call31 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %add.ptr, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #3
  %call33 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 12, i8 noundef zeroext 0, ptr noundef null) #3
  %9 = ptrtoint ptr %call28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call33, ptr %call28, align 4
  br label %for.body37.preheader

for.body37.preheader:                             ; preds = %if.then30, %for.end.for.body37.preheader_crit_edge
  br label %for.body37

for.body37:                                       ; preds = %cleanup.for.body37_crit_edge, %for.body37.preheader
  %i.1136 = phi i32 [ %inc47, %cleanup.for.body37_crit_edge ], [ 0, %for.body37.preheader ]
  %clk_id39 = getelementptr [7 x %struct.tegra_sync_source_initdata], ptr @sync_source_clks, i32 0, i32 %i.1136, i32 3
  %10 = ptrtoint ptr %clk_id39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_id39, align 4
  %call40 = tail call ptr @tegra_lookup_dt_id(i32 noundef %11, ptr noundef %tegra_clks) #3
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %for.body37.cleanup_crit_edge, label %if.end43

for.body37.cleanup_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end43:                                         ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx38 = getelementptr [7 x %struct.tegra_sync_source_initdata], ptr @sync_source_clks, i32 0, i32 %i.1136
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx38, align 4
  %call45 = tail call ptr @tegra_clk_register_sync_source(ptr noundef %13, i32 noundef %sync_max_rate) #3
  %14 = ptrtoint ptr %call40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call45, ptr %call40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %for.body37.cleanup_crit_edge
  %inc47 = add nuw nsw i32 %i.1136, 1
  %exitcond141.not = icmp eq i32 %inc47, 7
  br i1 %exitcond141.not, label %for.end48, label %cleanup.for.body37_crit_edge

cleanup.for.body37_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body37

for.end48:                                        ; preds = %cleanup
  tail call fastcc void @tegra_audio_sync_clk_init(ptr noundef %clk_base, ptr noundef %tegra_clks, ptr noundef nonnull @audio_clks, i32 noundef 6, ptr noundef nonnull @mux_audio_sync_clk) #7
  br label %for.body51

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.end48
  %i.2138 = phi i32 [ 0, %for.end48 ], [ %inc55, %for.body51.for.body51_crit_edge ]
  %offset = getelementptr [3 x %struct.tegra_audio_clk_initdata], ptr @dmic_clks, i32 0, i32 %i.2138, i32 2
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add.ptr53 = getelementptr i8, ptr %clk_base, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 16777216) #3, !srcloc !103
  %inc55 = add nuw nsw i32 %i.2138, 1
  %exitcond142.not = icmp eq i32 %inc55, 3
  br i1 %exitcond142.not, label %for.end56, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body51

for.end56:                                        ; preds = %for.body51
  tail call fastcc void @tegra_audio_sync_clk_init(ptr noundef %clk_base, ptr noundef %tegra_clks, ptr noundef nonnull @dmic_clks, i32 noundef 3, ptr noundef nonnull @mux_dmic_sync_clk) #7
  %add.ptr70 = getelementptr i8, ptr %clk_base, i32 1180
  br label %for.body59

for.body59:                                       ; preds = %cleanup74.for.body59_crit_edge, %for.end56
  %i.3139 = phi i32 [ 0, %for.end56 ], [ %inc78, %cleanup74.for.body59_crit_edge ]
  %clk_id62 = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %i.3139, i32 4
  %17 = ptrtoint ptr %clk_id62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_id62, align 4
  %call63 = tail call ptr @tegra_lookup_dt_id(i32 noundef %18, ptr noundef %tegra_clks) #3
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %for.body59.cleanup74_crit_edge, label %if.end66

for.body59.cleanup74_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup74

if.end66:                                         ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx61 = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %i.3139
  %name_2x = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %i.3139, i32 2
  %19 = ptrtoint ptr %name_2x to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name_2x, align 4
  %21 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx61, align 4
  %call68 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %20, ptr noundef %22, i32 noundef 4, i32 noundef 2, i32 noundef 1) #3
  %div_name = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %i.3139, i32 3
  %23 = ptrtoint ptr %div_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %div_name, align 4
  %div_offset = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %i.3139, i32 6
  %25 = ptrtoint ptr %div_offset to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %div_offset, align 4
  %call71 = tail call ptr @tegra_clk_register_divider(ptr noundef %24, ptr noundef %20, ptr noundef %add.ptr70, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext %26, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @clk_doubler_lock) #3
  %gate_name = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %i.3139, i32 1
  %27 = ptrtoint ptr %gate_name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gate_name, align 4
  %clk_num = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %i.3139, i32 5
  %29 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clk_num, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %31 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call73 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef %28, ptr noundef %24, i8 noundef zeroext 1, ptr noundef %clk_base, i32 noundef 4, i32 noundef %30, ptr noundef %31) #3
  %32 = ptrtoint ptr %call63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call73, ptr %call63, align 4
  br label %cleanup74

cleanup74:                                        ; preds = %if.end66, %for.body59.cleanup74_crit_edge
  %inc78 = add nuw nsw i32 %i.3139, 1
  %exitcond143.not = icmp eq i32 %inc78, 6
  br i1 %exitcond143.not, label %cleanup74.cleanup80_crit_edge, label %cleanup74.for.body59_crit_edge

cleanup74.for.body59_crit_edge:                   ; preds = %cleanup74
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body59

cleanup74.cleanup80_crit_edge:                    ; preds = %cleanup74
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup74.cleanup80_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_lookup_dt_id(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_divider(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll_out(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_sync_source(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_audio_sync_clk_init(ptr noundef %clk_base, ptr noundef %tegra_clks, ptr nocapture noundef readonly %sync, i32 noundef %num_sync_clks, ptr noundef %mux_names) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sync_clks)
  %cmp1 = icmp sgt i32 %num_sync_clks, 0
  br i1 %cmp1, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %data.02 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %sync, %entry.for.body_crit_edge ]
  %mux_clk_id = getelementptr inbounds %struct.tegra_audio_clk_initdata, ptr %data.02, i32 0, i32 4
  %0 = ptrtoint ptr %mux_clk_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mux_clk_id, align 4
  %call = tail call ptr @tegra_lookup_dt_id(i32 noundef %1, ptr noundef %tegra_clks) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %for.body
  %mux_name = getelementptr inbounds %struct.tegra_audio_clk_initdata, ptr %data.02, i32 0, i32 1
  %2 = ptrtoint ptr %mux_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_name, align 4
  %offset = getelementptr inbounds %struct.tegra_audio_clk_initdata, ptr %data.02, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %clk_base, i32 %5
  %call1 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %3, ptr noundef %mux_names, i8 noundef zeroext 8, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #3
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %call, align 4
  %gate_clk_id = getelementptr inbounds %struct.tegra_audio_clk_initdata, ptr %data.02, i32 0, i32 3
  %7 = ptrtoint ptr %gate_clk_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gate_clk_id, align 4
  %call2 = tail call ptr @tegra_lookup_dt_id(i32 noundef %8, ptr noundef %tegra_clks) #3
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.end5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %data.02 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.02, align 4
  %11 = ptrtoint ptr %mux_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mux_name, align 4
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add.ptr8 = getelementptr i8, ptr %clk_base, i32 %14
  %call9 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %10, ptr noundef %12, i32 noundef 0, ptr noundef %add.ptr8, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null) #3
  %15 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9, ptr %call2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.04, 1
  %incdec.ptr = getelementptr %struct.tegra_audio_clk_initdata, ptr %data.02, i32 1
  %exitcond.not = icmp eq i32 %inc, %num_sync_clks
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_gate(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }
attributes #7 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !50, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 173, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tegra_audio_clk_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tegra_audio_clk_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 193, i32 36}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 193, i32 54}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 196, i32 36}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 95, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 96, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 97, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 98, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 99, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 100, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 101, i32 2}
!26 = !{ptr @sync_source_clks, !27, !"sync_source_clks", i1 false, i1 false}
!27 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 94, i32 42}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 105, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 106, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 107, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 108, i32 2}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 109, i32 2}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 110, i32 2}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @audio_clks, !47, !"audio_clks", i1 false, i1 false}
!47 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 104, i32 40}
!48 = !{ptr @mux_audio_sync_clk, !49, !"mux_audio_sync_clk", i1 false, i1 false}
!49 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 84, i32 27}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 114, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 115, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 116, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dmic_clks, !60, !"dmic_clks", i1 false, i1 false}
!60 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 113, i32 40}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 89, i32 51}
!63 = !{ptr @mux_dmic_sync_clk, !64, !"mux_dmic_sync_clk", i1 false, i1 false}
!64 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 89, i32 27}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 120, i32 2}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 121, i32 2}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 122, i32 2}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 123, i32 2}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 124, i32 2}
!83 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 125, i32 2}
!87 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @audio2x_clks, !90, !"audio2x_clks", i1 false, i1 false}
!90 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 119, i32 42}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/tegra/clk-tegra-audio.c", i32 82, i32 8}
!93 = !{ptr @clk_doubler_lock, !92, !"clk_doubler_lock", i1 false, i1 false}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 689565}
