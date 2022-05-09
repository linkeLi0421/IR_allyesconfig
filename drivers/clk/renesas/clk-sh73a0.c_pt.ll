; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/clk-sh73a0.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-sh73a0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.div4_clk = type { ptr, ptr, i32, i32 }
%struct.sh73a0_cpg = type { %struct.clk_onecell_data, %struct.spinlock, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__of_table_sh73a0_cpg_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh73a0-cpg-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sh73a0_cpg_clocks_init }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@sh73a0_cpg_clocks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: failed to count clocks\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sh73a0_cpg_clocks_init\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/renesas/clk-sh73a0.c\00", [63 x i8] zeroinitializer }, align 32
@sh73a0_cpg_clocks_init._entry_ptr = internal global ptr @sh73a0_cpg_clocks_init._entry, section ".printk_index", align 4
@sh73a0_cpg_clocks_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cpg->lock\00", [21 x i8] zeroinitializer }, align 32
@sh73a0_cpg_clocks_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", [49 x i8] zeroinitializer }, align 32
@sh73a0_cpg_clocks_init._entry_ptr.7 = internal global ptr @sh73a0_cpg_clocks_init._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"main\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi0phy\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi1phy\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi1pck\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi0pck\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll0\00", [27 x i8] zeroinitializer }, align 32
@z_div_table = internal constant { [26 x %struct.clk_div_table], [48 x i8] } { [26 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 1 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 1 }, %struct.clk_div_table { i32 4, i32 1 }, %struct.clk_div_table { i32 5, i32 1 }, %struct.clk_div_table { i32 6, i32 1 }, %struct.clk_div_table { i32 7, i32 1 }, %struct.clk_div_table { i32 8, i32 1 }, %struct.clk_div_table { i32 9, i32 1 }, %struct.clk_div_table { i32 10, i32 1 }, %struct.clk_div_table { i32 11, i32 1 }, %struct.clk_div_table { i32 12, i32 1 }, %struct.clk_div_table { i32 13, i32 1 }, %struct.clk_div_table { i32 14, i32 1 }, %struct.clk_div_table { i32 15, i32 1 }, %struct.clk_div_table { i32 16, i32 2 }, %struct.clk_div_table { i32 17, i32 3 }, %struct.clk_div_table { i32 18, i32 4 }, %struct.clk_div_table { i32 19, i32 6 }, %struct.clk_div_table { i32 20, i32 8 }, %struct.clk_div_table { i32 21, i32 12 }, %struct.clk_div_table { i32 22, i32 16 }, %struct.clk_div_table { i32 24, i32 24 }, %struct.clk_div_table { i32 27, i32 48 }, %struct.clk_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@div4_clks = internal constant { [8 x %struct.div4_clk], [32 x i8] } { [8 x %struct.div4_clk] [%struct.div4_clk { ptr @.str.16, ptr @.str.15, i32 0, i32 16 }, %struct.div4_clk { ptr @.str.17, ptr @.str.18, i32 0, i32 12 }, %struct.div4_clk { ptr @.str.19, ptr @.str.18, i32 0, i32 8 }, %struct.div4_clk { ptr @.str.20, ptr @.str.18, i32 0, i32 4 }, %struct.div4_clk { ptr @.str.21, ptr @.str.18, i32 0, i32 0 }, %struct.div4_clk { ptr @.str.22, ptr @.str.18, i32 4, i32 12 }, %struct.div4_clk { ptr @.str.23, ptr @.str.18, i32 4, i32 4 }, %struct.div4_clk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@div4_div_table = internal constant { [13 x %struct.clk_div_table], [56 x i8] } { [13 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table { i32 12, i32 7 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"zg\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m3\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m1\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m2\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"zx\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hp\00", [29 x i8] zeroinitializer }, align 32
@switch.table.sh73a0_cpg_register_clock = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 216, i32 40, i32 44, i32 220], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 169, i32 43 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 171, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 184, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 207, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 84, i32 20 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 90, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 118, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 118, i32 55 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 123, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 123, i32 38 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 129, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 130, i32 17 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"z_div_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 64, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"div4_clks\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 47, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"div4_div_table\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 58, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 48, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 49, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 49, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 50, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 51, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 52, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 53, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [36 x i8] c"../drivers/clk/renesas/clk-sh73a0.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 54, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [39 x i8] c"switch.table.sh73a0_cpg_register_clock\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__of_table_sh73a0_cpg_clks, ptr @sh73a0_cpg_clocks_init._entry, ptr @sh73a0_cpg_clocks_init._entry.5, ptr @sh73a0_cpg_clocks_init._entry_ptr, ptr @sh73a0_cpg_clocks_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sh73a0_cpg_clocks_init.__key, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @z_div_table, ptr @div4_clks, ptr @div4_div_table, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.sh73a0_cpg_register_clock], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh73a0_cpg_clocks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh73a0_cpg_clocks_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh73a0_cpg_clocks_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_div_table to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div4_clks to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div4_div_table to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sh73a0_cpg_register_clock to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh73a0_cpg_clocks_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #12
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #8
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !64

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #13
  %cmp4 = icmp eq ptr %call7.i.i, null
  %cmp5 = icmp eq ptr %call8.i.i, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.end7.i.i.cleanup_crit_edge, label %do.body8

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body8:                                         ; preds = %if.end7.i.i
  %lock = getelementptr inbounds %struct.sh73a0_cpg, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @sh73a0_cpg_clocks_init.__key, i16 noundef signext 3) #8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %clk_num, align 4
  %call14 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  %reg = getelementptr inbounds %struct.sh73a0_cpg, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %reg, align 4
  %cmp16 = icmp eq ptr %call14, null
  br i1 %cmp16, label %do.end27, label %do.body44, !prof !64

do.end27:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 190, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body44:                                        ; preds = %do.body8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134283264) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %add.ptr52 = getelementptr i8, ptr %10, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 134283264) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  %add.ptr57 = getelementptr i8, ptr %12, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 134283264) #8, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp58108.not = icmp eq i32 %call.i, 0
  br i1 %cmp58108.not, label %do.body44.for.end_crit_edge, label %do.body44.for.body_crit_edge

do.body44.for.body_crit_edge:                     ; preds = %do.body44
  br label %for.body

do.body44.for.end_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end71.for.body_crit_edge, %do.body44.for.body_crit_edge
  %i.0109 = phi i32 [ %inc, %if.end71.for.body_crit_edge ], [ 0, %do.body44.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #8
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !69
  %call.i103 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %name, i32 noundef 1, i32 noundef %i.0109) #8
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %call60 = call fastcc ptr @sh73a0_cpg_register_clock(ptr noundef %np, ptr noundef nonnull %call7.i.i, ptr noundef %15) #14
  %cmp.i = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end65, label %if.else

do.end65:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %18 = ptrtoint ptr %call60 to i32
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %np, ptr noundef %17, i32 noundef %18) #11
  br label %if.end71

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  %arrayidx = getelementptr ptr, ptr %20, i32 %i.0109
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call60, ptr %arrayidx, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else, %do.end65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #8
  %inc = add nuw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %if.end71.for.end_crit_edge, label %if.end71.for.body_crit_edge

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end71.for.end_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end71.for.end_crit_edge, %do.body44.for.end_crit_edge
  %call73 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end27, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sh73a0_cpg_register_clock(ptr noundef %np, ptr noundef %cpg, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reg1 = getelementptr inbounds %struct.sh73a0_cpg, ptr %cpg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 192
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %3 = lshr i32 %2, 4
  %and = lshr i32 %2, 5
  %shr4 = and i32 %and, 1
  %call5 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %shr4) #8
  %and6 = and i32 %3, 1
  %add = add nuw nsw i32 %and6, 1
  br label %if.then106

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(4) @.str.9, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else52

