; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/via_clock.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/via_clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.via_clock = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@dummy_set_clock_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016Using undocumented set clock state.\0A%s\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dummy_set_clock_state\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/fbdev/via/via_clock.c\00", [60 x i8] zeroinitializer }, align 32
@dummy_set_clock_state._entry_ptr = internal global ptr @dummy_set_clock_state._entry, section ".printk_index", align 4
@.str.3 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"Please slap VIA Technologies to motivate them releasing full documentation for your platform!\0A\00", [33 x i8] zeroinitializer }, align 32
@dummy_set_clock_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Using undocumented set clock source.\0A%s\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dummy_set_clock_source\00", [41 x i8] zeroinitializer }, align 32
@dummy_set_clock_source._entry_ptr = internal global ptr @dummy_set_clock_source._entry, section ".printk_index", align 4
@dummy_set_pll_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016Using undocumented set PLL state.\0A%s\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dummy_set_pll_state\00", [44 x i8] zeroinitializer }, align 32
@dummy_set_pll_state._entry_ptr = internal global ptr @dummy_set_pll_state._entry, section ".printk_index", align 4
@dummy_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Using undocumented set PLL.\0A%s\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dummy_set_pll\00", [18 x i8] zeroinitializer }, align 32
@dummy_set_pll._entry_ptr = internal global ptr @dummy_set_pll._entry, section ".printk_index", align 4
@switch.table.via_clock_init = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dummy_set_clock_state, ptr @dummy_set_clock_state, ptr @set_primary_clock_state, ptr @set_primary_clock_state, ptr @set_primary_clock_state, ptr @set_primary_clock_state, ptr @set_primary_clock_state, ptr @set_primary_clock_state, ptr @set_primary_clock_state, ptr @set_primary_clock_state, ptr @set_primary_clock_state, ptr @set_primary_clock_state, ptr @set_primary_clock_state], [44 x i8] zeroinitializer }, align 32
@switch.table.via_clock_init.10 = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dummy_set_clock_source, ptr @dummy_set_clock_source, ptr @set_primary_clock_source, ptr @set_primary_clock_source, ptr @set_primary_clock_source, ptr @set_primary_clock_source, ptr @set_primary_clock_source, ptr @set_primary_clock_source, ptr @set_primary_clock_source, ptr @set_primary_clock_source, ptr @set_primary_clock_source, ptr @set_primary_clock_source, ptr @set_primary_clock_source], [44 x i8] zeroinitializer }, align 32
@switch.table.via_clock_init.11 = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dummy_set_pll_state, ptr @dummy_set_pll_state, ptr @set_primary_pll_state, ptr @set_primary_pll_state, ptr @set_primary_pll_state, ptr @set_primary_pll_state, ptr @set_primary_pll_state, ptr @set_primary_pll_state, ptr @set_primary_pll_state, ptr @set_primary_pll_state, ptr @set_primary_pll_state, ptr @set_primary_pll_state, ptr @set_primary_pll_state], [44 x i8] zeroinitializer }, align 32
@switch.table.via_clock_init.12 = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @cle266_set_primary_pll, ptr @cle266_set_primary_pll, ptr @k800_set_primary_pll, ptr @k800_set_primary_pll, ptr @k800_set_primary_pll, ptr @k800_set_primary_pll, ptr @k800_set_primary_pll, ptr @k800_set_primary_pll, ptr @k800_set_primary_pll, ptr @k800_set_primary_pll, ptr @k800_set_primary_pll, ptr @vx855_set_primary_pll, ptr @vx855_set_primary_pll], [44 x i8] zeroinitializer }, align 32
@switch.table.via_clock_init.13 = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dummy_set_clock_state, ptr @dummy_set_clock_state, ptr @set_secondary_clock_state, ptr @set_secondary_clock_state, ptr @set_secondary_clock_state, ptr @set_secondary_clock_state, ptr @set_secondary_clock_state, ptr @set_secondary_clock_state, ptr @set_secondary_clock_state, ptr @set_secondary_clock_state, ptr @set_secondary_clock_state, ptr @set_secondary_clock_state, ptr @set_secondary_clock_state], [44 x i8] zeroinitializer }, align 32
@switch.table.via_clock_init.14 = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dummy_set_clock_source, ptr @dummy_set_clock_source, ptr @set_secondary_clock_source, ptr @set_secondary_clock_source, ptr @set_secondary_clock_source, ptr @set_secondary_clock_source, ptr @set_secondary_clock_source, ptr @set_secondary_clock_source, ptr @set_secondary_clock_source, ptr @set_secondary_clock_source, ptr @set_secondary_clock_source, ptr @set_secondary_clock_source, ptr @set_secondary_clock_source], [44 x i8] zeroinitializer }, align 32
@switch.table.via_clock_init.15 = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dummy_set_pll_state, ptr @dummy_set_pll_state, ptr @set_secondary_pll_state, ptr @set_secondary_pll_state, ptr @set_secondary_pll_state, ptr @set_secondary_pll_state, ptr @set_secondary_pll_state, ptr @set_secondary_pll_state, ptr @set_secondary_pll_state, ptr @set_secondary_pll_state, ptr @set_secondary_pll_state, ptr @set_secondary_pll_state, ptr @set_secondary_pll_state], [44 x i8] zeroinitializer }, align 32
@switch.table.via_clock_init.16 = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @cle266_set_secondary_pll, ptr @cle266_set_secondary_pll, ptr @k800_set_secondary_pll, ptr @k800_set_secondary_pll, ptr @k800_set_secondary_pll, ptr @k800_set_secondary_pll, ptr @k800_set_secondary_pll, ptr @k800_set_secondary_pll, ptr @k800_set_secondary_pll, ptr @k800_set_secondary_pll, ptr @k800_set_secondary_pll, ptr @vx855_set_secondary_pll, ptr @vx855_set_secondary_pll], [44 x i8] zeroinitializer }, align 32
@switch.table.via_clock_init.17 = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dummy_set_pll_state, ptr @dummy_set_pll_state, ptr @set_engine_pll_state, ptr @set_engine_pll_state, ptr @set_engine_pll_state, ptr @set_engine_pll_state, ptr @set_engine_pll_state, ptr @set_engine_pll_state, ptr @set_engine_pll_state, ptr @set_engine_pll_state, ptr @set_engine_pll_state, ptr @set_engine_pll_state, ptr @set_engine_pll_state], [44 x i8] zeroinitializer }, align 32
@switch.table.via_clock_init.18 = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dummy_set_pll, ptr @dummy_set_pll, ptr @k800_set_engine_pll, ptr @k800_set_engine_pll, ptr @k800_set_engine_pll, ptr @k800_set_engine_pll, ptr @k800_set_engine_pll, ptr @k800_set_engine_pll, ptr @k800_set_engine_pll, ptr @k800_set_engine_pll, ptr @k800_set_engine_pll, ptr @vx855_set_engine_pll, ptr @vx855_set_engine_pll], [44 x i8] zeroinitializer }, align 32
@switch.table.set_primary_clock_source = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\04\0A\0C\0E", [27 x i8] zeroinitializer }, align 32
@switch.table.set_secondary_clock_source = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\04\0A\0C\0E", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 260, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 18, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 265, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 270, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [39 x i8] c"../drivers/video/fbdev/via/via_clock.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 275, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"switch.table.via_clock_init\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [31 x i8] c"switch.table.via_clock_init.10\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [31 x i8] c"switch.table.via_clock_init.11\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"switch.table.via_clock_init.12\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [31 x i8] c"switch.table.via_clock_init.13\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"switch.table.via_clock_init.14\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [31 x i8] c"switch.table.via_clock_init.15\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [31 x i8] c"switch.table.via_clock_init.16\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [31 x i8] c"switch.table.via_clock_init.17\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [31 x i8] c"switch.table.via_clock_init.18\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [38 x i8] c"switch.table.set_primary_clock_source\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [40 x i8] c"switch.table.set_secondary_clock_source\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @dummy_set_clock_source._entry, ptr @dummy_set_clock_source._entry_ptr, ptr @dummy_set_clock_state._entry, ptr @dummy_set_clock_state._entry_ptr, ptr @dummy_set_pll._entry, ptr @dummy_set_pll._entry_ptr, ptr @dummy_set_pll_state._entry, ptr @dummy_set_pll_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @switch.table.via_clock_init, ptr @switch.table.via_clock_init.10, ptr @switch.table.via_clock_init.11, ptr @switch.table.via_clock_init.12, ptr @switch.table.via_clock_init.13, ptr @switch.table.via_clock_init.14, ptr @switch.table.via_clock_init.15, ptr @switch.table.via_clock_init.16, ptr @switch.table.via_clock_init.17, ptr @switch.table.via_clock_init.18, ptr @switch.table.set_primary_clock_source, ptr @switch.table.set_secondary_clock_source], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_set_clock_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_set_clock_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_set_pll_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.via_clock_init to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.via_clock_init.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.via_clock_init.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.via_clock_init.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.via_clock_init.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.via_clock_init.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.via_clock_init.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.via_clock_init.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.via_clock_init.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.via_clock_init.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.set_primary_clock_source to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.set_secondary_clock_source to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @via_clock_init(ptr noundef writeonly %clock, i32 noundef %gfx_chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %gfx_chip, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.via_clock_init, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep52 = getelementptr inbounds [13 x ptr], ptr @switch.table.via_clock_init.10, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep52 to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load53 = load ptr, ptr %switch.gep52, align 4
  %switch.gep54 = getelementptr inbounds [13 x ptr], ptr @switch.table.via_clock_init.11, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep54 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load55 = load ptr, ptr %switch.gep54, align 4
  %switch.gep56 = getelementptr inbounds [13 x ptr], ptr @switch.table.via_clock_init.12, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep56 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load57 = load ptr, ptr %switch.gep56, align 4
  %switch.gep58 = getelementptr inbounds [13 x ptr], ptr @switch.table.via_clock_init.13, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep58 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load59 = load ptr, ptr %switch.gep58, align 4
  %switch.gep60 = getelementptr inbounds [13 x ptr], ptr @switch.table.via_clock_init.14, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep60 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load61 = load ptr, ptr %switch.gep60, align 4
  %switch.gep62 = getelementptr inbounds [13 x ptr], ptr @switch.table.via_clock_init.15, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep62 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load63 = load ptr, ptr %switch.gep62, align 4
  %switch.gep64 = getelementptr inbounds [13 x ptr], ptr @switch.table.via_clock_init.16, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep64 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load65 = load ptr, ptr %switch.gep64, align 4
  %switch.gep66 = getelementptr inbounds [13 x ptr], ptr @switch.table.via_clock_init.17, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep66 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load67 = load ptr, ptr %switch.gep66, align 4
  %switch.gep68 = getelementptr inbounds [13 x ptr], ptr @switch.table.via_clock_init.18, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep68 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load69 = load ptr, ptr %switch.gep68, align 4
  %11 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %switch.load, ptr %clock, align 4
  %set_primary_clock_source14 = getelementptr inbounds %struct.via_clock, ptr %clock, i32 0, i32 1
  %12 = ptrtoint ptr %set_primary_clock_source14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %switch.load53, ptr %set_primary_clock_source14, align 4
  %set_primary_pll_state15 = getelementptr inbounds %struct.via_clock, ptr %clock, i32 0, i32 2
  %13 = ptrtoint ptr %set_primary_pll_state15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %switch.load55, ptr %set_primary_pll_state15, align 4
  %set_primary_pll16 = getelementptr inbounds %struct.via_clock, ptr %clock, i32 0, i32 3
  %14 = ptrtoint ptr %set_primary_pll16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %switch.load57, ptr %set_primary_pll16, align 4
  %set_secondary_clock_state17 = getelementptr inbounds %struct.via_clock, ptr %clock, i32 0, i32 4
  %15 = ptrtoint ptr %set_secondary_clock_state17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %switch.load59, ptr %set_secondary_clock_state17, align 4
  %set_secondary_clock_source18 = getelementptr inbounds %struct.via_clock, ptr %clock, i32 0, i32 5
  %16 = ptrtoint ptr %set_secondary_clock_source18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %switch.load61, ptr %set_secondary_clock_source18, align 4
  %set_secondary_pll_state19 = getelementptr inbounds %struct.via_clock, ptr %clock, i32 0, i32 6
  %17 = ptrtoint ptr %set_secondary_pll_state19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %switch.load63, ptr %set_secondary_pll_state19, align 4
  %set_secondary_pll20 = getelementptr inbounds %struct.via_clock, ptr %clock, i32 0, i32 7
  %18 = ptrtoint ptr %set_secondary_pll20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %switch.load65, ptr %set_secondary_pll20, align 4
  %set_engine_pll_state21 = getelementptr inbounds %struct.via_clock, ptr %clock, i32 0, i32 8
  %19 = ptrtoint ptr %set_engine_pll_state21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %switch.load67, ptr %set_engine_pll_state21, align 4
  %set_engine_pll22 = getelementptr inbounds %struct.via_clock, ptr %clock, i32 0, i32 9
  %20 = ptrtoint ptr %set_engine_pll22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %switch.load69, ptr %set_engine_pll22, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_set_clock_state(i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_set_clock_source(i32 noundef %source, i1 noundef zeroext %use_pll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_set_pll_state(i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cle266_set_primary_pll([1 x i32] %config.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pll.coerce.fca.0.extract.i = extractvalue [1 x i32] %config.coerce, 0
  %pll.sroa.2.0.extract.shift.i = lshr i32 %pll.coerce.fca.0.extract.i, 8
  %conv1.i = shl i32 %pll.coerce.fca.0.extract.i, 6
  %shl2.i = and i32 %conv1.i, 16128
  %or.i = or i32 %shl2.i, %pll.sroa.2.0.extract.shift.i
  %or4.i = or i32 %pll.sroa.2.0.extract.shift.i, %conv1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #5, !srcloc !35
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %or.i.i = or i8 %0, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i) #5, !srcloc !35
  %conv.i = trunc i32 %or4.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 70) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv.i) #5, !srcloc !35
  %shr.i = lshr i32 %or.i, 8
  %conv2.i = trunc i32 %shr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 71) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv2.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #5, !srcloc !35
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i4.i = and i8 %1, -3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i4.i) #5, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cle266_set_secondary_pll([1 x i32] %config.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pll.coerce.fca.0.extract.i = extractvalue [1 x i32] %config.coerce, 0
  %pll.sroa.2.0.extract.shift.i = lshr i32 %pll.coerce.fca.0.extract.i, 8
  %conv1.i = shl i32 %pll.coerce.fca.0.extract.i, 6
  %shl2.i = and i32 %conv1.i, 16128
  %or.i = or i32 %shl2.i, %pll.sroa.2.0.extract.shift.i
  %or4.i = or i32 %pll.sroa.2.0.extract.shift.i, %conv1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #5, !srcloc !35
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %or.i.i = or i8 %0, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i) #5, !srcloc !35
  %conv.i = trunc i32 %or4.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 68) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv.i) #5, !srcloc !35
  %shr.i = lshr i32 %or.i, 8
  %conv2.i = trunc i32 %shr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 69) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv2.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #5, !srcloc !35
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i4.i = and i8 %1, -5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i4.i) #5, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_set_pll([1 x i32] %config.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_primary_clock_state(i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %state, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %value.0 = phi i8 [ 0, %sw.bb1 ], [ 32, %entry.sw.epilog_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 27) #5, !srcloc !35
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %1, -49
  %or.i = or i8 %and15.i, %value.0
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #5, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_primary_clock_source(i32 noundef %source, i1 noundef zeroext %use_pll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %source, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %entry.set_clock_source_common.exit_crit_edge

