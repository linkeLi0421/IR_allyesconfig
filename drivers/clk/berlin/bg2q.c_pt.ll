; ModuleID = '/llk/IR_all_yes/drivers/clk/berlin/bg2q.c_pt.bc'
source_filename = "../drivers/clk/berlin/bg2q.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.berlin2_pll_map = type { [16 x i8], i8, i8, i8, i8 }
%struct.berlin2_div_data = type { ptr, ptr, i32, i32, %struct.berlin2_div_map, i8 }
%struct.berlin2_div_map = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.berlin2_gate_data = type { ptr, ptr, i8, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__of_table_berlin2q_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2q-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @berlin2q_clock_setup }, section "__clk_of_table", align 4
@clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gbase = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@berlin2q_clock_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%pOF: Unable to map global base\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"berlin2q_clock_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/berlin/bg2q.c\00", [38 x i8] zeroinitializer }, align 32
@berlin2q_clock_setup._entry_ptr = internal global ptr @berlin2q_clock_setup._entry, section ".printk_index", align 4
@cpupll_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@berlin2q_clock_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%pOF: Unable to map cpupll base\0A\00", [61 x i8] zeroinitializer }, align 32
@berlin2q_clock_setup._entry_ptr.5 = internal global ptr @berlin2q_clock_setup._entry.3, section ".printk_index", align 4
@clk_names = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [52 x i8] zeroinitializer }, align 32
@bg2q_pll_map = internal constant %struct.berlin2_pll_map { [16 x i8] c"\01\00\02\00\03\04\00\06\08\00\00\00\00\00\00\00", i8 1, i8 7, i8 2, i8 9 }, section ".init.rodata", align 1
@bg2q_divs = internal constant [13 x %struct.berlin2_div_data] [%struct.berlin2_div_data { ptr @.str.22, ptr @default_parent_ids, i32 6, i32 8, %struct.berlin2_div_map { i16 236, i16 248, i16 236, i16 248, i16 248, i16 232, i8 0, i8 3, i8 3, i8 4, i8 5, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.23, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 236, i16 248, i16 236, i16 248, i16 248, i16 232, i8 6, i8 6, i8 9, i8 7, i8 8, i8 17 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.24, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 236, i16 248, i16 236, i16 248, i16 248, i16 232, i8 12, i8 9, i8 15, i8 10, i8 11, i8 1 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.25, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 236, i16 248, i16 236, i16 248, i16 248, i16 232, i8 18, i8 12, i8 21, i8 13, i8 14, i8 4 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.26, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 236, i16 248, i16 236, i16 248, i16 248, i16 232, i8 24, i8 15, i8 27, i8 16, i8 17, i8 6 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.27, ptr @default_parent_ids, i32 6, i32 8, %struct.berlin2_div_map { i16 240, i16 248, i16 240, i16 248, i16 248, i16 232, i8 0, i8 18, i8 3, i8 19, i8 20, i8 7 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.28, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 240, i16 248, i16 240, i16 248, i16 248, i16 232, i8 6, i8 21, i8 9, i8 22, i8 23, i8 2 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.29, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 240, i16 248, i16 240, i16 248, i16 248, i16 232, i8 12, i8 24, i8 15, i8 25, i8 26, i8 3 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.30, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 240, i16 248, i16 240, i16 248, i16 248, i16 232, i8 18, i8 27, i8 21, i8 28, i8 29, i8 19 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.31, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 240, i16 248, i16 240, i16 248, i16 252, i16 232, i8 24, i8 30, i8 27, i8 31, i8 0, i8 21 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.32, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 244, i16 252, i16 244, i16 252, i16 252, i16 232, i8 0, i8 1, i8 3, i8 2, i8 3, i8 20 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.33, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 344, i16 344, i16 344, i16 344, i16 344, i16 344, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.34, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 348, i16 348, i16 348, i16 348, i16 348, i16 348, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }], section ".init.rodata", align 4
@lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@bg2q_gates = internal unnamed_addr constant [12 x %struct.berlin2_gate_data] [%struct.berlin2_gate_data { ptr @.str.36, ptr @.str.27, i8 5, i32 0 }, %struct.berlin2_gate_data { ptr @.str.37, ptr @.str.27, i8 8, i32 0 }, %struct.berlin2_gate_data { ptr @.str.38, ptr @.str.27, i8 9, i32 0 }, %struct.berlin2_gate_data { ptr @.str.39, ptr @.str.27, i8 10, i32 8 }, %struct.berlin2_gate_data { ptr @.str.40, ptr @.str.27, i8 11, i32 0 }, %struct.berlin2_gate_data { ptr @.str.41, ptr @.str.27, i8 12, i32 0 }, %struct.berlin2_gate_data { ptr @.str.42, ptr @.str.27, i8 13, i32 0 }, %struct.berlin2_gate_data { ptr @.str.43, ptr @.str.27, i8 14, i32 0 }, %struct.berlin2_gate_data { ptr @.str.44, ptr @.str.27, i8 15, i32 8 }, %struct.berlin2_gate_data { ptr @.str.45, ptr @.str.27, i8 16, i32 0 }, %struct.berlin2_gate_data { ptr @.str.46, ptr @.str.27, i8 18, i32 0 }, %struct.berlin2_gate_data { ptr @.str.47, ptr @.str.27, i8 22, i32 0 }], section ".init.rodata", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twd\00", [28 x i8] zeroinitializer }, align 32
@berlin2q_clock_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%pOF: Unable to register leaf clock %d\0A\00", [54 x i8] zeroinitializer }, align 32
@berlin2q_clock_setup._entry_ptr.10 = internal global ptr @berlin2q_clock_setup._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syspll\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cpupll\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b1\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b2\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b3\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b4\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b5\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b6\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b7\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avpll_b8\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@default_parent_ids = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\06\07\08\09\01", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"drmfigo\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gfx2d\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"zsp\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"perif\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcube\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vscope\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfc_ecc\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpp\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"app\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio0xin\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio1xin\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gfx2daxi\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"geth0\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ahbapb\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb0\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb1\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb2\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb3\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pbridge\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdio\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 39, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"gbase\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 41, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 296, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"cpupll_base\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 42, i32 22 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 303, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"clk_names\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 51, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 357, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 361, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 368, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 52, i32 14 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 53, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 54, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 55, i32 16 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 56, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 57, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 58, i32 16 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 59, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 60, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 61, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 62, i32 16 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 79, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"default_parent_ids\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 73, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 94, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 109, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 124, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 139, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 154, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 169, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 184, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 199, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 214, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 229, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 244, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 254, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 40, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 266, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 267, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 268, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 269, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 270, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 271, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 272, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 273, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 274, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 275, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 276, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [29 x i8] c"../drivers/clk/berlin/bg2q.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 277, i32 4 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__of_table_berlin2q_clk, ptr @berlin2q_clock_setup._entry, ptr @berlin2q_clock_setup._entry.3, ptr @berlin2q_clock_setup._entry.8, ptr @berlin2q_clock_setup._entry_ptr, ptr @berlin2q_clock_setup._entry_ptr.10, ptr @berlin2q_clock_setup._entry_ptr.5, ptr @clk_data, ptr @gbase, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cpupll_base, ptr @.str.4, ptr @clk_names, ptr @lock, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @default_parent_ids, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbase to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2q_clock_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpupll_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2q_clock_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_names to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2q_clock_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_parent_ids to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @berlin2q_clock_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [9 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_parent(ptr noundef %np) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %parent_names) #6
  %0 = call ptr @memset(ptr %parent_names, i32 255, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 116) #9
  store ptr %call7.i.i, ptr @clk_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 28, ptr %call7.i.i, align 8
  %hws3 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %call4 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #6
  store ptr %call4, ptr @gbase, align 4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %np) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 1) #6
  store ptr %call9, ptr @cpupll_base, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %np) #10
  %3 = load ptr, ptr @gbase, align 4
  tail call void @iounmap(ptr noundef %3) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %4 = load ptr, ptr @clk_names, align 4
  %call18 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef %4) #6
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call ptr @__clk_get_name(ptr noundef %call18) #6
  store ptr %call21, ptr @clk_names, align 4
  tail call void @clk_put(ptr noundef %call18) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %5 = load ptr, ptr @gbase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 48
  %6 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  %7 = load ptr, ptr @clk_names, align 4
  %call23 = tail call i32 @berlin2_pll_register(ptr noundef nonnull @bg2q_pll_map, ptr noundef %add.ptr, ptr noundef %6, ptr noundef %7, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.bg2q_fail_crit_edge

if.end22.bg2q_fail_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2q_fail

if.end26:                                         ; preds = %if.end22
  %8 = load ptr, ptr @cpupll_base, align 4
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @clk_names, i32 0, i32 2), align 4
  %10 = load ptr, ptr @clk_names, align 4
  %call27 = tail call i32 @berlin2_pll_register(ptr noundef nonnull @bg2q_pll_map, ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.for.body33.lr.ph_crit_edge, label %if.end26.bg2q_fail_crit_edge

if.end26.bg2q_fail_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %bg2q_fail

if.end26.for.body33.lr.ph_crit_edge:              ; preds = %if.end26
  br label %for.body33.lr.ph

for.body33.lr.ph:                                 ; preds = %for.end.for.body33.lr.ph_crit_edge, %if.end26.for.body33.lr.ph_crit_edge
  %n.0122 = phi i32 [ %inc42, %for.end.for.body33.lr.ph_crit_edge ], [ 0, %if.end26.for.body33.lr.ph_crit_edge ]
  %arrayidx = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %n.0122
  %num_parents = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %n.0122, i32 2
  %11 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_parents, align 4
  %parent_ids = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %n.0122, i32 1
  %13 = ptrtoint ptr %parent_ids to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent_ids, align 4
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 1)
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.lr.ph
  %k.0121 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc, %for.body33.for.body33_crit_edge ]
  %arrayidx34 = getelementptr i8, ptr %14, i32 %k.0121
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx34, align 1
  %idxprom = zext i8 %16 to i32
  %arrayidx35 = getelementptr [11 x ptr], ptr @clk_names, i32 0, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr [9 x ptr], ptr %parent_names, i32 0, i32 %k.0121
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %arrayidx36, align 4
  %inc = add nuw nsw i32 %k.0121, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.end, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33

