; ModuleID = '/llk/IR_all_yes/drivers/clk/pistachio/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/pistachio/clk-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pistachio_clk_provider = type { ptr, ptr, %struct.clk_onecell_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.pistachio_pll = type { i32, i32, i32, ptr, i32, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pistachio_clk_pll = type { %struct.clk_hw, ptr, ptr, i32 }
%struct.pistachio_pll_rate_table = type { i64, i64, i64, i64, i64, i64, i64 }

@pll_gf40lp_frac_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @pll_gf40lp_frac_enable, ptr @pll_gf40lp_frac_disable, ptr @pll_gf40lp_frac_is_enabled, ptr null, ptr null, ptr null, ptr @pll_gf40lp_frac_recalc_rate, ptr @pll_round_rate, ptr null, ptr null, ptr null, ptr @pll_gf40lp_frac_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pll_gf40lp_frac_fixed_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @pll_gf40lp_frac_enable, ptr @pll_gf40lp_frac_disable, ptr @pll_gf40lp_frac_is_enabled, ptr null, ptr null, ptr null, ptr @pll_gf40lp_frac_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pll_gf40lp_laint_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @pll_gf40lp_laint_enable, ptr @pll_gf40lp_laint_disable, ptr @pll_gf40lp_laint_is_enabled, ptr null, ptr null, ptr null, ptr @pll_gf40lp_laint_recalc_rate, ptr @pll_round_rate, ptr null, ptr null, ptr null, ptr @pll_gf40lp_laint_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pll_gf40lp_laint_fixed_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @pll_gf40lp_laint_enable, ptr @pll_gf40lp_laint_disable, ptr @pll_gf40lp_laint_is_enabled, ptr null, ptr null, ptr null, ptr @pll_gf40lp_laint_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pll_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Unrecognized PLL type %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll_register\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/pistachio/clk-pll.c\00", [32 x i8] zeroinitializer }, align 32
@pll_register._entry_ptr = internal global ptr @pll_register._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pll_gf40lp_frac_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: %s: VCO %llu is out of range %lu..%lu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pll_gf40lp_frac_set_rate\00", [39 x i8] zeroinitializer }, align 32
@pll_gf40lp_frac_set_rate._entry_ptr = internal global ptr @pll_gf40lp_frac_set_rate._entry, section ".printk_index", align 4
@pll_gf40lp_frac_set_rate._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: %s: PFD %llu is too low (min %lu)\0A\00", [55 x i8] zeroinitializer }, align 32
@pll_gf40lp_frac_set_rate._entry_ptr.7 = internal global ptr @pll_gf40lp_frac_set_rate._entry.5, section ".printk_index", align 4
@pll_gf40lp_frac_set_rate._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: %s: PFD %llu is too high (max %llu)\0A\00", [53 x i8] zeroinitializer }, align 32
@pll_gf40lp_frac_set_rate._entry_ptr.10 = internal global ptr @pll_gf40lp_frac_set_rate._entry.8, section ".printk_index", align 4
@pll_gf40lp_frac_set_rate._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: %s: changing postdiv while PLL is enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@pll_gf40lp_frac_set_rate._entry_ptr.13 = internal global ptr @pll_gf40lp_frac_set_rate._entry.11, section ".printk_index", align 4
@pll_gf40lp_frac_set_rate._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: %s: postdiv2 should not exceed postdiv1\0A\00", [49 x i8] zeroinitializer }, align 32
@pll_gf40lp_frac_set_rate._entry_ptr.16 = internal global ptr @pll_gf40lp_frac_set_rate._entry.14, section ".printk_index", align 4
@pll_gf40lp_laint_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: %s: VCO %u is out of range %lu..%lu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pll_gf40lp_laint_set_rate\00", [38 x i8] zeroinitializer }, align 32
@pll_gf40lp_laint_set_rate._entry_ptr = internal global ptr @pll_gf40lp_laint_set_rate._entry, section ".printk_index", align 4
@pll_gf40lp_laint_set_rate._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: %s: PFD %u is too low (min %lu)\0A\00", [57 x i8] zeroinitializer }, align 32
@pll_gf40lp_laint_set_rate._entry_ptr.21 = internal global ptr @pll_gf40lp_laint_set_rate._entry.19, section ".printk_index", align 4
@pll_gf40lp_laint_set_rate._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: %s: PFD %u is too high (max %u)\0A\00", [57 x i8] zeroinitializer }, align 32
@pll_gf40lp_laint_set_rate._entry_ptr.24 = internal global ptr @pll_gf40lp_laint_set_rate._entry.22, section ".printk_index", align 4
@pll_gf40lp_laint_set_rate._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.18, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pll_gf40lp_laint_set_rate._entry_ptr.26 = internal global ptr @pll_gf40lp_laint_set_rate._entry.25, section ".printk_index", align 4
@pll_gf40lp_laint_set_rate._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pll_gf40lp_laint_set_rate._entry_ptr.28 = internal global ptr @pll_gf40lp_laint_set_rate._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"pll_gf40lp_frac_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 298, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"pll_gf40lp_frac_fixed_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 307, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"pll_gf40lp_laint_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 430, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"pll_gf40lp_laint_fixed_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 439, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 479, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 215, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 220, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 223, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 242, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 245, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 368, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 373, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 376, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 388, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private constant [35 x i8] c"../drivers/clk/pistachio/clk-pll.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 391, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @pll_gf40lp_frac_set_rate._entry, ptr @pll_gf40lp_frac_set_rate._entry.11, ptr @pll_gf40lp_frac_set_rate._entry.14, ptr @pll_gf40lp_frac_set_rate._entry.5, ptr @pll_gf40lp_frac_set_rate._entry.8, ptr @pll_gf40lp_frac_set_rate._entry_ptr, ptr @pll_gf40lp_frac_set_rate._entry_ptr.10, ptr @pll_gf40lp_frac_set_rate._entry_ptr.13, ptr @pll_gf40lp_frac_set_rate._entry_ptr.16, ptr @pll_gf40lp_frac_set_rate._entry_ptr.7, ptr @pll_gf40lp_laint_set_rate._entry, ptr @pll_gf40lp_laint_set_rate._entry.19, ptr @pll_gf40lp_laint_set_rate._entry.22, ptr @pll_gf40lp_laint_set_rate._entry.25, ptr @pll_gf40lp_laint_set_rate._entry.27, ptr @pll_gf40lp_laint_set_rate._entry_ptr, ptr @pll_gf40lp_laint_set_rate._entry_ptr.21, ptr @pll_gf40lp_laint_set_rate._entry_ptr.24, ptr @pll_gf40lp_laint_set_rate._entry_ptr.26, ptr @pll_gf40lp_laint_set_rate._entry_ptr.28, ptr @pll_register._entry, ptr @pll_register._entry_ptr, ptr @pll_gf40lp_frac_ops, ptr @pll_gf40lp_frac_fixed_ops, ptr @pll_gf40lp_laint_ops, ptr @pll_gf40lp_laint_fixed_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_frac_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_frac_fixed_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_laint_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_laint_fixed_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_frac_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_frac_set_rate._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_frac_set_rate._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_frac_set_rate._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_frac_set_rate._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_laint_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_laint_set_rate._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_laint_set_rate._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_laint_set_rate._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_gf40lp_laint_set_rate._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pistachio_clk_register_pll(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %pll, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp23.not = icmp eq i32 %num, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %init.i, i32 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %clk_data = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %pll_register.exit.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %pll_register.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pistachio_pll, ptr %pll, i32 %i.024
  %name = getelementptr %struct.pistachio_pll, ptr %pll, i32 %i.024, i32 5
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %parent = getelementptr %struct.pistachio_pll, ptr %pll, i32 %i.024, i32 6
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %reg_base = getelementptr %struct.pistachio_pll, ptr %pll, i32 %i.024, i32 1
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %8
  %type = getelementptr %struct.pistachio_pll, ptr %pll, i32 %i.024, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %rates = getelementptr %struct.pistachio_pll, ptr %pll, i32 %i.024, i32 3
  %11 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rates, align 4
  %nr_rates = getelementptr %struct.pistachio_pll, ptr %pll, i32 %i.024, i32 4
  %13 = ptrtoint ptr %nr_rates to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_rates, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %15 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %4, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #7
  %16 = call ptr @memset(ptr %0, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.pll_register.exit_crit_edge, label %if.end.i

for.body.pll_register.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_register.exit

if.end.i:                                         ; preds = %for.body
  %18 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %2, ptr %init.i, align 4
  %19 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %flags3.i, align 4
  %20 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %parent_name.addr.i, ptr %parent_names.i, align 4
  %21 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %num_parents.i, align 4
  %22 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %tobool4.not.i = icmp eq ptr %12, null
  %pll_gf40lp_frac_fixed_ops.pll_gf40lp_frac_ops = select i1 %tobool4.not.i, ptr @pll_gf40lp_frac_fixed_ops, ptr @pll_gf40lp_frac_ops
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %tobool9.not.i = icmp eq ptr %12, null
  %pll_gf40lp_laint_fixed_ops.pll_gf40lp_laint_ops = select i1 %tobool9.not.i, ptr @pll_gf40lp_laint_fixed_ops, ptr @pll_gf40lp_laint_ops
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %10) #11
  br label %cleanup.sink.split.i

