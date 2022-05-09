; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-master.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-master.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_master_layout = type { i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_master = type { %struct.clk_hw, ptr, ptr, ptr, ptr, %struct.at91_clk_pms, ptr, i32, i32, i8, i8, i8, i32 }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_master_characteristics = type { %struct.clk_range, [5 x i32], i8 }
%struct.clk_range = type { i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@master_pres_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_master_prepare, ptr null, ptr @clk_master_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_master_pres_save_context, ptr @clk_master_pres_restore_context, ptr @clk_master_pres_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_master_pres_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@master_pres_ops_chg = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_master_prepare, ptr null, ptr @clk_master_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_master_pres_save_context, ptr @clk_master_pres_restore_context_chg, ptr @clk_master_pres_recalc_rate, ptr null, ptr @clk_master_pres_determine_rate, ptr null, ptr @clk_master_pres_get_parent, ptr @clk_master_pres_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@master_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_master_prepare, ptr null, ptr @clk_master_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_master_div_save_context, ptr @clk_master_div_restore_context, ptr @clk_master_div_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@master_div_ops_chg = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_master_prepare, ptr null, ptr @clk_master_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_master_div_save_context, ptr @clk_master_div_restore_context_chg, ptr @clk_master_div_recalc_rate_chg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@master_div = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@clk_master_div_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @clk_master_div_notifier_fn, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sama7g5_master_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_sama7g5_master_enable, ptr @clk_sama7g5_master_disable, ptr @clk_sama7g5_master_is_enabled, ptr null, ptr @clk_sama7g5_master_save_context, ptr @clk_sama7g5_master_restore_context, ptr @clk_sama7g5_master_recalc_rate, ptr null, ptr @clk_sama7g5_master_determine_rate, ptr @clk_sama7g5_master_set_parent, ptr @clk_sama7g5_master_get_parent, ptr @clk_sama7g5_master_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@at91rm9200_master_layout = dso_local constant { %struct.clk_master_layout, [20 x i8] } { %struct.clk_master_layout { i32 48, i32 799, i8 2 }, [20 x i8] zeroinitializer }, align 32
@at91sam9x5_master_layout = dso_local constant { %struct.clk_master_layout, [20 x i8] } { %struct.clk_master_layout { i32 48, i32 883, i8 4 }, [20 x i8] zeroinitializer }, align 32
@clk_master_pres_restore_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014MCKR PRES was not configured properly by firmware!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clk_master_pres_restore_context\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/at91/clk-master.c\00", [34 x i8] zeroinitializer }, align 32
@clk_master_pres_restore_context._entry_ptr = internal global ptr @clk_master_pres_restore_context._entry, section ".printk_index", align 4
@clk_master_div_restore_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014MCKR DIV not configured properly by firmware!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clk_master_div_restore_context\00", [33 x i8] zeroinitializer }, align 32
@clk_master_div_restore_context._entry_ptr = internal global ptr @clk_master_div_restore_context._entry, section ".printk_index", align 4
@clk_master_div_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014master clk div is underclocked\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_master_div_recalc_rate\00", [37 x i8] zeroinitializer }, align 32
@clk_master_div_recalc_rate._entry_ptr = internal global ptr @clk_master_div_recalc_rate._entry, section ".printk_index", align 4
@clk_master_div_recalc_rate._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014master clk div is overclocked\00", [32 x i8] zeroinitializer }, align 32
@clk_master_div_recalc_rate._entry_ptr.9 = internal global ptr @clk_master_div_recalc_rate._entry.7, section ".printk_index", align 4
@clk_master_div_restore_context_chg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Failed to restore MCK DIV clock\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"clk_master_div_restore_context_chg\00", [61 x i8] zeroinitializer }, align 32
@clk_master_div_restore_context_chg._entry_ptr = internal global ptr @clk_master_div_restore_context_chg._entry, section ".printk_index", align 4
@clk_master_div_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.12, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_master_div_set\00", [45 x i8] zeroinitializer }, align 32
@clk_master_div_set._entry_ptr = internal global ptr @clk_master_div_set._entry, section ".printk_index", align 4
@clk_master_div_set._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.12, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_master_div_set._entry_ptr.14 = internal global ptr @clk_master_div_set._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_sama7g5_master_determine_rate.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_master\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clk_sama7g5_master_determine_rate\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MCK: %s, best_rate = %ld, parent clk: %s @ %ld\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"master_pres_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 549, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"master_pres_ops_chg\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 558, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"master_div_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 153, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"master_div_ops_chg\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 240, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"master_div\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 44, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [24 x i8] c"clk_master_div_notifier\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 349, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"sama7g5_master_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 894, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"at91rm9200_master_layout\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 964, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [25 x i8] c"at91sam9x5_master_layout\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 970, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 539, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 150, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 106, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 108, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 237, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 199, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 201, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [33 x i8] c"../drivers/clk/at91/clk-master.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 742, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @clk_master_div_recalc_rate._entry, ptr @clk_master_div_recalc_rate._entry.7, ptr @clk_master_div_recalc_rate._entry_ptr, ptr @clk_master_div_recalc_rate._entry_ptr.9, ptr @clk_master_div_restore_context._entry, ptr @clk_master_div_restore_context._entry_ptr, ptr @clk_master_div_restore_context_chg._entry, ptr @clk_master_div_restore_context_chg._entry_ptr, ptr @clk_master_div_set._entry, ptr @clk_master_div_set._entry.13, ptr @clk_master_div_set._entry_ptr, ptr @clk_master_div_set._entry_ptr.14, ptr @clk_master_pres_restore_context._entry, ptr @clk_master_pres_restore_context._entry_ptr, ptr @master_pres_ops, ptr @master_pres_ops_chg, ptr @master_div_ops, ptr @master_div_ops_chg, ptr @master_div, ptr @clk_master_div_notifier, ptr @sama7g5_master_ops, ptr @at91rm9200_master_layout, ptr @at91sam9x5_master_layout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_pres_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_pres_ops_chg to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_div_ops_chg to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_div to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_master_div_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_master_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_master_layout to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_master_layout to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_master_pres_restore_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_master_div_restore_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_master_div_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_master_div_recalc_rate._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_master_div_restore_context_chg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_master_div_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_master_div_set._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_master_pres(ptr noundef %regmap, ptr noundef %name, i32 noundef %num_parents, ptr noundef %parent_names, ptr noundef %layout, ptr noundef %characteristics, ptr noundef %lock, i32 noundef %flags, i32 noundef %chg_pid) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %master_pres_ops_chg.master_pres_ops = select i1 %tobool.not, ptr @master_pres_ops_chg, ptr @master_pres_ops
  %call = tail call fastcc ptr @at91_clk_register_master_internal(ptr noundef %regmap, ptr noundef %name, i32 noundef %num_parents, ptr noundef %parent_names, ptr noundef %layout, ptr noundef %characteristics, ptr noundef nonnull %master_pres_ops_chg.master_pres_ops, ptr noundef %lock, i32 noundef %flags, i32 noundef %chg_pid) #11
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @at91_clk_register_master_internal(ptr noundef %regmap, ptr noundef %name, i32 noundef %num_parents, ptr noundef %parent_names, ptr noundef %layout, ptr noundef %characteristics, ptr noundef %ops, ptr noundef %lock, i32 noundef %flags, i32 noundef %chg_pid) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %mckr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mckr) #8
  %2 = ptrtoint ptr %mckr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mckr, align 4, !annotation !64
  %tobool.not = icmp eq ptr %name, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_parents)
  %tobool1.not = icmp eq i32 %num_parents, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %parent_names, null
  %or.cond74 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %lock, null
  %or.cond75 = or i1 %or.cond74, %tobool5.not
  br i1 %or.cond75, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #12
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops12 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %ops12, align 4
  %parent_names13 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_names, ptr %parent_names13, align 4
  %conv = trunc i32 %num_parents to i8
  %num_parents14 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %num_parents14, align 4
  %flags15 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %flags, ptr %flags15, align 4
  %init17 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init17, align 8
  %layout18 = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %layout18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %layout, ptr %layout18, align 4
  %characteristics19 = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %characteristics19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %characteristics, ptr %characteristics19, align 8
  %regmap20 = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %regmap20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %regmap, ptr %regmap20, align 4
  %chg_pid21 = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %chg_pid21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %chg_pid, ptr %chg_pid21, align 4
  %lock22 = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %lock22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock, ptr %lock22, align 8
  %cmp = icmp eq ptr %ops, @master_div_ops_chg
  br i1 %cmp, label %do.body25, label %if.end10.if.end39_crit_edge

if.end10.if.end39_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.body25:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %lock) #8
  %15 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap20, align 4
  %17 = ptrtoint ptr %layout18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %layout18, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %call35 = call i32 @regmap_read(ptr noundef %16, i32 noundef %20, ptr noundef nonnull %mckr) #8
  %21 = ptrtoint ptr %lock22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock22, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call30) #8
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %layout, i32 0, i32 1
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask, align 4
  %25 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mckr, align 4
  %and = and i32 %26, %24
  %shr = lshr i32 %and, 8
  %and37 = and i32 %shr, 7
  store i32 %and37, ptr %mckr, align 4
  %arrayidx = getelementptr %struct.clk_master_characteristics, ptr %characteristics, i32 0, i32 1, i32 %and37
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %conv38 = trunc i32 %28 to i8
  %div = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 11
  %29 = ptrtoint ptr %div to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv38, ptr %div, align 2
  br label %if.end39

