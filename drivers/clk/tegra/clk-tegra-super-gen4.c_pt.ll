; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-tegra-super-gen4.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra-super-gen4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_super_gen_info = type { i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@tegra_super_gen_info_gen4 = internal constant { %struct.tegra_super_gen_info, [36 x i8] } { %struct.tegra_super_gen_info { i32 4, ptr @sclk_parents, ptr @cclk_g_parents, ptr @cclk_lp_parents, i32 8, i32 16, i32 10 }, [36 x i8] zeroinitializer }, align 32
@tegra_super_gen_info_gen5 = internal constant { %struct.tegra_super_gen_info, [36 x i8] } { %struct.tegra_super_gen_info { i32 5, ptr @sclk_parents_gen5, ptr @cclk_g_parents_gen5, ptr @cclk_lp_parents_gen5, i32 8, i32 16, i32 16 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cclk_g\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cclk_lp\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_x\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_ref\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_x_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@sysrate_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_div\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_div\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sysrate_lock\00", [19 x i8] zeroinitializer }, align 32
@sclk_parents = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [32 x i8] zeroinitializer }, align 32
@cclk_g_parents = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.12, ptr @.str.20, ptr @.str.18, ptr @.str.21, ptr @.str.15, ptr @.str.14, ptr @.str.17, ptr @.str.17, ptr @.str.2, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.22], [32 x i8] zeroinitializer }, align 32
@cclk_lp_parents = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.12, ptr @.str.20, ptr @.str.18, ptr @.str.21, ptr @.str.15, ptr @.str.14, ptr @.str.17, ptr @.str.17, ptr @.str.2, ptr @.str.4], [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_m\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_c_out1\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out4\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_p\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out2\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unused\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_m_out1\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_c\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_m\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dfllCPU_out\00", [20 x i8] zeroinitializer }, align 32
@sclk_parents_gen5 = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.23, ptr @.str.15, ptr @.str.16, ptr @.str.24, ptr @.str.18, ptr @.str.25], [32 x i8] zeroinitializer }, align 32
@cclk_g_parents_gen5 = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.12, ptr @.str.17, ptr @.str.18, ptr @.str.17, ptr @.str.15, ptr @.str.14, ptr @.str.17, ptr @.str.17, ptr @.str.2, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.22], [32 x i8] zeroinitializer }, align 32
@cclk_lp_parents_gen5 = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.12, ptr @.str.17, ptr @.str.18, ptr @.str.17, ptr @.str.15, ptr @.str.14, ptr @.str.17, ptr @.str.17, ptr @.str.2, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.22], [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_c4_out3\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_c4_out1\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_c4_out2\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"tegra_super_gen_info_gen4\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 59, i32 42 }
@___asan_gen_.29 = private unnamed_addr constant [26 x i8] c"tegra_super_gen_info_gen5\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 85, i32 42 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 178, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 204, i32 39 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 237, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 237, i32 43 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 247, i32 40 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 105, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 117, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"sysrate_lock\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 141, i32 9 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 144, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 156, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 159, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 28, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"sclk_parents\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 45, i32 20 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"cclk_g_parents\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 49, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"cclk_lp_parents\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 55, i32 20 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 45, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 45, i32 48 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 45, i32 62 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 46, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 46, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 46, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 47, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 47, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 49, i32 50 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 49, i32 70 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 53, i32 6 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"sclk_parents_gen5\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 69, i32 20 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"cclk_g_parents_gen5\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 73, i32 20 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"cclk_lp_parents_gen5\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 79, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 69, i32 67 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 70, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [44 x i8] c"../drivers/clk/tegra/clk-tegra-super-gen4.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 71, i32 22 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @tegra_super_gen_info_gen4, ptr @tegra_super_gen_info_gen5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sysrate_lock, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @sclk_parents, ptr @cclk_g_parents, ptr @cclk_lp_parents, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @sclk_parents_gen5, ptr @cclk_g_parents_gen5, ptr @cclk_lp_parents_gen5, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_super_gen_info_gen4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_super_gen_info_gen5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrate_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sclk_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cclk_g_parents to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cclk_lp_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sclk_parents_gen5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cclk_g_parents_gen5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cclk_lp_parents_gen5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_super_clk_gen4_init(ptr noundef %clk_base, ptr noundef %pmc_base, ptr noundef %tegra_clks, ptr noundef %params) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tegra_super_clk_init(ptr noundef %clk_base, ptr noundef %pmc_base, ptr noundef %tegra_clks, ptr noundef %params, ptr noundef nonnull @tegra_super_gen_info_gen4) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_super_clk_init(ptr noundef %clk_base, ptr noundef %pmc_base, ptr noundef %tegra_clks, ptr noundef %params, ptr nocapture noundef readonly %gen_info) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tegra_lookup_dt_id(i32 noundef 28, ptr noundef %tegra_clks) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %gen_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gen_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  %cclk_g_parents = getelementptr inbounds %struct.tegra_super_gen_info, ptr %gen_info, i32 0, i32 2
  %2 = ptrtoint ptr %cclk_g_parents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cclk_g_parents, align 4
  %num_cclk_g_parents = getelementptr inbounds %struct.tegra_super_gen_info, ptr %gen_info, i32 0, i32 5
  %4 = ptrtoint ptr %num_cclk_g_parents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cclk_g_parents, align 4
  %conv = trunc i32 %5 to i8
  %add.ptr = getelementptr i8, ptr %clk_base, i32 872
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %call2 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str, ptr noundef %3, i8 noundef zeroext %conv, i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext 2, i8 noundef zeroext 4, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null) #2
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %call7 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str, ptr noundef %3, i8 noundef zeroext %conv, i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %clk.0 = phi ptr [ %call2, %if.then1 ], [ %call7, %if.else ]
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %clk.0, ptr %call, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %call9 = tail call ptr @tegra_lookup_dt_id(i32 noundef 29, ptr noundef %tegra_clks) #2
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.if.end26_crit_edge, label %if.then11

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end26

