; ModuleID = '/llk/IR_all_yes/drivers/clk/berlin/bg2.c_pt.bc'
source_filename = "../drivers/clk/berlin/bg2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.berlin2_pll_map = type { [16 x i8], i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.berlin2_div_data = type { ptr, ptr, i32, i32, %struct.berlin2_div_map, i8 }
%struct.berlin2_div_map = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.berlin2_gate_data = type { ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__of_table_berlin2_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @berlin2_clock_setup }, section "__clk_of_table", align 4
@clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gbase = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@clk_names = internal global { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [44 x i8] zeroinitializer }, align 32
@bg2_pll_map = internal constant %struct.berlin2_pll_map { [16 x i8] c"\0A\0F\14\19\1E(2<P\00\00\00\00\00\00\00", i8 10, i8 6, i8 1, i8 7 }, section ".init.rodata", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"marvell,berlin2-global-register\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"avpll_vcoA\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"avpll_vcoB\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll_byp\00", [21 x i8] zeroinitializer }, align 32
@lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mempll_byp\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpupll_byp\00", [21 x i8] zeroinitializer }, align 32
@bg2_divs = internal constant [25 x %struct.berlin2_div_data] [%struct.berlin2_div_data { ptr @.str.41, ptr @.compoundliteral, i32 6, i32 8, %struct.berlin2_div_map { i16 340, i16 356, i16 340, i16 356, i16 356, i16 336, i8 0, i8 3, i8 3, i8 4, i8 5, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.7, ptr @.compoundliteral.42, i32 5, i32 0, %struct.berlin2_div_map { i16 340, i16 356, i16 340, i16 356, i16 356, i16 0, i8 6, i8 6, i8 9, i8 7, i8 8, i8 0 }, i8 2 }, %struct.berlin2_div_data { ptr @.str.43, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 340, i16 356, i16 340, i16 356, i16 356, i16 336, i8 17, i8 12, i8 20, i8 13, i8 14, i8 16 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.44, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 340, i16 356, i16 340, i16 356, i16 356, i16 336, i8 23, i8 15, i8 26, i8 16, i8 17, i8 1 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.45, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 340, i16 356, i16 344, i16 356, i16 356, i16 336, i8 29, i8 18, i8 0, i8 19, i8 20, i8 4 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.46, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 344, i16 356, i16 344, i16 356, i16 356, i16 336, i8 3, i8 21, i8 6, i8 22, i8 23, i8 5 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.47, ptr @default_parent_ids, i32 6, i32 8, %struct.berlin2_div_map { i16 344, i16 356, i16 344, i16 356, i16 356, i16 336, i8 9, i8 24, i8 12, i8 25, i8 26, i8 6 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.48, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 344, i16 356, i16 344, i16 356, i16 356, i16 336, i8 15, i8 27, i8 18, i8 28, i8 29, i8 2 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.49, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 344, i16 356, i16 344, i16 356, i16 360, i16 336, i8 21, i8 30, i8 24, i8 31, i8 0, i8 3 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.50, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 344, i16 360, i16 348, i16 360, i16 360, i16 336, i8 27, i8 1, i8 0, i8 2, i8 3, i8 18 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.51, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 348, i16 360, i16 348, i16 360, i16 360, i16 336, i8 3, i8 4, i8 6, i8 5, i8 6, i8 21 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.52, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 348, i16 360, i16 348, i16 360, i16 360, i16 336, i8 9, i8 7, i8 12, i8 8, i8 9, i8 20 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.53, ptr @.compoundliteral.54, i32 1, i32 0, %struct.berlin2_div_map { i16 0, i16 0, i16 348, i16 360, i16 360, i16 336, i8 0, i8 0, i8 17, i8 10, i8 11, i8 22 }, i8 1 }, %struct.berlin2_div_data { ptr @.str.55, ptr @.compoundliteral.56, i32 1, i32 0, %struct.berlin2_div_map { i16 0, i16 0, i16 348, i16 360, i16 360, i16 336, i8 0, i8 0, i8 20, i8 14, i8 15, i8 24 }, i8 1 }, %struct.berlin2_div_data { ptr @.str.57, ptr @.compoundliteral.58, i32 1, i32 0, %struct.berlin2_div_map { i16 0, i16 0, i16 348, i16 360, i16 360, i16 336, i8 0, i8 0, i8 23, i8 16, i8 17, i8 25 }, i8 1 }, %struct.berlin2_div_data { ptr @.str.59, ptr @.compoundliteral.60, i32 1, i32 0, %struct.berlin2_div_map { i16 0, i16 0, i16 352, i16 360, i16 360, i16 336, i8 0, i8 0, i8 0, i8 12, i8 13, i8 23 }, i8 1 }, %struct.berlin2_div_data { ptr @.str.61, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 556, i16 556, i16 556, i16 556, i16 556, i16 556, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.62, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 560, i16 560, i16 560, i16 560, i16 560, i16 560, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.63, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 564, i16 564, i16 564, i16 564, i16 564, i16 564, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.64, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 568, i16 568, i16 568, i16 568, i16 568, i16 568, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.65, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 572, i16 572, i16 572, i16 572, i16 572, i16 572, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.66, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 576, i16 576, i16 576, i16 576, i16 576, i16 576, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.67, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.68, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 588, i16 588, i16 588, i16 588, i16 588, i16 588, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.69, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 592, i16 592, i16 592, i16 592, i16 592, i16 592, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }], section ".init.rodata", align 4
@bg2_gates = internal unnamed_addr constant [15 x %struct.berlin2_gate_data] [%struct.berlin2_gate_data { ptr @.str.70, ptr @.str.47, i8 7, i32 0 }, %struct.berlin2_gate_data { ptr @.str.71, ptr @.str.47, i8 8, i32 0 }, %struct.berlin2_gate_data { ptr @.str.72, ptr @.str.47, i8 9, i32 0 }, %struct.berlin2_gate_data { ptr @.str.73, ptr @.str.47, i8 10, i32 8 }, %struct.berlin2_gate_data { ptr @.str.74, ptr @.str.47, i8 11, i32 0 }, %struct.berlin2_gate_data { ptr @.str.75, ptr @.str.47, i8 12, i32 0 }, %struct.berlin2_gate_data { ptr @.str.76, ptr @.str.47, i8 13, i32 8 }, %struct.berlin2_gate_data { ptr @.str.77, ptr @.str.47, i8 14, i32 0 }, %struct.berlin2_gate_data { ptr @.str.78, ptr @.str.47, i8 15, i32 0 }, %struct.berlin2_gate_data { ptr @.str.79, ptr @.str.47, i8 17, i32 0 }, %struct.berlin2_gate_data { ptr @.str.80, ptr @.str.47, i8 19, i32 0 }, %struct.berlin2_gate_data { ptr @.str.81, ptr @.str.82, i8 26, i32 0 }, %struct.berlin2_gate_data { ptr @.str.83, ptr @.str.35, i8 27, i32 0 }, %struct.berlin2_gate_data { ptr @.str.84, ptr @.str.37, i8 28, i32 0 }, %struct.berlin2_gate_data { ptr @.str.85, ptr @.str.39, i8 29, i32 0 }], section ".init.rodata", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twd\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@berlin2_clock_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%pOF: Unable to register leaf clock %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"berlin2_clock_setup\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/clk/berlin/bg2.c\00", [39 x i8] zeroinitializer }, align 32
@berlin2_clock_setup._entry_ptr = internal global ptr @berlin2_clock_setup._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video_ext0\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syspll\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mempll\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cpupll\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_a1\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_a2\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_a3\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_a4\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_a5\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_a6\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_a7\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_a8\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b1\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b2\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b3\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b4\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b5\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b6\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b7\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b8\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio1_pll\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_fast_pll\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video0_pll\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video0_in\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video1_pll\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video1_in\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video2_pll\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video2_in\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\02\10\11\12\13\02", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\03\03\03\03", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"drmfigo\00", [24 x i8] zeroinitializer }, align 32
@default_parent_ids = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\02\10\09\12\13\02", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gfx\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"zsp\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"perif\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcube\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vscope\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfc_ecc\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpp\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"app\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio0\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\16", [31 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio2\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\16", [31 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio3\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\16", [31 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio1\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\15", [31 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfx3d_core\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx3d_sys\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arc\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vip\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio0xin\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio1xin\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gfx3d_extra\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gc360\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio_dllmst\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"geth0\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"geth1\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ahbapb\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb0\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb1\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pbridge\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio0\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio1\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smemc\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"audiohd\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audiohd_pll\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"video0\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"video1\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"video2\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.86 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 85, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"gbase\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 87, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"clk_names\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 102, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 541, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 545, i32 58 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 558, i32 59 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 575, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 583, i32 7 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 591, i32 7 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 664, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 664, i32 45 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 671, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 103, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 104, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 105, i32 14 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 106, i32 14 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 107, i32 14 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 108, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 109, i32 16 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 110, i32 16 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 111, i32 16 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 112, i32 16 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 113, i32 16 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 114, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 115, i32 16 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 116, i32 16 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 117, i32 16 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 118, i32 16 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 119, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 120, i32 16 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 121, i32 16 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 122, i32 16 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 123, i32 16 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 124, i32 18 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 125, i32 21 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 126, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 127, i32 17 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 128, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 129, i32 17 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 130, i32 18 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 131, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 86, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 148, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 181, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant [19 x i8] c"default_parent_ids\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 142, i32 17 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 196, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 211, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 226, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 241, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 256, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 271, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 286, i32 11 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 301, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 316, i32 11 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 331, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 344, i32 11 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 357, i32 11 }
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 370, i32 11 }
@___asan_gen_.277 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 383, i32 11 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 393, i32 11 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 403, i32 11 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 413, i32 11 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 423, i32 11 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 433, i32 11 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 443, i32 11 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 453, i32 11 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 463, i32 11 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 475, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 476, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 477, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 478, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 479, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 480, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 481, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 482, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 483, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 484, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 485, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 486, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 486, i32 15 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 487, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 488, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private constant [28 x i8] c"../drivers/clk/berlin/bg2.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 489, i32 4 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__of_table_berlin2_clk, ptr @berlin2_clock_setup._entry, ptr @berlin2_clock_setup._entry_ptr, ptr @clk_data, ptr @gbase, ptr @clk_names, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @lock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.compoundliteral, ptr @.compoundliteral.42, ptr @.str.43, ptr @default_parent_ids, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbase to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_names to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_clock_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_parent_ids to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @berlin2_clock_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [9 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_parent(ptr noundef %np) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %parent_names) #6
  %0 = call ptr @memset(ptr %parent_names, i32 255, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 168) #9
  store ptr %call7.i.i, ptr @clk_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 41, ptr %call7.i.i, align 8
  %hws3 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %call4 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #6
  store ptr %call4, ptr @gbase, align 4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = load ptr, ptr @clk_names, align 4
  %call8 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef %3) #6
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call ptr @__clk_get_name(ptr noundef %call8) #6
  store ptr %call11, ptr @clk_names, align 4
  tail call void @clk_put(ptr noundef %call8) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %4 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  %call13 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef %4) #6
  %cmp.i274 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i274, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call ptr @__clk_get_name(ptr noundef %call13) #6
  store ptr %call16, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  tail call void @clk_put(ptr noundef %call13) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %5 = load ptr, ptr @gbase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 20
  %6 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 2), align 4
  %7 = load ptr, ptr @clk_names, align 4
  %call18 = tail call i32 @berlin2_pll_register(ptr noundef nonnull @bg2_pll_map, ptr noundef %add.ptr, ptr noundef %6, ptr noundef %7, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.bg2_fail_crit_edge

if.end17.bg2_fail_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end21:                                         ; preds = %if.end17
  %8 = load ptr, ptr @gbase, align 4
  %add.ptr22 = getelementptr i8, ptr %8, i32 40
  %9 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 3), align 4
  %10 = load ptr, ptr @clk_names, align 4
  %call23 = tail call i32 @berlin2_pll_register(ptr noundef nonnull @bg2_pll_map, ptr noundef %add.ptr22, ptr noundef %9, ptr noundef %10, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.bg2_fail_crit_edge

if.end21.bg2_fail_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end26:                                         ; preds = %if.end21
  %11 = load ptr, ptr @gbase, align 4
  %add.ptr27 = getelementptr i8, ptr %11, i32 60
  %12 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 4), align 4
  %13 = load ptr, ptr @clk_names, align 4
  %call28 = tail call i32 @berlin2_pll_register(ptr noundef nonnull @bg2_pll_map, ptr noundef %add.ptr27, ptr noundef %12, ptr noundef %13, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.bg2_fail_crit_edge

if.end26.bg2_fail_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end31:                                         ; preds = %if.end26
  %call32 = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %spec.select = select i1 %tobool33.not, i8 0, i8 2
  %14 = load ptr, ptr @gbase, align 4
  %add.ptr37 = getelementptr i8, ptr %14, i32 80
  %15 = load ptr, ptr @clk_names, align 4
  %call38 = tail call i32 @berlin2_avpll_vco_register(ptr noundef %add.ptr37, ptr noundef nonnull @.str.1, ptr noundef %15, i8 noundef zeroext %spec.select, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end31.for.body_crit_edge, label %if.end31.bg2_fail_crit_edge

if.end31.bg2_fail_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %n.0287, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end31.for.body_crit_edge
  %n.0287 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end31.for.body_crit_edge ]
  %16 = load ptr, ptr @gbase, align 4
  %add.ptr43 = getelementptr i8, ptr %16, i32 80
  %add = add nuw nsw i32 %n.0287, 5
  %arrayidx = getelementptr [29 x ptr], ptr @clk_names, i32 0, i32 %add
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %conv44 = trunc i32 %n.0287 to i8
  %call45 = tail call i32 @berlin2_avpll_channel_register(ptr noundef %add.ptr43, ptr noundef %18, i8 noundef zeroext %conv44, ptr noundef nonnull @.str.1, i8 noundef zeroext %spec.select, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.cond, label %for.body.bg2_fail_crit_edge

for.body.bg2_fail_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr @gbase, align 4
  %add.ptr49 = getelementptr i8, ptr %19, i32 204
  %20 = load ptr, ptr @clk_names, align 4
  %21 = or i8 %spec.select, 1
  %call53 = tail call i32 @berlin2_avpll_vco_register(ptr noundef %add.ptr49, ptr noundef nonnull @.str.2, ptr noundef %20, i8 noundef zeroext %21, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %for.end.for.body60_crit_edge, label %for.end.bg2_fail_crit_edge

for.end.bg2_fail_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

for.end.for.body60_crit_edge:                     ; preds = %for.end
  br label %for.body60

for.cond57:                                       ; preds = %for.body60
  %inc73 = add nuw nsw i32 %n.1288, 1
  %exitcond297.not = icmp eq i32 %inc73, 8
  br i1 %exitcond297.not, label %for.end74, label %for.cond57.for.body60_crit_edge

for.cond57.for.body60_crit_edge:                  ; preds = %for.cond57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60

for.body60:                                       ; preds = %for.cond57.for.body60_crit_edge, %for.end.for.body60_crit_edge
  %n.1288 = phi i32 [ %inc73, %for.cond57.for.body60_crit_edge ], [ 0, %for.end.for.body60_crit_edge ]
  %22 = load ptr, ptr @gbase, align 4
  %add.ptr61 = getelementptr i8, ptr %22, i32 204
  %add62 = add nuw nsw i32 %n.1288, 13
  %arrayidx63 = getelementptr [29 x ptr], ptr @clk_names, i32 0, i32 %add62
  %23 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx63, align 4
  %conv64 = trunc i32 %n.1288 to i8
  %call68 = tail call i32 @berlin2_avpll_channel_register(ptr noundef %add.ptr61, ptr noundef %24, i8 noundef zeroext %conv64, ptr noundef nonnull @.str.2, i8 noundef zeroext %21, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %for.cond57, label %for.body60.bg2_fail_crit_edge

for.body60.bg2_fail_crit_edge:                    ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

for.end74:                                        ; preds = %for.cond57
  %25 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 2), align 4
  %26 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %parent_names, align 4
  %27 = load ptr, ptr @clk_names, align 4
  %arrayidx76 = getelementptr inbounds [9 x ptr], ptr %parent_names, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx76, align 4
  %29 = load ptr, ptr @gbase, align 4
  %add.ptr78 = getelementptr i8, ptr %29, i32 356
  %call79 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, ptr noundef nonnull %parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr78, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %cmp.i275 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275, label %for.end74.bg2_fail_crit_edge, label %if.end82

for.end74.bg2_fail_crit_edge:                     ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end82:                                         ; preds = %for.end74
  %call83 = call ptr @clk_hw_get_name(ptr noundef %call79) #6
  store ptr %call83, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 2), align 4
  %30 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 3), align 4
  %31 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %parent_names, align 4
  %32 = load ptr, ptr @clk_names, align 4
  %33 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %arrayidx76, align 4
  %34 = load ptr, ptr @gbase, align 4
  %add.ptr87 = getelementptr i8, ptr %34, i32 356
  %call88 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4, i8 noundef zeroext 2, ptr noundef nonnull %parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr87, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %cmp.i276 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276, label %if.end82.bg2_fail_crit_edge, label %if.end91

if.end82.bg2_fail_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end91:                                         ; preds = %if.end82
  %call92 = call ptr @clk_hw_get_name(ptr noundef %call88) #6
  store ptr %call92, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 3), align 4
  %35 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 4), align 4
  %36 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %parent_names, align 4
  %37 = load ptr, ptr @clk_names, align 4
  %38 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %arrayidx76, align 4
  %39 = load ptr, ptr @gbase, align 4
  %add.ptr96 = getelementptr i8, ptr %39, i32 356
  %call97 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, ptr noundef nonnull %parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr96, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %cmp.i277 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i277, label %if.end91.bg2_fail_crit_edge, label %if.end100