if.end39:                                         ; preds = %do.body25, %if.end10.if.end39_crit_edge
  %call42 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end39.cleanup_crit_edge, label %if.then44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %30 = inttoptr i32 %call42 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %30, %if.then44 ], [ %call7.i.i, %if.end39.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mckr) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_master_div(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_name, ptr noundef %layout, ptr noundef %characteristics, ptr noundef %lock, i32 noundef %flags, i32 noundef %safe_div) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %master_div_ops_chg.master_div_ops = select i1 %tobool.not, ptr @master_div_ops_chg, ptr @master_div_ops
  %call = call fastcc ptr @at91_clk_register_master_internal(ptr noundef %regmap, ptr noundef %name, i32 noundef 1, ptr noundef nonnull %parent_name.addr, ptr noundef %layout, ptr noundef %characteristics, ptr noundef nonnull %master_div_ops_chg.master_div_ops, ptr noundef %lock, i32 noundef %flags, i32 noundef -22) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %safe_div)
  %tobool2.not = icmp eq i32 %safe_div, 0
  %or.cond = or i1 %tobool2.not, %cmp.i
  br i1 %or.cond, label %entry.if.end6_crit_edge, label %if.then3

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call, ptr @master_div, align 4
  %safe_div4 = getelementptr inbounds %struct.clk_master, ptr %call, i32 0, i32 12
  %1 = ptrtoint ptr %safe_div4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %safe_div, ptr %safe_div4, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call5 = call i32 @clk_notifier_register(ptr noundef %3, ptr noundef nonnull @clk_master_div_notifier) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %entry.if.end6_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_sama7g5_register_master(ptr noundef %regmap, ptr noundef %name, i32 noundef %num_parents, ptr noundef %parent_names, ptr noundef %mux_table, ptr noundef %lock, i8 noundef zeroext %id, i1 noundef zeroext %critical, i32 noundef %chg_pid) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !64
  %tobool.not = icmp eq ptr %name, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_parents)
  %tobool1.not = icmp eq i32 %num_parents, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %parent_names, null
  %or.cond92 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %mux_table, null
  %or.cond93 = or i1 %or.cond92, %tobool5.not
  %tobool7.not = icmp eq ptr %lock, null
  %or.cond94 = or i1 %or.cond93, %tobool7.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %id)
  %cmp = icmp ugt i8 %id, 4
  %or.cond95 = or i1 %or.cond94, %cmp
  br i1 %or.cond95, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #12
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sama7g5_master_ops, ptr %ops, align 4
  %parent_names16 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_names, ptr %parent_names16, align 4
  %conv17 = trunc i32 %num_parents to i8
  %num_parents18 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents18 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv17, ptr %num_parents18, align 4
  %flags19 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chg_pid)
  %cmp20 = icmp sgt i32 %chg_pid, -1
  %spec.select = select i1 %cmp20, i32 7, i32 3
  %or28 = or i32 %spec.select, 2048
  %spec.select96 = select i1 %critical, i32 %or28, i32 %spec.select
  %8 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select96, ptr %flags19, align 4
  %init31 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init31, align 8
  %regmap32 = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap32, align 4
  %id33 = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %id33 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %id, ptr %id33, align 8
  %chg_pid34 = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %chg_pid34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %chg_pid, ptr %chg_pid34, align 4
  %lock35 = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %lock35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lock, ptr %lock35, align 8
  %mux_table36 = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %mux_table36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mux_table, ptr %mux_table36, align 4
  %call42 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %lock) #8
  %conv47 = zext i8 %id to i32
  %call48 = call i32 @regmap_write(ptr noundef %regmap, i32 noundef 48, i32 noundef %conv47) #8
  %call50 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 48, ptr noundef nonnull %val) #8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and = lshr i32 %16, 16
  %17 = trunc i32 %and to i8
  %conv51 = and i8 %17, 31
  %parent = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv51, ptr %parent, align 1
  %and52 = lshr i32 %16, 8
  %19 = trunc i32 %and52 to i8
  %conv54 = and i8 %19, 7
  %div = getelementptr inbounds %struct.clk_master, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %div to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv54, ptr %div, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %lock, i32 noundef %call42) #8
  %call58 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end14.cleanup_crit_edge, label %if.then60

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then60:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %21 = inttoptr i32 %call58 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %21, %if.then60 ], [ %call7.i.i, %if.end14.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_master_prepare(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %id.i = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 9
  %regmap.i = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i19 = icmp eq i8 %3, 0
  %cond.i20 = select i1 %tobool.not.i19, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status.i, align 4, !annotation !64
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i21 = call i32 @regmap_read(ptr noundef %6, i32 noundef 104, ptr noundef nonnull %status.i) #8
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  %and.i22 = and i32 %8, %cond.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool1.i.not23 = icmp eq i32 %and.i22, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %tobool1.i.not23, label %entry.do.end11_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.do.end11_crit_edge:                         ; preds = %entry
  br label %do.end11

do.end11:                                         ; preds = %do.end11.do.end11_crit_edge, %entry.do.end11_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !66
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %status.i, align 4, !annotation !64
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 104, ptr noundef nonnull %status.i) #8
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status.i, align 4
  %and.i = and i32 %15, %cond.i
  %tobool1.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %tobool1.i.not, label %do.end11.do.end11_crit_edge, label %do.end11.while.end_crit_edge

do.end11.while.end_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end11.do.end11_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

while.end:                                        ; preds = %do.end11.while.end_crit_edge, %entry.while.end_crit_edge
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_master_is_prepared(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %id.i = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status.i, align 4, !annotation !64
  %regmap.i = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 104, ptr noundef nonnull %status.i) #8
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  %and.i = and i32 %8, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i = icmp ne i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call3) #8
  %conv8 = zext i1 %tobool1.i to i32
  ret i32 %conv8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_master_pres_save_context(ptr noundef %hw) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !64
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layout, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %val) #8
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call4) #8
  %11 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %layout, align 4
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and = and i32 %16, %14
  store i32 %and, ptr %val, align 4
  %pres_shift = getelementptr inbounds %struct.clk_master_layout, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %pres_shift to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pres_shift, align 4
  %conv11 = zext i8 %18 to i32
  %shr = lshr i32 %and, %conv11
  %and12 = and i32 %shr, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 7
  br i1 %cmp13, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %characteristics = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 4
  %19 = ptrtoint ptr %characteristics to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %characteristics, align 4
  %have_div3_pres = getelementptr inbounds %struct.clk_master_characteristics, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %have_div3_pres to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %have_div3_pres, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %shl = shl nuw nsw i32 1, %and12
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %pres.0 = phi i32 [ %shl, %if.else ], [ 3, %land.lhs.true.if.end_crit_edge ]
  %and16 = and i32 %and, 3
  %parent = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and16, ptr %parent, align 4
  %call17 = call i32 @clk_hw_get_rate(ptr noundef %call) #8
  %parent_rate = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call17, ptr %parent_rate, align 4
  %div312 = lshr i32 %pres.0, 1
  %add = add i32 %call17, %div312
  %div208 = udiv i32 %add, %pres.0
  %pms = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5
  %25 = ptrtoint ptr %pms to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div208, ptr %pms, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_master_pres_restore_context(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !64
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layout, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call6 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %val) #8
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call3) #8
  %11 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %layout, align 4
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and = and i32 %16, %14
  store i32 %and, ptr %val, align 4
  %pres_shift = getelementptr inbounds %struct.clk_master_layout, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %pres_shift to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pres_shift, align 4
  %conv10 = zext i8 %18 to i32
  %shr = lshr i32 %and, %conv10
  %and11 = and i32 %shr, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 7
  br i1 %cmp12, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %characteristics = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 4
  %19 = ptrtoint ptr %characteristics to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %characteristics, align 4
  %have_div3_pres = getelementptr inbounds %struct.clk_master_characteristics, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %have_div3_pres to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %have_div3_pres, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %shl = shl nuw nsw i32 1, %and11
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %pres.0 = phi i32 [ %shl, %if.else ], [ 3, %land.lhs.true.if.end_crit_edge ]
  %pms = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5
  %23 = ptrtoint ptr %pms to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pms, align 4
  %parent_rate = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %parent_rate, align 4
  %div317 = lshr i32 %pres.0, 1
  %add = add i32 %26, %div317
  %div204 = udiv i32 %add, %pres.0
  call void @__sanitizer_cov_trace_cmp4(i32 %div204, i32 %24)
  %cmp213.not = icmp eq i32 %div204, %24
  br i1 %cmp213.not, label %lor.lhs.false, label %if.end.do.end222_crit_edge

if.end.do.end222_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end222

lor.lhs.false:                                    ; preds = %if.end
  %parent = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %parent, align 4
  %and216 = and i32 %and, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %and216)
  %cmp217.not = icmp eq i32 %28, %and216
  br i1 %cmp217.not, label %lor.lhs.false.if.end225_crit_edge, label %lor.lhs.false.do.end222_crit_edge

lor.lhs.false.do.end222_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end222

lor.lhs.false.if.end225_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end225

do.end222:                                        ; preds = %lor.lhs.false.do.end222_crit_edge, %if.end.do.end222_crit_edge
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %if.end225

if.end225:                                        ; preds = %do.end222, %lor.lhs.false.if.end225_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_master_pres_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %characteristics1 = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %characteristics1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %characteristics1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !64
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %layout, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %call7 = call i32 @regmap_read(ptr noundef %6, i32 noundef %10, ptr noundef nonnull %val) #8
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call4) #8
  %13 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %layout, align 4
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and = and i32 %18, %16
  %pres_shift = getelementptr inbounds %struct.clk_master_layout, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %pres_shift to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pres_shift, align 4
  %conv11 = zext i8 %20 to i32
  %shr = lshr i32 %and, %conv11
  %and12 = and i32 %shr, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 7
  br i1 %cmp13, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %have_div3_pres = getelementptr inbounds %struct.clk_master_characteristics, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %have_div3_pres to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %have_div3_pres, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end209_crit_edge

land.lhs.true.if.end209_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %shl = shl nuw nsw i32 1, %and12
  br label %if.end209

if.end209:                                        ; preds = %if.else, %land.lhs.true.if.end209_crit_edge
  %pres.0 = phi i32 [ %shl, %if.else ], [ 3, %land.lhs.true.if.end209_crit_edge ]
  %div301 = lshr i32 %pres.0, 1
  %add = add i32 %div301, %parent_rate
  %div203 = udiv i32 %add, %pres.0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %div203
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_master_pres_get_parent(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  %mckr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mckr) #8
  %0 = ptrtoint ptr %mckr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mckr, align 4, !annotation !64
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layout, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call6 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %mckr) #8
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call3) #8
  %11 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %layout, align 4
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %15 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mckr, align 4
  %and = and i32 %16, %14
  %17 = trunc i32 %and to i8
  %conv10 = and i8 %17, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mckr) #8
  ret i8 %conv10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_master_pres_restore_context_chg(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pms = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %pms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pms, align 4
  %parent_rate = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  %call = tail call i32 @clk_master_pres_set_rate(ptr noundef %hw, i32 noundef %1, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_master_pres_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #3 align 64 {
entry:
  %req_parent = alloca %struct.clk_rate_request, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_parent) #8
  %0 = call ptr @memcpy(ptr %req_parent, ptr %req, i32 20)
  %characteristics1 = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %characteristics1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %characteristics1, align 4
  %chg_pid = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 8
  %3 = ptrtoint ptr %chg_pid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chg_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %4) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %have_div3_pres = getelementptr inbounds %struct.clk_master_characteristics, ptr %2, i32 0, i32 2
  %best_parent_rate.i = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %best_parent_hw.i = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.040 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_diff.039 = phi i32 [ -2147483648, %for.cond.preheader ], [ %best_diff.2, %for.inc.for.body_crit_edge ]
  %best_rate.038 = phi i32 [ -2147483648, %for.cond.preheader ], [ %best_rate.2, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %have_div3_pres to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %have_div3_pres, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.040)
  %cmp7 = icmp eq i32 %i.040, 7
  %or.cond = select i1 %tobool6.not, i1 %cmp7, i1 false
  %shl = shl nuw nsw i32 1, %i.040
  %pres.0 = select i1 %or.cond, i32 3, i32 %shl
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req, align 4
  %mul = mul i32 %pres.0, %8
  %9 = ptrtoint ptr %req_parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %req_parent, align 4
  %call12 = call i32 @__clk_determine_rate(ptr noundef nonnull %call, ptr noundef nonnull %req_parent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %10 = ptrtoint ptr %req_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req_parent, align 4
  %shr.i = lshr i32 %11, %pres.0
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req, align 4
  %sub.i = sub i32 %13, %shr.i
  %14 = call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_rate.038)
  %cmp4.i = icmp sgt i32 %best_rate.038, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.038, i32 %14)
  %cmp5.not.i = icmp ult i32 %best_rate.038, %14
  %or.cond.i = select i1 %cmp4.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %if.end15.clk_sama7g5_master_best_diff.exit_crit_edge, label %if.then6.i

if.end15.clk_sama7g5_master_best_diff.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_sama7g5_master_best_diff.exit

if.then6.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %best_parent_rate.i, align 4
  %16 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %best_parent_hw.i, align 4
  br label %clk_sama7g5_master_best_diff.exit