if.then11:                                        ; preds = %if.end8
  %7 = ptrtoint ptr %gen_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gen_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp13 = icmp eq i32 %8, 5
  %cclk_lp_parents = getelementptr inbounds %struct.tegra_super_gen_info, ptr %gen_info, i32 0, i32 3
  %9 = ptrtoint ptr %cclk_lp_parents to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cclk_lp_parents, align 4
  %num_cclk_lp_parents = getelementptr inbounds %struct.tegra_super_gen_info, ptr %gen_info, i32 0, i32 6
  %11 = ptrtoint ptr %num_cclk_lp_parents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_cclk_lp_parents, align 4
  %conv16 = trunc i32 %12 to i8
  %add.ptr17 = getelementptr i8, ptr %clk_base, i32 880
  br i1 %cmp13, label %if.then15, label %if.else19

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #4
  %call18 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.1, ptr noundef %10, i8 noundef zeroext %conv16, i32 noundef 4, ptr noundef %add.ptr17, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null) #2
  br label %if.end25

if.else19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #4
  %call24 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.1, ptr noundef %10, i8 noundef zeroext %conv16, i32 noundef 4, ptr noundef %add.ptr17, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 8, i8 noundef zeroext 9, ptr noundef null) #2
  br label %if.end25

if.end25:                                         ; preds = %if.else19, %if.then15
  %clk.1 = phi ptr [ %call18, %if.then15 ], [ %call24, %if.else19 ]
  %13 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %clk.1, ptr %call9, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end8.if.end26_crit_edge
  tail call fastcc void @tegra_sclk_init(ptr noundef %clk_base, ptr noundef %tegra_clks, ptr noundef %gen_info) #5
  %call27 = tail call ptr @tegra_lookup_dt_id(i32 noundef 182, ptr noundef %tegra_clks) #2
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %call31 = tail call ptr @tegra_clk_register_pllxc(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %clk_base, ptr noundef %pmc_base, i32 noundef 8, ptr noundef %params, ptr noundef null) #2
  %14 = ptrtoint ptr %call27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call31, ptr %call27, align 4
  %call32 = tail call ptr @tegra_lookup_dt_id(i32 noundef 183, ptr noundef %tegra_clks) #2
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #4
  %call36 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 4, i32 noundef 1, i32 noundef 2) #2
  %15 = ptrtoint ptr %call32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call36, ptr %call32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_super_clk_gen5_init(ptr noundef %clk_base, ptr noundef %pmc_base, ptr noundef %tegra_clks, ptr noundef %params) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tegra_super_clk_init(ptr noundef %clk_base, ptr noundef %pmc_base, ptr noundef %tegra_clks, ptr noundef %params, ptr noundef nonnull @tegra_super_gen_info_gen5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_lookup_dt_id(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_super_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_sclk_init(ptr noundef %clk_base, ptr noundef %tegra_clks, ptr nocapture noundef readonly %gen_info) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tegra_lookup_dt_id(i32 noundef 294, ptr noundef %tegra_clks) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sclk_parents = getelementptr inbounds %struct.tegra_super_gen_info, ptr %gen_info, i32 0, i32 1
  %0 = ptrtoint ptr %sclk_parents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sclk_parents, align 4
  %num_sclk_parents = getelementptr inbounds %struct.tegra_super_gen_info, ptr %gen_info, i32 0, i32 4
  %2 = ptrtoint ptr %num_sclk_parents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sclk_parents, align 4
  %conv = trunc i32 %3 to i8
  %add.ptr = getelementptr i8, ptr %clk_base, i32 40
  %call1 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.5, ptr noundef %1, i8 noundef zeroext %conv, i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #2
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %call, align 4
  %call2 = tail call ptr @tegra_lookup_dt_id(i32 noundef 208, ptr noundef %tegra_clks) #2
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.if.end16_crit_edge, label %if.then4

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr5 = getelementptr i8, ptr %clk_base, i32 44
  %call6 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 2048, ptr noundef %add.ptr5, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @sysrate_lock) #2
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %call2, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  %call7 = tail call ptr @tegra_lookup_dt_id(i32 noundef 208, ptr noundef %tegra_clks) #2
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else.if.end16_crit_edge, label %if.then9

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %sclk_parents10 = getelementptr inbounds %struct.tegra_super_gen_info, ptr %gen_info, i32 0, i32 1
  %6 = ptrtoint ptr %sclk_parents10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sclk_parents10, align 4
  %num_sclk_parents11 = getelementptr inbounds %struct.tegra_super_gen_info, ptr %gen_info, i32 0, i32 4
  %8 = ptrtoint ptr %num_sclk_parents11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sclk_parents11, align 4
  %conv12 = trunc i32 %9 to i8
  %add.ptr13 = getelementptr i8, ptr %clk_base, i32 40
  %call14 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.6, ptr noundef %7, i8 noundef zeroext %conv12, i32 noundef 2052, ptr noundef %add.ptr13, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #2
  %10 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14, ptr %call7, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.else.if.end16_crit_edge, %if.then4, %if.then.if.end16_crit_edge
  %call17 = tail call ptr @tegra_lookup_dt_id(i32 noundef 82, ptr noundef %tegra_clks) #2
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %if.then19

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end24

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr20 = getelementptr i8, ptr %clk_base, i32 48
  %call21 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %add.ptr20, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @sysrate_lock) #2
  %call23 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 2052, ptr noundef %add.ptr20, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull @sysrate_lock) #2
  %11 = ptrtoint ptr %call17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %call17, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end16.if.end24_crit_edge
  %call25 = tail call ptr @tegra_lookup_dt_id(i32 noundef 136, ptr noundef %tegra_clks) #2
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr29 = getelementptr i8, ptr %clk_base, i32 48
  %call30 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef %add.ptr29, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @sysrate_lock) #2
  %call32 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 2052, ptr noundef %add.ptr29, i8 noundef zeroext 3, i8 noundef zeroext 1, ptr noundef nonnull @sysrate_lock) #2
  %12 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call32, ptr %call25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllxc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 178, i32 39}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 204, i32 39}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 237, i32 34}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 237, i32 43}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 247, i32 40}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 105, i32 38}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 117, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 141, i32 9}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 144, i32 33}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 156, i32 8}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 159, i32 32}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 28, i32 8}