if.end91.bg2_fail_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end100:                                        ; preds = %if.end91
  %call101 = call ptr @clk_hw_get_name(ptr noundef %call97) #6
  store ptr %call101, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 4), align 4
  %40 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 15), align 4
  %41 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %parent_names, align 4
  %42 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 7), align 4
  %43 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %arrayidx76, align 4
  %44 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 21), align 4
  %45 = load ptr, ptr @gbase, align 4
  %add.ptr105 = getelementptr i8, ptr %45, i32 348
  %call106 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %44, i8 noundef zeroext 2, ptr noundef nonnull %parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr105, i8 noundef zeroext 29, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %cmp.i278 = icmp ugt ptr %call106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %if.end100.bg2_fail_crit_edge, label %if.end109

if.end100.bg2_fail_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end109:                                        ; preds = %if.end100
  %46 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 23), align 4
  %47 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %parent_names, align 4
  %48 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  %49 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %arrayidx76, align 4
  %50 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 24), align 4
  %51 = load ptr, ptr @gbase, align 4
  %add.ptr113 = getelementptr i8, ptr %51, i32 352
  %call114 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %50, i8 noundef zeroext 2, ptr noundef nonnull %parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr113, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %cmp.i279 = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i279, label %if.end109.bg2_fail_crit_edge, label %if.end117