clk_sama7g5_master_best_diff.exit:                ; preds = %if.then6.i, %if.end15.clk_sama7g5_master_best_diff.exit_crit_edge
  %best_rate.1 = phi i32 [ %best_rate.038, %if.end15.clk_sama7g5_master_best_diff.exit_crit_edge ], [ %14, %if.then6.i ]
  %best_diff.1 = phi i32 [ %best_diff.039, %if.end15.clk_sama7g5_master_best_diff.exit_crit_edge ], [ %shr.i, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.1)
  %tobool17.not = icmp eq i32 %best_diff.1, 0
  br i1 %tobool17.not, label %clk_sama7g5_master_best_diff.exit.cleanup_crit_edge, label %clk_sama7g5_master_best_diff.exit.for.inc_crit_edge

clk_sama7g5_master_best_diff.exit.for.inc_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

clk_sama7g5_master_best_diff.exit.cleanup_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %clk_sama7g5_master_best_diff.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_rate.2 = phi i32 [ %best_rate.1, %clk_sama7g5_master_best_diff.exit.for.inc_crit_edge ], [ %best_rate.038, %for.body.for.inc_crit_edge ]
  %best_diff.2 = phi i32 [ %best_diff.1, %clk_sama7g5_master_best_diff.exit.for.inc_crit_edge ], [ %best_diff.039, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %clk_sama7g5_master_best_diff.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %clk_sama7g5_master_best_diff.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_parent) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_master_pres_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #3 align 64 {
entry:
  %status.i = alloca i32, align 4
  %mckr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mckr) #8
  %0 = ptrtoint ptr %mckr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mckr, align 4, !annotation !64
  %div77 = lshr i32 %rate, 1
  %add = add i32 %div77, %parent_rate
  %div3 = udiv i32 %add, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div3)
  %cmp = icmp ugt i32 %div3, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div3)
  %cmp4 = icmp eq i32 %div3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %rate)
  %tobool.not = icmp ult i32 %add, %rate
  %1 = tail call i32 @llvm.cttz.i32(i32 %div3, i1 true), !range !67
  %spec.select = select i1 %tobool.not, i32 0, i32 %1
  %pres.0 = select i1 %cmp4, i32 7, i32 %spec.select
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call16 = call i32 @regmap_read(ptr noundef %5, i32 noundef %9, ptr noundef nonnull %mckr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.else.unlock_crit_edge

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end19:                                         ; preds = %if.else
  %10 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %layout, align 4
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %14 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mckr, align 4
  %and = and i32 %15, %13
  store i32 %and, ptr %mckr, align 4
  %pres_shift = getelementptr inbounds %struct.clk_master_layout, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %pres_shift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pres_shift, align 4
  %conv22 = zext i8 %17 to i32
  %shr = lshr i32 %and, %conv22
  %and23 = and i32 %shr, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %pres.0, i32 %and23)
  %cmp24 = icmp eq i32 %pres.0, %and23
  br i1 %cmp24, label %if.end19.unlock_crit_edge, label %if.end27

if.end19.unlock_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end27:                                         ; preds = %if.end19
  %shl = shl i32 7, %conv22
  %neg = xor i32 %shl, -1
  %and31 = and i32 %and, %neg
  %shl35 = shl i32 %pres.0, %conv22
  %or = or i32 %and31, %shl35
  %18 = ptrtoint ptr %mckr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %mckr, align 4
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %11, align 4
  %call39 = call i32 @regmap_write(ptr noundef %20, i32 noundef %22, i32 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %while.cond.preheader, label %if.end27.unlock_crit_edge

if.end27.unlock_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

while.cond.preheader:                             ; preds = %if.end27
  %id.i = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 9
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i78 = icmp eq i8 %24, 0
  %cond.i79 = select i1 %tobool.not.i78, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %status.i, align 4, !annotation !64
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i80 = call i32 @regmap_read(ptr noundef %27, i32 noundef 104, ptr noundef nonnull %status.i) #8
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status.i, align 4
  %and.i81 = and i32 %29, %cond.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool1.i.not82 = icmp eq i32 %and.i81, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %tobool1.i.not82, label %while.cond.preheader.do.end48_crit_edge, label %while.cond.preheader.unlock_crit_edge

while.cond.preheader.unlock_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

while.cond.preheader.do.end48_crit_edge:          ; preds = %while.cond.preheader
  br label %do.end48

do.end48:                                         ; preds = %do.end48.do.end48_crit_edge, %while.cond.preheader.do.end48_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !69
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %status.i, align 4, !annotation !64
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_read(ptr noundef %34, i32 noundef 104, ptr noundef nonnull %status.i) #8
  %35 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status.i, align 4
  %and.i = and i32 %36, %cond.i
  %tobool1.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %tobool1.i.not, label %do.end48.do.end48_crit_edge, label %do.end48.unlock_crit_edge

do.end48.unlock_crit_edge:                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

do.end48.do.end48_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

unlock:                                           ; preds = %do.end48.unlock_crit_edge, %while.cond.preheader.unlock_crit_edge, %if.end27.unlock_crit_edge, %if.end19.unlock_crit_edge, %if.else.unlock_crit_edge
  %ret.0 = phi i32 [ %call16, %if.else.unlock_crit_edge ], [ 0, %if.end19.unlock_crit_edge ], [ %call39, %if.end27.unlock_crit_edge ], [ 0, %while.cond.preheader.unlock_crit_edge ], [ 0, %do.end48.unlock_crit_edge ]
  %37 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %call13) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mckr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_determine_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_master_div_save_context(ptr noundef %hw) #3 align 64 {
entry:
  %mckr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mckr) #8
  %0 = ptrtoint ptr %mckr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mckr, align 4, !annotation !64
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layout, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %mckr) #8
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call4) #8
  %11 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %layout, align 4
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %15 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mckr, align 4
  %and = and i32 %16, %14
  store i32 %and, ptr %mckr, align 4
  %shr = lshr i32 %and, 8
  %and10 = and i32 %shr, 7
  %characteristics = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 4
  %17 = ptrtoint ptr %characteristics to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %characteristics, align 4
  %arrayidx = getelementptr %struct.clk_master_characteristics, ptr %18, i32 0, i32 1, i32 %and10
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %call11 = call i32 @clk_hw_get_rate(ptr noundef %call) #8
  %pms = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5
  %parent_rate = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call11, ptr %parent_rate, align 4
  %div1529 = lshr i32 %20, 1
  %add = add i32 %call11, %div1529
  %div16 = udiv i32 %add, %20
  %22 = ptrtoint ptr %pms to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div16, ptr %pms, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mckr) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_master_div_restore_context(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  %mckr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mckr) #8
  %0 = ptrtoint ptr %mckr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mckr, align 4, !annotation !64
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layout, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call6 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %mckr) #8
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call3) #8
  %11 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %layout, align 4
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %15 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mckr, align 4
  %and = and i32 %16, %14
  store i32 %and, ptr %mckr, align 4
  %shr = lshr i32 %and, 8
  %conv10 = and i32 %shr, 7
  %characteristics = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 4
  %17 = ptrtoint ptr %characteristics to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %characteristics, align 4
  %arrayidx = getelementptr %struct.clk_master_characteristics, ptr %18, i32 0, i32 1, i32 %conv10
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %conv12 = and i32 %20, 255
  %pms = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5
  %parent_rate = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %parent_rate, align 4
  %23 = ptrtoint ptr %pms to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pms, align 4
  %div1533 = lshr i32 %24, 1
  %add = add i32 %div1533, %22
  %div16 = udiv i32 %add, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %div16)
  %cmp17.not = icmp eq i32 %conv12, %div16
  br i1 %cmp17.not, label %entry.if.end_crit_edge, label %do.end21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %if.end

if.end:                                           ; preds = %do.end21, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mckr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_master_div_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #3 align 64 {
entry:
  %mckr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %layout1 = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1, align 4
  %characteristics2 = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %characteristics2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %characteristics2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mckr) #8
  %4 = ptrtoint ptr %mckr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mckr, align 4, !annotation !64
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %layout1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %call9 = call i32 @regmap_read(ptr noundef %8, i32 noundef %12, ptr noundef nonnull %mckr) #8
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %call5) #8
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %17 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mckr, align 4
  %and = and i32 %18, %16
  store i32 %and, ptr %mckr, align 4
  %shr = lshr i32 %and, 8
  %conv12 = and i32 %shr, 7
  %arrayidx = getelementptr %struct.clk_master_characteristics, ptr %3, i32 0, i32 1, i32 %conv12
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %div13 = udiv i32 %parent_rate, %20
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div13, i32 %22)
  %cmp14 = icmp ult i32 %div13, %22
  br i1 %cmp14, label %entry.if.end30.sink.split_crit_edge, label %if.else

entry.if.end30.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split

if.else:                                          ; preds = %entry
  %max = getelementptr inbounds %struct.clk_range, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div13, i32 %24)
  %cmp22 = icmp ugt i32 %div13, %24
  br i1 %cmp22, label %if.else.if.end30.sink.split_crit_edge, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.else.if.end30.sink.split_crit_edge, %entry.if.end30.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.5, %entry.if.end30.sink.split_crit_edge ], [ @.str.8, %if.else.if.end30.sink.split_crit_edge ]
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink) #13
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mckr) #8
  ret i32 %div13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_master_div_restore_context_chg(ptr nocapture noundef %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %pms = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5
  %parent_rate = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  %4 = ptrtoint ptr %pms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pms, align 4
  %div24 = lshr i32 %5, 1
  %add = add i32 %div24, %3
  %div10 = udiv i32 %add, %5
  %call11 = tail call fastcc i32 @clk_master_div_set(ptr noundef %hw, i32 noundef %3, i32 noundef %div10)
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %if.end

if.end:                                           ; preds = %do.end15, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_master_div_recalc_rate_chg(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %div, align 2
  %conv = zext i8 %1 to i32
  %div1270 = lshr i32 %conv, 1
  %add = add i32 %div1270, %parent_rate
  %div180 = udiv i32 %add, %conv
  ret i32 %div180
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_master_div_set(ptr nocapture noundef %master, i32 noundef %parent_rate, i32 noundef %div) unnamed_addr #3 align 64 {
entry:
  %status.i = alloca i32, align 4
  %mckr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %characteristics1 = getelementptr inbounds %struct.clk_master, ptr %master, i32 0, i32 4
  %0 = ptrtoint ptr %characteristics1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %characteristics1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mckr) #8
  %2 = ptrtoint ptr %mckr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mckr, align 4, !annotation !64
  %arrayidx = getelementptr %struct.clk_master_characteristics, ptr %1, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %entry
  %arrayidx.1 = getelementptr %struct.clk_master_characteristics, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1 = icmp eq i32 %6, 0
  br i1 %tobool.not.1, label %if.end.for.end_crit_edge, label %if.end.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %div)
  %cmp4.1 = icmp eq i32 %6, %div
  %spec.select.1 = zext i1 %cmp4.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp9.1 = icmp ult i32 %4, %6
  %7 = tail call i32 @llvm.umax.i32(i32 %4, i32 %6)
  %max_div_index.1.1 = zext i1 %cmp9.1 to i32
  %arrayidx.2 = getelementptr %struct.clk_master_characteristics, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.2 = icmp eq i32 %9, 0
  br i1 %tobool.not.2, label %if.end.1.for.end_crit_edge, label %if.end.2

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %div)
  %cmp4.2 = icmp eq i32 %9, %div
  %spec.select.2 = select i1 %cmp4.2, i32 2, i32 %spec.select.1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp9.2 = icmp ult i32 %7, %9
  %10 = tail call i32 @llvm.umax.i32(i32 %7, i32 %9)
  %max_div_index.1.2 = select i1 %cmp9.2, i32 2, i32 %max_div_index.1.1
  %arrayidx.3 = getelementptr %struct.clk_master_characteristics, ptr %1, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.3 = icmp eq i32 %12, 0
  br i1 %tobool.not.3, label %if.end.2.for.end_crit_edge, label %if.end.3

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %div)
  %cmp4.3 = icmp eq i32 %12, %div
  %spec.select.3 = select i1 %cmp4.3, i32 3, i32 %spec.select.2
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp9.3 = icmp ult i32 %10, %12
  %13 = tail call i32 @llvm.umax.i32(i32 %10, i32 %12)
  %max_div_index.1.3 = select i1 %cmp9.3, i32 3, i32 %max_div_index.1.2
  %arrayidx.4 = getelementptr %struct.clk_master_characteristics, ptr %1, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.4 = icmp eq i32 %15, 0
  br i1 %tobool.not.4, label %if.end.3.for.end_crit_edge, label %if.end.4

