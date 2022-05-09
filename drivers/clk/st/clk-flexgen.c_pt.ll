; ModuleID = '/llk/IR_all_yes/drivers/clk/st/clk-flexgen.c_pt.bc'
source_filename = "../drivers/clk/st/clk-flexgen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clkgen_data = type { i32, i8, ptr, i32 }
%struct.clkgen_clk_out = type { ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.flexgen = type { %struct.clk_hw, %struct.clk_mux, %struct.clk_gate, %struct.clk_divider, %struct.clk_gate, %struct.clk_divider, %struct.clk_gate, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@__of_table_flexgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_flexgen_setup }, section "__clk_of_table", align 4
@flexgen_of_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_audio }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_video }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih407-a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih407_a0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih410-a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih410_a0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih407-c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih407_c0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih410-c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih410_c0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih418-c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih418_c0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih407-d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih407_d0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih410-d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih410_d0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih407-d2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih407_d2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih418-d2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih418_d2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih407-d3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih407_d3 }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@st_of_flexgen_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: Failed to get number of output clocks (%d)\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_of_flexgen_setup\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/st/clk-flexgen.c\00", [35 x i8] zeroinitializer }, align 32
@st_of_flexgen_setup._entry_ptr = internal global ptr @st_of_flexgen_setup._entry, section ".printk_index", align 4
@st_of_flexgen_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rlock\00", [26 x i8] zeroinitializer }, align 32
@clkgen_audio = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 4, i8 0, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@clkgen_video = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 4, i8 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih407_a0 = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih407_a0_clk_out, i32 1 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih410_a0 = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih410_a0_clk_out, i32 2 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih407_c0 = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih407_c0_clk_out, i32 32 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih410_c0 = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih410_c0_clk_out, i32 39 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih418_c0 = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih418_c0_clk_out, i32 42 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih407_d0 = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 4, i8 0, ptr @clkgen_stih407_d0_clk_out, i32 4 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih410_d0 = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 4, i8 0, ptr @clkgen_stih410_d0_clk_out, i32 6 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih407_d2 = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 4, i8 1, ptr @clkgen_stih407_d2_clk_out, i32 16 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih418_d2 = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 4, i8 1, ptr @clkgen_stih418_d2_clk_out, i32 48 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih407_d3 = internal constant { %struct.clkgen_data, [16 x i8] } { %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih407_d3_clk_out, i32 8 }, [16 x i8] zeroinitializer }, align 32
@clkgen_stih407_a0_clk_out = internal constant { [1 x %struct.clkgen_clk_out], [24 x i8] } { [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.5, i32 2048 }], [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-ic-lmi0\00", [20 x i8] zeroinitializer }, align 32
@clkgen_stih410_a0_clk_out = internal constant { [2 x %struct.clkgen_clk_out], [16 x i8] } { [2 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.5, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.6, i32 2048 }], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-ic-lmi1\00", [20 x i8] zeroinitializer }, align 32
@clkgen_stih407_c0_clk_out = internal constant { [32 x %struct.clkgen_clk_out], [64 x i8] } { [32 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.7, i32 0 }, %struct.clkgen_clk_out { ptr @.str.8, i32 0 }, %struct.clkgen_clk_out { ptr @.str.9, i32 0 }, %struct.clkgen_clk_out { ptr @.str.10, i32 0 }, %struct.clkgen_clk_out { ptr @.str.11, i32 0 }, %struct.clkgen_clk_out { ptr @.str.12, i32 0 }, %struct.clkgen_clk_out { ptr @.str.13, i32 0 }, %struct.clkgen_clk_out { ptr @.str.14, i32 0 }, %struct.clkgen_clk_out { ptr @.str.15, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.16, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.17, i32 0 }, %struct.clkgen_clk_out { ptr @.str.18, i32 0 }, %struct.clkgen_clk_out { ptr @.str.19, i32 0 }, %struct.clkgen_clk_out { ptr @.str.20, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.21, i32 0 }, %struct.clkgen_clk_out { ptr @.str.22, i32 0 }, %struct.clkgen_clk_out { ptr @.str.23, i32 0 }, %struct.clkgen_clk_out { ptr @.str.24, i32 0 }, %struct.clkgen_clk_out { ptr @.str.25, i32 0 }, %struct.clkgen_clk_out { ptr @.str.26, i32 0 }, %struct.clkgen_clk_out { ptr @.str.27, i32 0 }, %struct.clkgen_clk_out { ptr @.str.28, i32 0 }, %struct.clkgen_clk_out { ptr @.str.29, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.30, i32 0 }, %struct.clkgen_clk_out { ptr @.str.31, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.32, i32 0 }, %struct.clkgen_clk_out { ptr @.str.33, i32 0 }, %struct.clkgen_clk_out { ptr @.str.34, i32 0 }, %struct.clkgen_clk_out { ptr @.str.35, i32 0 }, %struct.clkgen_clk_out { ptr @.str.36, i32 0 }, %struct.clkgen_clk_out { ptr @.str.37, i32 0 }, %struct.clkgen_clk_out { ptr @.str.38, i32 0 }], [64 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-icn-gpu\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk-fdma\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk-nand\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk-hva\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-proc-stfe\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-proc-tp\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-rx-icn-dmu\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-rx-icn-hva\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-icn-cpu\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-tx-icn-dmu\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-mmc-0\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-mmc-1\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-jpegdec\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-ext2fa9\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-ic-bdisp-0\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-ic-bdisp-1\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-pp-dmu\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-vid-dmu\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-dss-lpc\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk-st231-aud-0\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-st231-gp-1\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-st231-dmu\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-icn-lmi\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk-tx-icn-disp-1\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-icn-sbc\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-stfe-frc2\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-eth-phy\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk-eth-ref-phyclk\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-flash-promip\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-main-disp\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-aux-disp\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-compo-dvp\00", [18 x i8] zeroinitializer }, align 32
@clkgen_stih410_c0_clk_out = internal constant { [39 x %struct.clkgen_clk_out], [72 x i8] } { [39 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.7, i32 0 }, %struct.clkgen_clk_out { ptr @.str.8, i32 0 }, %struct.clkgen_clk_out { ptr @.str.9, i32 0 }, %struct.clkgen_clk_out { ptr @.str.10, i32 0 }, %struct.clkgen_clk_out { ptr @.str.11, i32 0 }, %struct.clkgen_clk_out { ptr @.str.12, i32 0 }, %struct.clkgen_clk_out { ptr @.str.13, i32 0 }, %struct.clkgen_clk_out { ptr @.str.14, i32 0 }, %struct.clkgen_clk_out { ptr @.str.15, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.16, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.17, i32 0 }, %struct.clkgen_clk_out { ptr @.str.18, i32 0 }, %struct.clkgen_clk_out { ptr @.str.19, i32 0 }, %struct.clkgen_clk_out { ptr @.str.20, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.21, i32 0 }, %struct.clkgen_clk_out { ptr @.str.22, i32 0 }, %struct.clkgen_clk_out { ptr @.str.23, i32 0 }, %struct.clkgen_clk_out { ptr @.str.24, i32 0 }, %struct.clkgen_clk_out { ptr @.str.25, i32 0 }, %struct.clkgen_clk_out { ptr @.str.26, i32 0 }, %struct.clkgen_clk_out { ptr @.str.27, i32 0 }, %struct.clkgen_clk_out { ptr @.str.28, i32 0 }, %struct.clkgen_clk_out { ptr @.str.29, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.30, i32 0 }, %struct.clkgen_clk_out { ptr @.str.31, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.32, i32 0 }, %struct.clkgen_clk_out { ptr @.str.33, i32 0 }, %struct.clkgen_clk_out { ptr @.str.34, i32 0 }, %struct.clkgen_clk_out { ptr @.str.35, i32 0 }, %struct.clkgen_clk_out { ptr @.str.36, i32 0 }, %struct.clkgen_clk_out { ptr @.str.37, i32 0 }, %struct.clkgen_clk_out { ptr @.str.38, i32 0 }, %struct.clkgen_clk_out { ptr @.str.39, i32 0 }, %struct.clkgen_clk_out { ptr @.str.40, i32 0 }, %struct.clkgen_clk_out { ptr @.str.41, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.42, i32 0 }, %struct.clkgen_clk_out { ptr @.str.43, i32 0 }, %struct.clkgen_clk_out { ptr @.str.44, i32 0 }, %struct.clkgen_clk_out { ptr @.str.45, i32 0 }], [72 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-tx-icn-hades\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-rx-icn-hades\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-icn-reg-16\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-pp-hades\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk-clust-hades\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-hwpe-hades\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-fc-hades\00", [19 x i8] zeroinitializer }, align 32
@clkgen_stih418_c0_clk_out = internal constant { [42 x %struct.clkgen_clk_out], [80 x i8] } { [42 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.7, i32 0 }, %struct.clkgen_clk_out { ptr @.str.8, i32 0 }, %struct.clkgen_clk_out { ptr @.str.9, i32 0 }, %struct.clkgen_clk_out { ptr @.str.10, i32 0 }, %struct.clkgen_clk_out { ptr @.str.11, i32 0 }, %struct.clkgen_clk_out { ptr @.str.46, i32 0 }, %struct.clkgen_clk_out { ptr @.str.13, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.14, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.15, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.16, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.17, i32 0 }, %struct.clkgen_clk_out { ptr @.str.18, i32 0 }, %struct.clkgen_clk_out { ptr @.str.19, i32 0 }, %struct.clkgen_clk_out { ptr @.str.47, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.48, i32 0 }, %struct.clkgen_clk_out { ptr @.str.49, i32 0 }, %struct.clkgen_clk_out { ptr @.str.23, i32 0 }, %struct.clkgen_clk_out { ptr @.str.24, i32 0 }, %struct.clkgen_clk_out { ptr @.str.25, i32 0 }, %struct.clkgen_clk_out { ptr @.str.26, i32 0 }, %struct.clkgen_clk_out { ptr @.str.27, i32 0 }, %struct.clkgen_clk_out { ptr @.str.28, i32 0 }, %struct.clkgen_clk_out { ptr @.str.29, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.50, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.31, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.32, i32 0 }, %struct.clkgen_clk_out { ptr @.str.51, i32 0 }, %struct.clkgen_clk_out { ptr @.str.34, i32 0 }, %struct.clkgen_clk_out { ptr @.str.35, i32 0 }, %struct.clkgen_clk_out { ptr @.str.36, i32 0 }, %struct.clkgen_clk_out { ptr @.str.37, i32 0 }, %struct.clkgen_clk_out { ptr @.str.38, i32 0 }, %struct.clkgen_clk_out { ptr @.str.39, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.40, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.41, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.52, i32 0 }, %struct.clkgen_clk_out { ptr @.str.53, i32 0 }, %struct.clkgen_clk_out { ptr @.str.54, i32 0 }, %struct.clkgen_clk_out { ptr @.str.55, i32 0 }, %struct.clkgen_clk_out { ptr @.str.56, i32 0 }, %struct.clkgen_clk_out { ptr @.str.57, i32 0 }, %struct.clkgen_clk_out { ptr @.str.58, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk-tp\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-icn-reg\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-proc-bdisp-0\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-proc-bdisp-1\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-tx-icn-1\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-eth-phyref\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-pp-hevc\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-clust-hevc\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-hwpe-hevc\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-fc-hevc\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk-proc-mixer\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-proc-sc\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-avsp-hevc\00", [18 x i8] zeroinitializer }, align 32
@clkgen_stih407_d0_clk_out = internal constant { [4 x %struct.clkgen_clk_out], [32 x i8] } { [4 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.59, i32 0 }, %struct.clkgen_clk_out { ptr @.str.60, i32 0 }, %struct.clkgen_clk_out { ptr @.str.61, i32 0 }, %struct.clkgen_clk_out { ptr @.str.62, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-pcm-0\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-pcm-1\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-pcm-2\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-spdiff\00", [21 x i8] zeroinitializer }, align 32
@clkgen_stih410_d0_clk_out = internal constant { [6 x %struct.clkgen_clk_out], [48 x i8] } { [6 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.59, i32 0 }, %struct.clkgen_clk_out { ptr @.str.60, i32 0 }, %struct.clkgen_clk_out { ptr @.str.61, i32 0 }, %struct.clkgen_clk_out { ptr @.str.62, i32 0 }, %struct.clkgen_clk_out { ptr @.str.63, i32 0 }, %struct.clkgen_clk_out { ptr @.str.64, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk-pcmr10-master\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-usb2-phy\00", [19 x i8] zeroinitializer }, align 32
@clkgen_stih407_d2_clk_out = internal constant { [16 x %struct.clkgen_clk_out], [32 x i8] } { [16 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.65, i32 0 }, %struct.clkgen_clk_out { ptr @.str.66, i32 0 }, %struct.clkgen_clk_out { ptr @.str.67, i32 0 }, %struct.clkgen_clk_out { ptr @.str.68, i32 0 }, %struct.clkgen_clk_out { ptr @.str.69, i32 0 }, %struct.clkgen_clk_out { ptr @.str.70, i32 0 }, %struct.clkgen_clk_out { ptr @.str.71, i32 0 }, %struct.clkgen_clk_out { ptr @.str.72, i32 0 }, %struct.clkgen_clk_out { ptr @.str.73, i32 0 }, %struct.clkgen_clk_out { ptr @.str.74, i32 0 }, %struct.clkgen_clk_out { ptr @.str.75, i32 0 }, %struct.clkgen_clk_out { ptr @.str.76, i32 0 }, %struct.clkgen_clk_out { ptr @.str.77, i32 0 }, %struct.clkgen_clk_out { ptr @.str.78, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.80, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk-pix-main-disp\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-pix-pip\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-pix-gdp1\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-pix-gdp2\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-pix-gdp3\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-pix-gdp4\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-pix-aux-disp\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk-denc\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-pix-hddac\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-hddac\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-sddac\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-pix-dvo\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk-dvo\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-pix-hdmi\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-tmds-hdmi\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk-ref-hdmiphy\00", [16 x i8] zeroinitializer }, align 32
@clkgen_stih418_d2_clk_out = internal constant { [48 x %struct.clkgen_clk_out], [96 x i8] } { [48 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.65, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.82, i32 0 }, %struct.clkgen_clk_out { ptr @.str.71, i32 0 }, %struct.clkgen_clk_out { ptr @.str.72, i32 0 }, %struct.clkgen_clk_out { ptr @.str.73, i32 0 }, %struct.clkgen_clk_out { ptr @.str.74, i32 0 }, %struct.clkgen_clk_out { ptr @.str.75, i32 0 }, %struct.clkgen_clk_out { ptr @.str.76, i32 0 }, %struct.clkgen_clk_out { ptr @.str.77, i32 0 }, %struct.clkgen_clk_out { ptr @.str.78, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.80, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }, %struct.clkgen_clk_out { ptr @.str.83, i32 0 }], [96 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk-tmds-hdmi-div2\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk-vp9\00", [24 x i8] zeroinitializer }, align 32
@clkgen_stih407_d3_clk_out = internal constant { [8 x %struct.clkgen_clk_out], [32 x i8] } { [8 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.84, i32 0 }, %struct.clkgen_clk_out { ptr @.str.85, i32 0 }, %struct.clkgen_clk_out { ptr @.str.86, i32 0 }, %struct.clkgen_clk_out { ptr @.str.87, i32 0 }, %struct.clkgen_clk_out { ptr @.str.88, i32 0 }, %struct.clkgen_clk_out { ptr @.str.89, i32 0 }, %struct.clkgen_clk_out { ptr @.str.90, i32 0 }, %struct.clkgen_clk_out { ptr @.str.91, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-stfe-frc1\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-tsout-0\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-tsout-1\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk-mchi\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk-vsens-compo\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk-frc1-remote\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-lpc-0\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-lpc-1\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@flexgen_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @flexgen_enable, ptr @flexgen_disable, ptr @flexgen_is_enabled, ptr null, ptr null, ptr null, ptr @flexgen_recalc_rate, ptr @flexgen_round_rate, ptr null, ptr @flexgen_set_parent, ptr @flexgen_get_parent, ptr @flexgen_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_register_flexgen.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.92, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_flexgen\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_register_flexgen\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: parent %s rate %u\0A\00", [41 x i8] zeroinitializer }, align 32
@clk_gate_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@flexgen_enable.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.92, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flexgen_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: flexgen output enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@flexgen_disable.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.92, ptr @.str.97, ptr @.str.3, ptr @.str.98, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"flexgen_disable\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: flexgen output disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@clk_mux_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"flexgen_of_match\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 589, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 684, i32 39 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 686, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 703, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [13 x i8] c"clkgen_audio\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 296, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant [13 x i8] c"clkgen_video\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 300, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"clkgen_stih407_a0\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 310, i32 33 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"clkgen_stih410_a0\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 321, i32 33 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"clkgen_stih407_c0\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 366, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"clkgen_stih410_c0\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 419, i32 33 }
@___asan_gen_.141 = private unnamed_addr constant [18 x i8] c"clkgen_stih418_c0\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 479, i32 33 }
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"clkgen_stih407_d0\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 491, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"clkgen_stih410_d0\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 506, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant [18 x i8] c"clkgen_stih407_d2\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 531, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant [18 x i8] c"clkgen_stih418_d2\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 566, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"clkgen_stih407_d3\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 584, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant [26 x i8] c"clkgen_stih407_a0_clk_out\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 305, i32 36 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 307, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant [26 x i8] c"clkgen_stih410_a0_clk_out\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 315, i32 36 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 318, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant [26 x i8] c"clkgen_stih407_c0_clk_out\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 326, i32 36 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 327, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 328, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 329, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 330, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 331, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 332, i32 12 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 333, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 334, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 336, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 338, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 339, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 340, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 341, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 343, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 344, i32 12 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 345, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 346, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 347, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 348, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 349, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 350, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 351, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 353, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 354, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 356, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 357, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 358, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 359, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 360, i32 12 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 361, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 362, i32 12 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 363, i32 12 }
@___asan_gen_.270 = private unnamed_addr constant [26 x i8] c"clkgen_stih410_c0_clk_out\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 371, i32 36 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 409, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 410, i32 12 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 412, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 413, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 414, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 415, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 416, i32 12 }
@___asan_gen_.294 = private unnamed_addr constant [26 x i8] c"clkgen_stih418_c0_clk_out\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 424, i32 36 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 430, i32 12 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 442, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 443, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 444, i32 12 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 454, i32 12 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 458, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 470, i32 12 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 471, i32 12 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 472, i32 12 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 473, i32 12 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 474, i32 12 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 475, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 476, i32 12 }
@___asan_gen_.336 = private unnamed_addr constant [26 x i8] c"clkgen_stih407_d0_clk_out\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 484, i32 36 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 485, i32 12 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 486, i32 12 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 487, i32 12 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 488, i32 12 }
@___asan_gen_.351 = private unnamed_addr constant [26 x i8] c"clkgen_stih410_d0_clk_out\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 497, i32 36 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 502, i32 12 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 503, i32 12 }
@___asan_gen_.360 = private unnamed_addr constant [26 x i8] c"clkgen_stih407_d2_clk_out\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 512, i32 36 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 513, i32 12 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 514, i32 12 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 515, i32 12 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 516, i32 12 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 517, i32 12 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 518, i32 12 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 519, i32 12 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 520, i32 12 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 521, i32 12 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 522, i32 12 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 523, i32 12 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 524, i32 12 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 525, i32 12 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 526, i32 12 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 527, i32 12 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 528, i32 12 }
@___asan_gen_.411 = private unnamed_addr constant [26 x i8] c"clkgen_stih418_d2_clk_out\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 538, i32 36 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 540, i32 12 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 544, i32 12 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 563, i32 12 }
@___asan_gen_.423 = private unnamed_addr constant [26 x i8] c"clkgen_stih407_d3_clk_out\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 573, i32 36 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 574, i32 12 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 575, i32 12 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 576, i32 12 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 577, i32 12 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 578, i32 12 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 579, i32 12 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 580, i32 12 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 581, i32 12 }
@___asan_gen_.450 = private unnamed_addr constant [12 x i8] c"flexgen_ops\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 194, i32 29 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 270, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 66, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.472 = private constant [32 x i8] c"../drivers/clk/st/clk-flexgen.c\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 80, i32 2 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__of_table_flexgen, ptr @st_of_flexgen_setup._entry, ptr @st_of_flexgen_setup._entry_ptr, ptr @flexgen_of_match, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @st_of_flexgen_setup.__key, ptr @.str.4, ptr @clkgen_audio, ptr @clkgen_video, ptr @clkgen_stih407_a0, ptr @clkgen_stih410_a0, ptr @clkgen_stih407_c0, ptr @clkgen_stih410_c0, ptr @clkgen_stih418_c0, ptr @clkgen_stih407_d0, ptr @clkgen_stih410_d0, ptr @clkgen_stih407_d2, ptr @clkgen_stih418_d2, ptr @clkgen_stih407_d3, ptr @clkgen_stih407_a0_clk_out, ptr @.str.5, ptr @clkgen_stih410_a0_clk_out, ptr @.str.6, ptr @clkgen_stih407_c0_clk_out, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @clkgen_stih410_c0_clk_out, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @clkgen_stih418_c0_clk_out, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @clkgen_stih407_d0_clk_out, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @clkgen_stih410_d0_clk_out, ptr @.str.63, ptr @.str.64, ptr @clkgen_stih407_d2_clk_out, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @clkgen_stih418_d2_clk_out, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @clkgen_stih407_d3_clk_out, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @flexgen_ops, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexgen_of_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_of_flexgen_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_of_flexgen_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_audio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_video to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih407_a0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih410_a0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih407_c0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih410_c0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih418_c0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih407_d0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih410_d0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih407_d2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih418_d2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih407_d3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih407_a0_clk_out to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih410_a0_clk_out to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih407_c0_clk_out to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih410_c0_clk_out to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih418_c0_clk_out to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih407_d0_clk_out to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih410_d0_clk_out to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih407_d2_clk_out to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih418_d2_clk_out to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_stih407_d3_clk_out to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexgen_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_of_flexgen_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %num_parents = alloca i32, align 4
  %flex_flags = alloca i32, align 4
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_parents) #8
  %0 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_parents, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flex_flags) #8
  %1 = ptrtoint ptr %flex_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %flex_flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !257
  %call = tail call ptr @of_get_parent(ptr noundef %np) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup85_crit_edge, label %if.end

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #8
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup85_crit_edge, label %if.end4

if.end.cleanup85_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc ptr @flexgen_get_parents(ptr noundef %np, ptr noundef nonnull %num_parents) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %call1) #8
  br label %cleanup85

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @of_match_node(ptr noundef nonnull @flexgen_of_match, ptr noundef %np) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %data12 = getelementptr inbounds %struct.of_device_id, ptr %call9, i32 0, i32 3
  %3 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data12, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = ptrtoint ptr %flex_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %flex_flags, align 4
  %mode = getelementptr inbounds %struct.clkgen_data, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode, align 4, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13 = icmp ne i8 %9, 0
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %data.0 = phi ptr [ %4, %if.then11 ], [ null, %if.end8.if.end14_crit_edge ]
  %clk_mode.0.off0 = phi i1 [ %tobool13, %if.then11 ], [ false, %if.end8.if.end14_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 8) #12
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %err.thread166, label %if.end18

err.thread166:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %call1) #8
  br label %if.end84

if.end18:                                         ; preds = %if.end14
  %tobool19.not = icmp eq ptr %data.0, null
  br i1 %tobool19.not, label %if.end18.if.then23_crit_edge, label %lor.lhs.false

if.end18.if.then23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.end18
  %outputs_nb = getelementptr inbounds %struct.clkgen_data, ptr %data.0, i32 0, i32 3
  %11 = ptrtoint ptr %outputs_nb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outputs_nb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false21

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %outputs = getelementptr inbounds %struct.clkgen_data, ptr %data.0, i32 0, i32 2
  %13 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %outputs, align 4
  %tobool22.not = icmp eq ptr %14, null
  br i1 %tobool22.not, label %lor.lhs.false21.if.then23_crit_edge, label %if.else

lor.lhs.false21.if.then23_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false21.if.then23_crit_edge, %lor.lhs.false.if.then23_crit_edge, %if.end18.if.then23_crit_edge
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  br i1 %cmp, label %do.end, label %if.end27

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_num, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %16) #13
  br label %err.thread

if.end27:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %clk_num, align 4
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  %clk_num30 = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %clk_num30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %12, ptr %clk_num30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end27
  %clk_num32 = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %clk_num32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_num32, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 4) #8
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !259

kcalloc.exit.thread:                              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %call7.i.i, align 8
  br label %err.thread

if.end7.i.i:                                      ; preds = %if.end31
  %24 = extractvalue { i32, i1 } %21, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #14
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool35.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool35.not, label %if.end7.i.i.err.thread_crit_edge, label %if.end37

if.end7.i.i.err.thread_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.thread

if.end37:                                         ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i153 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 44) #12
  %tobool39.not = icmp eq ptr %call7.i.i153, null
  br i1 %tobool39.not, label %if.end37.err.thread_crit_edge, label %do.body42

if.end37.err.thread_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.thread

do.body42:                                        ; preds = %if.end37
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i153, ptr noundef nonnull @.str.4, ptr noundef nonnull @st_of_flexgen_setup.__key, i16 noundef signext 3) #8
  %27 = ptrtoint ptr %clk_num32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk_num32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp47168.not = icmp eq i32 %28, 0
  br i1 %cmp47168.not, label %do.body42.for.end_crit_edge, label %for.body.lr.ph

do.body42.for.end_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body42
  %outputs_nb50 = getelementptr inbounds %struct.clkgen_data, ptr %data.0, i32 0, i32 3
  %outputs53 = getelementptr inbounds %struct.clkgen_data, ptr %data.0, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool19.not, label %for.body.if.then55_crit_edge, label %lor.lhs.false49

for.body.if.then55_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

lor.lhs.false49:                                  ; preds = %for.body
  %29 = ptrtoint ptr %outputs_nb50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %outputs_nb50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool51.not = icmp eq i32 %30, 0
  br i1 %tobool51.not, label %lor.lhs.false49.if.then55_crit_edge, label %lor.lhs.false52

lor.lhs.false49.if.then55_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %31 = ptrtoint ptr %outputs53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %outputs53, align 4
  %tobool54.not = icmp eq ptr %32, null
  br i1 %tobool54.not, label %lor.lhs.false52.if.then55_crit_edge, label %if.else61

lor.lhs.false52.if.then55_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false52.if.then55_crit_edge, %lor.lhs.false49.if.then55_crit_edge, %for.body.if.then55_crit_edge
  %call.i154 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %i.0169) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i154)
  %tobool57.not = icmp sgt i32 %call.i154, -1
  br i1 %tobool57.not, label %if.end59, label %if.then55.for.end_crit_edge

if.then55.for.end_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end59:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %flex_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flex_flags, align 4
  %and = and i32 %34, -2049
  store i32 %and, ptr %flex_flags, align 4
  %call60 = call i32 @of_clk_detect_critical(ptr noundef %np, i32 noundef %i.0169, ptr noundef nonnull %flex_flags) #8
  br label %if.end67

if.else61:                                        ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.clkgen_clk_out, ptr %32, i32 %i.0169
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %37 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %clk_name, align 4
  %38 = ptrtoint ptr %data.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data.0, align 4
  %flags66 = getelementptr %struct.clkgen_clk_out, ptr %32, i32 %i.0169, i32 1
  %40 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags66, align 4
  %or = or i32 %41, %39
  %42 = ptrtoint ptr %flex_flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or, ptr %flex_flags, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else61, %if.end59
  %43 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk_name, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp68 = icmp eq i8 %46, 0
  br i1 %cmp68, label %if.end67.for.inc_crit_edge, label %if.end71

if.end67.for.inc_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end71:                                         ; preds = %if.end67
  %47 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_parents, align 4
  %conv72 = trunc i32 %48 to i8
  %49 = ptrtoint ptr %flex_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flex_flags, align 4
  %call74 = call fastcc ptr @clk_register_flexgen(ptr noundef %44, ptr noundef nonnull %call5, i8 noundef zeroext %conv72, ptr noundef nonnull %call1, ptr noundef nonnull %call7.i.i153, i32 noundef %i.0169, i32 noundef %50, i1 noundef zeroext %clk_mode.0.off0)
  %cmp.i = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err, label %if.end77

if.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i, align 8
  %arrayidx79 = getelementptr ptr, ptr %52, i32 %i.0169
  %53 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call74, ptr %arrayidx79, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end77, %if.end67.for.inc_crit_edge
  %inc = add nuw i32 %i.0169, 1
  %54 = ptrtoint ptr %clk_num32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %clk_num32, align 4
  %cmp47 = icmp ult i32 %inc, %55
  br i1 %cmp47, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then55.for.end_crit_edge, %do.body42.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call5) #8
  %call80 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup85

err.thread:                                       ; preds = %if.end37.err.thread_crit_edge, %if.end7.i.i.err.thread_crit_edge, %kcalloc.exit.thread, %do.end
  tail call void @iounmap(ptr noundef nonnull %call1) #8
  br label %if.then82

err:                                              ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %call1) #8
  br label %if.then82

