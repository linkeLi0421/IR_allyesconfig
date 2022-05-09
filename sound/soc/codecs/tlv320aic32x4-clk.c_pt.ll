; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tlv320aic32x4-clk.c_pt.bc'
source_filename = "../sound/soc/codecs/tlv320aic32x4-clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+aic32x4_register_clocks\22, \22a\22\09"
module asm "\09.weak\09__crc_aic32x4_register_clocks\09\09\09\09"
module asm "\09.long\09__crc_aic32x4_register_clocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aic32x4_register_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22aic32x4_register_clocks\22\09\09\09\09\09"
module asm "__kstrtabns_aic32x4_register_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.aic32x4_clkdesc = type { ptr, ptr, i32, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.clk_aic32x4 = type { %struct.clk_hw, ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bclk\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"din\00", [28 x i8] zeroinitializer }, align 32
@aic32x4_clkdesc_array = internal global { [7 x %struct.aic32x4_clkdesc], [52 x i8] } { [7 x %struct.aic32x4_clkdesc] [%struct.aic32x4_clkdesc { ptr @.str.3, ptr @.compoundliteral, i32 4, ptr @aic32x4_pll_ops, i32 0 }, %struct.aic32x4_clkdesc { ptr @.str.5, ptr @.compoundliteral.6, i32 4, ptr @aic32x4_codec_clkin_ops, i32 0 }, %struct.aic32x4_clkdesc { ptr @.str.7, ptr @.compoundliteral.8, i32 1, ptr @aic32x4_div_ops, i32 11 }, %struct.aic32x4_clkdesc { ptr @.str.9, ptr @.compoundliteral.10, i32 1, ptr @aic32x4_div_ops, i32 12 }, %struct.aic32x4_clkdesc { ptr @.str.11, ptr @.compoundliteral.12, i32 1, ptr @aic32x4_div_ops, i32 18 }, %struct.aic32x4_clkdesc { ptr @.str.13, ptr @.compoundliteral.14, i32 1, ptr @aic32x4_div_ops, i32 19 }, %struct.aic32x4_clkdesc { ptr @.str.15, ptr @.compoundliteral.16, i32 4, ptr @aic32x4_bdiv_ops, i32 30 }], [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_aic32x4_register_clocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_aic32x4_register_clocks = external dso_local constant [0 x i8], align 1
@__ksymtab_aic32x4_register_clocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aic32x4_register_clocks to i32), ptr @__kstrtab_aic32x4_register_clocks, ptr @__kstrtabns_aic32x4_register_clocks }, section "___ksymtab_gpl+aic32x4_register_clocks", align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str, ptr @.str.1, ptr @.str.2], [16 x i8] zeroinitializer }, align 32
@aic32x4_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_aic32x4_pll_prepare, ptr @clk_aic32x4_pll_unprepare, ptr @clk_aic32x4_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_aic32x4_pll_recalc_rate, ptr @clk_aic32x4_pll_round_rate, ptr null, ptr @clk_aic32x4_pll_set_parent, ptr @clk_aic32x4_pll_get_parent, ptr @clk_aic32x4_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec_clkin\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str, ptr @.str.1, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@aic32x4_codec_clkin_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_aic32x4_codec_clkin_set_parent, ptr @clk_aic32x4_codec_clkin_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ndac\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.5], [28 x i8] zeroinitializer }, align 32
@aic32x4_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_aic32x4_div_prepare, ptr @clk_aic32x4_div_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_aic32x4_div_recalc_rate, ptr @clk_aic32x4_div_round_rate, ptr null, ptr null, ptr null, ptr @clk_aic32x4_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdac\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nadc\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.5], [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"madc\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.11], [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bdiv\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13], [16 x i8] zeroinitializer }, align 32
@aic32x4_bdiv_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_aic32x4_div_prepare, ptr @clk_aic32x4_div_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_aic32x4_div_recalc_rate, ptr @clk_aic32x4_div_round_rate, ptr null, ptr @clk_aic32x4_bdiv_set_parent, ptr @clk_aic32x4_bdiv_get_parent, ptr @clk_aic32x4_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 481, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 481, i32 42 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 481, i32 50 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"aic32x4_clkdesc_array\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 389, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 483, i32 50 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 393, i32 23 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"aic32x4_pll_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 264, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 399, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"aic32x4_codec_clkin_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 294, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 407, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"aic32x4_div_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 353, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 414, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 421, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 428, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 435, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"aic32x4_bdiv_ops\00", align 1
@___asan_gen_.70 = private constant [40 x i8] c"../sound/soc/codecs/tlv320aic32x4-clk.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 379, i32 29 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_aic32x4_register_clocks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aic32x4_clkdesc_array, ptr @.str.3, ptr @.str.4, ptr @.compoundliteral, ptr @aic32x4_pll_ops, ptr @.str.5, ptr @.compoundliteral.6, ptr @aic32x4_codec_clkin_ops, ptr @.str.7, ptr @.compoundliteral.8, ptr @aic32x4_div_ops, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @aic32x4_bdiv_ops], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_clkdesc_array to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_codec_clkin_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_bdiv_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aic32x4_register_clocks(ptr noundef %dev, ptr noundef %mclk_name) #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral = alloca [4 x ptr], align 4
  %.compoundliteral3 = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mclk_name, ptr %.compoundliteral, align 4
  %arrayinit.element = getelementptr inbounds ptr, ptr %.compoundliteral, i32 1
  %1 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %arrayinit.element, align 4
  %arrayinit.element1 = getelementptr inbounds ptr, ptr %.compoundliteral, i32 2
  %2 = ptrtoint ptr %arrayinit.element1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %arrayinit.element1, align 4
  %arrayinit.element2 = getelementptr inbounds ptr, ptr %.compoundliteral, i32 3
  %3 = ptrtoint ptr %arrayinit.element2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %arrayinit.element2, align 4
  store ptr %.compoundliteral, ptr getelementptr inbounds ([7 x %struct.aic32x4_clkdesc], ptr @aic32x4_clkdesc_array, i32 0, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %.compoundliteral3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mclk_name, ptr %.compoundliteral3, align 4
  %arrayinit.element5 = getelementptr inbounds ptr, ptr %.compoundliteral3, i32 1
  %5 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %arrayinit.element5, align 4
  %arrayinit.element6 = getelementptr inbounds ptr, ptr %.compoundliteral3, i32 2
  %6 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %arrayinit.element6, align 4
  %arrayinit.element7 = getelementptr inbounds ptr, ptr %.compoundliteral3, i32 3
  %7 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.3, ptr %arrayinit.element7, align 4
  store ptr %.compoundliteral3, ptr getelementptr inbounds ([7 x %struct.aic32x4_clkdesc], ptr @aic32x4_clkdesc_array, i32 0, i32 1, i32 1), align 4
  %8 = getelementptr inbounds i8, ptr %init.i, i32 12
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %ops1.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %parent_names3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents4.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %aic32x4_register_clk.exit.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %aic32x4_register_clk.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x %struct.aic32x4_clkdesc], ptr @aic32x4_clkdesc_array, i32 0, i32 %i.012
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.dev_name.exit.i_crit_edge

for.body.dev_name.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %for.body.dev_name.exit.i_crit_edge ]
  %ops.i = getelementptr [7 x %struct.aic32x4_clkdesc], ptr @aic32x4_clkdesc_array, i32 0, i32 %i.012, i32 3
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %16 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %ops1.i, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %init.i, align 4
  %parent_names.i = getelementptr [7 x %struct.aic32x4_clkdesc], ptr @aic32x4_clkdesc_array, i32 0, i32 %i.012, i32 1
  %20 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent_names.i, align 4
  %22 = ptrtoint ptr %parent_names3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %parent_names3.i, align 4
  %num_parents.i = getelementptr [7 x %struct.aic32x4_clkdesc], ptr @aic32x4_clkdesc_array, i32 0, i32 %i.012, i32 2
  %23 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_parents.i, align 4
  %conv.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %num_parents4.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %num_parents4.i, align 4
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags.i, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %dev_name.exit.i.aic32x4_register_clk.exit_crit_edge, label %if.end.i