if.end109.bg2_fail_crit_edge:                     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end117:                                        ; preds = %if.end109
  %52 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 25), align 4
  %53 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %parent_names, align 4
  %54 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  %55 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %arrayidx76, align 4
  %56 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 26), align 4
  %57 = load ptr, ptr @gbase, align 4
  %add.ptr121 = getelementptr i8, ptr %57, i32 352
  %call122 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %56, i8 noundef zeroext 2, ptr noundef nonnull %parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr121, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %cmp.i280 = icmp ugt ptr %call122, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i280, label %if.end117.bg2_fail_crit_edge, label %if.end125

if.end117.bg2_fail_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end125:                                        ; preds = %if.end117
  %58 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 6), align 4
  %59 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %parent_names, align 4
  %60 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 14), align 4
  %61 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %arrayidx76, align 4
  %62 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 25), align 4
  %63 = load ptr, ptr @gbase, align 4
  %add.ptr129 = getelementptr i8, ptr %63, i32 352
  %call130 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %62, i8 noundef zeroext 2, ptr noundef nonnull %parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr129, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %cmp.i281 = icmp ugt ptr %call130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i281, label %if.end125.bg2_fail_crit_edge, label %if.end133

if.end125.bg2_fail_crit_edge:                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end133:                                        ; preds = %if.end125
  %64 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 27), align 4
  %65 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %parent_names, align 4
  %66 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  %67 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %arrayidx76, align 4
  %68 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 28), align 4
  %69 = load ptr, ptr @gbase, align 4
  %add.ptr137 = getelementptr i8, ptr %69, i32 352
  %call138 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %68, i8 noundef zeroext 2, ptr noundef nonnull %parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr137, i8 noundef zeroext 9, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %cmp.i282 = icmp ugt ptr %call138, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %if.end133.bg2_fail_crit_edge, label %if.end141