sw.epilog.i:                                      ; preds = %sw.bb8.i, %sw.bb.i
  %pll_gf40lp_laint_fixed_ops.sink = phi ptr [ %pll_gf40lp_frac_fixed_ops.pll_gf40lp_frac_ops, %sw.bb.i ], [ %pll_gf40lp_laint_fixed_ops.pll_gf40lp_laint_ops, %sw.bb8.i ]
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pll_gf40lp_laint_fixed_ops.sink, ptr %0, align 4
  %init17.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %init17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %init.i, ptr %init17.i, align 8
  %base18.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %base18.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr, ptr %base18.i, align 4
  %rates19.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %rates19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %12, ptr %rates19.i, align 8
  %nr_rates20.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %nr_rates20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %14, ptr %nr_rates20.i, align 4
  %call22.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #7
  %cmp.i.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sw.epilog.i.cleanup.sink.split.i_crit_edge, label %sw.epilog.i.pll_register.exit_crit_edge

sw.epilog.i.pll_register.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_register.exit

sw.epilog.i.cleanup.sink.split.i_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.epilog.i.cleanup.sink.split.i_crit_edge, %do.end.i
  %retval.0.ph.i = phi ptr [ inttoptr (i32 -22 to ptr), %do.end.i ], [ %call22.i, %sw.epilog.i.cleanup.sink.split.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %pll_register.exit

pll_register.exit:                                ; preds = %cleanup.sink.split.i, %sw.epilog.i.pll_register.exit_crit_edge, %for.body.pll_register.exit_crit_edge
  %retval.0.i = phi ptr [ %call22.i, %sw.epilog.i.pll_register.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.body.pll_register.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %28 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_data, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr ptr, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i, ptr %arrayidx7, align 4
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %pll_register.exit.for.end_crit_edge, label %pll_register.exit.for.body_crit_edge

pll_register.exit.for.body_crit_edge:             ; preds = %pll_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

pll_register.exit.for.end_crit_edge:              ; preds = %pll_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %pll_register.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_gf40lp_frac_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %3 = and i32 %2, -956301313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %3) #7, !srcloc !66
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %9 = and i32 %8, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %9) #7, !srcloc !66
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not5.i = icmp eq i32 %15, 0
  br i1 %tobool.not5.i, label %entry.do.end.i_crit_edge, label %entry.pll_lock.exit_crit_edge