if.then9:                                         ; preds = %if.else
  %arrayidx = getelementptr i8, ptr %name, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %switch.tableidx = add i8 %5, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 4
  br i1 %6, label %switch.lookup, label %if.then9.cleanup114_crit_edge

if.then9.cleanup114_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

switch.lookup:                                    ; preds = %if.then9
  %sub = add nsw i32 %conv, -48
  %reg10 = getelementptr inbounds %struct.sh73a0_cpg, ptr %cpg, i32 0, i32 2
  %7 = ptrtoint ptr %reg10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg10, align 4
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sh73a0_cpg_register_clock, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add.ptr17 = getelementptr i8, ptr %8, i32 %switch.load
  %add.ptr22 = getelementptr i8, ptr %8, i32 208
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #8, !srcloc !70
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %shl = shl nuw i32 1, %sub
  %and26 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %switch.lookup.if.then106_crit_edge, label %if.then28

switch.lookup.if.then106_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

if.then28:                                        ; preds = %switch.lookup
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %and35 = and i32 %13, 63
  %add36 = add nuw nsw i32 %and35, 1
  %sub.off = add nsw i32 %conv, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.off)
  %switch = icmp ult i32 %sub.off, 2
  br i1 %switch, label %if.then40, label %if.then28.if.then106_crit_edge

