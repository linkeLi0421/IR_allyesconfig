; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/clk-r8a73a4.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-r8a73a4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.div4_clk = type { ptr, i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.r8a73a4_cpg = type { %struct.clk_onecell_data, %struct.spinlock, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__of_table_r8a73a4_cpg_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a73a4-cpg-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a73a4_cpg_clocks_init }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@r8a73a4_cpg_clocks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: failed to count clocks\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"r8a73a4_cpg_clocks_init\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/renesas/clk-r8a73a4.c\00", [62 x i8] zeroinitializer }, align 32
@r8a73a4_cpg_clocks_init._entry_ptr = internal global ptr @r8a73a4_cpg_clocks_init._entry, section ".printk_index", align 4
@r8a73a4_cpg_clocks_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cpg->lock\00", [21 x i8] zeroinitializer }, align 32
@r8a73a4_cpg_clocks_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", [49 x i8] zeroinitializer }, align 32
@r8a73a4_cpg_clocks_init._entry_ptr.7 = internal global ptr @r8a73a4_cpg_clocks_init._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"main\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll0\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extal2\00", [25 x i8] zeroinitializer }, align 32
@r8a73a4_cpg_register_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: unexpected parent of %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"r8a73a4_cpg_register_clock\00", [37 x i8] zeroinitializer }, align 32
@r8a73a4_cpg_register_clock._entry_ptr = internal global ptr @r8a73a4_cpg_register_clock._entry, section ".printk_index", align 4
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"z2\00", [29 x i8] zeroinitializer }, align 32
@div4_clks = internal constant { [9 x %struct.div4_clk], [52 x i8] } { [9 x %struct.div4_clk] [%struct.div4_clk { ptr @.str.17, i32 0, i32 20 }, %struct.div4_clk { ptr @.str.18, i32 0, i32 12 }, %struct.div4_clk { ptr @.str.19, i32 0, i32 8 }, %struct.div4_clk { ptr @.str.20, i32 0, i32 4 }, %struct.div4_clk { ptr @.str.21, i32 0, i32 0 }, %struct.div4_clk { ptr @.str.22, i32 4, i32 12 }, %struct.div4_clk { ptr @.str.23, i32 4, i32 8 }, %struct.div4_clk { ptr @.str.24, i32 4, i32 4 }, %struct.div4_clk zeroinitializer], [52 x i8] zeroinitializer }, align 32
@div4_div_table = internal constant { [13 x %struct.clk_div_table], [56 x i8] } { [13 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table { i32 12, i32 10 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m3\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m1\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m2\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"zx\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"zs\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hp\00", [29 x i8] zeroinitializer }, align 32
@switch.table.r8a73a4_cpg_register_clock = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 2, i32 2, i32 4, i32 1, i32 1], [40 x i8] zeroinitializer }, align 32
@switch.table.r8a73a4_cpg_register_clock.25 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.8, ptr @.str.12, ptr @.str.8, ptr @.str.12, ptr @.str.8, ptr @.str.12], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 104, i64 115]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 196, i32 43 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 198, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 211, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 229, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 71, i32 20 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 90, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 102, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 110, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 133, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 147, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 153, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 153, i32 49 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"div4_clks\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 42, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"div4_div_table\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 54, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 43, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 44, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 45, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 46, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 47, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 48, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 49, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [37 x i8] c"../drivers/clk/renesas/clk-r8a73a4.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 50, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [40 x i8] c"switch.table.r8a73a4_cpg_register_clock\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [43 x i8] c"switch.table.r8a73a4_cpg_register_clock.25\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__of_table_r8a73a4_cpg_clks, ptr @r8a73a4_cpg_clocks_init._entry, ptr @r8a73a4_cpg_clocks_init._entry.5, ptr @r8a73a4_cpg_clocks_init._entry_ptr, ptr @r8a73a4_cpg_clocks_init._entry_ptr.7, ptr @r8a73a4_cpg_register_clock._entry, ptr @r8a73a4_cpg_register_clock._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @r8a73a4_cpg_clocks_init.__key, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @div4_clks, ptr @div4_div_table, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.r8a73a4_cpg_register_clock, ptr @switch.table.r8a73a4_cpg_register_clock.25], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a73a4_cpg_clocks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a73a4_cpg_clocks_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a73a4_cpg_clocks_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a73a4_cpg_register_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div4_clks to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div4_div_table to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r8a73a4_cpg_register_clock to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r8a73a4_cpg_register_clock.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r8a73a4_cpg_clocks_init(ptr noundef %np) #0 section ".init.text" align 64 {
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
  br i1 %2, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !65

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
  %lock = getelementptr inbounds %struct.r8a73a4_cpg, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @r8a73a4_cpg_clocks_init.__key, i16 noundef signext 3) #8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %clk_num, align 4
  %call14 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  %reg = getelementptr inbounds %struct.r8a73a4_cpg, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %reg, align 4
  %cmp16 = icmp eq ptr %call14, null
  br i1 %cmp16, label %do.end27, label %for.cond.preheader, !prof !65