entry.pll_lock.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_lock.exit

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !68
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %19 = and i32 %18, 16777216
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.pll_lock.exit_crit_edge

do.end.i.pll_lock.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_lock.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

pll_lock.exit:                                    ; preds = %do.end.i.pll_lock.exit_crit_edge, %entry.pll_lock.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pll_gf40lp_frac_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #7, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_gf40lp_frac_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and = and i32 %3, 1
  %4 = xor i32 %and, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_gf40lp_frac_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %conv = zext i32 %3 to i64
  %shr2 = lshr i64 %conv, 6
  %and3 = and i64 %shr2, 4095
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #7, !srcloc !63
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %conv5 = zext i32 %7 to i64
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %11 = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and11 = and i64 %conv5, 16777215
  %shl = shl nuw nsw i64 %and3, 24
  %add = or i64 %and11, %shl
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl15 = shl nuw nsw i64 %and3, 24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add.pn = phi i64 [ %add, %if.then ], [ %shl15, %if.else ]
  %conv12 = zext i32 %parent_rate to i64
  %rate.0 = mul i64 %add.pn, %conv12
  %shr8 = lshr i64 %conv5, 27
  %and9 = and i64 %shr8, 7
  %shr6 = lshr i64 %conv5, 24
  %and7 = and i64 %shr6, 7
  %and = and i64 %conv, 63
  %mul17 = mul nuw nsw i64 %and7, %and
  %mul18 = mul nuw nsw i64 %mul17, %and9
  %shl19 = shl nuw nsw i64 %mul18, 24
  %div3.i = shl nuw nsw i64 %mul18, 23
  %add.i = add i64 %rate.0, %div3.i
  %call.i = tail call i64 @div64_u64(i64 noundef %add.i, i64 noundef %shl19) #7
  %conv21 = trunc i64 %call.i to i32
  ret i32 %conv21
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_rates = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %nr_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp29.not = icmp eq i32 %1, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rates = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 2
  %conv7 = zext i32 %rate to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.030)
  %cmp1.not = icmp eq i32 %i.030, 0
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rates, align 4
  %arrayidx = getelementptr %struct.pistachio_pll_rate_table, ptr %3, i32 %i.030
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %6 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parent_rate, align 4
  %conv = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp2 = icmp eq i64 %5, %conv
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true4:                                   ; preds = %land.lhs.true
  %fout = getelementptr %struct.pistachio_pll_rate_table, ptr %3, i32 %i.030, i32 1
  %8 = ptrtoint ptr %fout to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fout, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv7)
  %cmp8.not = icmp ugt i64 %9, %conv7
  br i1 %cmp8.not, label %land.lhs.true4.for.inc_crit_edge, label %if.then

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %i.030, -1
  %fout12 = getelementptr %struct.pistachio_pll_rate_table, ptr %3, i32 %sub, i32 1
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true4.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rates14 = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %rates14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rates14, align 4
  %fout16 = getelementptr inbounds %struct.pistachio_pll_rate_table, ptr %11, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %fout16.sink = phi ptr [ %fout16, %for.end ], [ %fout12, %if.then ]
  %12 = ptrtoint ptr %fout16.sink to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fout16.sink, align 8
  %conv17 = trunc i64 %13 to i32
  ret i32 %conv17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_gf40lp_frac_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %3 = add i32 %rate, -1600000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1588000001, i32 %3)
  %4 = icmp ult i32 %3, -1588000001
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_rates.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %nr_rates.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_rates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19.not.i = icmp eq i32 %6, 0
  br i1 %cmp19.not.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %rates.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rates.i, align 4
  %conv.i = zext i32 %parent_rate to i64
  %conv7.i = zext i32 %rate to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv.i)
  %cmp2.i = icmp eq i64 %10, %conv.i
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %fout6.i = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 1
  %11 = ptrtoint ptr %fout6.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fout6.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv7.i)
  %cmp8.i = icmp eq i64 %12, %conv7.i
  br i1 %cmp8.i, label %pll_get_params.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pll_get_params.exit:                              ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %pll_get_params.exit.cleanup_crit_edge, label %lor.lhs.false5