dev_name.exit.i.aic32x4_register_clk.exit_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aic32x4_register_clk.exit

if.end.i:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev7.i = getelementptr inbounds %struct.clk_aic32x4, ptr %call.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %dev7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %dev7.i, align 4
  %init8.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %init8.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %init.i, ptr %init8.i, align 4
  %call9.i = call ptr @dev_get_regmap(ptr noundef %dev, ptr noundef null) #6
  %regmap.i = getelementptr inbounds %struct.clk_aic32x4, ptr %call.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i, ptr %regmap.i, align 4
  %reg.i = getelementptr [7 x %struct.aic32x4_clkdesc], ptr @aic32x4_clkdesc_array, i32 0, i32 %i.012, i32 4
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg.i, align 4
  %reg10.i = getelementptr inbounds %struct.clk_aic32x4, ptr %call.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %reg10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %reg10.i, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %call13.i = call i32 @clk_hw_register_clkdev(ptr noundef nonnull %call.i.i, ptr noundef %34, ptr noundef %retval.0.i.i) #6
  %call15.i = call ptr @devm_clk_register(ptr noundef %dev, ptr noundef nonnull %call.i.i) #6
  br label %aic32x4_register_clk.exit

aic32x4_register_clk.exit:                        ; preds = %if.end.i, %dev_name.exit.i.aic32x4_register_clk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %aic32x4_register_clk.exit.for.body_crit_edge