for.end:                                          ; preds = %for.body33
  %map = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %n.0122, i32 4
  %20 = load ptr, ptr @gbase, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %div_flags = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %n.0122, i32 5
  %23 = ptrtoint ptr %div_flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %div_flags, align 2
  %flags = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %n.0122, i32 3
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %call39 = call ptr @berlin2_div_register(ptr noundef %map, ptr noundef %20, ptr noundef %22, i8 noundef zeroext %24, ptr noundef nonnull %parent_names, i32 noundef %12, i32 noundef %26, ptr noundef nonnull @lock) #6
  %arrayidx40 = getelementptr ptr, ptr %hws3, i32 %n.0122
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call39, ptr %arrayidx40, align 4
  %inc42 = add nuw nsw i32 %n.0122, 1
  %exitcond127.not = icmp eq i32 %inc42, 13
  br i1 %exitcond127.not, label %for.end.for.body46_crit_edge, label %for.end.for.body33.lr.ph_crit_edge

for.end.for.body33.lr.ph_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33.lr.ph

for.end.for.body46_crit_edge:                     ; preds = %for.end
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.end.for.body46_crit_edge
  %n.1124 = phi i32 [ %inc55, %for.body46.for.body46_crit_edge ], [ 0, %for.end.for.body46_crit_edge ]
  %arrayidx47 = getelementptr [12 x %struct.berlin2_gate_data], ptr @bg2q_gates, i32 0, i32 %n.1124
  %28 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx47, align 4
  %parent_name = getelementptr [12 x %struct.berlin2_gate_data], ptr @bg2q_gates, i32 0, i32 %n.1124, i32 1
  %30 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent_name, align 4
  %flags49 = getelementptr [12 x %struct.berlin2_gate_data], ptr @bg2q_gates, i32 0, i32 %n.1124, i32 3
  %32 = ptrtoint ptr %flags49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags49, align 4
  %34 = load ptr, ptr @gbase, align 4
  %add.ptr50 = getelementptr i8, ptr %34, i32 232
  %bit_idx = getelementptr [12 x %struct.berlin2_gate_data], ptr @bg2q_gates, i32 0, i32 %n.1124, i32 2
  %35 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bit_idx, align 4
  %call51 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef %29, ptr noundef %31, ptr noundef null, ptr noundef null, i32 noundef %33, ptr noundef %add.ptr50, i8 noundef zeroext %36, i8 noundef zeroext 0, ptr noundef nonnull @lock) #6
  %add52 = add nuw nsw i32 %n.1124, 13
  %arrayidx53 = getelementptr ptr, ptr %hws3, i32 %add52
  %37 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call51, ptr %arrayidx53, align 4
  %inc55 = add nuw nsw i32 %n.1124, 1
  %exitcond128.not = icmp eq i32 %inc55, 12
  br i1 %exitcond128.not, label %for.end56, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46