pll_get_params.exit.cleanup_crit_edge:            ; preds = %pll_get_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false5:                                   ; preds = %pll_get_params.exit
  %refdiv = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 2
  %13 = ptrtoint ptr %refdiv to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %refdiv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool6.not = icmp eq i64 %14, 0
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i, align 8
  %fbdiv = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 3
  %17 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fbdiv, align 8
  %shl = shl i64 %18, 24
  %frac = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 6
  %19 = ptrtoint ptr %frac to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %frac, align 8
  %add = add i64 %shl, %20
  %mul = mul i64 %add, %16
  %shl10 = shl i64 %14, 24
  %call11 = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef %shl10) #7
  %21 = add i64 %call11, -2400000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1800000001, i64 %21)
  %22 = icmp ult i64 %21, -1800000001
  br i1 %22, label %do.end, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call2, i64 noundef %call11, i32 noundef 600000000, i32 noundef -1894967296) #11
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end8.if.end17_crit_edge
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.i, align 8
  %25 = ptrtoint ptr %refdiv to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %refdiv, align 8
  %call20 = tail call i64 @div64_u64(i64 noundef %24, i64 noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 9600000, i64 %call20)
  %cmp21 = icmp ult i64 %call20, 9600000
  br i1 %cmp21, label %do.end25, label %if.end17.if.end28_crit_edge

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %call2, i64 noundef %call20, i32 noundef 9600000) #11
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.end17.if.end28_crit_edge
  %div149 = lshr i64 %call11, 4
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %div149)
  %cmp29 = icmp ugt i64 %call20, %div149
  br i1 %cmp29, label %do.end33, label %if.end28.if.end37_crit_edge

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef %call2, i64 noundef %call20, i64 noundef %div149) #11
  br label %if.end37