if.end.3.for.end_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div)
  %cmp4.4 = icmp eq i32 %15, %div
  %spec.select.4 = select i1 %cmp4.4, i32 4, i32 %spec.select.3
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9.4 = icmp ult i32 %13, %15
  %16 = tail call i32 @llvm.umax.i32(i32 %13, i32 %15)
  %max_div_index.1.4 = select i1 %cmp9.4, i32 4, i32 %max_div_index.1.3
  br label %for.end

for.end:                                          ; preds = %if.end.4, %if.end.3.for.end_crit_edge, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %max_div.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %4, %if.end.for.end_crit_edge ], [ %7, %if.end.1.for.end_crit_edge ], [ %10, %if.end.2.for.end_crit_edge ], [ %13, %if.end.3.for.end_crit_edge ], [ %16, %if.end.4 ]
  %div_index.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ], [ %spec.select.1, %if.end.1.for.end_crit_edge ], [ %spec.select.2, %if.end.2.for.end_crit_edge ], [ %spec.select.3, %if.end.3.for.end_crit_edge ], [ %spec.select.4, %if.end.4 ]
  %max_div_index.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ], [ %max_div_index.1.1, %if.end.1.for.end_crit_edge ], [ %max_div_index.1.2, %if.end.2.for.end_crit_edge ], [ %max_div_index.1.3, %if.end.3.for.end_crit_edge ], [ %max_div_index.1.4, %if.end.4 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_div.0.lcssa, i32 %div)
  %cmp14 = icmp ult i32 %max_div.0.lcssa, %div
  %spec.select103 = select i1 %cmp14, i32 %max_div_index.0.lcssa, i32 %div_index.0.lcssa
  %regmap = getelementptr inbounds %struct.clk_master, ptr %master, i32 0, i32 1
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_master, ptr %master, i32 0, i32 3
  %19 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %layout, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %call = call i32 @regmap_read(ptr noundef %18, i32 noundef %22, ptr noundef nonnull %mckr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end19, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %for.end
  %23 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %layout, align 4
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask, align 4
  %27 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mckr, align 4
  %and = and i32 %28, %26
  store i32 %and, ptr %mckr, align 4
  %shr = lshr i32 %and, 8
  %and21 = and i32 %shr, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %spec.select103)
  %cmp22 = icmp eq i32 %and21, %spec.select103
  br i1 %cmp22, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %arrayidx26 = getelementptr %struct.clk_master_characteristics, ptr %1, i32 0, i32 1, i32 %spec.select103
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx26, align 4
  %div27 = udiv i32 %parent_rate, %30
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div27, i32 %32)
  %cmp28 = icmp ult i32 %div27, %32
  br i1 %cmp28, label %if.end24.if.end41.sink.split_crit_edge, label %if.else

if.end24.if.end41.sink.split_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

if.else:                                          ; preds = %if.end24
  %max = getelementptr inbounds %struct.clk_range, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div27, i32 %34)
  %cmp33 = icmp ugt i32 %div27, %34
  br i1 %cmp33, label %if.else.if.end41.sink.split_crit_edge, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.else.if.end41.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.else.if.end41.sink.split_crit_edge, %if.end24.if.end41.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.5, %if.end24.if.end41.sink.split_crit_edge ], [ @.str.8, %if.else.if.end41.sink.split_crit_edge ]
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink) #13
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else.if.end41_crit_edge
  %35 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mckr, align 4
  %and42 = and i32 %36, -1793
  %shl = shl nuw nsw i32 %spec.select103, 8
  %or = or i32 %and42, %shl
  store i32 %or, ptr %mckr, align 4
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %39 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %layout, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %call46 = call i32 @regmap_write(ptr noundef %38, i32 noundef %42, i32 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %while.cond.preheader, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end41
  %id.i = getelementptr inbounds %struct.clk_master, ptr %master, i32 0, i32 9
  %43 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i108 = icmp eq i8 %44, 0
  %cond.i109 = select i1 %tobool.not.i108, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %45 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %status.i, align 4, !annotation !64
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call.i110 = call i32 @regmap_read(ptr noundef %47, i32 noundef 104, ptr noundef nonnull %status.i) #8
  %48 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status.i, align 4
  %and.i111 = and i32 %49, %cond.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %tobool1.i.not112 = icmp eq i32 %and.i111, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %tobool1.i.not112, label %while.cond.preheader.do.end55_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.preheader.do.end55_crit_edge:          ; preds = %while.cond.preheader
  br label %do.end55

do.end55:                                         ; preds = %do.end55.do.end55_crit_edge, %while.cond.preheader.do.end55_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !70
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !71
  %50 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %52 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %status.i, align 4, !annotation !64
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_read(ptr noundef %54, i32 noundef 104, ptr noundef nonnull %status.i) #8
  %55 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %status.i, align 4
  %and.i = and i32 %56, %cond.i
  %tobool1.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %tobool1.i.not, label %do.end55.do.end55_crit_edge, label %do.end55.while.end_crit_edge

do.end55.while.end_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end55.do.end55_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

while.end:                                        ; preds = %do.end55.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %57 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx26, align 4
  %conv = trunc i32 %58 to i8
  %div62 = getelementptr inbounds %struct.clk_master, ptr %master, i32 0, i32 11
  %59 = ptrtoint ptr %div62 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv, ptr %div62, align 2
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end41.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ %call, %for.end.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %call46, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mckr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_master_div_notifier_fn(ptr nocapture noundef readnone %notifier, i32 noundef %code, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  %mckr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @master_div, align 4
  %characteristics1 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %characteristics1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %characteristics1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mckr) #8
  %3 = ptrtoint ptr %mckr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mckr, align 4, !annotation !64
  %lock = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %6 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %code, label %entry.unlock_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

sw.bb:                                            ; preds = %entry
  %7 = load ptr, ptr @master_div, align 4
  %regmap = getelementptr inbounds %struct.clk_master, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_master, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %layout, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call6 = call i32 @regmap_read(ptr noundef %9, i32 noundef %13, ptr noundef nonnull %mckr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.unlock_crit_edge

sw.bb.unlock_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load ptr, ptr @master_div, align 4
  %layout7 = getelementptr inbounds %struct.clk_master, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %layout7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %layout7, align 4
  %mask = getelementptr inbounds %struct.clk_master_layout, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask, align 4
  %19 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mckr, align 4
  %and = and i32 %20, %18
  store i32 %and, ptr %mckr, align 4
  %shr = lshr i32 %and, 8
  %and8 = and i32 %shr, 7
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old_rate, align 4
  %arrayidx = getelementptr %struct.clk_master_characteristics, ptr %2, i32 0, i32 1, i32 %and8
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %24, %22
  %safe_div = getelementptr inbounds %struct.clk_master, ptr %14, i32 0, i32 12
  %25 = ptrtoint ptr %safe_div to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %safe_div, align 4
  %call9 = call fastcc i32 @clk_master_div_set(ptr noundef %14, i32 noundef %mul, i32 noundef %26)
  br label %unlock

sw.bb10:                                          ; preds = %entry
  %27 = load ptr, ptr @master_div, align 4
  %regmap11 = getelementptr inbounds %struct.clk_master, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap11, align 4
  %layout12 = getelementptr inbounds %struct.clk_master, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %layout12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %layout12, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %call14 = call i32 @regmap_read(ptr noundef %29, i32 noundef %33, ptr noundef nonnull %mckr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %sw.bb10.unlock_crit_edge

sw.bb10.unlock_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end17:                                         ; preds = %sw.bb10
  %34 = load ptr, ptr @master_div, align 4
  %layout18 = getelementptr inbounds %struct.clk_master, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %layout18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %layout18, align 4
  %mask19 = getelementptr inbounds %struct.clk_master_layout, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %mask19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask19, align 4
  %39 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mckr, align 4
  %and20 = and i32 %40, %38
  store i32 %and20, ptr %mckr, align 4
  %shr21 = lshr i32 %and20, 8
  %and22 = and i32 %shr21, 7
  %new_rate23 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %41 = ptrtoint ptr %new_rate23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %new_rate23, align 4
  %arrayidx25 = getelementptr %struct.clk_master_characteristics, ptr %2, i32 0, i32 1, i32 %and22
  %43 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx25, align 4
  %mul26 = mul i32 %44, %42
  %max = getelementptr inbounds %struct.clk_range, ptr %2, i32 0, i32 1
  %arrayidx30 = getelementptr %struct.clk_master_characteristics, ptr %2, i32 0, i32 1, i32 0
  %45 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool31.not = icmp eq i32 %46, 0
  br i1 %tobool31.not, label %if.end17.for.end_crit_edge, label %if.then218

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then218:                                       ; preds = %if.end17
  %div36352 = lshr i32 %46, 1
  %add = add i32 %div36352, %mul26
  %div222 = udiv i32 %add, %46
  %47 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max, align 4
  %sub232 = sub i32 %48, %div222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub232)
  %cmp233 = icmp slt i32 %sub232, 0
  br i1 %cmp233, label %if.then218.for.inc_crit_edge, label %if.end236

if.then218.for.inc_crit_edge:                     ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end236:                                        ; preds = %if.then218
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %div222)
  %tobool245.not = icmp eq i32 %48, %div222
  br i1 %tobool245.not, label %if.end236.for.end_crit_edge, label %if.end236.for.inc_crit_edge

if.end236.for.inc_crit_edge:                      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end236.for.end_crit_edge:                      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end236.for.inc_crit_edge, %if.then218.for.inc_crit_edge
  %new_div.2 = phi i32 [ 0, %if.then218.for.inc_crit_edge ], [ %46, %if.end236.for.inc_crit_edge ]
  %best_diff.2 = phi i32 [ -1, %if.then218.for.inc_crit_edge ], [ %sub232, %if.end236.for.inc_crit_edge ]
  %arrayidx30.1 = getelementptr %struct.clk_master_characteristics, ptr %2, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx30.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool31.not.1 = icmp eq i32 %50, 0
  br i1 %tobool31.not.1, label %for.inc.for.end_crit_edge, label %if.then218.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then218.1:                                     ; preds = %for.inc
  %div36352.1 = lshr i32 %50, 1
  %add.1 = add i32 %div36352.1, %mul26
  %div222.1 = udiv i32 %add.1, %50
  %51 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max, align 4
  %sub232.1 = sub i32 %52, %div222.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub232.1)
  %cmp233.1 = icmp slt i32 %sub232.1, 0
  br i1 %cmp233.1, label %if.then218.1.for.inc.1_crit_edge, label %if.end236.1