if.end133.bg2_fail_crit_edge:                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

if.end141:                                        ; preds = %if.end133
  %70 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 13), align 4
  %71 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %parent_names, align 4
  %72 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 9), align 4
  %73 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %arrayidx76, align 4
  %74 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 27), align 4
  %75 = load ptr, ptr @gbase, align 4
  %add.ptr145 = getelementptr i8, ptr %75, i32 352
  %call146 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %74, i8 noundef zeroext 2, ptr noundef nonnull %parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr145, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %cmp.i283 = icmp ugt ptr %call146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %if.end141.bg2_fail_crit_edge, label %if.end141.for.body158.lr.ph_crit_edge

if.end141.for.body158.lr.ph_crit_edge:            ; preds = %if.end141
  br label %for.body158.lr.ph

if.end141.bg2_fail_crit_edge:                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2_fail

for.body158.lr.ph:                                ; preds = %for.end164.for.body158.lr.ph_crit_edge, %if.end141.for.body158.lr.ph_crit_edge
  %n.2291 = phi i32 [ %inc171, %for.end164.for.body158.lr.ph_crit_edge ], [ 0, %if.end141.for.body158.lr.ph_crit_edge ]
  %arrayidx154 = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %n.2291
  %num_parents = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %n.2291, i32 2
  %76 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_parents, align 4
  %parent_ids = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %n.2291, i32 1
  %78 = ptrtoint ptr %parent_ids to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %parent_ids, align 4
  %smax = call i32 @llvm.smax.i32(i32 %77, i32 1)
  br label %for.body158