if.end37:                                         ; preds = %do.end33, %if.end28.if.end37_crit_edge
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %30 = and i32 %29, 64767
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %refdiv to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %refdiv, align 8
  %34 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %fbdiv, align 8
  %shl42 = shl i64 %35, 6
  %or = or i64 %shl42, %33
  %36 = trunc i64 %or to i32
  %conv44 = or i32 %31, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv44) #7
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 %37) #7, !srcloc !66
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %41, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #7, !srcloc !63
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %conv46 = zext i32 %43 to i64
  %shr48 = lshr i64 %conv46, 27
  %and49 = and i64 %shr48, 7
  %44 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool50.not.not = icmp eq i32 %44, 0
  br i1 %tobool50.not.not, label %land.lhs.true, label %if.end37.if.end62_crit_edge

if.end37.if.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end37
  %shr = lshr i64 %conv46, 24
  %and47 = and i64 %shr, 7
  %postdiv1 = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 4
  %45 = ptrtoint ptr %postdiv1 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %postdiv1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %and47)
  %cmp51.not = icmp eq i64 %46, %and47
  br i1 %cmp51.not, label %lor.lhs.false53, label %land.lhs.true.do.end59_crit_edge

land.lhs.true.do.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

lor.lhs.false53:                                  ; preds = %land.lhs.true
  %postdiv2 = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 5
  %47 = ptrtoint ptr %postdiv2 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %postdiv2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %and49)
  %cmp54.not = icmp eq i64 %48, %and49
  br i1 %cmp54.not, label %lor.lhs.false53.if.end62_crit_edge, label %lor.lhs.false53.do.end59_crit_edge

lor.lhs.false53.do.end59_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

lor.lhs.false53.if.end62_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end59:                                         ; preds = %lor.lhs.false53.do.end59_crit_edge, %land.lhs.true.do.end59_crit_edge
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef %call2) #11
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %lor.lhs.false53.if.end62_crit_edge, %if.end37.if.end62_crit_edge
  %postdiv263 = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 5
  %49 = ptrtoint ptr %postdiv263 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %postdiv263, align 8
  %postdiv164 = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 4
  %51 = ptrtoint ptr %postdiv164 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %postdiv164, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %52)
  %cmp65 = icmp ugt i64 %50, %52
  br i1 %cmp65, label %do.end70, label %if.end62.if.end73_crit_edge

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef %call2) #11
  br label %if.end73

if.end73:                                         ; preds = %do.end70, %if.end62.if.end73_crit_edge
  %and74 = and i64 %conv46, 3221225472
  %53 = ptrtoint ptr %frac to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %frac, align 8
  %55 = ptrtoint ptr %postdiv164 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %postdiv164, align 8
  %shl78 = shl i64 %56, 24
  %57 = ptrtoint ptr %postdiv263 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %postdiv263, align 8
  %shl81 = shl i64 %58, 27
  %or79 = or i64 %54, %and74
  %or82 = or i64 %or79, %shl78
  %or83 = or i64 %or82, %shl81
  %conv84 = trunc i64 %or83 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %conv84) #7
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %59) #7, !srcloc !66
  %62 = ptrtoint ptr %frac to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %frac, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool86.not = icmp eq i64 %63, 0
  %64 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i160 = getelementptr i8, ptr %65, i32 12
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i160) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool86.not, label %if.else, label %if.then87

if.then87:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %67 = and i32 %66, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %69, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %67) #7, !srcloc !66
  br label %if.end88