if.then218.1.for.inc.1_crit_edge:                 ; preds = %if.then218.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end236.1:                                      ; preds = %if.then218.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.2)
  %cmp237.1 = icmp slt i32 %best_diff.2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2, i32 %sub232.1)
  %cmp239.1 = icmp sgt i32 %best_diff.2, %sub232.1
  %or.cond.1 = select i1 %cmp237.1, i1 true, i1 %cmp239.1
  %spec.select.1 = select i1 %or.cond.1, i32 %50, i32 %new_div.2
  %spec.select378.1 = select i1 %or.cond.1, i32 %sub232.1, i32 %best_diff.2
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %div222.1)
  %tobool245.not.1 = icmp eq i32 %52, %div222.1
  br i1 %tobool245.not.1, label %if.end236.1.for.end_crit_edge, label %if.end236.1.for.inc.1_crit_edge

if.end236.1.for.inc.1_crit_edge:                  ; preds = %if.end236.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end236.1.for.end_crit_edge:                    ; preds = %if.end236.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.1:                                        ; preds = %if.end236.1.for.inc.1_crit_edge, %if.then218.1.for.inc.1_crit_edge
  %new_div.2.1 = phi i32 [ %new_div.2, %if.then218.1.for.inc.1_crit_edge ], [ %spec.select.1, %if.end236.1.for.inc.1_crit_edge ]
  %best_diff.2.1 = phi i32 [ %best_diff.2, %if.then218.1.for.inc.1_crit_edge ], [ %spec.select378.1, %if.end236.1.for.inc.1_crit_edge ]
  %arrayidx30.2 = getelementptr %struct.clk_master_characteristics, ptr %2, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx30.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool31.not.2 = icmp eq i32 %54, 0
  br i1 %tobool31.not.2, label %for.inc.1.for.end_crit_edge, label %if.then218.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then218.2:                                     ; preds = %for.inc.1
  %div36352.2 = lshr i32 %54, 1
  %add.2 = add i32 %div36352.2, %mul26
  %div222.2 = udiv i32 %add.2, %54
  %55 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max, align 4
  %sub232.2 = sub i32 %56, %div222.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub232.2)
  %cmp233.2 = icmp slt i32 %sub232.2, 0
  br i1 %cmp233.2, label %if.then218.2.for.inc.2_crit_edge, label %if.end236.2

if.then218.2.for.inc.2_crit_edge:                 ; preds = %if.then218.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end236.2:                                      ; preds = %if.then218.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.2.1)
  %cmp237.2 = icmp slt i32 %best_diff.2.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.1, i32 %sub232.2)
  %cmp239.2 = icmp sgt i32 %best_diff.2.1, %sub232.2
  %or.cond.2 = select i1 %cmp237.2, i1 true, i1 %cmp239.2
  %spec.select.2 = select i1 %or.cond.2, i32 %54, i32 %new_div.2.1
  %spec.select378.2 = select i1 %or.cond.2, i32 %sub232.2, i32 %best_diff.2.1
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %div222.2)
  %tobool245.not.2 = icmp eq i32 %56, %div222.2
  br i1 %tobool245.not.2, label %if.end236.2.for.end_crit_edge, label %if.end236.2.for.inc.2_crit_edge

if.end236.2.for.inc.2_crit_edge:                  ; preds = %if.end236.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end236.2.for.end_crit_edge:                    ; preds = %if.end236.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.2:                                        ; preds = %if.end236.2.for.inc.2_crit_edge, %if.then218.2.for.inc.2_crit_edge
  %new_div.2.2 = phi i32 [ %new_div.2.1, %if.then218.2.for.inc.2_crit_edge ], [ %spec.select.2, %if.end236.2.for.inc.2_crit_edge ]
  %best_diff.2.2 = phi i32 [ %best_diff.2.1, %if.then218.2.for.inc.2_crit_edge ], [ %spec.select378.2, %if.end236.2.for.inc.2_crit_edge ]
  %arrayidx30.3 = getelementptr %struct.clk_master_characteristics, ptr %2, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx30.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool31.not.3 = icmp eq i32 %58, 0
  br i1 %tobool31.not.3, label %for.inc.2.for.end_crit_edge, label %if.then218.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then218.3:                                     ; preds = %for.inc.2
  %div36352.3 = lshr i32 %58, 1
  %add.3 = add i32 %div36352.3, %mul26
  %div222.3 = udiv i32 %add.3, %58
  %59 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max, align 4
  %sub232.3 = sub i32 %60, %div222.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub232.3)
  %cmp233.3 = icmp slt i32 %sub232.3, 0
  br i1 %cmp233.3, label %if.then218.3.for.inc.3_crit_edge, label %if.end236.3

if.then218.3.for.inc.3_crit_edge:                 ; preds = %if.then218.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end236.3:                                      ; preds = %if.then218.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.2.2)
  %cmp237.3 = icmp slt i32 %best_diff.2.2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.2, i32 %sub232.3)
  %cmp239.3 = icmp sgt i32 %best_diff.2.2, %sub232.3
  %or.cond.3 = select i1 %cmp237.3, i1 true, i1 %cmp239.3
  %spec.select.3 = select i1 %or.cond.3, i32 %58, i32 %new_div.2.2
  %spec.select378.3 = select i1 %or.cond.3, i32 %sub232.3, i32 %best_diff.2.2
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %div222.3)
  %tobool245.not.3 = icmp eq i32 %60, %div222.3
  br i1 %tobool245.not.3, label %if.end236.3.for.end_crit_edge, label %if.end236.3.for.inc.3_crit_edge

if.end236.3.for.inc.3_crit_edge:                  ; preds = %if.end236.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end236.3.for.end_crit_edge:                    ; preds = %if.end236.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.3:                                        ; preds = %if.end236.3.for.inc.3_crit_edge, %if.then218.3.for.inc.3_crit_edge
  %new_div.2.3 = phi i32 [ %new_div.2.2, %if.then218.3.for.inc.3_crit_edge ], [ %spec.select.3, %if.end236.3.for.inc.3_crit_edge ]
  %best_diff.2.3 = phi i32 [ %best_diff.2.2, %if.then218.3.for.inc.3_crit_edge ], [ %spec.select378.3, %if.end236.3.for.inc.3_crit_edge ]
  %arrayidx30.4 = getelementptr %struct.clk_master_characteristics, ptr %2, i32 0, i32 1, i32 4
  %61 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx30.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool31.not.4 = icmp eq i32 %62, 0
  br i1 %tobool31.not.4, label %for.inc.3.for.end_crit_edge, label %if.then218.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then218.4:                                     ; preds = %for.inc.3
  %div36352.4 = lshr i32 %62, 1
  %add.4 = add i32 %div36352.4, %mul26
  %div222.4 = udiv i32 %add.4, %62
  %63 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max, align 4
  %sub232.4 = sub i32 %64, %div222.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub232.4)
  %cmp233.4 = icmp slt i32 %sub232.4, 0
  br i1 %cmp233.4, label %if.then218.4.for.end_crit_edge, label %if.end236.4

if.then218.4.for.end_crit_edge:                   ; preds = %if.then218.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end236.4:                                      ; preds = %if.then218.4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.2.3)
  %cmp237.4 = icmp slt i32 %best_diff.2.3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.3, i32 %sub232.4)
  %cmp239.4 = icmp sgt i32 %best_diff.2.3, %sub232.4
  %or.cond.4 = select i1 %cmp237.4, i1 true, i1 %cmp239.4
  %spec.select.4 = select i1 %or.cond.4, i32 %62, i32 %new_div.2.3
  br label %for.end

for.end:                                          ; preds = %if.end236.4, %if.then218.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %if.end236.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %if.end236.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %if.end236.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end236.for.end_crit_edge, %if.end17.for.end_crit_edge
  %new_div.3 = phi i32 [ %46, %if.end236.for.end_crit_edge ], [ 0, %if.end17.for.end_crit_edge ], [ %new_div.2, %for.inc.for.end_crit_edge ], [ %spec.select.1, %if.end236.1.for.end_crit_edge ], [ %new_div.2.1, %for.inc.1.for.end_crit_edge ], [ %spec.select.2, %if.end236.2.for.end_crit_edge ], [ %new_div.2.2, %for.inc.2.for.end_crit_edge ], [ %spec.select.3, %if.end236.3.for.end_crit_edge ], [ %new_div.2.3, %for.inc.3.for.end_crit_edge ], [ %new_div.2.3, %if.then218.4.for.end_crit_edge ], [ %spec.select.4, %if.end236.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_div.3)
  %tobool248.not = icmp eq i32 %new_div.3, 0
  br i1 %tobool248.not, label %for.end.unlock_crit_edge, label %if.end250

for.end.unlock_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end250:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call251 = call fastcc i32 @clk_master_div_set(ptr noundef %34, i32 noundef %mul26, i32 noundef %new_div.3)
  br label %unlock

unlock:                                           ; preds = %if.end250, %for.end.unlock_crit_edge, %sw.bb10.unlock_crit_edge, %if.end, %sw.bb.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ 1, %if.end250 ], [ 0, %if.end ], [ 32768, %sw.bb.unlock_crit_edge ], [ 32768, %sw.bb10.unlock_crit_edge ], [ 32768, %for.end.unlock_crit_edge ], [ 0, %entry.unlock_crit_edge ]
  %65 = load ptr, ptr @master_div, align 4
  %lock252 = getelementptr inbounds %struct.clk_master, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %lock252 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lock252, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %call3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mckr) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_enable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clk_sama7g5_master_set(ptr noundef %hw)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sama7g5_master_disable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 9
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv6 = zext i8 %5 to i32
  %call7 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 48, i32 noundef %conv6) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %10 = and i8 %9, 15
  %11 = or i8 %10, -128
  %or = zext i8 %11 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 48, i32 noundef 268435599, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_is_enabled(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !64
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 9
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %conv6 = zext i8 %6 to i32
  %call7 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 48, i32 noundef %conv6) #8
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 48, ptr noundef nonnull %val) #8
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call3) #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = lshr i32 %12, 28
  %and.lobit = and i32 %and, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_save_context(ptr nocapture noundef %hw) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !64
  %lock.i = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %regmap.i = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %id.i = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 9
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id.i, align 4
  %conv6.i = zext i8 %6 to i32
  %call7.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 48, i32 noundef %conv6.i) #8
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call9.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 48, ptr noundef nonnull %val.i) #8
  %9 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call3.i) #8
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %and.i = lshr i32 %12, 28
  %and.lobit.i = and i32 %and.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %status = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and.lobit.i, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sama7g5_master_restore_context(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @clk_sama7g5_master_set(ptr noundef %hw)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %div, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %div1 = sdiv i32 %shl, 2
  %add = add i32 %div1, %parent_rate
  %div180270 = lshr i32 %add, %conv
  ret i32 %div180270
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #3 align 64 {
entry:
  %req_parent = alloca %struct.clk_rate_request, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_parent) #8
  %0 = call ptr @memcpy(ptr %req_parent, ptr %req, i32 20)
  %call119 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120.not = icmp eq i32 %call119, 0
  br i1 %cmp120.not, label %entry.for.end17_crit_edge, label %for.body.lr.ph

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.body.lr.ph:                                   ; preds = %entry
  %best_parent_rate.i = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %best_parent_hw.i = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %for.body.lr.ph
  %i.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.inc15.for.body_crit_edge ]
  %best_diff.0122 = phi i32 [ -2147483648, %for.body.lr.ph ], [ %best_diff.4, %for.inc15.for.body_crit_edge ]
  %best_rate.0121 = phi i32 [ -2147483648, %for.body.lr.ph ], [ %best_rate.4, %for.inc15.for.body_crit_edge ]
  %call1 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.0123) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.inc15_crit_edge, label %if.end