entry.set_clock_source_common.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_clock_source_common.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.set_primary_clock_source, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %1)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %set_clock_source_common.exit

set_clock_source_common.exit:                     ; preds = %switch.lookup, %entry.set_clock_source_common.exit_crit_edge
  %data.0.i = phi i8 [ 0, %entry.set_clock_source_common.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %not.use_pll.i = xor i1 %use_pll, true
  %2 = zext i1 %not.use_pll.i to i8
  %spec.select.i = or i8 %data.0.i, %2
  %shl = shl nuw i8 %spec.select.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 108) #5, !srcloc !35
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %3, 15
  %or.i = or i8 %and15.i, %shl
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #5, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_primary_pll_state(i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %state, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %value.0 = phi i8 [ 0, %sw.bb1 ], [ 32, %entry.sw.epilog_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 45) #5, !srcloc !35
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %1, -49
  %or.i = or i8 %and15.i, %value.0
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #5, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k800_set_primary_pll([1 x i32] %config.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pll.coerce.fca.0.extract.i = extractvalue [1 x i32] %config.coerce, 0
  %pll.sroa.0.0.extract.shift.i = lshr i32 %pll.coerce.fca.0.extract.i, 16
  %0 = shl i32 %pll.coerce.fca.0.extract.i, 8
  %sub.i = and i32 %0, 16711680
  %shl.i = add nsw i32 %sub.i, -131072
  %conv1.i = shl i32 %pll.coerce.fca.0.extract.i, 10
  %shl2.i = and i32 %conv1.i, 261120
  %sub4.i = add nsw i32 %pll.sroa.0.0.extract.shift.i, -2
  %or.i = or i32 %sub4.i, %shl2.i
  %or5.i = or i32 %or.i, %shl.i
  tail call fastcc void @k800_set_primary_pll_encoded(i32 noundef %or5.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_secondary_clock_state(i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %state, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %value.0 = phi i8 [ 0, %sw.bb1 ], [ -128, %entry.sw.epilog_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 27) #5, !srcloc !35
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %1, 63
  %or.i = or i8 %and15.i, %value.0
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #5, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_secondary_clock_source(i32 noundef %source, i1 noundef zeroext %use_pll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %source, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %entry.set_clock_source_common.exit_crit_edge

entry.set_clock_source_common.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_clock_source_common.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.set_secondary_clock_source, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %1)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %set_clock_source_common.exit

set_clock_source_common.exit:                     ; preds = %switch.lookup, %entry.set_clock_source_common.exit_crit_edge
  %data.0.i = phi i8 [ 0, %entry.set_clock_source_common.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %not.use_pll.i = xor i1 %use_pll, true
  %2 = zext i1 %not.use_pll.i to i8
  %spec.select.i = or i8 %data.0.i, %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 108) #5, !srcloc !35
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %3, -16
  %or.i = or i8 %spec.select.i, %and15.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #5, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_secondary_pll_state(i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %state, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %value.0 = phi i8 [ 0, %sw.bb1 ], [ 8, %entry.sw.epilog_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 45) #5, !srcloc !35
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %1, -13
  %or.i = or i8 %and15.i, %value.0
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #5, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k800_set_secondary_pll([1 x i32] %config.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pll.coerce.fca.0.extract.i = extractvalue [1 x i32] %config.coerce, 0
  %pll.sroa.0.0.extract.shift.i = lshr i32 %pll.coerce.fca.0.extract.i, 16
  %0 = shl i32 %pll.coerce.fca.0.extract.i, 8
  %sub.i = and i32 %0, 16711680
  %shl.i = add nsw i32 %sub.i, -131072
  %conv1.i = shl i32 %pll.coerce.fca.0.extract.i, 10
  %shl2.i = and i32 %conv1.i, 261120
  %sub4.i = add nsw i32 %pll.sroa.0.0.extract.shift.i, -2
  %or.i = or i32 %sub4.i, %shl2.i
  %or5.i = or i32 %or.i, %shl.i
  tail call fastcc void @k800_set_secondary_pll_encoded(i32 noundef %or5.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_engine_pll_state(i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %state, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %value.0 = phi i8 [ 0, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 45) #5, !srcloc !35
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i = and i8 %1, -4
  %or.i = or i8 %and15.i, %value.0
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #5, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k800_set_engine_pll([1 x i32] %config.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pll.coerce.fca.0.extract.i = extractvalue [1 x i32] %config.coerce, 0
  %pll.sroa.0.0.extract.shift.i = lshr i32 %pll.coerce.fca.0.extract.i, 16
  %0 = shl i32 %pll.coerce.fca.0.extract.i, 8
  %sub.i = and i32 %0, 16711680
  %shl.i = add nsw i32 %sub.i, -131072
  %conv1.i = shl i32 %pll.coerce.fca.0.extract.i, 10
  %shl2.i = and i32 %conv1.i, 261120
  %sub4.i = add nsw i32 %pll.sroa.0.0.extract.shift.i, -2
  %or.i = or i32 %sub4.i, %shl2.i
  %or5.i = or i32 %or.i, %shl.i
  tail call fastcc void @set_engine_pll_encoded(i32 noundef %or5.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx855_set_primary_pll([1 x i32] %config.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pll.coerce.fca.0.extract.i = extractvalue [1 x i32] %config.coerce, 0
  %pll.sroa.0.0.extract.shift.i = lshr i32 %pll.coerce.fca.0.extract.i, 16
  %0 = shl i32 %pll.coerce.fca.0.extract.i, 8
  %shl.i = and i32 %0, 16711680
  %conv1.i = shl i32 %pll.coerce.fca.0.extract.i, 10
  %shl2.i = and i32 %conv1.i, 261120
  %or.i = or i32 %shl2.i, %pll.sroa.0.0.extract.shift.i
  %or4.i = or i32 %or.i, %shl.i
  tail call fastcc void @k800_set_primary_pll_encoded(i32 noundef %or4.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx855_set_secondary_pll([1 x i32] %config.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pll.coerce.fca.0.extract.i = extractvalue [1 x i32] %config.coerce, 0
  %pll.sroa.0.0.extract.shift.i = lshr i32 %pll.coerce.fca.0.extract.i, 16
  %0 = shl i32 %pll.coerce.fca.0.extract.i, 8
  %shl.i = and i32 %0, 16711680
  %conv1.i = shl i32 %pll.coerce.fca.0.extract.i, 10
  %shl2.i = and i32 %conv1.i, 261120
  %or.i = or i32 %shl2.i, %pll.sroa.0.0.extract.shift.i
  %or4.i = or i32 %or.i, %shl.i
  tail call fastcc void @k800_set_secondary_pll_encoded(i32 noundef %or4.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx855_set_engine_pll([1 x i32] %config.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pll.coerce.fca.0.extract.i = extractvalue [1 x i32] %config.coerce, 0
  %pll.sroa.0.0.extract.shift.i = lshr i32 %pll.coerce.fca.0.extract.i, 16
  %0 = shl i32 %pll.coerce.fca.0.extract.i, 8
  %shl.i = and i32 %0, 16711680
  %conv1.i = shl i32 %pll.coerce.fca.0.extract.i, 10
  %shl2.i = and i32 %conv1.i, 261120
  %or.i = or i32 %shl2.i, %pll.sroa.0.0.extract.shift.i
  %or4.i = or i32 %or.i, %shl.i
  tail call fastcc void @set_engine_pll_encoded(i32 noundef %or4.i)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @k800_set_primary_pll_encoded(i32 noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #5, !srcloc !35
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %or.i = or i8 %0, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #5, !srcloc !35
  %conv = trunc i32 %data to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 68) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv) #5, !srcloc !35
  %shr = lshr i32 %data, 8
  %conv2 = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 69) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv2) #5, !srcloc !35
  %shr3 = lshr i32 %data, 16
  %conv5 = trunc i32 %shr3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 70) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv5) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #5, !srcloc !35
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i8 = and i8 %1, -3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i8) #5, !srcloc !35
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @k800_set_secondary_pll_encoded(i32 noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #5, !srcloc !35
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %or.i = or i8 %0, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #5, !srcloc !35
  %conv = trunc i32 %data to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 74) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv) #5, !srcloc !35
  %shr = lshr i32 %data, 8
  %conv2 = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 75) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv2) #5, !srcloc !35
  %shr3 = lshr i32 %data, 16
  %conv5 = trunc i32 %shr3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 76) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv5) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #5, !srcloc !35
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i8 = and i8 %1, -5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i8) #5, !srcloc !35
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_engine_pll_encoded(i32 noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #5, !srcloc !35
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %or.i = or i8 %0, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #5, !srcloc !35
  %conv = trunc i32 %data to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 71) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv) #5, !srcloc !35
  %shr = lshr i32 %data, 8
  %conv2 = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 72) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv2) #5, !srcloc !35
  %shr3 = lshr i32 %data, 16
  %conv5 = trunc i32 %shr3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 73) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv5) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 64) #5, !srcloc !35
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %and15.i8 = and i8 %1, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i8) #5, !srcloc !35
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/via_clock.c", i32 260, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dummy_set_clock_state._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dummy_set_clock_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/via_clock.c", i32 18, i32 31}
!8 = distinct !{null, !9, !"via_slap", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/via/via_clock.c", i32 18, i32 20}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/via/via_clock.c", i32 265, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dummy_set_clock_source._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @dummy_set_clock_source._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/via/via_clock.c", i32 270, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dummy_set_pll_state._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @dummy_set_pll_state._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/via/via_clock.c", i32 275, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dummy_set_pll._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @dummy_set_pll._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2154430311}
!35 = !{i64 1259252}
!36 = !{i64 1259647}
!37 = !{i64 2154430701}
!38 = !{i64 2154430936}
!39 = !{i64 2154429495}
!40 = !{i64 2154429818}