if.else:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %70 = or i32 %66, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i161 = getelementptr i8, ptr %72, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i161, i32 %70) #7, !srcloc !66
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.then87
  br i1 %tobool50.not.not, label %if.then90, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then90:                                        ; preds = %if.end88
  %73 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %76 = and i32 %75, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not5.i = icmp eq i32 %76, 0
  br i1 %tobool.not5.i, label %if.then90.do.end.i_crit_edge, label %if.then90.cleanup_crit_edge

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then90.do.end.i_crit_edge:                     ; preds = %if.then90
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then90.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !68
  %77 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %80 = and i32 %79, 16777216
  %tobool.not.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

cleanup:                                          ; preds = %do.end.i.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %pll_get_params.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %pll_get_params.exit.cleanup_crit_edge ], [ 0, %if.end88.cleanup_crit_edge ], [ 0, %if.then90.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_gf40lp_laint_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %3 = and i32 %2, -14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %3) #7, !srcloc !66
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %9 = and i32 %8, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %9) #7, !srcloc !66
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not5.i = icmp eq i32 %15, 0
  br i1 %tobool.not5.i, label %entry.do.end.i_crit_edge, label %entry.pll_lock.exit_crit_edge

entry.pll_lock.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_lock.exit

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !68
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %19 = and i32 %18, 16777216
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.pll_lock.exit_crit_edge

do.end.i.pll_lock.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_lock.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

pll_lock.exit:                                    ; preds = %do.end.i.pll_lock.exit_crit_edge, %entry.pll_lock.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pll_gf40lp_laint_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %3 = or i32 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #7, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_gf40lp_laint_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and.lobit = and i32 %2, 1
  %3 = xor i32 %and.lobit, 1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_gf40lp_laint_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %base.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and = and i32 %3, 63
  %shr2 = lshr i32 %3, 6
  %and3 = and i32 %shr2, 4095
  %shr4 = lshr i32 %3, 18
  %and5 = and i32 %shr4, 7
  %shr6 = lshr i32 %3, 21
  %and7 = and i32 %shr6, 7
  %conv8 = zext i32 %and3 to i64
  %mul = mul nuw nsw i64 %conv8, %conv
  %mul9 = mul nuw nsw i32 %and5, %and
  %mul10 = mul nuw nsw i32 %mul9, %and7
  %conv11 = zext i32 %mul10 to i64
  %div3.i = lshr i64 %conv11, 1
  %add.i = add nuw nsw i64 %div3.i, %mul
  %call.i = tail call i64 @div64_u64(i64 noundef %add.i, i64 noundef %conv11) #7
  %conv13 = trunc i64 %call.i to i32
  ret i32 %conv13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_gf40lp_laint_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and.lobit.i = and i32 %2, 1
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %3 = add i32 %rate, -1600000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1592000001, i32 %3)
  %4 = icmp ult i32 %3, -1592000001
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_rates.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %nr_rates.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_rates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19.not.i = icmp eq i32 %6, 0
  br i1 %cmp19.not.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %rates.i = getelementptr inbounds %struct.pistachio_clk_pll, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rates.i, align 4
  %conv.i = zext i32 %parent_rate to i64
  %conv7.i = zext i32 %rate to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv.i)
  %cmp2.i = icmp eq i64 %10, %conv.i
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %fout6.i = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 1
  %11 = ptrtoint ptr %fout6.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fout6.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv7.i)
  %cmp8.i = icmp eq i64 %12, %conv7.i
  br i1 %cmp8.i, label %pll_get_params.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pll_get_params.exit:                              ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %pll_get_params.exit.cleanup_crit_edge, label %lor.lhs.false5

pll_get_params.exit.cleanup_crit_edge:            ; preds = %pll_get_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false5:                                   ; preds = %pll_get_params.exit
  %refdiv = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 2
  %13 = ptrtoint ptr %refdiv to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %refdiv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool6.not = icmp eq i64 %14, 0
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i, align 8
  %fbdiv = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 3
  %17 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fbdiv, align 8
  %mul = mul i64 %18, %16
  %conv = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !69

if.then168.i.i:                                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %mul) #12, !srcloc !70
  %asmresult1.i.i.i = extractvalue { i64, i64 } %19, 1
  %extract.t258 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t258, %if.else174.i.i ]
  %20 = add i32 %dividend.addr.0.i.i.off0, -1600000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200000001, i32 %20)
  %21 = icmp ult i32 %20, -1200000001
  br i1 %21, label %do.end, label %div_u64.exit.if.end19_crit_edge