for.body158:                                      ; preds = %for.body158.for.body158_crit_edge, %for.body158.lr.ph
  %k.0290 = phi i32 [ 0, %for.body158.lr.ph ], [ %inc163, %for.body158.for.body158_crit_edge ]
  %arrayidx159 = getelementptr i8, ptr %79, i32 %k.0290
  %80 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx159, align 1
  %idxprom = zext i8 %81 to i32
  %arrayidx160 = getelementptr [29 x ptr], ptr @clk_names, i32 0, i32 %idxprom
  %82 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx160, align 4
  %arrayidx161 = getelementptr [9 x ptr], ptr %parent_names, i32 0, i32 %k.0290
  %84 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %arrayidx161, align 4
  %inc163 = add nuw nsw i32 %k.0290, 1
  %exitcond298.not = icmp eq i32 %inc163, %smax
  br i1 %exitcond298.not, label %for.end164, label %for.body158.for.body158_crit_edge

for.body158.for.body158_crit_edge:                ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body158

for.end164:                                       ; preds = %for.body158
  %map = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %n.2291, i32 4
  %85 = load ptr, ptr @gbase, align 4
  %86 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx154, align 4
  %div_flags = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %n.2291, i32 5
  %88 = ptrtoint ptr %div_flags to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %div_flags, align 2
  %flags = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %n.2291, i32 3
  %90 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags, align 4
  %call167 = call ptr @berlin2_div_register(ptr noundef %map, ptr noundef %85, ptr noundef %87, i8 noundef zeroext %89, ptr noundef nonnull %parent_names, i32 noundef %77, i32 noundef %91, ptr noundef nonnull @lock) #6
  %arrayidx169 = getelementptr ptr, ptr %hws3, i32 %n.2291
  %92 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call167, ptr %arrayidx169, align 4
  %inc171 = add nuw nsw i32 %n.2291, 1
  %exitcond299.not = icmp eq i32 %inc171, 25
  br i1 %exitcond299.not, label %for.end164.for.body176_crit_edge, label %for.end164.for.body158.lr.ph_crit_edge