for.end56:                                        ; preds = %for.body46
  %38 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @clk_names, i32 0, i32 2), align 4
  %call57 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef %38, i32 noundef 0, i32 noundef 1, i32 noundef 1) #6
  %arrayidx58 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 28
  %39 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call57, ptr %arrayidx58, align 8
  %call59 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 1, i32 noundef 3) #6
  %arrayidx60 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 27
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call59, ptr %arrayidx60, align 4
  br label %for.body63

for.body63:                                       ; preds = %for.inc73.for.body63_crit_edge, %for.end56
  %n.2125 = phi i32 [ 0, %for.end56 ], [ %inc74, %for.inc73.for.body63_crit_edge ]
  %arrayidx64 = getelementptr ptr, ptr %hws3, i32 %n.2125
  %41 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx64, align 4
  %cmp.i118 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %do.end70, label %for.inc73

do.end70:                                         ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #8
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %np, i32 noundef %n.2125) #10
  br label %bg2q_fail

for.inc73:                                        ; preds = %for.body63
  %inc74 = add nuw nsw i32 %n.2125, 1
  %exitcond129.not = icmp eq i32 %inc74, 28
  br i1 %exitcond129.not, label %for.end75, label %for.inc73.for.body63_crit_edge

for.inc73.for.body63_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body63