for.cond.preheader:                               ; preds = %do.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4491.not = icmp eq i32 %call.i, 0
  br i1 %cmp4491.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end27:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 217, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

for.body:                                         ; preds = %if.end57.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.092 = phi i32 [ %inc, %if.end57.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #8
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !66
  %call.i86 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %name, i32 noundef 1, i32 noundef %i.092) #8
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call46 = call fastcc ptr @r8a73a4_cpg_register_clock(ptr noundef %np, ptr noundef nonnull %call7.i.i, ptr noundef %9) #14
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end51, label %if.else

do.end51:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %12 = ptrtoint ptr %call46 to i32
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %np, ptr noundef %11, i32 noundef %12) #11
  br label %if.end57

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.092
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call46, ptr %arrayidx, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else, %do.end51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #8
  %inc = add nuw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %if.end57.for.end_crit_edge, label %if.end57.for.body_crit_edge

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end57.for.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end57.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call59 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i.i) #8
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @r8a73a4_cpg_register_clock(ptr noundef %np, ptr noundef %cpg, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %reg1 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %cpg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 192
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %3 = lshr i32 %2, 4
  %and = and i32 %3, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.then.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #8
  br label %if.then123

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #8
  br label %if.then123

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 1) #8
  br label %if.then123

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 1) #8
  br label %if.then123

if.then.unreachabledefault:                       ; preds = %if.then
  unreachable

if.else:                                          ; preds = %entry
  %call11 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.else26

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %reg16 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %cpg, i32 0, i32 2
  %5 = ptrtoint ptr %reg16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg16, align 4
  %add.ptr17 = getelementptr i8, ptr %6, i32 216
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !67
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %shr21 = lshr i32 %8, 24
  %and22 = and i32 %shr21, 127
  %add = add nuw nsw i32 %and22, 1
  %and23 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %spec.select = select i1 %tobool24.not, i32 1, i32 2
  br label %if.then123

if.else26:                                        ; preds = %if.else
  %call27 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.else45

if.then29:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %reg33 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %cpg, i32 0, i32 2
  %9 = ptrtoint ptr %reg33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg33, align 4
  %add.ptr34 = getelementptr i8, ptr %10, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #8, !srcloc !67
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %shr38 = lshr i32 %12, 24
  %and39 = and i32 %shr38, 127
  %add40 = add nuw nsw i32 %and39, 1
  %and41 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %spec.select169 = select i1 %tobool42.not, i32 1, i32 2
  br label %if.then123

if.else45:                                        ; preds = %if.else26
  %call46 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.11, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.else78