if.then28.if.then106_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

if.then40:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %15 = lshr i32 %14, 12
  %.lobit = and i32 %15, 1
  %spec.select = shl nuw nsw i32 %add36, %.lobit
  br label %if.then106

if.else52:                                        ; preds = %if.else
  %call53 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else52.if.then58_crit_edge, label %lor.lhs.false55

if.else52.if.then58_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

lor.lhs.false55:                                  ; preds = %if.else52
  %call56 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %lor.lhs.false55.if.then58_crit_edge, label %if.else79

lor.lhs.false55.if.then58_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false55.if.then58_crit_edge, %if.else52.if.then58_crit_edge
  %arrayidx59 = getelementptr i8, ptr %name, i32 3
  %16 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx59, align 1
  %reg62 = getelementptr inbounds %struct.sh73a0_cpg, ptr %cpg, i32 0, i32 2
  %18 = ptrtoint ptr %reg62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg62, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %17)
  %tobool63.not = icmp eq i8 %17, 48
  %cond = select i1 %tobool63.not, i32 108, i32 112
  %add.ptr64 = getelementptr i8, ptr %19, i32 %cond
  %cond66 = select i1 %tobool63.not, ptr @.str.13, ptr @.str.12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #8, !srcloc !70
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %and72 = and i32 %21, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %and76 = and i32 %21, 63
  %add77 = add nuw nsw i32 %and76, 1
  %mult.2 = select i1 %tobool73.not, i32 1, i32 %add77
  br label %if.then106

if.else79:                                        ; preds = %lor.lhs.false55
  %call80 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(2) @.str.14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.else79.if.else108_crit_edge, label %if.else79.for.body_crit_edge

if.else79.for.body_crit_edge:                     ; preds = %if.else79
  br label %for.body

if.else79.if.else108_crit_edge:                   ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else108

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else79.for.body_crit_edge
  %22 = phi ptr [ %24, %for.inc.for.body_crit_edge ], [ @.str.16, %if.else79.for.body_crit_edge ]
  %c.0178 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @div4_clks, %if.else79.for.body_crit_edge ]
  %call87 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull %22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.div4_clk, ptr %c.0178, i32 1
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %incdec.ptr, align 4
  %tobool85.not = icmp eq ptr %24, null
  br i1 %tobool85.not, label %for.inc.cleanup114_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup114_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.div4_clk, ptr %c.0178, i32 0, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  %reg90 = getelementptr inbounds %struct.div4_clk, ptr %c.0178, i32 0, i32 2
  %27 = ptrtoint ptr %reg90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg90, align 4
  %shift91 = getelementptr inbounds %struct.div4_clk, ptr %c.0178, i32 0, i32 3
  %29 = ptrtoint ptr %shift91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %shift91, align 4
  %phi.cast = trunc i32 %30 to i8
  br label %if.else108