for.end75:                                        ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #8
  %43 = load ptr, ptr @clk_data, align 4
  %call76 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %43) #6
  br label %cleanup

bg2q_fail:                                        ; preds = %do.end70, %if.end26.bg2q_fail_crit_edge, %if.end22.bg2q_fail_crit_edge
  %44 = load ptr, ptr @cpupll_base, align 4
  call void @iounmap(ptr noundef %44) #6
  %45 = load ptr, ptr @gbase, align 4
  call void @iounmap(ptr noundef %45) #6
  br label %cleanup

cleanup:                                          ; preds = %bg2q_fail, %for.end75, %do.end14, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %parent_names) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @berlin2_pll_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @berlin2_div_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__of_table_berlin2q_clk, !1, !"__of_table_berlin2q_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/berlin/bg2q.c", i32 381, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/berlin/bg2q.c", i32 296, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @berlin2q_clock_setup._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @berlin2q_clock_setup._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/berlin/bg2q.c", i32 303, i32 3}
!10 = !{ptr @berlin2q_clock_setup._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @berlin2q_clock_setup._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/berlin/bg2q.c", i32 357, i32 38}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/berlin/bg2q.c", i32 361, i32 38}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/berlin/bg2q.c", i32 368, i32 3}
!18 = !{ptr @berlin2q_clock_setup._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @berlin2q_clock_setup._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @clk_data, !21, !"clk_data", i1 false, i1 false}
!21 = !{!"../drivers/clk/berlin/bg2q.c", i32 39, i32 36}
!22 = !{ptr @gbase, !23, !"gbase", i1 false, i1 false}
!23 = !{!"../drivers/clk/berlin/bg2q.c", i32 41, i32 22}
!24 = !{ptr @cpupll_base, !25, !"cpupll_base", i1 false, i1 false}
!25 = !{!"../drivers/clk/berlin/bg2q.c", i32 42, i32 22}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/berlin/bg2q.c", i32 52, i32 14}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/berlin/bg2q.c", i32 53, i32 14}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/berlin/bg2q.c", i32 54, i32 14}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/berlin/bg2q.c", i32 55, i32 16}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/berlin/bg2q.c", i32 56, i32 16}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/berlin/bg2q.c", i32 57, i32 16}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/berlin/bg2q.c", i32 58, i32 16}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/berlin/bg2q.c", i32 59, i32 16}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/berlin/bg2q.c", i32 60, i32 16}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/berlin/bg2q.c", i32 61, i32 16}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/berlin/bg2q.c", i32 62, i32 16}
!48 = !{ptr @clk_names, !49, !"clk_names", i1 false, i1 false}
!49 = !{!"../drivers/clk/berlin/bg2q.c", i32 51, i32 20}
!50 = !{ptr @bg2q_pll_map, !51, !"bg2q_pll_map", i1 false, i1 false}
!51 = !{!"../drivers/clk/berlin/bg2q.c", i32 65, i32 37}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/berlin/bg2q.c", i32 79, i32 11}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/berlin/bg2q.c", i32 94, i32 11}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/berlin/bg2q.c", i32 109, i32 11}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/berlin/bg2q.c", i32 124, i32 11}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/berlin/bg2q.c", i32 139, i32 11}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/berlin/bg2q.c", i32 154, i32 11}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/berlin/bg2q.c", i32 169, i32 11}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/berlin/bg2q.c", i32 184, i32 11}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/berlin/bg2q.c", i32 199, i32 11}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/berlin/bg2q.c", i32 214, i32 11}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/berlin/bg2q.c", i32 229, i32 11}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/berlin/bg2q.c", i32 244, i32 11}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/berlin/bg2q.c", i32 254, i32 11}
!78 = !{ptr @bg2q_divs, !79, !"bg2q_divs", i1 false, i1 false}
!79 = !{!"../drivers/clk/berlin/bg2q.c", i32 77, i32 38}
!80 = !{ptr @default_parent_ids, !81, !"default_parent_ids", i1 false, i1 false}
!81 = !{!"../drivers/clk/berlin/bg2q.c", i32 73, i32 17}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/berlin/bg2q.c", i32 40, i32 8}
!84 = !{ptr @lock, !83, !"lock", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/berlin/bg2q.c", i32 266, i32 4}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/berlin/bg2q.c", i32 267, i32 4}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/berlin/bg2q.c", i32 268, i32 4}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/berlin/bg2q.c", i32 269, i32 4}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/berlin/bg2q.c", i32 270, i32 4}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/berlin/bg2q.c", i32 271, i32 4}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/berlin/bg2q.c", i32 272, i32 4}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/berlin/bg2q.c", i32 273, i32 4}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/berlin/bg2q.c", i32 274, i32 4}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/berlin/bg2q.c", i32 275, i32 4}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/berlin/bg2q.c", i32 276, i32 4}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/berlin/bg2q.c", i32 277, i32 4}
!109 = !{ptr @bg2q_gates, !110, !"bg2q_gates", i1 false, i1 false}
!110 = !{!"../drivers/clk/berlin/bg2q.c", i32 265, i32 39}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