if.then48:                                        ; preds = %if.else45
  %arrayidx = getelementptr i8, ptr %name, i32 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %14, label %if.then48.cleanup130_crit_edge [
    i8 0, label %if.then48.sw.epilog54_crit_edge
    i8 115, label %sw.bb51
    i8 104, label %sw.bb52
  ]

if.then48.sw.epilog54_crit_edge:                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog54

if.then48.cleanup130_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

sw.bb51:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog54

sw.bb52:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %sw.bb52, %sw.bb51, %if.then48.sw.epilog54_crit_edge
  %cr.0 = phi i32 [ 228, %sw.bb52 ], [ 244, %sw.bb51 ], [ 44, %if.then48.sw.epilog54_crit_edge ]
  %reg57 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %cpg, i32 0, i32 2
  %16 = ptrtoint ptr %reg57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg57, align 4
  %add.ptr58 = getelementptr i8, ptr %17, i32 %cr.0
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #8, !srcloc !67
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %shr62 = lshr i32 %19, 5
  %and63 = and i32 %shr62, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and63)
  %20 = icmp ult i32 %and63, 6
  br i1 %20, label %switch.hole_check, label %sw.epilog54.do.end_crit_edge

sw.epilog54.do.end_crit_edge:                     ; preds = %sw.epilog54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %sw.epilog54.do.end_crit_edge
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef %name) #11
  br label %cleanup130

switch.hole_check:                                ; preds = %sw.epilog54
  %switch.maskindex = trunc i32 %and63 to i8
  %switch.shifted = lshr i8 59, %switch.maskindex
  %21 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit.not = icmp eq i8 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.r8a73a4_cpg_register_clock, i32 0, i32 %and63
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep195 = getelementptr inbounds [6 x ptr], ptr @switch.table.r8a73a4_cpg_register_clock.25, i32 0, i32 %and63
  %23 = ptrtoint ptr %switch.gep195 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load196 = load ptr, ptr %switch.gep195, align 4
  %shr74 = lshr i32 %19, 24
  %and75 = and i32 %shr74, 127
  %add76 = add nuw nsw i32 %and75, 1
  br label %if.then123

if.else78:                                        ; preds = %if.else45
  %call79 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(2) @.str.15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.else78.if.then83_crit_edge, label %lor.lhs.false

if.else78.if.then83_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then83

lor.lhs.false:                                    ; preds = %if.else78
  %call81 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(3) @.str.16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %lor.lhs.false.if.then83_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.if.then83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then83

if.then83:                                        ; preds = %lor.lhs.false.if.then83_crit_edge, %if.else78.if.then83_crit_edge
  %arrayidx85 = getelementptr i8, ptr %name, i32 1
  %24 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %25)
  %cmp = icmp eq i8 %25, 50
  %spec.select170 = select i1 %cmp, i32 64, i32 32
  %spec.select171 = select i1 %cmp, i32 0, i32 8
  %reg92 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %cpg, i32 0, i32 2
  %26 = ptrtoint ptr %reg92 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg92, align 4
  %add.ptr93 = getelementptr i8, ptr %27, i32 224
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #8, !srcloc !67
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %shr97 = lshr i32 %29, %spec.select171
  %and98 = and i32 %shr97, 31
  %sub = sub nuw nsw i32 32, %and98
  br label %if.then123

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %30 = phi ptr [ %32, %for.inc.for.body_crit_edge ], [ @.str.17, %lor.lhs.false.for.body_crit_edge ]
  %c.0191 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @div4_clks, %lor.lhs.false.for.body_crit_edge ]
  %call103 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull %30) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.else125, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.div4_clk, ptr %c.0191, i32 1
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %incdec.ptr, align 4
  %tobool101.not = icmp eq ptr %32, null
  br i1 %tobool101.not, label %for.inc.cleanup130_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup130_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.then123:                                       ; preds = %if.then83, %switch.lookup, %if.then29, %if.then13, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb
  %div.6.ph = phi i32 [ 1, %sw.bb ], [ 2, %sw.bb5 ], [ 1, %sw.bb7 ], [ 2, %sw.bb9 ], [ %spec.select, %if.then13 ], [ %spec.select169, %if.then29 ], [ %switch.load, %switch.lookup ], [ %spec.select170, %if.then83 ]
  %mult.1.ph = phi i32 [ 1, %sw.bb ], [ 1, %sw.bb5 ], [ 1, %sw.bb7 ], [ 1, %sw.bb9 ], [ %add, %if.then13 ], [ %add40, %if.then29 ], [ %add76, %switch.lookup ], [ %sub, %if.then83 ]
  %parent_name.4.ph = phi ptr [ %call4, %sw.bb ], [ %call6, %sw.bb5 ], [ %call8, %sw.bb7 ], [ %call10, %sw.bb9 ], [ @.str.8, %if.then13 ], [ @.str.8, %if.then29 ], [ %switch.load196, %switch.lookup ], [ @.str.9, %if.then83 ]
  %call124 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %name, ptr noundef %parent_name.4.ph, i32 noundef 0, i32 noundef %mult.1.ph, i32 noundef %div.6.ph) #8
  br label %cleanup130