aic32x4_register_clk.exit.for.body_crit_edge:     ; preds = %aic32x4_register_clk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %aic32x4_register_clk.exit
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_pll_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 5, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_aic32x4_pll_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 5, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_pll_is_prepared(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !43
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = lshr i32 %4, 7
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !43
  %regmap.i = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge, label %if.end.i

entry.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_aic32x4_pll_get_muldiv.exit.thread

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %5 = trunc i32 %4 to i16
  %conv.i = and i16 %5, 15
  %6 = lshr i32 %4, 4
  %conv2.i = and i32 %6, 7
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge, label %if.end8.i

if.end.i.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_aic32x4_pll_get_muldiv.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call11.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 7, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end8.i.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge, label %if.end15.i

if.end8.i.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_aic32x4_pll_get_muldiv.exit.thread

if.end15.i:                                       ; preds = %if.end8.i
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 8, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end15.i.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge, label %if.end

if.end15.i.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_aic32x4_pll_get_muldiv.exit.thread

clk_aic32x4_pll_get_muldiv.exit.thread:           ; preds = %if.end15.i.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge, %if.end8.i.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge, %if.end.i.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge, %entry.clk_aic32x4_pll_get_muldiv.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end15.i
  %conv16.i = shl i32 %14, 8
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %conv25.i = or i32 %18, %conv16.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %conv.i4 = zext i32 %parent_rate to i64
  %conv1.i = zext i16 %conv.i to i64
  %mul.i = mul nuw nsw i64 %conv1.i, %conv.i4
  %conv2.i7 = and i32 %10, 255
  %mul3.i = mul nuw nsw i32 %conv2.i7, 10000
  %conv4.i = and i32 %conv25.i, 65535
  %add.i = add nuw nsw i32 %conv4.i, %mul3.i
  %19 = zext i32 %add.i to i64
  %mul6.i = mul nuw nsw i64 %mul.i, %19
  %mul8.i = mul nuw nsw i32 %conv2.i, 10000
  %20 = zext i32 %mul8.i to i64
  %add10.i = add nsw i64 %20, -1
  %sub.i = add nsw i64 %mul6.i, %add10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp182.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp182.i, label %if.then186.i, label %if.else192.i, !prof !44

if.then186.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv187.i = trunc i64 %sub.i to i32
  %div190.i = udiv i32 %conv187.i, %mul8.i
  br label %cleanup

if.else192.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul8.i, i64 %sub.i) #9, !srcloc !45
  %asmresult1.i.i = extractvalue { i64, i64 } %21, 1
  %extract.t308.i = trunc i64 %asmresult1.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else192.i, %if.then186.i, %clk_aic32x4_pll_get_muldiv.exit.thread
  %retval.0 = phi i32 [ 0, %clk_aic32x4_pll_get_muldiv.exit.thread ], [ %div190.i, %if.then186.i ], [ %extract.t308.i, %if.else192.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_pll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %div.i = udiv i32 %1, 20000000
  %2 = trunc i32 %div.i to i8
  %conv.i = add nuw i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %2)
  %cmp.i = icmp ugt i8 %2, 7
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv4.i = zext i32 %rate to i64
  %conv6.i = zext i8 %conv.i to i64
  %mul.i = mul nuw nsw i64 %conv4.i, 10000
  %mul7.i = mul nuw nsw i64 %mul.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul7.i)
  %cmp179.i = icmp ult i64 %mul7.i, 4294967296
  br i1 %cmp179.i, label %if.then183.i, label %if.else189.i, !prof !44