for.end164.for.body158.lr.ph_crit_edge:           ; preds = %for.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body158.lr.ph

for.end164.for.body176_crit_edge:                 ; preds = %for.end164
  br label %for.body176

for.body176:                                      ; preds = %for.body176.for.body176_crit_edge, %for.end164.for.body176_crit_edge
  %n.3293 = phi i32 [ %inc185, %for.body176.for.body176_crit_edge ], [ 0, %for.end164.for.body176_crit_edge ]
  %arrayidx177 = getelementptr [15 x %struct.berlin2_gate_data], ptr @bg2_gates, i32 0, i32 %n.3293
  %93 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx177, align 4
  %parent_name = getelementptr [15 x %struct.berlin2_gate_data], ptr @bg2_gates, i32 0, i32 %n.3293, i32 1
  %95 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %parent_name, align 4
  %flags179 = getelementptr [15 x %struct.berlin2_gate_data], ptr @bg2_gates, i32 0, i32 %n.3293, i32 3
  %97 = ptrtoint ptr %flags179 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags179, align 4
  %99 = load ptr, ptr @gbase, align 4
  %add.ptr180 = getelementptr i8, ptr %99, i32 336
  %bit_idx = getelementptr [15 x %struct.berlin2_gate_data], ptr @bg2_gates, i32 0, i32 %n.3293, i32 2
  %100 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bit_idx, align 4
  %call181 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef %94, ptr noundef %96, ptr noundef null, ptr noundef null, i32 noundef %98, ptr noundef %add.ptr180, i8 noundef zeroext %101, i8 noundef zeroext 0, ptr noundef nonnull @lock) #6
  %add182 = add nuw nsw i32 %n.3293, 25
  %arrayidx183 = getelementptr ptr, ptr %hws3, i32 %add182
  %102 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call181, ptr %arrayidx183, align 4
  %inc185 = add nuw nsw i32 %n.3293, 1
  %exitcond300.not = icmp eq i32 %inc185, 15
  br i1 %exitcond300.not, label %for.end186, label %for.body176.for.body176_crit_edge