div_u64.exit.if.end19_crit_edge:                  ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call2, i32 noundef %dividend.addr.0.i.i.off0, i32 noundef 400000000, i32 noundef 1600000000) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end, %div_u64.exit.if.end19_crit_edge
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i, align 8
  %24 = ptrtoint ptr %refdiv to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %refdiv, align 8
  %conv22 = trunc i64 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %23)
  %cmp164.i.i240 = icmp ult i64 %23, 4294967296
  br i1 %cmp164.i.i240, label %if.then168.i.i245, label %if.else174.i.i247, !prof !69

if.then168.i.i245:                                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i242 = trunc i64 %23 to i32
  %div172.i.i243 = udiv i32 %conv169.i.i242, %conv22
  br label %div_u64.exit249

if.else174.i.i247:                                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv22, i64 %23) #12, !srcloc !70
  %asmresult1.i.i.i246 = extractvalue { i64, i64 } %26, 1
  %extract.t262 = trunc i64 %asmresult1.i.i.i246 to i32
  br label %div_u64.exit249

div_u64.exit249:                                  ; preds = %if.else174.i.i247, %if.then168.i.i245
  %dividend.addr.0.i.i248.off0 = phi i32 [ %div172.i.i243, %if.then168.i.i245 ], [ %extract.t262, %if.else174.i.i247 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600000, i32 %dividend.addr.0.i.i248.off0)
  %cmp25 = icmp ult i32 %dividend.addr.0.i.i248.off0, 9600000
  br i1 %cmp25, label %do.end30, label %div_u64.exit249.if.end33_crit_edge

div_u64.exit249.if.end33_crit_edge:               ; preds = %div_u64.exit249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.end30:                                         ; preds = %div_u64.exit249
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef %call2, i32 noundef %dividend.addr.0.i.i248.off0, i32 noundef 9600000) #11
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %div_u64.exit249.if.end33_crit_edge
  %div134 = lshr i32 %dividend.addr.0.i.i.off0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div134, i32 %dividend.addr.0.i.i248.off0)
  %cmp34 = icmp ult i32 %div134, %dividend.addr.0.i.i248.off0
  br i1 %cmp34, label %do.end39, label %if.end33.if.end43_crit_edge

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef %call2, i32 noundef %dividend.addr.0.i.i248.off0, i32 noundef %div134) #11
  br label %if.end43

if.end43:                                         ; preds = %do.end39, %if.end33.if.end43_crit_edge
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %shr45 = lshr i32 %30, 21
  %and46 = and i32 %shr45, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.lobit.i)
  %tobool47.not.not = icmp eq i32 %and.lobit.i, 0
  br i1 %tobool47.not.not, label %land.lhs.true, label %if.end43.if.end61_crit_edge

if.end43.if.end61_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end43
  %shr = lshr i32 %30, 18
  %and = and i32 %shr, 7
  %postdiv1 = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 4
  %31 = ptrtoint ptr %postdiv1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %postdiv1, align 8
  %conv48 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv48)
  %cmp49.not = icmp eq i64 %32, %conv48
  br i1 %cmp49.not, label %lor.lhs.false51, label %land.lhs.true.do.end58_crit_edge

land.lhs.true.do.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

lor.lhs.false51:                                  ; preds = %land.lhs.true
  %postdiv2 = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 5
  %33 = ptrtoint ptr %postdiv2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %postdiv2, align 8
  %conv52 = zext i32 %and46 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %conv52)
  %cmp53.not = icmp eq i64 %34, %conv52
  br i1 %cmp53.not, label %lor.lhs.false51.if.end61_crit_edge, label %lor.lhs.false51.do.end58_crit_edge

lor.lhs.false51.do.end58_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

lor.lhs.false51.if.end61_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

do.end58:                                         ; preds = %lor.lhs.false51.do.end58_crit_edge, %land.lhs.true.do.end58_crit_edge
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.18, ptr noundef %call2) #11
  br label %if.end61