!24 = !{ptr @sysrate_lock, !23, !"sysrate_lock", i1 false, i1 false}
!25 = !{ptr @tegra_super_gen_info_gen4, !26, !"tegra_super_gen_info_gen4", i1 false, i1 false}
!26 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 59, i32 42}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 45, i32 39}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 45, i32 48}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 45, i32 62}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 46, i32 11}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 46, i32 20}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 46, i32 34}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 47, i32 11}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 47, i32 22}
!43 = !{ptr @sclk_parents, !44, !"sclk_parents", i1 false, i1 false}
!44 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 45, i32 20}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 49, i32 50}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 49, i32 70}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 53, i32 6}
!51 = !{ptr @cclk_g_parents, !52, !"cclk_g_parents", i1 false, i1 false}
!52 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 49, i32 20}
!53 = !{ptr @cclk_lp_parents, !54, !"cclk_lp_parents", i1 false, i1 false}
!54 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 55, i32 20}
!55 = !{ptr @tegra_super_gen_info_gen5, !56, !"tegra_super_gen_info_gen5", i1 false, i1 false}
!56 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 85, i32 42}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 69, i32 67}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 70, i32 34}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 71, i32 22}
!63 = !{ptr @sclk_parents_gen5, !64, !"sclk_parents_gen5", i1 false, i1 false}
!64 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 69, i32 20}
!65 = !{ptr @cclk_g_parents_gen5, !66, !"cclk_g_parents_gen5", i1 false, i1 false}
!66 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 73, i32 20}
!67 = !{ptr @cclk_lp_parents_gen5, !68, !"cclk_lp_parents_gen5", i1 false, i1 false}
!68 = !{!"../drivers/clk/tegra/clk-tegra-super-gen4.c", i32 79, i32 20}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