for.body176.for.body176_crit_edge:                ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body176

for.end186:                                       ; preds = %for.body176
  %call187 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 1, i32 noundef 3) #6
  %arrayidx188 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 41
  %103 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call187, ptr %arrayidx188, align 4
  br label %for.body192

for.body192:                                      ; preds = %for.inc198.for.body192_crit_edge, %for.end186
  %n.4294 = phi i32 [ 0, %for.end186 ], [ %inc199, %for.inc198.for.body192_crit_edge ]
  %arrayidx193 = getelementptr ptr, ptr %hws3, i32 %n.4294
  %104 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx193, align 4
  %cmp.i284 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %do.end, label %for.inc198

do.end:                                           ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #8
  %call197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %np, i32 noundef %n.4294) #10
  br label %bg2_fail

for.inc198:                                       ; preds = %for.body192
  %inc199 = add nuw nsw i32 %n.4294, 1
  %exitcond301.not = icmp eq i32 %inc199, 41
  br i1 %exitcond301.not, label %for.end200, label %for.inc198.for.body192_crit_edge

for.inc198.for.body192_crit_edge:                 ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body192

for.end200:                                       ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #8
  %106 = load ptr, ptr @clk_data, align 4
  %call201 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %106) #6
  br label %cleanup

bg2_fail:                                         ; preds = %do.end, %if.end141.bg2_fail_crit_edge, %if.end133.bg2_fail_crit_edge, %if.end125.bg2_fail_crit_edge, %if.end117.bg2_fail_crit_edge, %if.end109.bg2_fail_crit_edge, %if.end100.bg2_fail_crit_edge, %if.end91.bg2_fail_crit_edge, %if.end82.bg2_fail_crit_edge, %for.end74.bg2_fail_crit_edge, %for.body60.bg2_fail_crit_edge, %for.end.bg2_fail_crit_edge, %for.body.bg2_fail_crit_edge, %if.end31.bg2_fail_crit_edge, %if.end26.bg2_fail_crit_edge, %if.end21.bg2_fail_crit_edge, %if.end17.bg2_fail_crit_edge
  %107 = load ptr, ptr @gbase, align 4
  call void @iounmap(ptr noundef %107) #6
  br label %cleanup