if.else125:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %reg112 = getelementptr inbounds %struct.div4_clk, ptr %c.0191, i32 0, i32 1
  %33 = ptrtoint ptr %reg112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg112, align 4
  %shift113 = getelementptr inbounds %struct.div4_clk, ptr %c.0191, i32 0, i32 2
  %35 = ptrtoint ptr %shift113 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %shift113, align 4
  %reg126 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %cpg, i32 0, i32 2
  %37 = ptrtoint ptr %reg126 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg126, align 4
  %add.ptr127 = getelementptr i8, ptr %38, i32 %34
  %conv128 = trunc i32 %36 to i8
  %lock = getelementptr inbounds %struct.r8a73a4_cpg, ptr %cpg, i32 0, i32 1
  %call129 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %name, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %add.ptr127, i8 noundef zeroext %conv128, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @div4_div_table, ptr noundef %lock) #8
  br label %cleanup130

cleanup130:                                       ; preds = %if.else125, %if.then123, %for.inc.cleanup130_crit_edge, %do.end, %if.then48.cleanup130_crit_edge
  %retval.2 = phi ptr [ %call129, %if.else125 ], [ %call124, %if.then123 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %if.then48.cleanup130_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.cleanup130_crit_edge ]
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

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__of_table_r8a73a4_cpg_clks, !1, !"__of_table_r8a73a4_cpg_clks", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 237, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 196, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 198, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @r8a73a4_cpg_clocks_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @r8a73a4_cpg_clocks_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @r8a73a4_cpg_clocks_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 211, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 229, i32 4}
!15 = !{ptr @r8a73a4_cpg_clocks_init._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @r8a73a4_cpg_clocks_init._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 71, i32 20}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 90, i32 27}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 102, i32 27}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 110, i32 28}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 133, i32 18}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 147, i32 4}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @r8a73a4_cpg_register_clock._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @r8a73a4_cpg_register_clock._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 153, i32 27}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 153, i32 49}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 43, i32 4}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 44, i32 4}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 45, i32 4}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 46, i32 4}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 47, i32 4}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 48, i32 4}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 49, i32 4}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 50, i32 4}
!52 = !{ptr @div4_clks, !53, !"div4_clks", i1 false, i1 false}
!53 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 42, i32 24}
!54 = !{ptr @div4_div_table, !55, !"div4_div_table", i1 false, i1 false}
!55 = !{!"../drivers/clk/renesas/clk-r8a73a4.c", i32 54, i32 35}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{!"auto-init"}
!67 = !{i64 4031411}
!68 = !{i64 2152526713}
!69 = !{i64 2152527196}
!70 = !{i64 2152527755}
!71 = !{i64 2152528318}
!72 = !{i64 2152530425}