if.then82:                                        ; preds = %err, %err.thread
  %rlock.0164 = phi ptr [ null, %err.thread ], [ %call7.i.i153, %err ]
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %57) #8
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %err.thread166
  %rlock.0165 = phi ptr [ %rlock.0164, %if.then82 ], [ null, %err.thread166 ]
  call void @kfree(ptr noundef %call7.i.i) #8
  call void @kfree(ptr noundef nonnull %call5) #8
  call void @kfree(ptr noundef %rlock.0165) #8
  br label %cleanup85

cleanup85:                                        ; preds = %if.end84, %for.end, %if.then7, %if.end.cleanup85_crit_edge, %entry.cleanup85_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flex_flags) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_parents) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @flexgen_get_parents(ptr noundef %np, ptr nocapture noundef writeonly %num_parents) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %np) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !259

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 284, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 4) #8
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %if.end23.cleanup_crit_edge, label %if.end7.i.i, !prof !259

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end23
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #14
  %tobool25.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool25.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end27

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 @of_clk_parent_fill(ptr noundef %np, ptr noundef nonnull %call8.i.i, i32 noundef %call) #8
  %3 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call28, ptr %num_parents, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end7.i.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call8.i.i, %if.end27 ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_detect_critical(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clk_register_flexgen(ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, ptr noundef %reg, ptr noundef %lock, i32 noundef %idx, i32 noundef %flexgen_flags, i1 noundef zeroext %mode) unnamed_addr #4 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 176) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %mode to i8
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @flexgen_ops, ptr %ops, align 4
  %or = or i32 %flexgen_flags, 64
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %flags, align 4
  %parent_names3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_names, ptr %parent_names3, align 4
  %num_parents4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %num_parents, ptr %num_parents4, align 4
  %add.ptr = getelementptr i8, ptr %reg, i32 24
  %and = and i32 %idx, -4
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %and
  %add.ptr6 = getelementptr i8, ptr %reg, i32 356
  %mul7 = shl i32 %idx, 2
  %add.ptr8 = getelementptr i8, ptr %add.ptr6, i32 %mul7
  %lock9 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lock, ptr %lock9, align 8
  %mask = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 63, ptr %mask, align 8
  %reg12 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %reg12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr5, ptr %reg12, align 8
  %idx.tr = trunc i32 %idx to i8
  %11 = shl i8 %idx.tr, 3
  %conv = and i8 %11, 24
  %shift = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %shift, align 4
  %table = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %table, align 4
  %lock15 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %lock15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock, ptr %lock15, align 8
  %reg17 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %reg17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr5, ptr %reg17, align 8
  %conv18 = or i8 %conv, 6
  %bit_idx = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv18, ptr %bit_idx, align 4
  %lock20 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 3, i32 6
  %17 = ptrtoint ptr %lock20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %lock, ptr %lock20, align 4
  %add.ptr21 = getelementptr i8, ptr %reg, i32 88
  %add.ptr23 = getelementptr i8, ptr %add.ptr21, i32 %mul7
  %reg25 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %reg25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr23, ptr %reg25, align 8
  %width = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %width, align 1
  %lock27 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %lock27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lock, ptr %lock27, align 4
  %reg29 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %reg29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr8, ptr %reg29, align 4
  %bit_idx31 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %bit_idx31 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 6, ptr %bit_idx31, align 8
  %lock32 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 5, i32 6
  %23 = ptrtoint ptr %lock32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %lock, ptr %lock32, align 8
  %reg34 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %reg34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr8, ptr %reg34, align 4
  %width36 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %width36 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %width36, align 1
  %lock37 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %lock37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %lock, ptr %lock37, align 8
  %reg39 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %reg39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr8, ptr %reg39, align 8
  %bit_idx41 = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %bit_idx41 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 7, ptr %bit_idx41, align 4
  %control_mode = getelementptr inbounds %struct.flexgen, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %control_mode to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %control_mode, align 4
  %init44 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %init44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %init, ptr %init44, align 8
  %call46 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then48, label %do.body

if.then48:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_register_flexgen.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_register_flexgen, %if.then54)) #8
          to label %cleanup [label %if.then54], !srcloc !260

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = call ptr @__clk_get_name(ptr noundef %call46) #8
  %call56 = call ptr @clk_get_parent(ptr noundef %call46) #8
  %call57 = call ptr @__clk_get_name(ptr noundef %call56) #8
  %call58 = call i32 @clk_get_rate(ptr noundef %call46) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_register_flexgen.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.94, ptr noundef %call55, ptr noundef %call57, i32 noundef %call58) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %do.body, %if.then48, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call46, %if.then54 ], [ %call46, %if.then48 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call46, %do.body ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexgen_enable(ptr noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgate = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 2
  %fgate = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %pgate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pgate, align 4
  %clk1.i16 = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %clk1.i16, align 4
  %7 = ptrtoint ptr %fgate to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %fgate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %call = tail call i32 %8(ptr noundef %pgate) #8
  %call3 = tail call i32 %8(ptr noundef %fgate) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexgen_enable.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@flexgen_enable, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !260

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @flexgen_enable.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.96, ptr noundef %call8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flexgen_disable(ptr noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fgate = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %fgate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %fgate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  tail call void %6(ptr noundef %fgate) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flexgen_disable.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@flexgen_disable, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !260

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @flexgen_disable.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.98, ptr noundef %call5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexgen_is_enabled(ptr noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fgate = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %fgate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %fgate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %call = tail call i32 %6(ptr noundef %fgate) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexgen_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdiv = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 3
  %fdiv = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 5
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %pdiv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pdiv, align 4
  %clk1.i10 = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %clk1.i10, align 4
  %7 = ptrtoint ptr %fdiv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %fdiv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 10), align 4
  %call = tail call i32 %8(ptr noundef %pdiv, i32 noundef %parent_rate) #8
  %call3 = tail call i32 %8(ptr noundef %fdiv, i32 noundef %call) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexgen_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %prate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %.frozen = freeze i32 %1
  %div.i = udiv i32 %.frozen, %rate
  %2 = mul i32 %div.i, %rate
  %rem.i.decomposed = sub i32 %.frozen, %2
  %mul.i = shl i32 %rem.i.decomposed, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %rate)
  %cmp.i = icmp uge i32 %mul.i, %rate
  %cond.i = zext i1 %cmp.i to i32
  %add.i = add i32 %div.i, %cond.i
  %call1 = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #8
  %and = and i32 %call1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %add.i, %rate
  %3 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %prate, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prate, align 4
  %div2 = udiv i32 %5, %add.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %rate, %if.then ], [ %div2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexgen_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mux = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 1
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mux, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 13) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 13), align 4
  %call = tail call i32 %6(ptr noundef %mux, i8 noundef zeroext %index) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @flexgen_get_parent(ptr noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mux = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 1
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mux, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14), align 4
  %call = tail call zeroext i8 %6(ptr noundef %mux) #8
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexgen_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdiv = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 3
  %fdiv = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 5
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %pdiv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pdiv, align 4
  %clk1.i43 = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i43 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %clk1.i43, align 4
  %7 = ptrtoint ptr %fdiv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %fdiv, align 4
  %control_mode = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 7
  %8 = ptrtoint ptr %control_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %control_mode, align 4, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reg7 = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %reg7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg7, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !261
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  %bit_idx = getelementptr inbounds %struct.flexgen, ptr %hw, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bit_idx, align 4
  %conv = zext i8 %15 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and)
  %17 = ptrtoint ptr %reg7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !264
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %div.i = udiv i32 %parent_rate, %rate
  %19 = mul i32 %div.i, %rate
  %rem.i.decomposed = sub i32 %parent_rate, %19
  %mul.i = shl i32 %rem.i.decomposed, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %rate)
  %cmp.i = icmp uge i32 %mul.i, %rate
  %cond.i = zext i1 %cmp.i to i32
  %add.i = add i32 %div.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %add.i)
  %cmp = icmp ult i32 %add.i, 65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 15) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 15), align 4
  %pdiv.fdiv = select i1 %cmp, ptr %pdiv, ptr %fdiv
  %fdiv.pdiv = select i1 %cmp, ptr %fdiv, ptr %pdiv
  %call16 = tail call i32 %20(ptr noundef %pdiv.fdiv, i32 noundef %parent_rate, i32 noundef %parent_rate) #8
  %mul17 = mul i32 %add.i, %rate
  %call18 = tail call i32 %20(ptr noundef %fdiv.pdiv, i32 noundef %rate, i32 noundef %mul17) #8
  ret i32 %call18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !236, !237, !238, !240, !242, !243, !244, !246, !247}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !{ptr @__of_table_flexgen, !1, !"__of_table_flexgen", i1 false, i1 false}