for.body.for.inc15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15

if.end:                                           ; preds = %for.body
  %call2 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.for.inc15_crit_edge, label %for.cond6.preheader

if.end.for.inc15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15

for.cond6.preheader:                              ; preds = %if.end
  %div1.i = udiv i32 %call2, 3
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %req, align 4
  %sub.i = sub i32 %2, %call2
  %3 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.0122)
  %cmp4.i = icmp sgt i32 %best_diff.0122, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.0122, i32 %3)
  %cmp5.not.i = icmp ult i32 %best_diff.0122, %3
  %or.cond.i = select i1 %cmp4.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %for.cond6.preheader.clk_sama7g5_master_best_diff.exit_crit_edge, label %if.then6.i

for.cond6.preheader.clk_sama7g5_master_best_diff.exit_crit_edge: ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_sama7g5_master_best_diff.exit

for.cond6:                                        ; preds = %clk_sama7g5_master_best_diff.exit
  %shr.i.1 = lshr i32 %call2, 1
  %sub.i.1 = sub i32 %2, %shr.i.1
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.2)
  %cmp4.i.1 = icmp sgt i32 %best_diff.2, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2, i32 %4)
  %cmp5.not.i.1 = icmp ult i32 %best_diff.2, %4
  %or.cond.i.1 = select i1 %cmp4.i.1, i1 %cmp5.not.i.1, i1 false
  br i1 %or.cond.i.1, label %for.cond6.for.cond6.1_crit_edge, label %clk_sama7g5_master_best_diff.exit.1

for.cond6.for.cond6.1_crit_edge:                  ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.1

clk_sama7g5_master_best_diff.exit.1:              ; preds = %for.cond6
  %5 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2, ptr %best_parent_rate.i, align 4
  %6 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %best_parent_hw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %shr.i.1)
  %tobool9.not.1 = icmp eq i32 %2, %shr.i.1
  br i1 %tobool9.not.1, label %clk_sama7g5_master_best_diff.exit.1.for.end17_crit_edge, label %clk_sama7g5_master_best_diff.exit.1.for.cond6.1_crit_edge

clk_sama7g5_master_best_diff.exit.1.for.cond6.1_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.1

clk_sama7g5_master_best_diff.exit.1.for.end17_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.cond6.1:                                      ; preds = %clk_sama7g5_master_best_diff.exit.1.for.cond6.1_crit_edge, %for.cond6.for.cond6.1_crit_edge
  %best_diff.2.1136 = phi i32 [ %4, %clk_sama7g5_master_best_diff.exit.1.for.cond6.1_crit_edge ], [ %best_diff.2, %for.cond6.for.cond6.1_crit_edge ]
  %best_rate.2.1135 = phi i32 [ %shr.i.1, %clk_sama7g5_master_best_diff.exit.1.for.cond6.1_crit_edge ], [ %best_rate.2, %for.cond6.for.cond6.1_crit_edge ]
  %shr.i.2 = lshr i32 %call2, 2
  %sub.i.2 = sub i32 %2, %shr.i.2
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.2.1136)
  %cmp4.i.2 = icmp sgt i32 %best_diff.2.1136, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.1136, i32 %7)
  %cmp5.not.i.2 = icmp ult i32 %best_diff.2.1136, %7
  %or.cond.i.2 = select i1 %cmp4.i.2, i1 %cmp5.not.i.2, i1 false
  br i1 %or.cond.i.2, label %for.cond6.1.for.cond6.2_crit_edge, label %clk_sama7g5_master_best_diff.exit.2

for.cond6.1.for.cond6.2_crit_edge:                ; preds = %for.cond6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.2

clk_sama7g5_master_best_diff.exit.2:              ; preds = %for.cond6.1
  %8 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %best_parent_rate.i, align 4
  %9 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %best_parent_hw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %shr.i.2)
  %tobool9.not.2 = icmp eq i32 %2, %shr.i.2
  br i1 %tobool9.not.2, label %clk_sama7g5_master_best_diff.exit.2.for.end17_crit_edge, label %clk_sama7g5_master_best_diff.exit.2.for.cond6.2_crit_edge

clk_sama7g5_master_best_diff.exit.2.for.cond6.2_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.2

clk_sama7g5_master_best_diff.exit.2.for.end17_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.cond6.2:                                      ; preds = %clk_sama7g5_master_best_diff.exit.2.for.cond6.2_crit_edge, %for.cond6.1.for.cond6.2_crit_edge
  %best_diff.2.2141 = phi i32 [ %7, %clk_sama7g5_master_best_diff.exit.2.for.cond6.2_crit_edge ], [ %best_diff.2.1136, %for.cond6.1.for.cond6.2_crit_edge ]
  %best_rate.2.2140 = phi i32 [ %shr.i.2, %clk_sama7g5_master_best_diff.exit.2.for.cond6.2_crit_edge ], [ %best_rate.2.1135, %for.cond6.1.for.cond6.2_crit_edge ]
  %shr.i.3 = lshr i32 %call2, 3
  %sub.i.3 = sub i32 %2, %shr.i.3
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.2.2141)
  %cmp4.i.3 = icmp sgt i32 %best_diff.2.2141, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.2141, i32 %10)
  %cmp5.not.i.3 = icmp ult i32 %best_diff.2.2141, %10
  %or.cond.i.3 = select i1 %cmp4.i.3, i1 %cmp5.not.i.3, i1 false
  br i1 %or.cond.i.3, label %for.cond6.2.for.cond6.3_crit_edge, label %clk_sama7g5_master_best_diff.exit.3

for.cond6.2.for.cond6.3_crit_edge:                ; preds = %for.cond6.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.3

clk_sama7g5_master_best_diff.exit.3:              ; preds = %for.cond6.2
  %11 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call2, ptr %best_parent_rate.i, align 4
  %12 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %best_parent_hw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %shr.i.3)
  %tobool9.not.3 = icmp eq i32 %2, %shr.i.3
  br i1 %tobool9.not.3, label %clk_sama7g5_master_best_diff.exit.3.for.end17_crit_edge, label %clk_sama7g5_master_best_diff.exit.3.for.cond6.3_crit_edge

clk_sama7g5_master_best_diff.exit.3.for.cond6.3_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.3

clk_sama7g5_master_best_diff.exit.3.for.end17_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.cond6.3:                                      ; preds = %clk_sama7g5_master_best_diff.exit.3.for.cond6.3_crit_edge, %for.cond6.2.for.cond6.3_crit_edge
  %best_diff.2.3146 = phi i32 [ %10, %clk_sama7g5_master_best_diff.exit.3.for.cond6.3_crit_edge ], [ %best_diff.2.2141, %for.cond6.2.for.cond6.3_crit_edge ]
  %best_rate.2.3145 = phi i32 [ %shr.i.3, %clk_sama7g5_master_best_diff.exit.3.for.cond6.3_crit_edge ], [ %best_rate.2.2140, %for.cond6.2.for.cond6.3_crit_edge ]
  %shr.i.4 = lshr i32 %call2, 4
  %sub.i.4 = sub i32 %2, %shr.i.4
  %13 = tail call i32 @llvm.abs.i32(i32 %sub.i.4, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.2.3146)
  %cmp4.i.4 = icmp sgt i32 %best_diff.2.3146, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.3146, i32 %13)
  %cmp5.not.i.4 = icmp ult i32 %best_diff.2.3146, %13
  %or.cond.i.4 = select i1 %cmp4.i.4, i1 %cmp5.not.i.4, i1 false
  br i1 %or.cond.i.4, label %for.cond6.3.for.cond6.4_crit_edge, label %clk_sama7g5_master_best_diff.exit.4

for.cond6.3.for.cond6.4_crit_edge:                ; preds = %for.cond6.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.4

clk_sama7g5_master_best_diff.exit.4:              ; preds = %for.cond6.3
  %14 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2, ptr %best_parent_rate.i, align 4
  %15 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1, ptr %best_parent_hw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %shr.i.4)
  %tobool9.not.4 = icmp eq i32 %2, %shr.i.4
  br i1 %tobool9.not.4, label %clk_sama7g5_master_best_diff.exit.4.for.end17_crit_edge, label %clk_sama7g5_master_best_diff.exit.4.for.cond6.4_crit_edge

clk_sama7g5_master_best_diff.exit.4.for.cond6.4_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.4

clk_sama7g5_master_best_diff.exit.4.for.end17_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.cond6.4:                                      ; preds = %clk_sama7g5_master_best_diff.exit.4.for.cond6.4_crit_edge, %for.cond6.3.for.cond6.4_crit_edge
  %best_diff.2.4151 = phi i32 [ %13, %clk_sama7g5_master_best_diff.exit.4.for.cond6.4_crit_edge ], [ %best_diff.2.3146, %for.cond6.3.for.cond6.4_crit_edge ]
  %best_rate.2.4150 = phi i32 [ %shr.i.4, %clk_sama7g5_master_best_diff.exit.4.for.cond6.4_crit_edge ], [ %best_rate.2.3145, %for.cond6.3.for.cond6.4_crit_edge ]
  %shr.i.5 = lshr i32 %call2, 5
  %sub.i.5 = sub i32 %2, %shr.i.5
  %16 = tail call i32 @llvm.abs.i32(i32 %sub.i.5, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.2.4151)
  %cmp4.i.5 = icmp sgt i32 %best_diff.2.4151, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.4151, i32 %16)
  %cmp5.not.i.5 = icmp ult i32 %best_diff.2.4151, %16
  %or.cond.i.5 = select i1 %cmp4.i.5, i1 %cmp5.not.i.5, i1 false
  br i1 %or.cond.i.5, label %for.cond6.4.for.cond6.5_crit_edge, label %clk_sama7g5_master_best_diff.exit.5

for.cond6.4.for.cond6.5_crit_edge:                ; preds = %for.cond6.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.5

clk_sama7g5_master_best_diff.exit.5:              ; preds = %for.cond6.4
  %17 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2, ptr %best_parent_rate.i, align 4
  %18 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1, ptr %best_parent_hw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %shr.i.5)
  %tobool9.not.5 = icmp eq i32 %2, %shr.i.5
  br i1 %tobool9.not.5, label %clk_sama7g5_master_best_diff.exit.5.for.end17_crit_edge, label %clk_sama7g5_master_best_diff.exit.5.for.cond6.5_crit_edge

clk_sama7g5_master_best_diff.exit.5.for.cond6.5_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.5