if.end61:                                         ; preds = %do.end58, %lor.lhs.false51.if.end61_crit_edge, %if.end43.if.end61_crit_edge
  %postdiv262 = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 5
  %35 = ptrtoint ptr %postdiv262 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %postdiv262, align 8
  %postdiv163 = getelementptr %struct.pistachio_pll_rate_table, ptr %8, i32 %i.020.i, i32 4
  %37 = ptrtoint ptr %postdiv163 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %postdiv163, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp64 = icmp ugt i64 %36, %38
  br i1 %cmp64, label %do.end69, label %if.end61.if.end72_crit_edge

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, ptr noundef %call2) #11
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.end61.if.end72_crit_edge
  %and73 = and i32 %30, -16777216
  %39 = ptrtoint ptr %refdiv to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %refdiv, align 8
  %41 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %fbdiv, align 8
  %shl76 = shl i64 %42, 6
  %or = or i64 %shl76, %40
  %43 = ptrtoint ptr %postdiv163 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %postdiv163, align 8
  %shl78 = shl i64 %44, 18
  %or79 = or i64 %or, %shl78
  %45 = ptrtoint ptr %postdiv262 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %postdiv262, align 8
  %shl81 = shl i64 %46, 21
  %or82 = or i64 %or79, %shl81
  %47 = trunc i64 %or82 to i32
  %conv85 = or i32 %and73, %47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %conv85) #7
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251, i32 %48) #7, !srcloc !66
  br i1 %tobool47.not.not, label %if.then87, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then87:                                        ; preds = %if.end72
  %51 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %54 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not5.i = icmp eq i32 %54, 0
  br i1 %tobool.not5.i, label %if.then87.do.end.i_crit_edge, label %if.then87.cleanup_crit_edge

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then87.do.end.i_crit_edge:                     ; preds = %if.then87
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then87.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !68
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %58 = and i32 %57, 16777216
  %tobool.not.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

cleanup:                                          ; preds = %do.end.i.cleanup_crit_edge, %if.then87.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %pll_get_params.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %pll_get_params.exit.cleanup_crit_edge ], [ 0, %if.end72.cleanup_crit_edge ], [ 0, %if.then87.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 479, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pll_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pll_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @pll_gf40lp_frac_ops, !7, !"pll_gf40lp_frac_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 298, i32 29}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 215, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pll_gf40lp_frac_set_rate._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @pll_gf40lp_frac_set_rate._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 220, i32 3}
!15 = !{ptr @pll_gf40lp_frac_set_rate._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @pll_gf40lp_frac_set_rate._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 223, i32 3}
!19 = !{ptr @pll_gf40lp_frac_set_rate._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @pll_gf40lp_frac_set_rate._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 242, i32 3}
!23 = !{ptr @pll_gf40lp_frac_set_rate._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pll_gf40lp_frac_set_rate._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 245, i32 3}
!27 = !{ptr @pll_gf40lp_frac_set_rate._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pll_gf40lp_frac_set_rate._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @pll_gf40lp_frac_fixed_ops, !30, !"pll_gf40lp_frac_fixed_ops", i1 false, i1 false}
!30 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 307, i32 29}
!31 = !{ptr @pll_gf40lp_laint_ops, !32, !"pll_gf40lp_laint_ops", i1 false, i1 false}
!32 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 430, i32 29}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 368, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pll_gf40lp_laint_set_rate._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @pll_gf40lp_laint_set_rate._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 373, i32 3}
!40 = !{ptr @pll_gf40lp_laint_set_rate._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pll_gf40lp_laint_set_rate._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 376, i32 3}
!44 = !{ptr @pll_gf40lp_laint_set_rate._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pll_gf40lp_laint_set_rate._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @pll_gf40lp_laint_set_rate._entry.25, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 388, i32 3}
!48 = !{ptr @pll_gf40lp_laint_set_rate._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @pll_gf40lp_laint_set_rate._entry.27, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 391, i32 3}
!51 = !{ptr @pll_gf40lp_laint_set_rate._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @pll_gf40lp_laint_fixed_ops, !53, !"pll_gf40lp_laint_fixed_ops", i1 false, i1 false}
!53 = !{!"../drivers/clk/pistachio/clk-pll.c", i32 439, i32 29}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 4039160}
!64 = !{i64 2152514055}
!65 = !{i64 2152514436}
!66 = !{i64 4038742}
!67 = !{i64 2152515139}
!68 = !{i64 2152514981}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2148954126, i64 2148954406, i64 2148954740, i64 2148955074}