!1 = !{!"../drivers/clk/st/clk-flexgen.c", i32 748, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/st/clk-flexgen.c", i32 684, i32 39}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/st/clk-flexgen.c", i32 686, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @st_of_flexgen_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @st_of_flexgen_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @st_of_flexgen_setup.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/clk/st/clk-flexgen.c", i32 703, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @flexgen_of_match, !14, !"flexgen_of_match", i1 false, i1 false}
!14 = !{!"../drivers/clk/st/clk-flexgen.c", i32 589, i32 34}
!15 = !{ptr @clkgen_audio, !16, !"clkgen_audio", i1 false, i1 false}
!16 = !{!"../drivers/clk/st/clk-flexgen.c", i32 296, i32 33}
!17 = !{ptr @clkgen_video, !18, !"clkgen_video", i1 false, i1 false}
!18 = !{!"../drivers/clk/st/clk-flexgen.c", i32 300, i32 33}
!19 = !{ptr @clkgen_stih407_a0, !20, !"clkgen_stih407_a0", i1 false, i1 false}
!20 = !{!"../drivers/clk/st/clk-flexgen.c", i32 310, i32 33}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/st/clk-flexgen.c", i32 307, i32 12}
!23 = !{ptr @clkgen_stih407_a0_clk_out, !24, !"clkgen_stih407_a0_clk_out", i1 false, i1 false}
!24 = !{!"../drivers/clk/st/clk-flexgen.c", i32 305, i32 36}
!25 = !{ptr @clkgen_stih410_a0, !26, !"clkgen_stih410_a0", i1 false, i1 false}
!26 = !{!"../drivers/clk/st/clk-flexgen.c", i32 321, i32 33}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/st/clk-flexgen.c", i32 318, i32 12}
!29 = !{ptr @clkgen_stih410_a0_clk_out, !30, !"clkgen_stih410_a0_clk_out", i1 false, i1 false}
!30 = !{!"../drivers/clk/st/clk-flexgen.c", i32 315, i32 36}
!31 = !{ptr @clkgen_stih407_c0, !32, !"clkgen_stih407_c0", i1 false, i1 false}
!32 = !{!"../drivers/clk/st/clk-flexgen.c", i32 366, i32 33}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/st/clk-flexgen.c", i32 327, i32 12}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/st/clk-flexgen.c", i32 328, i32 12}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/st/clk-flexgen.c", i32 329, i32 12}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/st/clk-flexgen.c", i32 330, i32 12}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/st/clk-flexgen.c", i32 331, i32 12}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/st/clk-flexgen.c", i32 332, i32 12}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/st/clk-flexgen.c", i32 333, i32 12}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/st/clk-flexgen.c", i32 334, i32 12}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/st/clk-flexgen.c", i32 336, i32 12}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/st/clk-flexgen.c", i32 338, i32 12}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/st/clk-flexgen.c", i32 339, i32 12}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/st/clk-flexgen.c", i32 340, i32 12}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/st/clk-flexgen.c", i32 341, i32 12}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/st/clk-flexgen.c", i32 343, i32 12}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/st/clk-flexgen.c", i32 344, i32 12}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/st/clk-flexgen.c", i32 345, i32 12}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/st/clk-flexgen.c", i32 346, i32 12}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/st/clk-flexgen.c", i32 347, i32 12}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/st/clk-flexgen.c", i32 348, i32 12}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/st/clk-flexgen.c", i32 349, i32 12}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/st/clk-flexgen.c", i32 350, i32 12}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/st/clk-flexgen.c", i32 351, i32 12}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/st/clk-flexgen.c", i32 353, i32 12}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/st/clk-flexgen.c", i32 354, i32 12}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/st/clk-flexgen.c", i32 356, i32 12}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/st/clk-flexgen.c", i32 357, i32 12}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/st/clk-flexgen.c", i32 358, i32 12}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/st/clk-flexgen.c", i32 359, i32 12}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/st/clk-flexgen.c", i32 360, i32 12}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/st/clk-flexgen.c", i32 361, i32 12}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/st/clk-flexgen.c", i32 362, i32 12}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/st/clk-flexgen.c", i32 363, i32 12}
!97 = !{ptr @clkgen_stih407_c0_clk_out, !98, !"clkgen_stih407_c0_clk_out", i1 false, i1 false}
!98 = !{!"../drivers/clk/st/clk-flexgen.c", i32 326, i32 36}
!99 = !{ptr @clkgen_stih410_c0, !100, !"clkgen_stih410_c0", i1 false, i1 false}
!100 = !{!"../drivers/clk/st/clk-flexgen.c", i32 419, i32 33}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/st/clk-flexgen.c", i32 409, i32 12}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/st/clk-flexgen.c", i32 410, i32 12}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/st/clk-flexgen.c", i32 412, i32 12}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/st/clk-flexgen.c", i32 413, i32 12}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/st/clk-flexgen.c", i32 414, i32 12}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/st/clk-flexgen.c", i32 415, i32 12}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/st/clk-flexgen.c", i32 416, i32 12}
!115 = !{ptr @clkgen_stih410_c0_clk_out, !116, !"clkgen_stih410_c0_clk_out", i1 false, i1 false}
!116 = !{!"../drivers/clk/st/clk-flexgen.c", i32 371, i32 36}
!117 = !{ptr @clkgen_stih418_c0, !118, !"clkgen_stih418_c0", i1 false, i1 false}
!118 = !{!"../drivers/clk/st/clk-flexgen.c", i32 479, i32 33}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/st/clk-flexgen.c", i32 430, i32 12}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/st/clk-flexgen.c", i32 442, i32 12}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/st/clk-flexgen.c", i32 443, i32 12}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/st/clk-flexgen.c", i32 444, i32 12}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/st/clk-flexgen.c", i32 454, i32 12}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/st/clk-flexgen.c", i32 458, i32 12}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/st/clk-flexgen.c", i32 470, i32 12}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/st/clk-flexgen.c", i32 471, i32 12}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/st/clk-flexgen.c", i32 472, i32 12}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/st/clk-flexgen.c", i32 473, i32 12}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/st/clk-flexgen.c", i32 474, i32 12}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/st/clk-flexgen.c", i32 475, i32 12}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/st/clk-flexgen.c", i32 476, i32 12}
!145 = !{ptr @clkgen_stih418_c0_clk_out, !146, !"clkgen_stih418_c0_clk_out", i1 false, i1 false}
!146 = !{!"../drivers/clk/st/clk-flexgen.c", i32 424, i32 36}
!147 = !{ptr @clkgen_stih407_d0, !148, !"clkgen_stih407_d0", i1 false, i1 false}
!148 = !{!"../drivers/clk/st/clk-flexgen.c", i32 491, i32 33}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/st/clk-flexgen.c", i32 485, i32 12}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/st/clk-flexgen.c", i32 486, i32 12}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/st/clk-flexgen.c", i32 487, i32 12}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/st/clk-flexgen.c", i32 488, i32 12}
!157 = !{ptr @clkgen_stih407_d0_clk_out, !158, !"clkgen_stih407_d0_clk_out", i1 false, i1 false}
!158 = !{!"../drivers/clk/st/clk-flexgen.c", i32 484, i32 36}
!159 = !{ptr @clkgen_stih410_d0, !160, !"clkgen_stih410_d0", i1 false, i1 false}
!160 = !{!"../drivers/clk/st/clk-flexgen.c", i32 506, i32 33}
!161 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/st/clk-flexgen.c", i32 502, i32 12}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/st/clk-flexgen.c", i32 503, i32 12}
!165 = !{ptr @clkgen_stih410_d0_clk_out, !166, !"clkgen_stih410_d0_clk_out", i1 false, i1 false}
!166 = !{!"../drivers/clk/st/clk-flexgen.c", i32 497, i32 36}
!167 = !{ptr @clkgen_stih407_d2, !168, !"clkgen_stih407_d2", i1 false, i1 false}
!168 = !{!"../drivers/clk/st/clk-flexgen.c", i32 531, i32 33}
!169 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/st/clk-flexgen.c", i32 513, i32 12}
!171 = !{ptr @.str.66, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/st/clk-flexgen.c", i32 514, i32 12}
!173 = !{ptr @.str.67, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/st/clk-flexgen.c", i32 515, i32 12}
!175 = !{ptr @.str.68, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/st/clk-flexgen.c", i32 516, i32 12}
!177 = !{ptr @.str.69, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/st/clk-flexgen.c", i32 517, i32 12}
!179 = !{ptr @.str.70, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/st/clk-flexgen.c", i32 518, i32 12}
!181 = !{ptr @.str.71, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/st/clk-flexgen.c", i32 519, i32 12}
!183 = !{ptr @.str.72, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/st/clk-flexgen.c", i32 520, i32 12}
!185 = !{ptr @.str.73, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/st/clk-flexgen.c", i32 521, i32 12}
!187 = !{ptr @.str.74, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/st/clk-flexgen.c", i32 522, i32 12}
!189 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/st/clk-flexgen.c", i32 523, i32 12}
!191 = !{ptr @.str.76, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/st/clk-flexgen.c", i32 524, i32 12}
!193 = !{ptr @.str.77, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/st/clk-flexgen.c", i32 525, i32 12}
!195 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/st/clk-flexgen.c", i32 526, i32 12}
!197 = !{ptr @.str.79, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/st/clk-flexgen.c", i32 527, i32 12}
!199 = !{ptr @.str.80, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/st/clk-flexgen.c", i32 528, i32 12}
!201 = !{ptr @clkgen_stih407_d2_clk_out, !202, !"clkgen_stih407_d2_clk_out", i1 false, i1 false}
!202 = !{!"../drivers/clk/st/clk-flexgen.c", i32 512, i32 36}
!203 = !{ptr @clkgen_stih418_d2, !204, !"clkgen_stih418_d2", i1 false, i1 false}
!204 = !{!"../drivers/clk/st/clk-flexgen.c", i32 566, i32 33}
!205 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/st/clk-flexgen.c", i32 540, i32 12}
!207 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/st/clk-flexgen.c", i32 544, i32 12}
!209 = !{ptr @.str.83, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/st/clk-flexgen.c", i32 563, i32 12}
!211 = !{ptr @clkgen_stih418_d2_clk_out, !212, !"clkgen_stih418_d2_clk_out", i1 false, i1 false}
!212 = !{!"../drivers/clk/st/clk-flexgen.c", i32 538, i32 36}
!213 = !{ptr @clkgen_stih407_d3, !214, !"clkgen_stih407_d3", i1 false, i1 false}
!214 = !{!"../drivers/clk/st/clk-flexgen.c", i32 584, i32 33}
!215 = !{ptr @.str.84, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/st/clk-flexgen.c", i32 574, i32 12}
!217 = !{ptr @.str.85, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/st/clk-flexgen.c", i32 575, i32 12}
!219 = !{ptr @.str.86, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/st/clk-flexgen.c", i32 576, i32 12}
!221 = !{ptr @.str.87, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/st/clk-flexgen.c", i32 577, i32 12}
!223 = !{ptr @.str.88, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/st/clk-flexgen.c", i32 578, i32 12}
!225 = !{ptr @.str.89, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/st/clk-flexgen.c", i32 579, i32 12}
!227 = !{ptr @.str.90, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/st/clk-flexgen.c", i32 580, i32 12}
!229 = !{ptr @.str.91, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/st/clk-flexgen.c", i32 581, i32 12}
!231 = !{ptr @clkgen_stih407_d3_clk_out, !232, !"clkgen_stih407_d3_clk_out", i1 false, i1 false}
!232 = !{!"../drivers/clk/st/clk-flexgen.c", i32 573, i32 36}
!233 = !{ptr @.str.92, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/st/clk-flexgen.c", i32 270, i32 3}
!235 = !{ptr @.str.93, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.94, !234, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @clk_register_flexgen.__UNIQUE_ID_ddebug183, !234, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!238 = !{ptr @flexgen_ops, !239, !"flexgen_ops", i1 false, i1 false}
!239 = !{!"../drivers/clk/st/clk-flexgen.c", i32 194, i32 29}
!240 = !{ptr @.str.95, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/st/clk-flexgen.c", i32 66, i32 2}
!242 = !{ptr @.str.96, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @flexgen_enable.__UNIQUE_ID_ddebug181, !241, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!244 = !{ptr @.str.97, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/st/clk-flexgen.c", i32 80, i32 2}
!246 = !{ptr @.str.98, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @flexgen_disable.__UNIQUE_ID_ddebug182, !245, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!248 = !{i32 1, !"wchar_size", i32 2}
!249 = !{i32 1, !"min_enum_size", i32 4}
!250 = !{i32 8, !"branch-target-enforcement", i32 0}
!251 = !{i32 8, !"sign-return-address", i32 0}
!252 = !{i32 8, !"sign-return-address-all", i32 0}
!253 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!254 = !{i32 7, !"uwtable", i32 1}
!255 = !{i32 7, !"frame-pointer", i32 2}
!256 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!257 = !{!"auto-init"}
!258 = !{i8 0, i8 2}
!259 = !{!"branch_weights", i32 1, i32 2000}
!260 = !{i64 2148740404, i64 2148740409, i64 2148740422, i64 2148740466, i64 2148740500, i64 2148740521}
!261 = !{i64 5157925}
!262 = !{i64 2152746707}
!263 = !{i64 2152747004}
!264 = !{i64 5157507}