if.then106:                                       ; preds = %if.then58, %if.then40, %if.then28.if.then106_crit_edge, %switch.lookup.if.then106_crit_edge, %if.then
  %div.0.ph = phi i32 [ %add, %if.then ], [ 1, %if.then58 ], [ 1, %if.then28.if.then106_crit_edge ], [ 1, %if.then40 ], [ 1, %switch.lookup.if.then106_crit_edge ]
  %mult.3.ph = phi i32 [ 1, %if.then ], [ %mult.2, %if.then58 ], [ %add36, %if.then28.if.then106_crit_edge ], [ %spec.select, %if.then40 ], [ 1, %switch.lookup.if.then106_crit_edge ]
  %parent_name.1.ph = phi ptr [ %call5, %if.then ], [ %cond66, %if.then58 ], [ @.str.8, %if.then28.if.then106_crit_edge ], [ @.str.8, %if.then40 ], [ @.str.8, %switch.lookup.if.then106_crit_edge ]
  %call107 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %name, ptr noundef %parent_name.1.ph, i32 noundef 0, i32 noundef %mult.3.ph, i32 noundef %div.0.ph) #8
  br label %cleanup114

if.else108:                                       ; preds = %for.end, %if.else79.if.else108_crit_edge
  %parent_name.1 = phi ptr [ @.str.15, %if.else79.if.else108_crit_edge ], [ %26, %for.end ]
  %width.1 = phi i8 [ 5, %if.else79.if.else108_crit_edge ], [ 4, %for.end ]
  %reg.1 = phi i32 [ 4, %if.else79.if.else108_crit_edge ], [ %28, %for.end ]
  %shift.1 = phi i8 [ 24, %if.else79.if.else108_crit_edge ], [ %phi.cast, %for.end ]
  %table.1 = phi ptr [ @z_div_table, %if.else79.if.else108_crit_edge ], [ @div4_div_table, %for.end ]
  %reg109 = getelementptr inbounds %struct.sh73a0_cpg, ptr %cpg, i32 0, i32 2
  %31 = ptrtoint ptr %reg109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg109, align 4
  %add.ptr110 = getelementptr i8, ptr %32, i32 %reg.1
  %lock = getelementptr inbounds %struct.sh73a0_cpg, ptr %cpg, i32 0, i32 1
  %call113 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %name, ptr noundef %parent_name.1, i32 noundef 0, ptr noundef %add.ptr110, i8 noundef zeroext %shift.1, i8 noundef zeroext %width.1, i8 noundef zeroext 0, ptr noundef nonnull %table.1, ptr noundef %lock) #8
  br label %cleanup114

cleanup114:                                       ; preds = %if.else108, %if.then106, %for.inc.cleanup114_crit_edge, %if.then9.cleanup114_crit_edge
  %retval.2 = phi ptr [ %call113, %if.else108 ], [ %call107, %if.then106 ], [ inttoptr (i32 -22 to ptr), %if.then9.cleanup114_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.cleanup114_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__of_table_sh73a0_cpg_clks, !1, !"__of_table_sh73a0_cpg_clks", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 215, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 169, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 171, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sh73a0_cpg_clocks_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @sh73a0_cpg_clocks_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @sh73a0_cpg_clocks_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 184, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 207, i32 4}
!15 = !{ptr @sh73a0_cpg_clocks_init._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @sh73a0_cpg_clocks_init._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 84, i32 20}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 90, i32 28}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 118, i32 27}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 118, i32 55}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 123, i32 26}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 123, i32 38}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 129, i32 27}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 130, i32 17}
!33 = !{ptr @z_div_table, !34, !"z_div_table", i1 false, i1 false}
!34 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 64, i32 35}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 48, i32 4}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 49, i32 4}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 49, i32 10}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 50, i32 4}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 51, i32 4}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 52, i32 4}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 53, i32 4}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 54, i32 4}
!51 = !{ptr @div4_clks, !52, !"div4_clks", i1 false, i1 false}
!52 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 47, i32 30}
!53 = !{ptr @div4_div_table, !54, !"div4_div_table", i1 false, i1 false}
!54 = !{!"../drivers/clk/renesas/clk-sh73a0.c", i32 58, i32 35}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 2152531921}
!66 = !{i64 4031014}
!67 = !{i64 2152532319}
!68 = !{i64 2152532717}
!69 = !{!"auto-init"}
!70 = !{i64 4031432}
!71 = !{i64 2152526753}
!72 = !{i64 2152527259}
!73 = !{i64 2152527801}
!74 = !{i64 2152528259}
!75 = !{i64 2152528791}