clk_sama7g5_master_best_diff.exit.5.for.end17_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.cond6.5:                                      ; preds = %clk_sama7g5_master_best_diff.exit.5.for.cond6.5_crit_edge, %for.cond6.4.for.cond6.5_crit_edge
  %best_diff.2.5156 = phi i32 [ %16, %clk_sama7g5_master_best_diff.exit.5.for.cond6.5_crit_edge ], [ %best_diff.2.4151, %for.cond6.4.for.cond6.5_crit_edge ]
  %best_rate.2.5155 = phi i32 [ %shr.i.5, %clk_sama7g5_master_best_diff.exit.5.for.cond6.5_crit_edge ], [ %best_rate.2.4150, %for.cond6.4.for.cond6.5_crit_edge ]
  %shr.i.6 = lshr i32 %call2, 6
  %sub.i.6 = sub i32 %2, %shr.i.6
  %19 = tail call i32 @llvm.abs.i32(i32 %sub.i.6, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.2.5156)
  %cmp4.i.6 = icmp sgt i32 %best_diff.2.5156, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.5156, i32 %19)
  %cmp5.not.i.6 = icmp ult i32 %best_diff.2.5156, %19
  %or.cond.i.6 = select i1 %cmp4.i.6, i1 %cmp5.not.i.6, i1 false
  br i1 %or.cond.i.6, label %for.cond6.5.for.cond6.6_crit_edge, label %clk_sama7g5_master_best_diff.exit.6

for.cond6.5.for.cond6.6_crit_edge:                ; preds = %for.cond6.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.6

clk_sama7g5_master_best_diff.exit.6:              ; preds = %for.cond6.5
  %20 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2, ptr %best_parent_rate.i, align 4
  %21 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1, ptr %best_parent_hw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %shr.i.6)
  %tobool9.not.6 = icmp eq i32 %2, %shr.i.6
  br i1 %tobool9.not.6, label %clk_sama7g5_master_best_diff.exit.6.for.end17_crit_edge, label %clk_sama7g5_master_best_diff.exit.6.for.cond6.6_crit_edge

clk_sama7g5_master_best_diff.exit.6.for.cond6.6_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.6

clk_sama7g5_master_best_diff.exit.6.for.end17_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.cond6.6:                                      ; preds = %clk_sama7g5_master_best_diff.exit.6.for.cond6.6_crit_edge, %for.cond6.5.for.cond6.6_crit_edge
  %best_diff.2.6161 = phi i32 [ %19, %clk_sama7g5_master_best_diff.exit.6.for.cond6.6_crit_edge ], [ %best_diff.2.5156, %for.cond6.5.for.cond6.6_crit_edge ]
  %best_rate.2.6160 = phi i32 [ %shr.i.6, %clk_sama7g5_master_best_diff.exit.6.for.cond6.6_crit_edge ], [ %best_rate.2.5155, %for.cond6.5.for.cond6.6_crit_edge ]
  %sub.i.7 = sub i32 %2, %div1.i
  %22 = tail call i32 @llvm.abs.i32(i32 %sub.i.7, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.2.6161)
  %cmp4.i.7 = icmp sgt i32 %best_diff.2.6161, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.6161, i32 %22)
  %cmp5.not.i.7 = icmp ult i32 %best_diff.2.6161, %22
  %or.cond.i.7 = select i1 %cmp4.i.7, i1 %cmp5.not.i.7, i1 false
  br i1 %or.cond.i.7, label %for.cond6.6.for.inc15_crit_edge, label %clk_sama7g5_master_best_diff.exit.7

for.cond6.6.for.inc15_crit_edge:                  ; preds = %for.cond6.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15

clk_sama7g5_master_best_diff.exit.7:              ; preds = %for.cond6.6
  %23 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call2, ptr %best_parent_rate.i, align 4
  %24 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1, ptr %best_parent_hw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %div1.i)
  %tobool9.not.7 = icmp eq i32 %2, %div1.i
  br i1 %tobool9.not.7, label %clk_sama7g5_master_best_diff.exit.7.for.end17_crit_edge, label %clk_sama7g5_master_best_diff.exit.7.for.inc15_crit_edge

clk_sama7g5_master_best_diff.exit.7.for.inc15_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15

clk_sama7g5_master_best_diff.exit.7.for.end17_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

if.then6.i:                                       ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call2, ptr %best_parent_rate.i, align 4
  %26 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call1, ptr %best_parent_hw.i, align 4
  br label %clk_sama7g5_master_best_diff.exit

clk_sama7g5_master_best_diff.exit:                ; preds = %if.then6.i, %for.cond6.preheader.clk_sama7g5_master_best_diff.exit_crit_edge
  %best_rate.2 = phi i32 [ %best_rate.0121, %for.cond6.preheader.clk_sama7g5_master_best_diff.exit_crit_edge ], [ %call2, %if.then6.i ]
  %best_diff.2 = phi i32 [ %best_diff.0122, %for.cond6.preheader.clk_sama7g5_master_best_diff.exit_crit_edge ], [ %3, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.2)
  %tobool9.not = icmp eq i32 %best_diff.2, 0
  br i1 %tobool9.not, label %clk_sama7g5_master_best_diff.exit.for.end17_crit_edge, label %for.cond6

clk_sama7g5_master_best_diff.exit.for.end17_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.inc15:                                        ; preds = %clk_sama7g5_master_best_diff.exit.7.for.inc15_crit_edge, %for.cond6.6.for.inc15_crit_edge, %if.end.for.inc15_crit_edge, %for.body.for.inc15_crit_edge
  %best_rate.4 = phi i32 [ %best_rate.0121, %for.body.for.inc15_crit_edge ], [ %best_rate.0121, %if.end.for.inc15_crit_edge ], [ %div1.i, %clk_sama7g5_master_best_diff.exit.7.for.inc15_crit_edge ], [ %best_rate.2.6160, %for.cond6.6.for.inc15_crit_edge ]
  %best_diff.4 = phi i32 [ %best_diff.0122, %for.body.for.inc15_crit_edge ], [ %best_diff.0122, %if.end.for.inc15_crit_edge ], [ %22, %clk_sama7g5_master_best_diff.exit.7.for.inc15_crit_edge ], [ %best_diff.2.6161, %for.cond6.6.for.inc15_crit_edge ]
  %inc16 = add nuw i32 %i.0123, 1
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  %cmp = icmp ult i32 %inc16, %call
  br i1 %cmp, label %for.inc15.for.body_crit_edge, label %for.inc15.for.end17_crit_edge

for.inc15.for.end17_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end17:                                        ; preds = %for.inc15.for.end17_crit_edge, %clk_sama7g5_master_best_diff.exit.for.end17_crit_edge, %clk_sama7g5_master_best_diff.exit.7.for.end17_crit_edge, %clk_sama7g5_master_best_diff.exit.6.for.end17_crit_edge, %clk_sama7g5_master_best_diff.exit.5.for.end17_crit_edge, %clk_sama7g5_master_best_diff.exit.4.for.end17_crit_edge, %clk_sama7g5_master_best_diff.exit.3.for.end17_crit_edge, %clk_sama7g5_master_best_diff.exit.2.for.end17_crit_edge, %clk_sama7g5_master_best_diff.exit.1.for.end17_crit_edge, %entry.for.end17_crit_edge
  %best_rate.5 = phi i32 [ -2147483648, %entry.for.end17_crit_edge ], [ %best_rate.4, %for.inc15.for.end17_crit_edge ], [ %div1.i, %clk_sama7g5_master_best_diff.exit.7.for.end17_crit_edge ], [ %shr.i.6, %clk_sama7g5_master_best_diff.exit.6.for.end17_crit_edge ], [ %shr.i.5, %clk_sama7g5_master_best_diff.exit.5.for.end17_crit_edge ], [ %shr.i.4, %clk_sama7g5_master_best_diff.exit.4.for.end17_crit_edge ], [ %shr.i.3, %clk_sama7g5_master_best_diff.exit.3.for.end17_crit_edge ], [ %shr.i.2, %clk_sama7g5_master_best_diff.exit.2.for.end17_crit_edge ], [ %shr.i.1, %clk_sama7g5_master_best_diff.exit.1.for.end17_crit_edge ], [ %best_rate.2, %clk_sama7g5_master_best_diff.exit.for.end17_crit_edge ]
  %best_diff.5 = phi i32 [ -2147483648, %entry.for.end17_crit_edge ], [ %best_diff.4, %for.inc15.for.end17_crit_edge ], [ 0, %clk_sama7g5_master_best_diff.exit.7.for.end17_crit_edge ], [ 0, %clk_sama7g5_master_best_diff.exit.6.for.end17_crit_edge ], [ 0, %clk_sama7g5_master_best_diff.exit.5.for.end17_crit_edge ], [ 0, %clk_sama7g5_master_best_diff.exit.4.for.end17_crit_edge ], [ 0, %clk_sama7g5_master_best_diff.exit.3.for.end17_crit_edge ], [ 0, %clk_sama7g5_master_best_diff.exit.2.for.end17_crit_edge ], [ 0, %clk_sama7g5_master_best_diff.exit.1.for.end17_crit_edge ], [ 0, %clk_sama7g5_master_best_diff.exit.for.end17_crit_edge ]
  %chg_pid = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 8
  %27 = ptrtoint ptr %chg_pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chg_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp18 = icmp slt i32 %28, 0
  br i1 %cmp18, label %for.end17.do.body_crit_edge, label %if.end20

for.end17.do.body_crit_edge:                      ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end20:                                         ; preds = %for.end17
  %call22 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %28) #8
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.do.body_crit_edge, label %for.cond26.preheader

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond26.preheader:                             ; preds = %if.end20
  %best_parent_rate.i100 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %best_parent_hw.i101 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  br label %for.body28

for.body28:                                       ; preds = %for.inc43.for.body28_crit_edge, %for.cond26.preheader
  %div.1127 = phi i32 [ 0, %for.cond26.preheader ], [ %inc44, %for.inc43.for.body28_crit_edge ]
  %best_diff.6126 = phi i32 [ %best_diff.5, %for.cond26.preheader ], [ %best_diff.8, %for.inc43.for.body28_crit_edge ]
  %best_rate.6125 = phi i32 [ %best_rate.5, %for.cond26.preheader ], [ %best_rate.8, %for.inc43.for.body28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div.1127)
  %cmp29 = icmp eq i32 %div.1127, 7
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %req, align 4
  %shl = shl i32 %30, %div.1127
  %mul = mul i32 %30, 3
  %storemerge = select i1 %cmp29, i32 %mul, i32 %shl
  %31 = ptrtoint ptr %req_parent to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge, ptr %req_parent, align 4
  %call35 = call i32 @__clk_determine_rate(ptr noundef nonnull %call22, ptr noundef nonnull %req_parent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %for.body28.for.inc43_crit_edge

for.body28.for.inc43_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43

if.end38:                                         ; preds = %for.body28
  %32 = ptrtoint ptr %req_parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %req_parent, align 4
  %div1.i93 = udiv i32 %33, 3
  %shr.i94 = lshr i32 %33, %div.1127
  %tmp_rate.0.i95 = select i1 %cmp29, i32 %div1.i93, i32 %shr.i94
  %34 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %req, align 4
  %sub.i96 = sub i32 %35, %tmp_rate.0.i95
  %36 = call i32 @llvm.abs.i32(i32 %sub.i96, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.6126)
  %cmp4.i97 = icmp sgt i32 %best_diff.6126, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.6126, i32 %36)
  %cmp5.not.i98 = icmp ult i32 %best_diff.6126, %36
  %or.cond.i99 = select i1 %cmp4.i97, i1 %cmp5.not.i98, i1 false
  br i1 %or.cond.i99, label %if.end38.clk_sama7g5_master_best_diff.exit103_crit_edge, label %if.then6.i102