cleanup:                                          ; preds = %bg2_fail, %for.end200, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %parent_names) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @berlin2_pll_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @berlin2_avpll_vco_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @berlin2_avpll_channel_register(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @berlin2_div_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__of_table_berlin2_clk, !1, !"__of_table_berlin2_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/berlin/bg2.c", i32 683, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/berlin/bg2.c", i32 541, i32 34}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/berlin/bg2.c", i32 545, i32 58}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/berlin/bg2.c", i32 558, i32 59}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/berlin/bg2.c", i32 575, i32 7}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/berlin/bg2.c", i32 583, i32 7}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/berlin/bg2.c", i32 591, i32 7}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/berlin/bg2.c", i32 664, i32 38}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/berlin/bg2.c", i32 664, i32 45}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/berlin/bg2.c", i32 671, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @berlin2_clock_setup._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @berlin2_clock_setup._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @clk_data, !25, !"clk_data", i1 false, i1 false}
!25 = !{!"../drivers/clk/berlin/bg2.c", i32 85, i32 36}
!26 = !{ptr @gbase, !27, !"gbase", i1 false, i1 false}
!27 = !{!"../drivers/clk/berlin/bg2.c", i32 87, i32 22}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/berlin/bg2.c", i32 103, i32 14}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/berlin/bg2.c", i32 104, i32 18}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/berlin/bg2.c", i32 105, i32 14}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/berlin/bg2.c", i32 106, i32 14}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/berlin/bg2.c", i32 107, i32 14}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/berlin/bg2.c", i32 108, i32 16}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/berlin/bg2.c", i32 109, i32 16}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/berlin/bg2.c", i32 110, i32 16}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/berlin/bg2.c", i32 111, i32 16}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/berlin/bg2.c", i32 112, i32 16}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/berlin/bg2.c", i32 113, i32 16}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/berlin/bg2.c", i32 114, i32 16}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/berlin/bg2.c", i32 115, i32 16}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/berlin/bg2.c", i32 116, i32 16}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/berlin/bg2.c", i32 117, i32 16}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/berlin/bg2.c", i32 118, i32 16}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/berlin/bg2.c", i32 119, i32 16}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/berlin/bg2.c", i32 120, i32 16}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/berlin/bg2.c", i32 121, i32 16}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/berlin/bg2.c", i32 122, i32 16}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/berlin/bg2.c", i32 123, i32 16}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/berlin/bg2.c", i32 124, i32 18}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/berlin/bg2.c", i32 125, i32 21}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/berlin/bg2.c", i32 126, i32 18}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/berlin/bg2.c", i32 127, i32 17}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/berlin/bg2.c", i32 128, i32 18}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/berlin/bg2.c", i32 129, i32 17}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/berlin/bg2.c", i32 130, i32 18}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/berlin/bg2.c", i32 131, i32 17}
!86 = !{ptr @clk_names, !87, !"clk_names", i1 false, i1 false}
!87 = !{!"../drivers/clk/berlin/bg2.c", i32 102, i32 20}
!88 = !{ptr @bg2_pll_map, !89, !"bg2_pll_map", i1 false, i1 false}
!89 = !{!"../drivers/clk/berlin/bg2.c", i32 134, i32 37}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/berlin/bg2.c", i32 86, i32 8}
!92 = !{ptr @lock, !91, !"lock", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/berlin/bg2.c", i32 148, i32 11}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/berlin/bg2.c", i32 181, i32 11}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/berlin/bg2.c", i32 196, i32 11}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/berlin/bg2.c", i32 211, i32 11}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/berlin/bg2.c", i32 226, i32 11}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/berlin/bg2.c", i32 241, i32 11}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/berlin/bg2.c", i32 256, i32 11}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/berlin/bg2.c", i32 271, i32 11}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/berlin/bg2.c", i32 286, i32 11}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/berlin/bg2.c", i32 301, i32 11}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/berlin/bg2.c", i32 316, i32 11}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/berlin/bg2.c", i32 331, i32 11}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/berlin/bg2.c", i32 344, i32 11}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/berlin/bg2.c", i32 357, i32 11}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/berlin/bg2.c", i32 370, i32 11}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/berlin/bg2.c", i32 383, i32 11}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/berlin/bg2.c", i32 393, i32 11}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/berlin/bg2.c", i32 403, i32 11}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/berlin/bg2.c", i32 413, i32 11}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/berlin/bg2.c", i32 423, i32 11}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/berlin/bg2.c", i32 433, i32 11}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/berlin/bg2.c", i32 443, i32 11}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/berlin/bg2.c", i32 453, i32 11}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/berlin/bg2.c", i32 463, i32 11}
!141 = !{ptr @bg2_divs, !142, !"bg2_divs", i1 false, i1 false}
!142 = !{!"../drivers/clk/berlin/bg2.c", i32 146, i32 38}
!143 = !{ptr @default_parent_ids, !144, !"default_parent_ids", i1 false, i1 false}
!144 = !{!"../drivers/clk/berlin/bg2.c", i32 142, i32 17}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/berlin/bg2.c", i32 475, i32 4}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/berlin/bg2.c", i32 476, i32 4}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/berlin/bg2.c", i32 477, i32 4}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/berlin/bg2.c", i32 478, i32 4}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/berlin/bg2.c", i32 479, i32 4}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/berlin/bg2.c", i32 480, i32 4}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/berlin/bg2.c", i32 481, i32 4}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/berlin/bg2.c", i32 482, i32 4}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/berlin/bg2.c", i32 483, i32 4}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/berlin/bg2.c", i32 484, i32 4}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/berlin/bg2.c", i32 485, i32 4}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/berlin/bg2.c", i32 486, i32 4}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/berlin/bg2.c", i32 486, i32 15}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/berlin/bg2.c", i32 487, i32 4}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/berlin/bg2.c", i32 488, i32 4}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/berlin/bg2.c", i32 489, i32 4}
!177 = !{ptr @bg2_gates, !178, !"bg2_gates", i1 false, i1 false}
!178 = !{!"../drivers/clk/berlin/bg2.c", i32 474, i32 39}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