if.then183.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv184.i = trunc i64 %mul7.i to i32
  %div187.i = udiv i32 %conv184.i, %1
  %conv188.i = zext i32 %div187.i to i64
  br label %if.end193.i

if.else189.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul7.i) #9, !srcloc !45
  %asmresult1.i.i = extractvalue { i64, i64 } %3, 1
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.else189.i, %if.then183.i
  %multiplier.0.i = phi i64 [ %conv188.i, %if.then183.i ], [ %asmresult1.i.i, %if.else189.i ]
  %conv195.i = trunc i64 %multiplier.0.i to i32
  %div196.i = udiv i32 %conv195.i, 640000
  %4 = trunc i32 %div196.i to i16
  %conv198.i = add nuw nsw i16 %4, 1
  %conv200.i = zext i16 %conv198.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %4)
  %cmp201.i = icmp ugt i16 %4, 3
  br i1 %cmp201.i, label %if.end193.i.cleanup_crit_edge, label %if.else406.i

if.end193.i.cleanup_crit_edge:                    ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else406.i:                                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %multiplier.0.i)
  %cmp408.i = icmp ult i64 %multiplier.0.i, 4294967296
  br i1 %cmp408.i, label %if.then416.i, label %if.else422.i, !prof !44

if.then416.i:                                     ; preds = %if.else406.i
  call void @__sanitizer_cov_trace_pc() #8
  %div420.i = udiv i32 %conv195.i, %conv200.i
  %conv421.i = zext i32 %div420.i to i64
  br label %if.end426.i

if.else422.i:                                     ; preds = %if.else406.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv200.i, i64 %multiplier.0.i) #9, !srcloc !45
  %asmresult1.i629.i = extractvalue { i64, i64 } %5, 1
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else422.i, %if.then416.i
  %multiplier.1.i = phi i64 [ %conv421.i, %if.then416.i ], [ %asmresult1.i629.i, %if.else422.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000, i64 %multiplier.1.i)
  %cmp428.i = icmp ult i64 %multiplier.1.i, 10000
  br i1 %cmp428.i, label %if.end426.i.cleanup_crit_edge, label %if.end

if.end426.i.cleanup_crit_edge:                    ; preds = %if.end426.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end426.i
  %conv432.i = trunc i64 %multiplier.1.i to i32
  %conv.i4 = zext i32 %1 to i64
  %conv1.i = zext i16 %conv198.i to i64
  %mul.i6 = mul nuw nsw i64 %conv1.i, %conv.i4
  %urem = urem i32 %conv432.i, 2560000
  %6 = zext i32 %urem to i64
  %mul6.i = mul nuw nsw i64 %mul.i6, %6
  %conv7.i = zext i8 %conv.i to i32
  %mul8.i = mul nuw nsw i32 %conv7.i, 10000
  %7 = zext i32 %mul8.i to i64
  %add10.i = add nsw i64 %7, -1
  %sub.i = add nuw nsw i64 %mul6.i, %add10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp182.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp182.i, label %if.then186.i, label %if.else192.i, !prof !44

if.then186.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv187.i = trunc i64 %sub.i to i32
  %div190.i = udiv i32 %conv187.i, %mul8.i
  br label %cleanup