if.end38.clk_sama7g5_master_best_diff.exit103_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_sama7g5_master_best_diff.exit103

if.then6.i102:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %best_parent_rate.i100 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %33, ptr %best_parent_rate.i100, align 4
  %38 = ptrtoint ptr %best_parent_hw.i101 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call22, ptr %best_parent_hw.i101, align 4
  br label %clk_sama7g5_master_best_diff.exit103

clk_sama7g5_master_best_diff.exit103:             ; preds = %if.then6.i102, %if.end38.clk_sama7g5_master_best_diff.exit103_crit_edge
  %best_rate.7 = phi i32 [ %best_rate.6125, %if.end38.clk_sama7g5_master_best_diff.exit103_crit_edge ], [ %tmp_rate.0.i95, %if.then6.i102 ]
  %best_diff.7 = phi i32 [ %best_diff.6126, %if.end38.clk_sama7g5_master_best_diff.exit103_crit_edge ], [ %36, %if.then6.i102 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.7)
  %tobool40.not = icmp eq i32 %best_diff.7, 0
  br i1 %tobool40.not, label %clk_sama7g5_master_best_diff.exit103.do.body_crit_edge, label %clk_sama7g5_master_best_diff.exit103.for.inc43_crit_edge

clk_sama7g5_master_best_diff.exit103.for.inc43_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43

clk_sama7g5_master_best_diff.exit103.do.body_crit_edge: ; preds = %clk_sama7g5_master_best_diff.exit103
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc43:                                        ; preds = %clk_sama7g5_master_best_diff.exit103.for.inc43_crit_edge, %for.body28.for.inc43_crit_edge
  %best_rate.8 = phi i32 [ %best_rate.7, %clk_sama7g5_master_best_diff.exit103.for.inc43_crit_edge ], [ %best_rate.6125, %for.body28.for.inc43_crit_edge ]
  %best_diff.8 = phi i32 [ %best_diff.7, %clk_sama7g5_master_best_diff.exit103.for.inc43_crit_edge ], [ %best_diff.6126, %for.body28.for.inc43_crit_edge ]
  %inc44 = add nuw nsw i32 %div.1127, 1
  %exitcond.not = icmp eq i32 %inc44, 8
  br i1 %exitcond.not, label %for.inc43.do.body_crit_edge, label %for.inc43.for.body28_crit_edge

for.inc43.for.body28_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

for.inc43.do.body_crit_edge:                      ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.inc43.do.body_crit_edge, %clk_sama7g5_master_best_diff.exit103.do.body_crit_edge, %if.end20.do.body_crit_edge, %for.end17.do.body_crit_edge
  %best_rate.9 = phi i32 [ %best_rate.5, %for.end17.do.body_crit_edge ], [ %best_rate.5, %if.end20.do.body_crit_edge ], [ %best_rate.8, %for.inc43.do.body_crit_edge ], [ %best_rate.7, %clk_sama7g5_master_best_diff.exit103.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_sama7g5_master_determine_rate.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_sama7g5_master_determine_rate, %if.then51)) #8
          to label %do.end [label %if.then51], !srcloc !72

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %39 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %best_parent_hw, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk, align 4
  %call52 = call ptr @__clk_get_name(ptr noundef %42) #8
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %43 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %best_parent_rate, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_sama7g5_master_determine_rate.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %best_rate.9, ptr noundef %call52, i32 noundef %44) #8
  br label %do.end

do.end:                                           ; preds = %if.then51, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.9)
  %cmp54 = icmp slt i32 %best_rate.9, 0
  br i1 %cmp54, label %do.end.cleanup_crit_edge, label %if.end56

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end56:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %best_rate.9, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -22, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_parent) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %index to i32
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp.not = icmp ugt i32 %call, %conv
  br i1 %cmp.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %mux_table = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %mux_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_table, align 4
  %call10 = tail call i32 @clk_mux_index_to_val(ptr noundef %3, i32 noundef 0, i8 noundef zeroext %index) #8
  %conv11 = trunc i32 %call10 to i8
  %parent = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 10
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv11, ptr %parent, align 1
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_sama7g5_master_get_parent(ptr noundef %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %mux_table = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %mux_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_table, align 4
  %parent = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 10
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parent, align 1
  %conv7 = zext i8 %5 to i32
  %call8 = tail call i32 @clk_mux_val_to_index(ptr noundef %hw, ptr noundef %3, i32 noundef 0, i32 noundef %conv7) #8
  %conv9 = trunc i32 %call8 to i8
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call3) #8
  ret i8 %conv9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div231 = lshr i32 %rate, 1
  %add = add i32 %div231, %parent_rate
  %div3 = udiv i32 %add, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div3)
  %cmp = icmp ult i32 %div3, 65
  %0 = tail call i32 @llvm.ctpop.i32(i32 %div3), !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %tobool.not = icmp ult i32 %0, 2
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div3)
  %cmp4 = icmp eq i32 %div3, 3
  br i1 %cmp4, label %if.end.do.body11_crit_edge, label %if.else

if.end.do.body11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %rate)
  %tobool6.not = icmp ult i32 %add, %rate
  br i1 %tobool6.not, label %if.else.do.body11_crit_edge, label %if.then7

if.else.do.body11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 @llvm.cttz.i32(i32 %div3, i1 true), !range !67
  %phi.cast = trunc i32 %1 to i8
  br label %do.body11

do.body11:                                        ; preds = %if.then7, %if.else.do.body11_crit_edge, %if.end.do.body11_crit_edge
  %div.0 = phi i8 [ %phi.cast, %if.then7 ], [ 0, %if.else.do.body11_crit_edge ], [ 7, %if.end.do.body11_crit_edge ]
  %lock = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %div18 = getelementptr inbounds %struct.clk_master, ptr %hw, i32 0, i32 11
  %4 = ptrtoint ptr %div18 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %div.0, ptr %div18, align 2
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call14) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_sama7g5_master_set(ptr nocapture noundef readonly %master) unnamed_addr #3 align 64 {
entry:
  %status.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !64
  %parent1 = getelementptr inbounds %struct.clk_master, ptr %master, i32 0, i32 10
  %1 = ptrtoint ptr %parent1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %parent1, align 1
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %div2 = getelementptr inbounds %struct.clk_master, ptr %master, i32 0, i32 11
  %3 = ptrtoint ptr %div2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %div2, align 2
  %conv3 = zext i8 %4 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %lock = getelementptr inbounds %struct.clk_master, ptr %master, i32 0, i32 2
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %regmap = getelementptr inbounds %struct.clk_master, ptr %master, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.clk_master, ptr %master, i32 0, i32 9
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id, align 4
  %11 = and i8 %10, 15
  %and = zext i8 %11 to i32
  %call11 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 48, i32 noundef %and) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_read(ptr noundef %13, i32 noundef 48, ptr noundef nonnull %val) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id, align 4
  %18 = and i8 %17, 15
  %and23 = zext i8 %18 to i32
  %or18 = or i32 %shl, %shl4
  %or20 = or i32 %or18, %and23
  %or24 = or i32 %or20, 268435584
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 48, i32 noundef 270469007, i32 noundef %or24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and26 = lshr i32 %20, 16
  %shr = and i32 %and26, 31
  %21 = ptrtoint ptr %parent1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %parent1, align 1
  %conv282 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv282)
  %cmp29.not3 = icmp eq i32 %shr, %conv282
  br i1 %cmp29.not3, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %do.end36.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %status.i, align 4, !annotation !64
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i1 = call i32 @regmap_read(ptr noundef %27, i32 noundef 104, ptr noundef nonnull %status.i) #8
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status.i, align 4
  %and.i = and i32 %29, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %tobool1.i.not, label %do.end36, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end36:                                         ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !74
  %30 = ptrtoint ptr %parent1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %parent1, align 1
  %conv28 = zext i8 %31 to i32
  %cmp29.not = icmp eq i32 %shr, %conv28
  br i1 %cmp29.not, label %do.end36.while.end_crit_edge, label %do.end36.land.rhs_crit_edge

do.end36.land.rhs_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.end36.while.end_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end36.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %32 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !50, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @at91rm9200_master_layout, !1, !"at91rm9200_master_layout", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-master.c", i32 964, i32 32}
!2 = !{ptr @at91sam9x5_master_layout, !3, !"at91sam9x5_master_layout", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/clk-master.c", i32 970, i32 32}
!4 = !{ptr @master_div, !5, !"master_div", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/clk-master.c", i32 44, i32 27}
!6 = !{ptr @master_pres_ops, !7, !"master_pres_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/at91/clk-master.c", i32 549, i32 29}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/clk-master.c", i32 539, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @clk_master_pres_restore_context._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @clk_master_pres_restore_context._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @master_pres_ops_chg, !15, !"master_pres_ops_chg", i1 false, i1 false}
!15 = !{!"../drivers/clk/at91/clk-master.c", i32 558, i32 29}
!16 = !{ptr @master_div_ops, !17, !"master_div_ops", i1 false, i1 false}
!17 = !{!"../drivers/clk/at91/clk-master.c", i32 153, i32 29}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/at91/clk-master.c", i32 150, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @clk_master_div_restore_context._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @clk_master_div_restore_context._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/at91/clk-master.c", i32 106, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @clk_master_div_recalc_rate._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @clk_master_div_recalc_rate._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/at91/clk-master.c", i32 108, i32 3}
!30 = !{ptr @clk_master_div_recalc_rate._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @clk_master_div_recalc_rate._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @master_div_ops_chg, !33, !"master_div_ops_chg", i1 false, i1 false}
!33 = !{!"../drivers/clk/at91/clk-master.c", i32 240, i32 29}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/at91/clk-master.c", i32 237, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @clk_master_div_restore_context_chg._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @clk_master_div_restore_context_chg._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/at91/clk-master.c", i32 199, i32 3}
!41 = !{ptr @clk_master_div_set._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @clk_master_div_set._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @clk_master_div_set._entry.13, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/clk/at91/clk-master.c", i32 201, i32 3}
!45 = !{ptr @clk_master_div_set._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @clk_master_div_notifier, !47, !"clk_master_div_notifier", i1 false, i1 false}
!47 = !{!"../drivers/clk/at91/clk-master.c", i32 349, i32 30}
!48 = !{ptr @sama7g5_master_ops, !49, !"sama7g5_master_ops", i1 false, i1 false}
!49 = !{!"../drivers/clk/at91/clk-master.c", i32 894, i32 29}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/at91/clk-master.c", i32 742, i32 2}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @clk_sama7g5_master_determine_rate.__UNIQUE_ID_ddebug167, !51, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{i64 2152697395}
!66 = !{i64 2152697237}
!67 = !{i32 0, i32 33}
!68 = !{i64 2152738322}
!69 = !{i64 2152738164}
!70 = !{i64 2152712988}
!71 = !{i64 2152712830}
!72 = !{i64 2148940232, i64 2148940237, i64 2148940250, i64 2148940294, i64 2148940328, i64 2148940349}
!73 = !{i64 2152780067}
!74 = !{i64 2152779909}