if.else192.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul8.i, i64 %sub.i) #9, !srcloc !45
  %asmresult1.i.i52 = extractvalue { i64, i64 } %8, 1
  %extract.t308.i = trunc i64 %asmresult1.i.i52 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else192.i, %if.then186.i, %if.end426.i.cleanup_crit_edge, %if.end193.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div190.i, %if.then186.i ], [ %extract.t308.i, %if.else192.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end193.i.cleanup_crit_edge ], [ 0, %if.end426.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_pll_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %index to i32
  %shl = shl nuw nsw i32 %conv, 2
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 12, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_aic32x4_pll_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !43
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %val) #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 2
  %conv = and i8 %6, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div.i = udiv i32 %parent_rate, 20000000
  %0 = trunc i32 %div.i to i8
  %conv.i = add nuw i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %0)
  %cmp.i = icmp ugt i8 %0, 7
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv4.i = zext i32 %rate to i64
  %conv6.i = zext i8 %conv.i to i64
  %mul.i = mul nuw nsw i64 %conv4.i, 10000
  %mul7.i = mul nuw nsw i64 %mul.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul7.i)
  %cmp179.i = icmp ult i64 %mul7.i, 4294967296
  br i1 %cmp179.i, label %if.then183.i, label %if.else189.i, !prof !44

if.then183.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv184.i = trunc i64 %mul7.i to i32
  %div187.i = udiv i32 %conv184.i, %parent_rate
  %conv188.i = zext i32 %div187.i to i64
  br label %if.end193.i

if.else189.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %mul7.i) #9, !srcloc !45
  %asmresult1.i.i = extractvalue { i64, i64 } %1, 1
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.else189.i, %if.then183.i
  %multiplier.0.i = phi i64 [ %conv188.i, %if.then183.i ], [ %asmresult1.i.i, %if.else189.i ]
  %conv195.i = trunc i64 %multiplier.0.i to i32
  %div196.i = udiv i32 %conv195.i, 640000
  %conv198.i = add nuw nsw i32 %div196.i, 1
  %2 = and i32 %div196.i, 8188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp201.i.not = icmp eq i32 %2, 0
  br i1 %cmp201.i.not, label %if.else406.i, label %if.end193.i.cleanup_crit_edge

if.end193.i.cleanup_crit_edge:                    ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else406.i:                                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %multiplier.0.i)
  %cmp408.i = icmp ult i64 %multiplier.0.i, 4294967296
  br i1 %cmp408.i, label %if.then416.i, label %if.else422.i, !prof !44

if.then416.i:                                     ; preds = %if.else406.i
  call void @__sanitizer_cov_trace_pc() #8
  %div420.i = udiv i32 %conv195.i, %conv198.i
  %conv421.i = zext i32 %div420.i to i64
  br label %if.end426.i

if.else422.i:                                     ; preds = %if.else406.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv198.i, i64 %multiplier.0.i) #9, !srcloc !45
  %asmresult1.i629.i = extractvalue { i64, i64 } %3, 1
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else422.i, %if.then416.i
  %multiplier.1.i = phi i64 [ %conv421.i, %if.then416.i ], [ %asmresult1.i629.i, %if.else422.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000, i64 %multiplier.1.i)
  %cmp428.i = icmp ult i64 %multiplier.1.i, 10000
  br i1 %cmp428.i, label %if.end426.i.cleanup_crit_edge, label %if.end

if.end426.i.cleanup_crit_edge:                    ; preds = %if.end426.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end426.i
  %conv432.i = trunc i64 %multiplier.1.i to i32
  %conv432.i.frozen = freeze i32 %conv432.i
  %div433.i = udiv i32 %conv432.i.frozen, 10000
  %4 = mul i32 %div433.i, 10000
  %rem436.i.decomposed = sub i32 %conv432.i.frozen, %4
  %regmap.i = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 5, i32 noundef 15, i32 noundef %conv198.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i10 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i10, label %if.end.cleanup_crit_edge, label %if.end.i12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i12:                                       ; preds = %if.end
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %conv3.i = zext i8 %conv.i to i32
  %shl.i11 = shl nuw nsw i32 %conv3.i, 4
  %call.i48.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 5, i32 noundef 112, i32 noundef %shl.i11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %cmp5.i = icmp slt i32 %call.i48.i, 0
  br i1 %cmp5.i, label %if.end.i12.cleanup_crit_edge, label %if.end8.i

if.end.i12.cleanup_crit_edge:                     ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i12
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %conv10.i = and i32 %div433.i, 255
  %call11.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 6, i32 noundef %conv10.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i14 = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i14, label %if.end8.i.cleanup_crit_edge, label %if.end15.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.i:                                       ; preds = %if.end8.i
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %13 = lshr i32 %rem436.i.decomposed, 8
  %call18.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 7, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end15.i.cleanup_crit_edge, label %clk_aic32x4_pll_set_muldiv.exit

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

clk_aic32x4_pll_set_muldiv.exit:                  ; preds = %if.end15.i
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %16 = and i32 %rem436.i.decomposed, 255
  %call26.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 8, i32 noundef %16) #6
  %17 = tail call i32 @llvm.smin.i32(i32 %call26.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call26.i)
  %tobool.not = icmp sgt i32 %call26.i, -1
  br i1 %tobool.not, label %if.end3, label %clk_aic32x4_pll_set_muldiv.exit.cleanup_crit_edge

clk_aic32x4_pll_set_muldiv.exit.cleanup_crit_edge: ; preds = %clk_aic32x4_pll_set_muldiv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %clk_aic32x4_pll_set_muldiv.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %clk_aic32x4_pll_set_muldiv.exit.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end426.i.cleanup_crit_edge, %if.end193.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %17, %clk_aic32x4_pll_set_muldiv.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end193.i.cleanup_crit_edge ], [ -22, %if.end426.i.cleanup_crit_edge ], [ %call18.i, %if.end15.i.cleanup_crit_edge ], [ %call11.i, %if.end8.i.cleanup_crit_edge ], [ %call.i48.i, %if.end.i12.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_codec_clkin_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %index to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 3, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_aic32x4_codec_clkin_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !43
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %val) #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = trunc i32 %4 to i8
  %conv = and i8 %5, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_div_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_aic32x4_div_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_div_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !43
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 127
  %add = add i32 %parent_rate, -1
  %sub = add i32 %add, %and
  %div2 = udiv i32 %sub, %and
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %div2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_aic32x4_div_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %rate
  %div = udiv i32 %sub, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div)
  %cmp = icmp ugt i32 %div, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub2 = add i32 %add, %div
  %div3 = udiv i32 %sub2, %div
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_div_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %rate, -1
  %sub = add i32 %add, %parent_rate
  %div1 = udiv i32 %sub, %rate
  %conv2 = and i32 %div1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv2)
  %cmp = icmp ugt i32 %conv2, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 127, i32 noundef %conv2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aic32x4_bdiv_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %index to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 29, i32 noundef 3, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_aic32x4_bdiv_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !43
  %regmap = getelementptr inbounds %struct.clk_aic32x4, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 29, ptr noundef nonnull %val) #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = trunc i32 %4 to i8
  %conv = and i8 %5, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 481, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 481, i32 42}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 481, i32 50}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 483, i32 50}
!8 = !{ptr @__ksymtab_aic32x4_register_clocks, !9, !"__ksymtab_aic32x4_register_clocks", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 490, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 393, i32 23}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 399, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 407, i32 11}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 414, i32 11}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 421, i32 11}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 428, i32 11}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 435, i32 11}
!24 = !{ptr @aic32x4_clkdesc_array, !25, !"aic32x4_clkdesc_array", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 389, i32 31}
!26 = !{ptr @aic32x4_pll_ops, !27, !"aic32x4_pll_ops", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 264, i32 29}
!28 = !{ptr @aic32x4_codec_clkin_ops, !29, !"aic32x4_codec_clkin_ops", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 294, i32 29}
!30 = !{ptr @aic32x4_div_ops, !31, !"aic32x4_div_ops", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 353, i32 29}
!32 = !{ptr @aic32x4_bdiv_ops, !33, !"aic32x4_bdiv_ops", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/tlv320aic32x4-clk.c", i32 379, i32 29}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2148951895, i64 2148952175, i64 2148952509, i64 2148952843}
