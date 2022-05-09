; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_reg_value = type { i8, i8 }
%struct.cxd2880_tnrdmd_ts_clk_cfg = type { i8, i8, i8 }
%struct.cxd2880_tnrdmd = type { ptr, ptr, %struct.cxd2880_tnrdmd_create_param, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, i8, i32, i8, i8, [100 x %struct.cxd2880_tnrdmd_cfg_mem], i8, %struct.cxd2880_tnrdmd_pid_ftr_cfg, i8, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t }
%struct.cxd2880_tnrdmd_create_param = type { i32, i8, i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_cfg_mem = type { i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { i8, [32 x %struct.cxd2880_tnrdmd_pid_cfg] }
%struct.cxd2880_tnrdmd_pid_cfg = type { i8, i16 }
%struct.atomic_t = type { i32 }
%struct.cxd2880_tnrdmd_diver_create_param = type { i32, i8, i8, i8, i8, i8, i8 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_tnrdmd_lna_thrs = type { i8, i8 }

@set_ts_pin_seq = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 80, i8 63 }, %struct.cxd2880_reg_value { i8 82, i8 31 }], [28 x i8] zeroinitializer }, align 32
@set_ts_output_seq1 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 82, i8 0 }], [28 x i8] zeroinitializer }, align 32
@set_ts_output_seq2 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 -61, i8 0 }], [28 x i8] zeroinitializer }, align 32
@set_ts_output_seq3 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 -61, i8 1 }], [28 x i8] zeroinitializer }, align 32
@set_ts_output_seq4 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 82, i8 31 }], [28 x i8] zeroinitializer }, align 32
@p_init1_seq = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 17, i8 22 }, %struct.cxd2880_reg_value { i8 0, i8 16 }], [28 x i8] zeroinitializer }, align 32
@rf_init1.rf_init1_cdata1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\05\05\05\05\05\05\05\05\05\04\04\04\03\03\03\04\04\05\05\05\02\02\02\02\02\02\02\02\02\03\02\01\01\01\02\02\03\04\04\04", [56 x i8] zeroinitializer }, align 32
@rf_init1.rf_init1_cdata2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\FF\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@rf_init1.rf_init1_cdata3 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\00\00\00\00\00\01\00\01\00\02\00c\00\00\00\03\00\04\00\04\00\06\00\06\00\08\00\09\00\0B\00\0B\00\0D\00\0D\00\0F\00\0F\00\0F\00\10\00y\00\00\00\02\00\00\00\03\00\01\00\03\00\03\00\03\00\04\00\04\00\06\00\05\00\07\00\07\00\08\00\0A\03\E0", [48 x i8] zeroinitializer }, align 32
@rf_init1.rf_init1_cdata4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  0AP_o\80", [24 x i8] zeroinitializer }, align 32
@rf_init1.rf_init1_cdata5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\00\09\00\08\00\07\00\06\00\05\00\03\00\02\00\00\00x\00\00\00\06\00\08\00\08\00\0C\00\0C\00\0D\00\0F\00\0E\00\0E\00\10\00\0F\00\0E\00\10\00\0F\00\0E", [46 x i8] zeroinitializer }, align 32
@rf_init1_seq1 = internal constant { [9 x %struct.cxd2880_reg_value], [46 x i8] } { [9 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 79, i8 24 }, %struct.cxd2880_reg_value { i8 97, i8 0 }, %struct.cxd2880_reg_value { i8 113, i8 0 }, %struct.cxd2880_reg_value { i8 -99, i8 1 }, %struct.cxd2880_reg_value { i8 125, i8 2 }, %struct.cxd2880_reg_value { i8 -113, i8 1 }, %struct.cxd2880_reg_value { i8 -117, i8 -58 }, %struct.cxd2880_reg_value { i8 -102, i8 3 }, %struct.cxd2880_reg_value { i8 28, i8 0 }], [46 x i8] zeroinitializer }, align 32
@rf_init1_seq2 = internal constant { [4 x %struct.cxd2880_reg_value], [24 x i8] } { [4 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 -71, i8 7 }, %struct.cxd2880_reg_value { i8 51, i8 1 }, %struct.cxd2880_reg_value { i8 -63, i8 1 }, %struct.cxd2880_reg_value { i8 -60, i8 30 }], [24 x i8] zeroinitializer }, align 32
@rf_init1_seq3 = internal constant { [12 x %struct.cxd2880_reg_value], [40 x i8] } { [12 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 81, i8 1 }, %struct.cxd2880_reg_value { i8 -59, i8 7 }, %struct.cxd2880_reg_value { i8 0, i8 17 }, %struct.cxd2880_reg_value { i8 112, i8 -23 }, %struct.cxd2880_reg_value { i8 118, i8 10 }, %struct.cxd2880_reg_value { i8 120, i8 50 }, %struct.cxd2880_reg_value { i8 122, i8 70 }, %struct.cxd2880_reg_value { i8 124, i8 -122 }, %struct.cxd2880_reg_value { i8 126, i8 -92 }, %struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 -31, i8 1 }], [40 x i8] zeroinitializer }, align 32
@rf_init1_seq4 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 21, i8 0 }, %struct.cxd2880_reg_value { i8 0, i8 22 }], [28 x i8] zeroinitializer }, align 32
@rf_init1_seq5 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 37, i8 0 }], [28 x i8] zeroinitializer }, align 32
@rf_init1_seq6 = internal constant { [8 x %struct.cxd2880_reg_value], [16 x i8] } { [8 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 2, i8 0 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 1 }, %struct.cxd2880_reg_value { i8 0, i8 -31 }, %struct.cxd2880_reg_value { i8 -113, i8 22 }, %struct.cxd2880_reg_value { i8 103, i8 96 }, %struct.cxd2880_reg_value { i8 106, i8 15 }, %struct.cxd2880_reg_value { i8 108, i8 23 }], [16 x i8] zeroinitializer }, align 32
@rf_init1_seq7 = internal constant { [6 x %struct.cxd2880_reg_value], [20 x i8] } { [6 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 -30 }, %struct.cxd2880_reg_value { i8 65, i8 -96 }, %struct.cxd2880_reg_value { i8 75, i8 104 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 0 }, %struct.cxd2880_reg_value { i8 16, i8 1 }], [20 x i8] zeroinitializer }, align 32
@rf_init1_seq8 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 37, i8 1 }], [28 x i8] zeroinitializer }, align 32
@rf_init1_seq9 = internal constant { [4 x %struct.cxd2880_reg_value], [24 x i8] } { [4 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 20, i8 1 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 38, i8 0 }], [24 x i8] zeroinitializer }, align 32
@rf_init2_seq1 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 20 }, %struct.cxd2880_reg_value { i8 27, i8 1 }], [28 x i8] zeroinitializer }, align 32
@rf_init2_seq2 = internal constant { [6 x %struct.cxd2880_reg_value], [20 x i8] } { [6 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 1 }, %struct.cxd2880_reg_value { i8 0, i8 -31 }, %struct.cxd2880_reg_value { i8 -45, i8 0 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 0 }], [20 x i8] zeroinitializer }, align 32
@t_power_x_seq1 = internal constant { [4 x %struct.cxd2880_reg_value], [24 x i8] } { [4 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 41, i8 1 }, %struct.cxd2880_reg_value { i8 40, i8 1 }, %struct.cxd2880_reg_value { i8 39, i8 1 }], [24 x i8] zeroinitializer }, align 32
@t_power_x_seq2 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 0 }], [28 x i8] zeroinitializer }, align 32
@t_power_x_seq3 = internal constant { [3 x %struct.cxd2880_reg_value], [26 x i8] } { [3 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 39, i8 0 }, %struct.cxd2880_reg_value { i8 37, i8 1 }], [26 x i8] zeroinitializer }, align 32
@t_power_x_seq4 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 42, i8 0 }], [28 x i8] zeroinitializer }, align 32
@t_power_x_seq5 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 37, i8 0 }], [28 x i8] zeroinitializer }, align 32
@t_power_x_seq6 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 39, i8 1 }], [28 x i8] zeroinitializer }, align 32
@t_power_x_seq7 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 1 }], [28 x i8] zeroinitializer }, align 32
@spll_reset_seq1 = internal constant { [5 x %struct.cxd2880_reg_value], [22 x i8] } { [5 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 41, i8 1 }, %struct.cxd2880_reg_value { i8 40, i8 1 }, %struct.cxd2880_reg_value { i8 39, i8 1 }, %struct.cxd2880_reg_value { i8 38, i8 1 }], [22 x i8] zeroinitializer }, align 32
@spll_reset_seq2 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 0 }], [28 x i8] zeroinitializer }, align 32
@spll_reset_seq3 = internal constant { [3 x %struct.cxd2880_reg_value], [26 x i8] } { [3 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 39, i8 0 }, %struct.cxd2880_reg_value { i8 34, i8 1 }], [26 x i8] zeroinitializer }, align 32
@spll_reset_seq4 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 39, i8 1 }], [28 x i8] zeroinitializer }, align 32
@spll_reset_seq5 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 1 }], [28 x i8] zeroinitializer }, align 32
@x_tune1_seq1 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 1 }], [28 x i8] zeroinitializer }, align 32
@x_tune1_seq2 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 98, i8 0 }, %struct.cxd2880_reg_value { i8 0, i8 21 }], [28 x i8] zeroinitializer }, align 32
@x_tune2_seq1 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 26 }, %struct.cxd2880_reg_value { i8 41, i8 1 }], [28 x i8] zeroinitializer }, align 32
@x_tune2_seq2 = internal constant { [4 x %struct.cxd2880_reg_value], [24 x i8] } { [4 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 98, i8 1 }, %struct.cxd2880_reg_value { i8 0, i8 17 }, %struct.cxd2880_reg_value { i8 45, i8 0 }, %struct.cxd2880_reg_value { i8 47, i8 0 }], [24 x i8] zeroinitializer }, align 32
@x_tune2_seq3 = internal constant { [3 x %struct.cxd2880_reg_value], [26 x i8] } { [3 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 0 }, %struct.cxd2880_reg_value { i8 33, i8 1 }], [26 x i8] zeroinitializer }, align 32
@x_tune2_seq4 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 -31 }, %struct.cxd2880_reg_value { i8 -118, i8 -121 }], [28 x i8] zeroinitializer }, align 32
@x_tune2_seq5 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 0 }], [28 x i8] zeroinitializer }, align 32
@set_ts_clk_mode_and_freq.srl_ts_clk_stgs = internal constant { [2 x [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg]], [20 x i8] } { [2 x [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg]] [[2 x %struct.cxd2880_tnrdmd_ts_clk_cfg] [%struct.cxd2880_tnrdmd_ts_clk_cfg { i8 3, i8 1, i8 8 }, %struct.cxd2880_tnrdmd_ts_clk_cfg { i8 0, i8 2, i8 16 }], [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg] [%struct.cxd2880_tnrdmd_ts_clk_cfg { i8 1, i8 1, i8 8 }, %struct.cxd2880_tnrdmd_ts_clk_cfg { i8 2, i8 2, i8 16 }]], [20 x i8] zeroinitializer }, align 32
@x_tune3_seq = internal constant { [7 x %struct.cxd2880_reg_value], [18 x i8] } { [7 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 1 }, %struct.cxd2880_reg_value { i8 0, i8 -30 }, %struct.cxd2880_reg_value { i8 65, i8 -96 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 0 }, %struct.cxd2880_reg_value { i8 -2, i8 1 }], [18 x i8] zeroinitializer }, align 32
@x_tune4_seq = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 -2, i8 1 }], [28 x i8] zeroinitializer }, align 32
@x_sleep1_seq = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 87, i8 3 }], [28 x i8] zeroinitializer }, align 32
@x_sleep2_seq1 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 45 }, %struct.cxd2880_reg_value { i8 -79, i8 1 }], [28 x i8] zeroinitializer }, align 32
@x_sleep2_seq2 = internal constant { [7 x %struct.cxd2880_reg_value], [18 x i8] } { [7 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 -12, i8 0 }, %struct.cxd2880_reg_value { i8 -13, i8 0 }, %struct.cxd2880_reg_value { i8 -14, i8 0 }, %struct.cxd2880_reg_value { i8 -15, i8 0 }, %struct.cxd2880_reg_value { i8 -16, i8 0 }, %struct.cxd2880_reg_value { i8 -17, i8 0 }], [18 x i8] zeroinitializer }, align 32
@x_sleep3_seq = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 -3, i8 0 }], [28 x i8] zeroinitializer }, align 32
@x_sleep4_seq = internal constant { [6 x %struct.cxd2880_reg_value], [20 x i8] } { [6 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 1 }, %struct.cxd2880_reg_value { i8 0, i8 -30 }, %struct.cxd2880_reg_value { i8 65, i8 0 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 0 }], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\03\03\03\03\00\00\01\02", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 98, i64 106]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 98, i64 106]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 98, i64 106]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 98, i64 106]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [37 x i64] [i64 35, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34]
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"set_ts_pin_seq\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 180, i32 39 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"set_ts_output_seq1\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 185, i32 39 }
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"set_ts_output_seq2\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 189, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"set_ts_output_seq3\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 194, i32 39 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"set_ts_output_seq4\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 199, i32 39 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"p_init1_seq\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 17, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"rf_init1_cdata1\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 394, i32 18 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"rf_init1_cdata2\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 403, i32 18 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"rf_init1_cdata3\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 404, i32 18 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"rf_init1_cdata4\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 419, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"rf_init1_cdata5\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 423, i32 18 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"rf_init1_seq1\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 21, i32 39 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"rf_init1_seq2\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 27, i32 39 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"rf_init1_seq3\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 31, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"rf_init1_seq4\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 37, i32 39 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"rf_init1_seq5\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 41, i32 39 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"rf_init1_seq6\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 45, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"rf_init1_seq7\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 50, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"rf_init1_seq8\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 55, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"rf_init1_seq9\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 59, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"rf_init2_seq1\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 63, i32 39 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"rf_init2_seq2\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 67, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"t_power_x_seq1\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 152, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"t_power_x_seq2\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 156, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"t_power_x_seq3\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 160, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"t_power_x_seq4\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 164, i32 39 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"t_power_x_seq5\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 168, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"t_power_x_seq6\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 172, i32 39 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"t_power_x_seq7\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 176, i32 39 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"spll_reset_seq1\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 131, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"spll_reset_seq2\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 136, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"spll_reset_seq3\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 140, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"spll_reset_seq4\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 144, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"spll_reset_seq5\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 148, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant [13 x i8] c"x_tune1_seq1\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 72, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"x_tune1_seq2\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 76, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"x_tune2_seq1\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 80, i32 39 }
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"x_tune2_seq2\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 84, i32 39 }
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"x_tune2_seq3\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 88, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"x_tune2_seq4\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 92, i32 39 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"x_tune2_seq5\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 96, i32 39 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"srl_ts_clk_stgs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1715, i32 48 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"x_tune3_seq\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 100, i32 39 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"x_tune4_seq\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 105, i32 39 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"x_sleep1_seq\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 109, i32 39 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"x_sleep2_seq1\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 113, i32 39 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"x_sleep2_seq2\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 117, i32 39 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"x_sleep3_seq\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 122, i32 39 }
@___asan_gen_.157 = private unnamed_addr constant [13 x i8] c"x_sleep4_seq\00", align 1
@___asan_gen_.158 = private constant [56 x i8] c"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 126, i32 39 }
@___asan_gen_.160 = private unnamed_addr constant [21 x i8] c"switch.table.x_tune1\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @set_ts_pin_seq, ptr @set_ts_output_seq1, ptr @set_ts_output_seq2, ptr @set_ts_output_seq3, ptr @set_ts_output_seq4, ptr @p_init1_seq, ptr @rf_init1.rf_init1_cdata1, ptr @rf_init1.rf_init1_cdata2, ptr @rf_init1.rf_init1_cdata3, ptr @rf_init1.rf_init1_cdata4, ptr @rf_init1.rf_init1_cdata5, ptr @rf_init1_seq1, ptr @rf_init1_seq2, ptr @rf_init1_seq3, ptr @rf_init1_seq4, ptr @rf_init1_seq5, ptr @rf_init1_seq6, ptr @rf_init1_seq7, ptr @rf_init1_seq8, ptr @rf_init1_seq9, ptr @rf_init2_seq1, ptr @rf_init2_seq2, ptr @t_power_x_seq1, ptr @t_power_x_seq2, ptr @t_power_x_seq3, ptr @t_power_x_seq4, ptr @t_power_x_seq5, ptr @t_power_x_seq6, ptr @t_power_x_seq7, ptr @spll_reset_seq1, ptr @spll_reset_seq2, ptr @spll_reset_seq3, ptr @spll_reset_seq4, ptr @spll_reset_seq5, ptr @x_tune1_seq1, ptr @x_tune1_seq2, ptr @x_tune2_seq1, ptr @x_tune2_seq2, ptr @x_tune2_seq3, ptr @x_tune2_seq4, ptr @x_tune2_seq5, ptr @set_ts_clk_mode_and_freq.srl_ts_clk_stgs, ptr @x_tune3_seq, ptr @x_tune4_seq, ptr @x_sleep1_seq, ptr @x_sleep2_seq1, ptr @x_sleep2_seq2, ptr @x_sleep3_seq, ptr @x_sleep4_seq, ptr @switch.table.x_tune1], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_ts_pin_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_ts_output_seq1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_ts_output_seq2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_ts_output_seq3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_ts_output_seq4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_init1_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1.rf_init1_cdata1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1.rf_init1_cdata2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1.rf_init1_cdata3 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1.rf_init1_cdata4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1.rf_init1_cdata5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1_seq1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1_seq2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1_seq3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1_seq4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1_seq5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1_seq6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1_seq7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1_seq8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init1_seq9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init2_seq1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_init2_seq2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t_power_x_seq1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t_power_x_seq2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t_power_x_seq3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t_power_x_seq4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t_power_x_seq5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t_power_x_seq6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t_power_x_seq7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spll_reset_seq1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spll_reset_seq2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spll_reset_seq3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spll_reset_seq4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spll_reset_seq5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune1_seq1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune1_seq2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune2_seq1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune2_seq2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune2_seq3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune2_seq4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune2_seq5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_ts_clk_mode_and_freq.srl_ts_clk_stgs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune3_seq to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune4_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_sleep1_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_sleep2_seq1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_sleep2_seq2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_sleep3_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_sleep4_seq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_create(ptr noundef %tnr_dmd, ptr noundef %io, ptr noundef readonly %create_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %io, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %create_param, null
  %or.cond20 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond20, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = call ptr @memset(ptr %tnr_dmd, i32 0, i32 1032)
  %io4 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %1 = ptrtoint ptr %io4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %io, ptr %io4, align 4
  %create_param5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %create_param5, ptr %create_param, i32 16)
  %3 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tnr_dmd, align 4
  %srl_ts_clk_mod_cnts = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 12
  %4 = ptrtoint ptr %srl_ts_clk_mod_cnts to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %srl_ts_clk_mod_cnts, align 4
  %en_fef_intmtnt_base = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 6
  %5 = ptrtoint ptr %en_fef_intmtnt_base to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %en_fef_intmtnt_base, align 1
  %en_fef_intmtnt_lite = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 7
  %6 = ptrtoint ptr %en_fef_intmtnt_lite to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %en_fef_intmtnt_lite, align 2
  %rf_lvl_cmpstn = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 9
  %7 = ptrtoint ptr %rf_lvl_cmpstn to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rf_lvl_cmpstn, align 4
  %lna_thrs_tbl_air = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 10
  %8 = ptrtoint ptr %lna_thrs_tbl_air to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %lna_thrs_tbl_air, align 4
  %lna_thrs_tbl_cable = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 11
  %9 = ptrtoint ptr %lna_thrs_tbl_cable to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %lna_thrs_tbl_cable, align 4
  %cancel = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cancel, i32 noundef 4) #8
  %10 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %cancel, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_diver_create(ptr noundef writeonly %tnr_dmd_main, ptr noundef %io_main, ptr noundef %tnr_dmd_sub, ptr noundef %io_sub, ptr noundef readonly %create_param) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd_main, null
  %tobool1.not = icmp eq ptr %io_main, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %tnr_dmd_sub, null
  %or.cond84 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %io_sub, null
  %or.cond85 = or i1 %or.cond84, %tobool5.not
  %tobool7.not = icmp eq ptr %create_param, null
  %or.cond86 = or i1 %or.cond85, %tobool7.not
  br i1 %or.cond86, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds i8, ptr %tnr_dmd_main, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 1024)
  %2 = call ptr @memset(ptr %tnr_dmd_sub, i32 0, i32 1032)
  %create_param8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 2
  %create_param9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 2
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 1
  %3 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %io_main, ptr %io, align 4
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 3
  %4 = ptrtoint ptr %diver_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %diver_mode, align 4
  %5 = ptrtoint ptr %tnr_dmd_main to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tnr_dmd_sub, ptr %tnr_dmd_main, align 4
  %en_internal_ldo = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %create_param, i32 0, i32 1
  %6 = ptrtoint ptr %en_internal_ldo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %en_internal_ldo, align 4
  %en_internal_ldo11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %en_internal_ldo11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %en_internal_ldo11, align 4
  %9 = ptrtoint ptr %create_param to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %create_param, align 4
  %11 = ptrtoint ptr %create_param8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %create_param8, align 4
  %xtal_share_type = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %xtal_share_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %xtal_share_type, align 4
  %xosc_cap_main = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %create_param, i32 0, i32 2
  %13 = ptrtoint ptr %xosc_cap_main to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %xosc_cap_main, align 1
  %xosc_cap = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %xosc_cap to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %xosc_cap, align 4
  %xosc_i_main = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %create_param, i32 0, i32 3
  %16 = ptrtoint ptr %xosc_i_main to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %xosc_i_main, align 2
  %xosc_i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %xosc_i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %xosc_i, align 1
  %is_cxd2881gg = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %create_param, i32 0, i32 5
  %19 = ptrtoint ptr %is_cxd2881gg to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_cxd2881gg, align 4
  %is_cxd2881gg13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %is_cxd2881gg13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %is_cxd2881gg13, align 2
  %stationary_use = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %create_param, i32 0, i32 6
  %22 = ptrtoint ptr %stationary_use to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stationary_use, align 1
  %stationary_use14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %stationary_use14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %stationary_use14, align 1
  %io15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 1
  %25 = ptrtoint ptr %io15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %io_sub, ptr %io15, align 4
  %diver_mode16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 3
  %26 = ptrtoint ptr %diver_mode16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %diver_mode16, align 4
  %27 = ptrtoint ptr %tnr_dmd_sub to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %tnr_dmd_sub, align 4
  %28 = load i8, ptr %en_internal_ldo, align 4
  %en_internal_ldo19 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %en_internal_ldo19 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %en_internal_ldo19, align 4
  %30 = load i32, ptr %create_param, align 4
  %31 = ptrtoint ptr %create_param9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %create_param9, align 4
  %xtal_share_type22 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %xtal_share_type22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %xtal_share_type22, align 4
  %xosc_cap23 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %xosc_cap23 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %xosc_cap23, align 4
  %xosc_i_sub = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %create_param, i32 0, i32 4
  %34 = ptrtoint ptr %xosc_i_sub to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %xosc_i_sub, align 1
  %xosc_i24 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %xosc_i24 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %xosc_i24, align 1
  %37 = load i8, ptr %is_cxd2881gg, align 4
  %is_cxd2881gg26 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 2, i32 5
  %38 = ptrtoint ptr %is_cxd2881gg26 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %is_cxd2881gg26, align 2
  %39 = load i8, ptr %stationary_use, align 1
  %stationary_use28 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 2, i32 6
  %40 = ptrtoint ptr %stationary_use28 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %stationary_use28, align 1
  %srl_ts_clk_mod_cnts = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 12
  %41 = ptrtoint ptr %srl_ts_clk_mod_cnts to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %srl_ts_clk_mod_cnts, align 4
  %en_fef_intmtnt_base = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 6
  %42 = ptrtoint ptr %en_fef_intmtnt_base to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %en_fef_intmtnt_base, align 1
  %en_fef_intmtnt_lite = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 7
  %43 = ptrtoint ptr %en_fef_intmtnt_lite to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %en_fef_intmtnt_lite, align 2
  %rf_lvl_cmpstn = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 9
  %44 = ptrtoint ptr %rf_lvl_cmpstn to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rf_lvl_cmpstn, align 4
  %lna_thrs_tbl_air = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 10
  %45 = ptrtoint ptr %lna_thrs_tbl_air to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %lna_thrs_tbl_air, align 4
  %lna_thrs_tbl_cable = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_main, i32 0, i32 11
  %46 = ptrtoint ptr %lna_thrs_tbl_cable to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %lna_thrs_tbl_cable, align 4
  %srl_ts_clk_mod_cnts29 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 12
  %47 = ptrtoint ptr %srl_ts_clk_mod_cnts29 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %srl_ts_clk_mod_cnts29, align 4
  %en_fef_intmtnt_base30 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 6
  %48 = ptrtoint ptr %en_fef_intmtnt_base30 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %en_fef_intmtnt_base30, align 1
  %en_fef_intmtnt_lite31 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 7
  %49 = ptrtoint ptr %en_fef_intmtnt_lite31 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %en_fef_intmtnt_lite31, align 2
  %rf_lvl_cmpstn32 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 9
  %50 = ptrtoint ptr %rf_lvl_cmpstn32 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rf_lvl_cmpstn32, align 4
  %lna_thrs_tbl_air33 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 10
  %51 = ptrtoint ptr %lna_thrs_tbl_air33 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %lna_thrs_tbl_air33, align 4
  %lna_thrs_tbl_cable34 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd_sub, i32 0, i32 11
  %52 = ptrtoint ptr %lna_thrs_tbl_cable34 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %lna_thrs_tbl_cable34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_init1(ptr noundef %tnr_dmd) local_unnamed_addr #0 align 64 {
entry:
  %data.i159 = alloca i8, align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %chip_id = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 21
  %cancel = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 28
  %2 = call ptr @memset(ptr %chip_id, i32 0, i32 25)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cancel, i32 noundef 4) #8
  %3 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %cancel, align 4
  %4 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tnr_dmd, align 4
  %chip_id4 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %chip_id4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %chip_id4, align 4
  %9 = load ptr, ptr %tnr_dmd, align 4
  %state6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state6, align 4
  %11 = load ptr, ptr %tnr_dmd, align 4
  %clk_mode8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %clk_mode8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %clk_mode8, align 4
  %13 = load ptr, ptr %tnr_dmd, align 4
  %frequency_khz10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %13, i32 0, i32 24
  %14 = ptrtoint ptr %frequency_khz10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %frequency_khz10, align 4
  %15 = load ptr, ptr %tnr_dmd, align 4
  %sys12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %sys12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sys12, align 4
  %17 = load ptr, ptr %tnr_dmd, align 4
  %bandwidth14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %bandwidth14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bandwidth14, align 4
  %19 = load ptr, ptr %tnr_dmd, align 4
  %scan_mode16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %scan_mode16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %scan_mode16, align 4
  %21 = load ptr, ptr %tnr_dmd, align 4
  %cancel18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %21, i32 0, i32 28
  %call.i.i158 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cancel18, i32 noundef 4) #8
  %22 = ptrtoint ptr %cancel18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %cancel18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then3, %if.end.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %data.i, align 1
  %tobool1.not.i = icmp eq ptr %chip_id, null
  br i1 %tobool1.not.i, label %if.end19.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge, label %if.end.i

if.end19.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_chip_id.exit.thread

if.end.i:                                         ; preds = %if.end19
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %24 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %27(ptr noundef %25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge

if.end.i.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_chip_id.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %28 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call8.i = call i32 %31(ptr noundef %29, i32 noundef 0, i8 noundef zeroext -3, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end23, label %if.end5.i.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge

if.end5.i.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_chip_id.exit.thread

cxd2880_tnrdmd_chip_id.exit.thread:               ; preds = %if.end5.i.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge, %if.end.i.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge, %if.end19.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call8.i, %if.end5.i.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge ], [ %call.i, %if.end.i.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge ], [ -22, %if.end19.cxd2880_tnrdmd_chip_id.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end5.i
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data.i, align 1
  %conv.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i, ptr %chip_id, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  %35 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i8 %33, label %if.end23.cleanup_crit_edge [
    i8 98, label %if.end23.if.end30_crit_edge
    i8 106, label %if.end23.if.end30_crit_edge179
  ]

if.end23.if.end30_crit_edge179:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end23.if.end30_crit_edge, %if.end23.if.end30_crit_edge179
  %36 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp32 = icmp eq i32 %37, 1
  br i1 %cmp32, label %if.then33, label %if.end30.if.end50_crit_edge

if.end30.if.end50_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then33:                                        ; preds = %if.end30
  %38 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tnr_dmd, align 4
  %chip_id36 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %39, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i159) #8
  %40 = ptrtoint ptr %data.i159 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %data.i159, align 1
  %tobool.not.i160 = icmp eq ptr %39, null
  %tobool1.not.i161 = icmp eq ptr %chip_id36, null
  %or.cond.i162 = or i1 %tobool.not.i160, %tobool1.not.i161
  br i1 %or.cond.i162, label %if.then33.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge, label %if.end.i167

if.then33.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge: ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_chip_id.exit174.thread

if.end.i167:                                      ; preds = %if.then33
  %io.i163 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %io.i163 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io.i163, align 4
  %write_reg.i164 = getelementptr inbounds %struct.cxd2880_io, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %write_reg.i164 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg.i164, align 4
  %call.i165 = call i32 %44(ptr noundef %42, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool3.not.i166 = icmp eq i32 %call.i165, 0
  br i1 %tobool3.not.i166, label %if.end5.i170, label %if.end.i167.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge

if.end.i167.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge: ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_chip_id.exit174.thread

if.end5.i170:                                     ; preds = %if.end.i167
  %45 = ptrtoint ptr %io.i163 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io.i163, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call8.i168 = call i32 %48(ptr noundef %46, i32 noundef 0, i8 noundef zeroext -3, ptr noundef nonnull %data.i159, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i168)
  %tobool9.not.i169 = icmp eq i32 %call8.i168, 0
  br i1 %tobool9.not.i169, label %if.end40, label %if.end5.i170.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge

if.end5.i170.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge: ; preds = %if.end5.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_chip_id.exit174.thread

cxd2880_tnrdmd_chip_id.exit174.thread:            ; preds = %if.end5.i170.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge, %if.end.i167.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge, %if.then33.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge
  %retval.0.i173.ph = phi i32 [ %call8.i168, %if.end5.i170.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge ], [ %call.i165, %if.end.i167.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge ], [ -22, %if.then33.cxd2880_tnrdmd_chip_id.exit174.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i159) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end5.i170
  %49 = ptrtoint ptr %data.i159 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %data.i159, align 1
  %conv.i171 = zext i8 %50 to i32
  %51 = ptrtoint ptr %chip_id36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv.i171, ptr %chip_id36, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i159) #8
  %52 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tnr_dmd, align 4
  %chip_id42 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %53, i32 0, i32 21
  %54 = ptrtoint ptr %chip_id42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chip_id42, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %55, label %if.end40.cleanup_crit_edge [
    i32 98, label %if.end40.if.end50_crit_edge
    i32 106, label %if.end40.if.end50_crit_edge180
  ]

if.end40.if.end50_crit_edge180:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.end40.if.end50_crit_edge, %if.end40.if.end50_crit_edge180, %if.end30.if.end50_crit_edge
  %call51 = call fastcc i32 @p_init1(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %57 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp56 = icmp eq i32 %58, 1
  br i1 %cmp56, label %if.then57, label %if.end54.if.end63_crit_edge

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then57:                                        ; preds = %if.end54
  %59 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tnr_dmd, align 4
  %call59 = call fastcc i32 @p_init1(ptr noundef %60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then57.if.end63_crit_edge, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then57.if.end63_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63:                                         ; preds = %if.then57.if.end63_crit_edge, %if.end54.if.end63_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %61 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp65 = icmp eq i32 %62, 1
  br i1 %cmp65, label %if.then66, label %if.end63.if.end72_crit_edge

if.end63.if.end72_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then66:                                        ; preds = %if.end63
  %63 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tnr_dmd, align 4
  %call68 = call fastcc i32 @p_init2(ptr noundef %64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then66.if.end72_crit_edge, label %if.then66.cleanup_crit_edge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then66.if.end72_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end72:                                         ; preds = %if.then66.if.end72_crit_edge, %if.end63.if.end72_crit_edge
  %call73 = call fastcc i32 @p_init2(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #8
  %call77 = call fastcc i32 @p_init3(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  %65 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp82 = icmp eq i32 %66, 1
  br i1 %cmp82, label %if.then83, label %if.end80.if.end89_crit_edge

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then83:                                        ; preds = %if.end80
  %67 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tnr_dmd, align 4
  %call85 = call fastcc i32 @p_init3(ptr noundef %68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then83.if.end89_crit_edge, label %if.then83.cleanup_crit_edge

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.end89:                                         ; preds = %if.then83.if.end89_crit_edge, %if.end80.if.end89_crit_edge
  %call90 = call fastcc i32 @rf_init1(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  %69 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp95 = icmp eq i32 %70, 1
  br i1 %cmp95, label %if.then96, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tnr_dmd, align 4
  %call98 = call fastcc i32 @rf_init1(ptr noundef %72)
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %if.end93.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.then83.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.then66.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %cxd2880_tnrdmd_chip_id.exit174.thread, %if.end23.cleanup_crit_edge, %cxd2880_tnrdmd_chip_id.exit.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -25, %if.end23.cleanup_crit_edge ], [ -25, %if.end40.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ], [ %call59, %if.then57.cleanup_crit_edge ], [ %call68, %if.then66.cleanup_crit_edge ], [ %call73, %if.end72.cleanup_crit_edge ], [ %call77, %if.end76.cleanup_crit_edge ], [ %call85, %if.then83.cleanup_crit_edge ], [ %call90, %if.end89.cleanup_crit_edge ], [ %call98, %if.then96 ], [ 0, %if.end93.cleanup_crit_edge ], [ %retval.0.i.ph, %cxd2880_tnrdmd_chip_id.exit.thread ], [ %retval.0.i173.ph, %cxd2880_tnrdmd_chip_id.exit174.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_chip_id(ptr noundef readonly %tnr_dmd, ptr noundef writeonly %chip_id) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %chip_id, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %4(ptr noundef %2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call8 = call i32 %8(ptr noundef %6, i32 noundef 0, i8 noundef zeroext -3, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %chip_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p_init1(ptr noundef readonly %tnr_dmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %4 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  br i1 %switch, label %if.then7, label %if.end4.if.end17_crit_edge

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then7:                                         ; preds = %if.end4
  %create_param = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2
  %6 = ptrtoint ptr %create_param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %create_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %switch.lookup, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.then7
  %switch.idx.cast = trunc i32 %7 to i8
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %write_reg11 = getelementptr inbounds %struct.cxd2880_io, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write_reg11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg11, align 4
  %call13 = tail call i32 %12(ptr noundef %10, i32 noundef 0, i8 noundef zeroext 16, i8 noundef zeroext %switch.idx.cast) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %switch.lookup.if.end17_crit_edge, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup.if.end17_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %switch.lookup.if.end17_crit_edge, %if.end4.if.end17_crit_edge
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %call19 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @p_init1_seq, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %chip_id = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 21
  %15 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chip_id, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %16, label %if.end22.cleanup_crit_edge [
    i32 98, label %if.end22.sw.epilog26_crit_edge
    i32 106, label %sw.bb24
  ]

if.end22.sw.epilog26_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb24:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

sw.epilog26:                                      ; preds = %sw.bb24, %if.end22.sw.epilog26_crit_edge
  %data.1 = phi i8 [ 22, %sw.bb24 ], [ 26, %if.end22.sw.epilog26_crit_edge ]
  %18 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io, align 4
  %write_reg28 = getelementptr inbounds %struct.cxd2880_io, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg28, align 4
  %call30 = tail call i32 %21(ptr noundef %19, i32 noundef 0, i8 noundef zeroext 16, i8 noundef zeroext %data.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %sw.epilog26.cleanup_crit_edge

sw.epilog26.cleanup_crit_edge:                    ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %sw.epilog26
  %en_internal_ldo = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %en_internal_ldo to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %en_internal_ldo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool35.not = icmp ne i8 %23, 0
  %. = zext i1 %tobool35.not to i8
  %24 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io, align 4
  %write_reg39 = getelementptr inbounds %struct.cxd2880_io, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %write_reg39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg39, align 4
  %call41 = tail call i32 %27(ptr noundef %25, i32 noundef 0, i8 noundef zeroext 17, i8 noundef zeroext %.) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  %28 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io, align 4
  %write_reg46 = getelementptr inbounds %struct.cxd2880_io, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %write_reg46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg46, align 4
  %call48 = tail call i32 %31(ptr noundef %29, i32 noundef 0, i8 noundef zeroext 19, i8 noundef zeroext %.) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end44
  %32 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io, align 4
  %write_reg53 = getelementptr inbounds %struct.cxd2880_io, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %write_reg53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg53, align 4
  %call55 = tail call i32 %35(ptr noundef %33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %36 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io, align 4
  %write_reg60 = getelementptr inbounds %struct.cxd2880_io, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %write_reg60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg60, align 4
  %call62 = tail call i32 %39(ptr noundef %37, i32 noundef 0, i8 noundef zeroext 18, i8 noundef zeroext %.) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.end58
  %40 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io, align 4
  %write_reg67 = getelementptr inbounds %struct.cxd2880_io, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %write_reg67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg67, align 4
  %call69 = tail call i32 %43(ptr noundef %41, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end72:                                         ; preds = %if.end65
  %44 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chip_id, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %45, label %if.end72.cleanup_crit_edge [
    i32 98, label %if.end72.sw.epilog77_crit_edge
    i32 106, label %sw.bb75
  ]

if.end72.sw.epilog77_crit_edge:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog77

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb75:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %sw.bb75, %if.end72.sw.epilog77_crit_edge
  %data.3 = phi i8 [ 0, %sw.bb75 ], [ 1, %if.end72.sw.epilog77_crit_edge ]
  %47 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io, align 4
  %write_reg79 = getelementptr inbounds %struct.cxd2880_io, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %write_reg79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_reg79, align 4
  %call81 = tail call i32 %50(ptr noundef %48, i32 noundef 0, i8 noundef zeroext 105, i8 noundef zeroext %data.3) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog77, %if.end72.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %sw.epilog26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call81, %sw.epilog77 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ %call13, %switch.lookup.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ -25, %if.end22.cleanup_crit_edge ], [ %call30, %sw.epilog26.cleanup_crit_edge ], [ %call41, %if.end33.cleanup_crit_edge ], [ %call48, %if.end44.cleanup_crit_edge ], [ %call55, %if.end51.cleanup_crit_edge ], [ %call62, %if.end58.cleanup_crit_edge ], [ %call69, %if.end65.cleanup_crit_edge ], [ -25, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p_init2(ptr noundef readonly %tnr_dmd) unnamed_addr #0 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #8
  %0 = getelementptr inbounds i8, ptr %data, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 0, ptr %0, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %5(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %xosc_cap = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %xosc_cap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %xosc_cap, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %data, align 1
  %xosc_i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %xosc_i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %xosc_i, align 1
  %arrayidx6 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx6, align 1
  %xtal_share_type = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %xtal_share_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xtal_share_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %switch.lookup, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %switch.shiftamt = shl i32 %13, 3
  %switch.downshift = lshr i32 65537, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.shiftamt34 = shl i32 %13, 3
  %switch.downshift35 = lshr i32 16842752, %switch.shiftamt34
  %switch.masked36 = trunc i32 %switch.downshift35 to i8
  %arrayidx17 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %switch.masked, ptr %arrayidx17, align 1
  %arrayidx18 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %switch.masked36, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 6, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx20, align 1
  %19 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_regs, align 4
  %call23 = call i32 %22(ptr noundef %20, i32 noundef 0, i8 noundef zeroext 19, ptr noundef nonnull %data, i32 noundef 6) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p_init3(ptr noundef readonly %tnr_dmd) unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %data, align 2
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %4(ptr noundef %2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %5 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %diver_mode, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %6, label %if.end4.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %data, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %data, align 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_regs, align 4
  %call12 = call i32 %14(ptr noundef %12, i32 noundef 0, i8 noundef zeroext 31, ptr noundef nonnull %data, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rf_init1(ptr noundef readonly %tnr_dmd) unnamed_addr #0 align 64 {
entry:
  %data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 72058693549555712, ptr %data, align 8
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %4(ptr noundef %2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_regs, align 4
  %call9 = call i32 %8(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 33, ptr noundef nonnull %data, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %write_reg14 = getelementptr inbounds %struct.cxd2880_io, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write_reg14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg14, align 4
  %call16 = call i32 %12(ptr noundef %10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %data, align 8
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx5, align 1
  %15 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io, align 4
  %write_regs23 = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_regs23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_regs23, align 4
  %call26 = call i32 %18(ptr noundef %16, i32 noundef 0, i8 noundef zeroext 23, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %stationary_use = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %stationary_use to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %stationary_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not = icmp eq i8 %20, 0
  br i1 %tobool30.not, label %if.end29.if.end39_crit_edge, label %if.then31

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then31:                                        ; preds = %if.end29
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 4
  %write_reg33 = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %write_reg33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg33, align 4
  %call35 = call i32 %24(ptr noundef %22, i32 noundef 0, i8 noundef zeroext 26, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then31.if.end39_crit_edge, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end39:                                         ; preds = %if.then31.if.end39_crit_edge, %if.end29.if.end39_crit_edge
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io, align 4
  %call41 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @rf_init1_seq1, i8 noundef zeroext 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %data, align 8
  %is_cxd2881gg = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %is_cxd2881gg to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_cxd2881gg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool47.not = icmp eq i8 %29, 0
  br i1 %tobool47.not, label %if.end44.if.else_crit_edge, label %land.lhs.true

if.end44.if.else_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end44
  %xtal_share_type = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %xtal_share_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xtal_share_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp = icmp eq i32 %31, 3
  br i1 %cmp, label %land.lhs.true.if.end53_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end44.if.else_crit_edge
  br label %if.end53

if.end53:                                         ; preds = %if.else, %land.lhs.true.if.end53_crit_edge
  %storemerge = phi i8 [ 31, %if.else ], [ 0, %land.lhs.true.if.end53_crit_edge ]
  %32 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %storemerge, ptr %arrayidx5, align 1
  %33 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 10, ptr %arrayidx6, align 2
  %34 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io, align 4
  %write_regs56 = getelementptr inbounds %struct.cxd2880_io, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_regs56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_regs56, align 4
  %call59 = call i32 %37(ptr noundef %35, i32 noundef 0, i8 noundef zeroext -75, ptr noundef nonnull %data, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end62:                                         ; preds = %if.end53
  %38 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io, align 4
  %call64 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %39, i32 noundef 0, ptr noundef nonnull @rf_init1_seq2, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %chip_id = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 21
  %40 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %41)
  %cmp68 = icmp eq i32 %41, 98
  %. = select i1 %cmp68, i8 52, i8 47
  %.712 = select i1 %cmp68, i8 44, i8 37
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %., ptr %data, align 8
  %43 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.712, ptr %arrayidx5, align 1
  %44 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 21, ptr %arrayidx6, align 2
  %arrayidx78 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 25, ptr %arrayidx78, align 1
  %arrayidx79 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 27, ptr %arrayidx79, align 4
  %arrayidx80 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %47 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 21, ptr %arrayidx80, align 1
  %arrayidx81 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %48 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 25, ptr %arrayidx81, align 2
  %arrayidx82 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %49 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 27, ptr %arrayidx82, align 1
  %50 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io, align 4
  %write_regs84 = getelementptr inbounds %struct.cxd2880_io, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_regs84 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_regs84, align 4
  %call87 = call i32 %53(ptr noundef %51, i32 noundef 0, i8 noundef zeroext -39, ptr noundef nonnull %data, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90:                                         ; preds = %if.end67
  %54 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io, align 4
  %write_reg92 = getelementptr inbounds %struct.cxd2880_io, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %write_reg92 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg92, align 4
  %call94 = call i32 %57(ptr noundef %55, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %if.end90
  %58 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 108, ptr %data, align 8
  %59 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 16, ptr %arrayidx5, align 1
  %60 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -90, ptr %arrayidx6, align 2
  %61 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io, align 4
  %write_regs102 = getelementptr inbounds %struct.cxd2880_io, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %write_regs102 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_regs102, align 4
  %call105 = call i32 %64(ptr noundef %62, i32 noundef 0, i8 noundef zeroext 68, ptr noundef nonnull %data, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end108:                                        ; preds = %if.end97
  %65 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 22, ptr %data, align 8
  %66 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -88, ptr %arrayidx5, align 1
  %67 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io, align 4
  %write_regs112 = getelementptr inbounds %struct.cxd2880_io, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write_regs112 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_regs112, align 4
  %call115 = call i32 %70(ptr noundef %68, i32 noundef 0, i8 noundef zeroext 80, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end118:                                        ; preds = %if.end108
  %71 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %data, align 8
  %72 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 34, ptr %arrayidx5, align 1
  %73 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx6, align 2
  %74 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -120, ptr %arrayidx78, align 1
  %75 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io, align 4
  %write_regs124 = getelementptr inbounds %struct.cxd2880_io, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_regs124 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_regs124, align 4
  %call127 = call i32 %78(ptr noundef %76, i32 noundef 0, i8 noundef zeroext 98, ptr noundef nonnull %data, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %if.end118.cleanup_crit_edge

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end130:                                        ; preds = %if.end118
  %79 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %io, align 4
  %write_reg132 = getelementptr inbounds %struct.cxd2880_io, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %write_reg132 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_reg132, align 4
  %call134 = call i32 %82(ptr noundef %80, i32 noundef 0, i8 noundef zeroext 116, i8 noundef zeroext 117) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end130.cleanup_crit_edge

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end137:                                        ; preds = %if.end130
  %83 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %io, align 4
  %write_regs139 = getelementptr inbounds %struct.cxd2880_io, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write_regs139 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_regs139, align 4
  %call141 = call i32 %86(ptr noundef %84, i32 noundef 0, i8 noundef zeroext 127, ptr noundef nonnull @rf_init1.rf_init1_cdata1, i32 noundef 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end144:                                        ; preds = %if.end137
  %87 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %io, align 4
  %write_reg146 = getelementptr inbounds %struct.cxd2880_io, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %write_reg146 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write_reg146, align 4
  %call148 = call i32 %90(ptr noundef %88, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end144.cleanup_crit_edge

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end151:                                        ; preds = %if.end144
  %91 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %data, align 8
  %92 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 113, ptr %arrayidx5, align 1
  %93 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %io, align 4
  %write_regs155 = getelementptr inbounds %struct.cxd2880_io, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %write_regs155 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write_regs155, align 4
  %call158 = call i32 %96(ptr noundef %94, i32 noundef 0, i8 noundef zeroext 16, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %if.end151.cleanup_crit_edge

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end161:                                        ; preds = %if.end151
  %97 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io, align 4
  %write_reg163 = getelementptr inbounds %struct.cxd2880_io, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %write_reg163 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_reg163, align 4
  %call165 = call i32 %100(ptr noundef %98, i32 noundef 0, i8 noundef zeroext 35, i8 noundef zeroext -119) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %if.end161.cleanup_crit_edge

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end168:                                        ; preds = %if.end161
  %101 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %io, align 4
  %write_regs170 = getelementptr inbounds %struct.cxd2880_io, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %write_regs170 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write_regs170, align 4
  %call172 = call i32 %104(ptr noundef %102, i32 noundef 0, i8 noundef zeroext 39, ptr noundef nonnull @rf_init1.rf_init1_cdata2, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %if.end168.cleanup_crit_edge

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end175:                                        ; preds = %if.end168
  %105 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io, align 4
  %write_regs177 = getelementptr inbounds %struct.cxd2880_io, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %write_regs177 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_regs177, align 4
  %call179 = call i32 %108(ptr noundef %106, i32 noundef 0, i8 noundef zeroext 58, ptr noundef nonnull @rf_init1.rf_init1_cdata3, i32 noundef 80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end182, label %if.end175.cleanup_crit_edge

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end182:                                        ; preds = %if.end175
  %109 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 3, ptr %data, align 8
  %110 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -32, ptr %arrayidx5, align 1
  %111 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %io, align 4
  %write_regs186 = getelementptr inbounds %struct.cxd2880_io, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %write_regs186 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write_regs186, align 4
  %call189 = call i32 %114(ptr noundef %112, i32 noundef 0, i8 noundef zeroext -68, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %if.end182.cleanup_crit_edge

if.end182.cleanup_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end192:                                        ; preds = %if.end182
  %115 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %io, align 4
  %call194 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %116, i32 noundef 0, ptr noundef nonnull @rf_init1_seq3, i8 noundef zeroext 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end197, label %if.end192.cleanup_crit_edge

if.end192.cleanup_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end197:                                        ; preds = %if.end192
  %117 = ptrtoint ptr %stationary_use to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %stationary_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool200.not = icmp eq i8 %118, 0
  %.713 = select i1 %tobool200.not, i8 0, i8 6
  %.714 = select i1 %tobool200.not, i8 8, i8 7
  %.715 = select i1 %tobool200.not, i8 25, i8 26
  %119 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %.713, ptr %data, align 8
  %120 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %.714, ptr %arrayidx5, align 1
  %121 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %.715, ptr %arrayidx6, align 2
  %122 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 14, ptr %arrayidx78, align 1
  %123 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 9, ptr %arrayidx79, align 4
  %124 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 14, ptr %arrayidx80, align 1
  %125 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %io, align 4
  %write_reg214 = getelementptr inbounds %struct.cxd2880_io, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %write_reg214 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write_reg214, align 4
  %call216 = call i32 %128(ptr noundef %126, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %for.cond.preheader, label %if.end197.cleanup_crit_edge

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end197
  %lna_thrs_tbl_air = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %if.end235
  %add = add nuw i8 %addr.0722, 6
  %cmp221 = icmp ult i8 %addr.0722, -103
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 6
  br i1 %cmp221, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 16, %for.cond.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %addr.0722 = phi i8 [ 16, %for.cond.preheader ], [ %add, %for.cond.for.body_crit_edge ]
  %129 = ptrtoint ptr %lna_thrs_tbl_air to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %lna_thrs_tbl_air, align 4
  %tobool223.not = icmp eq ptr %130, null
  br i1 %tobool223.not, label %for.body.if.end235_crit_edge, label %if.then224

for.body.if.end235_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end235

if.then224:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %131 = add nsw i32 %indvars.iv, -16
  %132 = udiv i32 %131, 6
  %arrayidx228 = getelementptr [24 x %struct.cxd2880_tnrdmd_lna_thrs], ptr %130, i32 0, i32 %132
  %133 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx228, align 1
  %135 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %data, align 8
  %on_off = getelementptr [24 x %struct.cxd2880_tnrdmd_lna_thrs], ptr %130, i32 0, i32 %132, i32 1
  %136 = ptrtoint ptr %on_off to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %on_off, align 1
  %138 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx5, align 1
  br label %if.end235

if.end235:                                        ; preds = %if.then224, %for.body.if.end235_crit_edge
  %139 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %io, align 4
  %write_regs237 = getelementptr inbounds %struct.cxd2880_io, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %write_regs237 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write_regs237, align 4
  %call240 = call i32 %142(ptr noundef %140, i32 noundef 0, i8 noundef zeroext %addr.0722, ptr noundef nonnull %data, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %for.cond, label %if.end235.cleanup_crit_edge

if.end235.cleanup_crit_edge:                      ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %143 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %data, align 8
  %144 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 8, ptr %arrayidx5, align 1
  %145 = ptrtoint ptr %stationary_use to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %stationary_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool250.not = icmp eq i8 %146, 0
  %.716 = select i1 %tobool250.not, i8 25, i8 26
  %147 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %.716, ptr %arrayidx6, align 2
  %148 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 14, ptr %arrayidx78, align 1
  %149 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 9, ptr %arrayidx79, align 4
  %150 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 14, ptr %arrayidx80, align 1
  %151 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %io, align 4
  %write_reg260 = getelementptr inbounds %struct.cxd2880_io, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %write_reg260 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write_reg260, align 4
  %call262 = call i32 %154(ptr noundef %152, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %for.cond266.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond266.preheader:                            ; preds = %for.end
  %lna_thrs_tbl_cable = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 11
  br label %for.body270

for.cond266:                                      ; preds = %if.end290
  %add301 = add nuw i8 %addr.1724, 6
  %cmp268 = icmp ult i8 %addr.1724, -55
  %indvars.iv.next732 = add nuw nsw i32 %indvars.iv731, 6
  br i1 %cmp268, label %for.cond266.for.body270_crit_edge, label %for.end303

for.cond266.for.body270_crit_edge:                ; preds = %for.cond266
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body270

for.body270:                                      ; preds = %for.cond266.for.body270_crit_edge, %for.cond266.preheader
  %indvars.iv731 = phi i32 [ 16, %for.cond266.preheader ], [ %indvars.iv.next732, %for.cond266.for.body270_crit_edge ]
  %addr.1724 = phi i8 [ 16, %for.cond266.preheader ], [ %add301, %for.cond266.for.body270_crit_edge ]
  %155 = ptrtoint ptr %lna_thrs_tbl_cable to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %lna_thrs_tbl_cable, align 4
  %tobool271.not = icmp eq ptr %156, null
  br i1 %tobool271.not, label %for.body270.if.end290_crit_edge, label %if.then272

for.body270.if.end290_crit_edge:                  ; preds = %for.body270
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end290

if.then272:                                       ; preds = %for.body270
  call void @__sanitizer_cov_trace_pc() #10
  %157 = add nsw i32 %indvars.iv731, -16
  %158 = udiv i32 %157, 6
  %arrayidx281 = getelementptr [32 x %struct.cxd2880_tnrdmd_lna_thrs], ptr %156, i32 0, i32 %158
  %159 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx281, align 1
  %161 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %data, align 8
  %on_off288 = getelementptr [32 x %struct.cxd2880_tnrdmd_lna_thrs], ptr %156, i32 0, i32 %158, i32 1
  %162 = ptrtoint ptr %on_off288 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %on_off288, align 1
  %164 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx5, align 1
  br label %if.end290

if.end290:                                        ; preds = %if.then272, %for.body270.if.end290_crit_edge
  %165 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %io, align 4
  %write_regs292 = getelementptr inbounds %struct.cxd2880_io, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %write_regs292 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write_regs292, align 4
  %call295 = call i32 %168(ptr noundef %166, i32 noundef 0, i8 noundef zeroext %addr.1724, ptr noundef nonnull %data, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %for.cond266, label %if.end290.cleanup_crit_edge

if.end290.cleanup_crit_edge:                      ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end303:                                       ; preds = %for.cond266
  %169 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %io, align 4
  %write_reg305 = getelementptr inbounds %struct.cxd2880_io, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %write_reg305 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %write_reg305, align 4
  %call307 = call i32 %172(ptr noundef %170, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %if.end310, label %for.end303.cleanup_crit_edge

for.end303.cleanup_crit_edge:                     ; preds = %for.end303
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end310:                                        ; preds = %for.end303
  %173 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 8, ptr %data, align 8
  %174 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 9, ptr %arrayidx5, align 1
  %175 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %io, align 4
  %write_regs314 = getelementptr inbounds %struct.cxd2880_io, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %write_regs314 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write_regs314, align 4
  %call317 = call i32 %178(ptr noundef %176, i32 noundef 0, i8 noundef zeroext -67, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.end320, label %if.end310.cleanup_crit_edge

if.end310.cleanup_crit_edge:                      ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end320:                                        ; preds = %if.end310
  %179 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 8, ptr %data, align 8
  %180 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 9, ptr %arrayidx5, align 1
  %181 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %io, align 4
  %write_regs324 = getelementptr inbounds %struct.cxd2880_io, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %write_regs324 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write_regs324, align 4
  %call327 = call i32 %184(ptr noundef %182, i32 noundef 0, i8 noundef zeroext -60, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call327)
  %tobool328.not = icmp eq i32 %call327, 0
  br i1 %tobool328.not, label %if.end330, label %if.end320.cleanup_crit_edge

if.end320.cleanup_crit_edge:                      ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end330:                                        ; preds = %if.end320
  %185 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %io, align 4
  %write_regs332 = getelementptr inbounds %struct.cxd2880_io, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %write_regs332 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write_regs332, align 4
  %call334 = call i32 %188(ptr noundef %186, i32 noundef 0, i8 noundef zeroext -55, ptr noundef nonnull @rf_init1.rf_init1_cdata4, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call334)
  %tobool335.not = icmp eq i32 %call334, 0
  br i1 %tobool335.not, label %if.end337, label %if.end330.cleanup_crit_edge

if.end330.cleanup_crit_edge:                      ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end337:                                        ; preds = %if.end330
  %189 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %io, align 4
  %write_reg339 = getelementptr inbounds %struct.cxd2880_io, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %write_reg339 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %write_reg339, align 4
  %call341 = call i32 %192(ptr noundef %190, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %if.end344, label %if.end337.cleanup_crit_edge

if.end337.cleanup_crit_edge:                      ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end344:                                        ; preds = %if.end337
  %193 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 21, ptr %data, align 8
  %194 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 24, ptr %arrayidx5, align 1
  %195 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %arrayidx6, align 2
  %196 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %io, align 4
  %write_regs349 = getelementptr inbounds %struct.cxd2880_io, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %write_regs349 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %write_regs349, align 4
  %call352 = call i32 %199(ptr noundef %197, i32 noundef 0, i8 noundef zeroext 16, ptr noundef nonnull %data, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call352)
  %tobool353.not = icmp eq i32 %call352, 0
  br i1 %tobool353.not, label %if.end355, label %if.end344.cleanup_crit_edge

if.end344.cleanup_crit_edge:                      ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end355:                                        ; preds = %if.end344
  %200 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %io, align 4
  %call357 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %201, i32 noundef 0, ptr noundef nonnull @rf_init1_seq4, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call357)
  %tobool358.not = icmp eq i32 %call357, 0
  br i1 %tobool358.not, label %if.end360, label %if.end355.cleanup_crit_edge

if.end355.cleanup_crit_edge:                      ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end360:                                        ; preds = %if.end355
  %202 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %io, align 4
  %write_regs362 = getelementptr inbounds %struct.cxd2880_io, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %write_regs362 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %write_regs362, align 4
  %call364 = call i32 %205(ptr noundef %203, i32 noundef 0, i8 noundef zeroext 18, ptr noundef nonnull @rf_init1.rf_init1_cdata5, i32 noundef 50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call364)
  %tobool365.not = icmp eq i32 %call364, 0
  br i1 %tobool365.not, label %if.end367, label %if.end360.cleanup_crit_edge

if.end360.cleanup_crit_edge:                      ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end367:                                        ; preds = %if.end360
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %206 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %io, align 4
  %write_reg369 = getelementptr inbounds %struct.cxd2880_io, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %write_reg369 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write_reg369, align 4
  %call371 = call i32 %209(ptr noundef %207, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371)
  %tobool372.not = icmp eq i32 %call371, 0
  br i1 %tobool372.not, label %if.end374, label %if.end367.cleanup_crit_edge

if.end367.cleanup_crit_edge:                      ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end374:                                        ; preds = %if.end367
  %210 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %io, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %call378 = call i32 %213(ptr noundef %211, i32 noundef 0, i8 noundef zeroext 16, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call378)
  %tobool379.not = icmp eq i32 %call378, 0
  br i1 %tobool379.not, label %if.end381, label %if.end374.cleanup_crit_edge

if.end374.cleanup_crit_edge:                      ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end381:                                        ; preds = %if.end374
  %214 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %data, align 8
  %216 = and i8 %215, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %cmp384 = icmp eq i8 %216, 0
  br i1 %cmp384, label %if.end381.cleanup_crit_edge, label %if.end387

if.end381.cleanup_crit_edge:                      ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end387:                                        ; preds = %if.end381
  %217 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %io, align 4
  %call389 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %218, i32 noundef 0, ptr noundef nonnull @rf_init1_seq5, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call389)
  %tobool390.not = icmp eq i32 %call389, 0
  br i1 %tobool390.not, label %if.end392, label %if.end387.cleanup_crit_edge

if.end387.cleanup_crit_edge:                      ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end392:                                        ; preds = %if.end387
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %219 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %io, align 4
  %write_reg394 = getelementptr inbounds %struct.cxd2880_io, ptr %220, i32 0, i32 2
  %221 = ptrtoint ptr %write_reg394 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %write_reg394, align 4
  %call396 = call i32 %222(ptr noundef %220, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call396)
  %tobool397.not = icmp eq i32 %call396, 0
  br i1 %tobool397.not, label %if.end399, label %if.end392.cleanup_crit_edge

if.end392.cleanup_crit_edge:                      ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end399:                                        ; preds = %if.end392
  %223 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %io, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %call404 = call i32 %226(ptr noundef %224, i32 noundef 0, i8 noundef zeroext 17, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call404)
  %tobool405.not = icmp eq i32 %call404, 0
  br i1 %tobool405.not, label %if.end407, label %if.end399.cleanup_crit_edge

if.end399.cleanup_crit_edge:                      ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end407:                                        ; preds = %if.end399
  %227 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %data, align 8
  %229 = and i8 %228, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %cmp411 = icmp eq i8 %229, 0
  br i1 %cmp411, label %if.end407.cleanup_crit_edge, label %if.end414

if.end407.cleanup_crit_edge:                      ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end414:                                        ; preds = %if.end407
  %230 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %io, align 4
  %call416 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %231, i32 noundef 1, ptr noundef nonnull @rf_init1_seq6, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call416)
  %tobool417.not = icmp eq i32 %call416, 0
  br i1 %tobool417.not, label %if.end419, label %if.end414.cleanup_crit_edge

if.end414.cleanup_crit_edge:                      ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end419:                                        ; preds = %if.end414
  %232 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 0, ptr %data, align 8
  %233 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 -2, ptr %arrayidx5, align 1
  %234 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 -18, ptr %arrayidx6, align 2
  %235 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %io, align 4
  %write_regs424 = getelementptr inbounds %struct.cxd2880_io, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %write_regs424 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %write_regs424, align 4
  %call427 = call i32 %238(ptr noundef %236, i32 noundef 1, i8 noundef zeroext 110, ptr noundef nonnull %data, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call427)
  %tobool428.not = icmp eq i32 %call427, 0
  br i1 %tobool428.not, label %if.end430, label %if.end419.cleanup_crit_edge

if.end419.cleanup_crit_edge:                      ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end430:                                        ; preds = %if.end419
  %239 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 -95, ptr %data, align 8
  %240 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 -117, ptr %arrayidx5, align 1
  %241 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %io, align 4
  %write_regs434 = getelementptr inbounds %struct.cxd2880_io, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %write_regs434 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write_regs434, align 4
  %call437 = call i32 %244(ptr noundef %242, i32 noundef 1, i8 noundef zeroext -115, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call437)
  %tobool438.not = icmp eq i32 %call437, 0
  br i1 %tobool438.not, label %if.end440, label %if.end430.cleanup_crit_edge

if.end430.cleanup_crit_edge:                      ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end440:                                        ; preds = %if.end430
  %245 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 8, ptr %data, align 8
  %246 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 9, ptr %arrayidx5, align 1
  %247 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %io, align 4
  %write_regs444 = getelementptr inbounds %struct.cxd2880_io, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %write_regs444 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %write_regs444, align 4
  %call447 = call i32 %250(ptr noundef %248, i32 noundef 1, i8 noundef zeroext 119, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447)
  %tobool448.not = icmp eq i32 %call447, 0
  br i1 %tobool448.not, label %if.end450, label %if.end440.cleanup_crit_edge

if.end440.cleanup_crit_edge:                      ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end450:                                        ; preds = %if.end440
  %251 = ptrtoint ptr %stationary_use to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %stationary_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool453.not = icmp eq i8 %252, 0
  br i1 %tobool453.not, label %if.end450.if.end462_crit_edge, label %if.then454

if.end450.if.end462_crit_edge:                    ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end462

if.then454:                                       ; preds = %if.end450
  %253 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %io, align 4
  %write_reg456 = getelementptr inbounds %struct.cxd2880_io, ptr %254, i32 0, i32 2
  %255 = ptrtoint ptr %write_reg456 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %write_reg456, align 4
  %call458 = call i32 %256(ptr noundef %254, i32 noundef 1, i8 noundef zeroext -128, i8 noundef zeroext -86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call458)
  %tobool459.not = icmp eq i32 %call458, 0
  br i1 %tobool459.not, label %if.then454.if.end462_crit_edge, label %if.then454.cleanup_crit_edge

if.then454.cleanup_crit_edge:                     ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then454.if.end462_crit_edge:                   ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end462

if.end462:                                        ; preds = %if.then454.if.end462_crit_edge, %if.end450.if.end462_crit_edge
  %257 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %io, align 4
  %call464 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %258, i32 noundef 1, ptr noundef nonnull @rf_init1_seq7, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call464)
  %tobool465.not = icmp eq i32 %call464, 0
  br i1 %tobool465.not, label %if.end467, label %if.end462.cleanup_crit_edge

if.end462.cleanup_crit_edge:                      ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end467:                                        ; preds = %if.end462
  %259 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %io, align 4
  %call469 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %260, i32 noundef 0, ptr noundef nonnull @rf_init1_seq8, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call469)
  %tobool470.not = icmp eq i32 %call469, 0
  br i1 %tobool470.not, label %if.end472, label %if.end467.cleanup_crit_edge

if.end467.cleanup_crit_edge:                      ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end472:                                        ; preds = %if.end467
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %261 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %io, align 4
  %write_reg474 = getelementptr inbounds %struct.cxd2880_io, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %write_reg474 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write_reg474, align 4
  %call476 = call i32 %264(ptr noundef %262, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call476)
  %tobool477.not = icmp eq i32 %call476, 0
  br i1 %tobool477.not, label %if.end479, label %if.end472.cleanup_crit_edge

if.end472.cleanup_crit_edge:                      ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end479:                                        ; preds = %if.end472
  %265 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %io, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %266, align 4
  %call484 = call i32 %268(ptr noundef %266, i32 noundef 0, i8 noundef zeroext 16, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call484)
  %tobool485.not = icmp eq i32 %call484, 0
  br i1 %tobool485.not, label %if.end487, label %if.end479.cleanup_crit_edge

if.end479.cleanup_crit_edge:                      ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end487:                                        ; preds = %if.end479
  %269 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %data, align 8
  %271 = and i8 %270, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %cmp491 = icmp eq i8 %271, 0
  br i1 %cmp491, label %if.end487.cleanup_crit_edge, label %if.end494

if.end487.cleanup_crit_edge:                      ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end494:                                        ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #10
  %272 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %io, align 4
  %call496 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %273, i32 noundef 0, ptr noundef nonnull @rf_init1_seq9, i8 noundef zeroext 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end494, %if.end487.cleanup_crit_edge, %if.end479.cleanup_crit_edge, %if.end472.cleanup_crit_edge, %if.end467.cleanup_crit_edge, %if.end462.cleanup_crit_edge, %if.then454.cleanup_crit_edge, %if.end440.cleanup_crit_edge, %if.end430.cleanup_crit_edge, %if.end419.cleanup_crit_edge, %if.end414.cleanup_crit_edge, %if.end407.cleanup_crit_edge, %if.end399.cleanup_crit_edge, %if.end392.cleanup_crit_edge, %if.end387.cleanup_crit_edge, %if.end381.cleanup_crit_edge, %if.end374.cleanup_crit_edge, %if.end367.cleanup_crit_edge, %if.end360.cleanup_crit_edge, %if.end355.cleanup_crit_edge, %if.end344.cleanup_crit_edge, %if.end337.cleanup_crit_edge, %if.end330.cleanup_crit_edge, %if.end320.cleanup_crit_edge, %if.end310.cleanup_crit_edge, %for.end303.cleanup_crit_edge, %if.end290.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end235.cleanup_crit_edge, %if.end197.cleanup_crit_edge, %if.end192.cleanup_crit_edge, %if.end182.cleanup_crit_edge, %if.end175.cleanup_crit_edge, %if.end168.cleanup_crit_edge, %if.end161.cleanup_crit_edge, %if.end151.cleanup_crit_edge, %if.end144.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %if.end130.cleanup_crit_edge, %if.end118.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call496, %if.end494 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call9, %if.end4.cleanup_crit_edge ], [ %call16, %if.end12.cleanup_crit_edge ], [ %call26, %if.end19.cleanup_crit_edge ], [ %call35, %if.then31.cleanup_crit_edge ], [ %call41, %if.end39.cleanup_crit_edge ], [ %call59, %if.end53.cleanup_crit_edge ], [ %call64, %if.end62.cleanup_crit_edge ], [ %call87, %if.end67.cleanup_crit_edge ], [ %call94, %if.end90.cleanup_crit_edge ], [ %call105, %if.end97.cleanup_crit_edge ], [ %call115, %if.end108.cleanup_crit_edge ], [ %call127, %if.end118.cleanup_crit_edge ], [ %call134, %if.end130.cleanup_crit_edge ], [ %call141, %if.end137.cleanup_crit_edge ], [ %call148, %if.end144.cleanup_crit_edge ], [ %call158, %if.end151.cleanup_crit_edge ], [ %call165, %if.end161.cleanup_crit_edge ], [ %call172, %if.end168.cleanup_crit_edge ], [ %call179, %if.end175.cleanup_crit_edge ], [ %call189, %if.end182.cleanup_crit_edge ], [ %call194, %if.end192.cleanup_crit_edge ], [ %call216, %if.end197.cleanup_crit_edge ], [ %call262, %for.end.cleanup_crit_edge ], [ %call307, %for.end303.cleanup_crit_edge ], [ %call317, %if.end310.cleanup_crit_edge ], [ %call327, %if.end320.cleanup_crit_edge ], [ %call334, %if.end330.cleanup_crit_edge ], [ %call341, %if.end337.cleanup_crit_edge ], [ %call352, %if.end344.cleanup_crit_edge ], [ %call357, %if.end355.cleanup_crit_edge ], [ %call364, %if.end360.cleanup_crit_edge ], [ %call371, %if.end367.cleanup_crit_edge ], [ %call378, %if.end374.cleanup_crit_edge ], [ -22, %if.end381.cleanup_crit_edge ], [ %call389, %if.end387.cleanup_crit_edge ], [ %call396, %if.end392.cleanup_crit_edge ], [ %call404, %if.end399.cleanup_crit_edge ], [ -22, %if.end407.cleanup_crit_edge ], [ %call416, %if.end414.cleanup_crit_edge ], [ %call427, %if.end419.cleanup_crit_edge ], [ %call437, %if.end430.cleanup_crit_edge ], [ %call447, %if.end440.cleanup_crit_edge ], [ %call458, %if.then454.cleanup_crit_edge ], [ %call464, %if.end462.cleanup_crit_edge ], [ %call469, %if.end467.cleanup_crit_edge ], [ %call476, %if.end472.cleanup_crit_edge ], [ %call484, %if.end479.cleanup_crit_edge ], [ -22, %if.end487.cleanup_crit_edge ], [ %call295, %if.end290.cleanup_crit_edge ], [ %call240, %if.end235.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_init2(ptr noundef %tnr_dmd) local_unnamed_addr #0 align 64 {
entry:
  %cpu_status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cpu_status.i) #8
  %2 = ptrtoint ptr %cpu_status.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %cpu_status.i, align 2
  %call.i = call i32 @cxd2880_tnrdmd_mon_internal_cpu_status(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %cpu_status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.cxd2880_tnrdmd_check_internal_cpu_status.exit.thread_crit_edge

if.end3.i.cxd2880_tnrdmd_check_internal_cpu_status.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_check_internal_cpu_status.exit.thread

if.end6.i:                                        ; preds = %if.end3.i
  %3 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.i = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %cpu_status.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cpu_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp10.i = icmp eq i16 %6, 0
  br i1 %cmp8.i, label %if.end5, label %if.end14.i

if.end14.i:                                       ; preds = %if.end6.i
  br i1 %cmp10.i, label %if.end19.i, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cpu_status.i) #8
  br label %cleanup

if.end19.i:                                       ; preds = %if.end14.i
  %call20.i = call i32 @cxd2880_tnrdmd_mon_internal_cpu_status_sub(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %cpu_status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end19.i.cxd2880_tnrdmd_check_internal_cpu_status.exit.thread_crit_edge

if.end19.i.cxd2880_tnrdmd_check_internal_cpu_status.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_check_internal_cpu_status.exit.thread

if.end23.i:                                       ; preds = %if.end19.i
  %7 = ptrtoint ptr %cpu_status.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cpu_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp25.i = icmp eq i16 %8, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cpu_status.i) #8
  br i1 %cmp25.i, label %if.end23.i.if.end8_crit_edge, label %if.end23.i.cleanup_crit_edge

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23.i.if.end8_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

cxd2880_tnrdmd_check_internal_cpu_status.exit.thread: ; preds = %if.end19.i.cxd2880_tnrdmd_check_internal_cpu_status.exit.thread_crit_edge, %if.end3.i.cxd2880_tnrdmd_check_internal_cpu_status.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call20.i, %if.end19.i.cxd2880_tnrdmd_check_internal_cpu_status.exit.thread_crit_edge ], [ %call.i, %if.end3.i.cxd2880_tnrdmd_check_internal_cpu_status.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cpu_status.i) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end6.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cpu_status.i) #8
  br i1 %cmp10.i, label %if.end5.if.end8_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.end5.if.end8_crit_edge, %if.end23.i.if.end8_crit_edge
  %call9 = call fastcc i32 @rf_init2(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp14 = icmp eq i32 %10, 1
  br i1 %cmp14, label %if.then15, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  %11 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tnr_dmd, align 4
  %call16 = call fastcc i32 @rf_init2(ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end20_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %if.then15.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %call21 = call fastcc i32 @load_cfg_mem(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp26 = icmp eq i32 %14, 1
  br i1 %cmp26, label %if.then27, label %if.end33.thread

if.end33.thread:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %state68 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %15 = ptrtoint ptr %state68 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state68, align 4
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  %16 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tnr_dmd, align 4
  %call29 = call fastcc i32 @load_cfg_mem(ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.then27
  %18 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %diver_mode, align 4
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp35 = icmp eq i32 %.pr, 1
  br i1 %cmp35, label %if.then36, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tnr_dmd, align 4
  %state38 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %state38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %state38, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end33.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.end33.thread, %if.end20.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %cxd2880_tnrdmd_check_internal_cpu_status.exit.thread, %if.end23.i.cleanup_crit_edge, %if.end5.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call16, %if.then15.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call29, %if.then27.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end33.cleanup_crit_edge ], [ %retval.0.i.ph, %cxd2880_tnrdmd_check_internal_cpu_status.exit.thread ], [ -22, %if.end5.thread ], [ 0, %if.end33.thread ], [ -22, %if.end23.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_check_internal_cpu_status(ptr noundef %tnr_dmd, ptr noundef writeonly %task_completed) local_unnamed_addr #0 align 64 {
entry:
  %cpu_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cpu_status) #8
  %0 = ptrtoint ptr %cpu_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %cpu_status, align 2
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %task_completed, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %1 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = call i32 @cxd2880_tnrdmd_mon_internal_cpu_status(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %cpu_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %3 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8 = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %cpu_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cpu_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp10 = icmp eq i16 %6, 0
  %cmp10.not = xor i1 %cmp10, true
  %brmerge = select i1 %cmp8, i1 true, i1 %cmp10.not
  %cmp10.mux = select i1 %cmp8, i1 %cmp10, i1 false
  br i1 %brmerge, label %if.end6.cleanup.sink.split_crit_edge, label %if.end19

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end6
  %call20 = call i32 @cxd2880_tnrdmd_mon_internal_cpu_status_sub(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %cpu_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %cpu_status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cpu_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp25 = icmp eq i16 %8, 0
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end23, %if.end6.cleanup.sink.split_crit_edge
  %.47.sink.shrunk = phi i1 [ %cmp25, %if.end23 ], [ %cmp10.mux, %if.end6.cleanup.sink.split_crit_edge ]
  %.47.sink = zext i1 %.47.sink.shrunk to i8
  %9 = ptrtoint ptr %task_completed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.47.sink, ptr %task_completed, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cpu_status) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rf_init2(ptr noundef readonly %tnr_dmd) unnamed_addr #0 align 64 {
entry:
  %data = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data) #8
  %0 = getelementptr inbounds i8, ptr %data, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 3)
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %5(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %data, align 1
  %arrayidx5 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %arrayidx5, align 1
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_regs, align 4
  %call8 = call i32 %11(ptr noundef %9, i32 noundef 0, i8 noundef zeroext -22, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %data, align 1
  %chip_id = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 21
  %13 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %14)
  %cmp = icmp ne i32 %14, 98
  %. = zext i1 %cmp to i8
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %., ptr %arrayidx5, align 1
  %arrayidx17 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx17, align 1
  %arrayidx18 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %arrayidx18, align 1
  %18 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io, align 4
  %write_regs20 = getelementptr inbounds %struct.cxd2880_io, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_regs20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_regs20, align 4
  %call23 = call i32 %21(ptr noundef %19, i32 noundef 0, i8 noundef zeroext 48, ptr noundef nonnull %data, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end11
  %22 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io, align 4
  %call28 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @rf_init2_seq1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io, align 4
  %call33 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %25, i32 noundef 1, ptr noundef nonnull @rf_init2_seq2, i8 noundef zeroext 6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end26.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call8, %if.end4.cleanup_crit_edge ], [ %call23, %if.end11.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_cfg_mem(ptr noundef readonly %tnr_dmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cfg_mem_last_entry = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 17
  %0 = ptrtoint ptr %cfg_mem_last_entry to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cfg_mem_last_entry, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp49.not = icmp eq i8 %1, 0
  br i1 %cmp49.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end9
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %2 = ptrtoint ptr %cfg_mem_last_entry to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cfg_mem_last_entry, align 4
  %4 = zext i8 %3 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %4
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  %arrayidx = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %indvars.iv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %bank = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %indvars.iv, i32 1
  %11 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank, align 4
  %call = tail call i32 %8(ptr noundef %6, i32 noundef %10, i8 noundef zeroext 0, i8 noundef zeroext %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %address = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %indvars.iv, i32 2
  %17 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %address, align 1
  %value = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %indvars.iv, i32 3
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %value, align 2
  %bit_mask = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %indvars.iv, i32 4
  %21 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bit_mask, align 1
  %call24 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %14, i32 noundef %16, i8 noundef zeroext %18, i8 noundef zeroext %20, i8 noundef zeroext %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.cond, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ], [ %call24, %if.end9.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_mon_internal_cpu_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_mon_internal_cpu_status_sub(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_common_tune_setting1(ptr noundef %tnr_dmd, i32 noundef %sys, i32 noundef %frequency_khz, i32 noundef %bandwidth, i8 noundef zeroext %one_seg_opt, i8 noundef zeroext %one_seg_opt_shft_dir) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  %cpu_task_completed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !107
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cpu_task_completed) #8
  %1 = ptrtoint ptr %cpu_task_completed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cpu_task_completed, align 1, !annotation !107
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %2 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = add i32 %5, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %6)
  %switch = icmp ult i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %frequency_khz)
  %cmp8 = icmp ult i32 %frequency_khz, 4000
  %or.cond = or i1 %cmp8, %switch
  br i1 %or.cond, label %if.end2.cleanup_crit_edge, label %if.end10

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end2
  %call = tail call i32 @cxd2880_tnrdmd_sleep(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %call15 = tail call i32 %10(ptr noundef %8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call21 = call i32 %14(ptr noundef %12, i32 noundef 0, i8 noundef zeroext 43, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %15 = zext i32 %sys to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %sys, label %if.end24.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb42
  ]

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end24
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp25 = icmp eq i8 %17, 0
  br i1 %cmp25, label %if.then27, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb
  %call28 = call fastcc i32 @t_power_x(ptr noundef nonnull %tnr_dmd, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.then27
  %18 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp33 = icmp eq i32 %19, 1
  br i1 %cmp33, label %if.then35, label %if.end31.sw.epilog_crit_edge

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then35:                                        ; preds = %if.end31
  %20 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tnr_dmd, align 4
  %call36 = call fastcc i32 @t_power_x(ptr noundef %21, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.sw.epilog_crit_edge, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35.sw.epilog_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end24
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp44 = icmp eq i8 %23, 1
  br i1 %cmp44, label %if.then46, label %sw.bb42.sw.epilog_crit_edge

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then46:                                        ; preds = %sw.bb42
  %call47 = call fastcc i32 @t_power_x(ptr noundef nonnull %tnr_dmd, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.then46
  %24 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp52 = icmp eq i32 %25, 1
  br i1 %cmp52, label %if.then54, label %if.end50.sw.epilog_crit_edge

if.end50.sw.epilog_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then54:                                        ; preds = %if.end50
  %26 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tnr_dmd, align 4
  %call56 = call fastcc i32 @t_power_x(ptr noundef %27, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then54.sw.epilog_crit_edge, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then54.sw.epilog_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then54.sw.epilog_crit_edge, %if.end50.sw.epilog_crit_edge, %sw.bb42.sw.epilog_crit_edge, %if.then35.sw.epilog_crit_edge, %if.end31.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call62 = call fastcc i32 @spll_reset(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %sw.epilog
  %clk_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 23
  %28 = ptrtoint ptr %clk_mode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %clk_mode, align 4
  %29 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp67 = icmp eq i32 %30, 1
  br i1 %cmp67, label %if.then69, label %if.end65.if.end77_crit_edge

if.end65.if.end77_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then69:                                        ; preds = %if.end65
  %31 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tnr_dmd, align 4
  %call71 = call fastcc i32 @spll_reset(ptr noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end74:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tnr_dmd, align 4
  %clk_mode76 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %clk_mode76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %clk_mode76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.end65.if.end77_crit_edge
  %call78 = call fastcc i32 @load_cfg_mem(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end81:                                         ; preds = %if.end77
  %36 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp83 = icmp eq i32 %37, 1
  br i1 %cmp83, label %if.then85, label %if.end81.if.end91_crit_edge

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then85:                                        ; preds = %if.end81
  %38 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tnr_dmd, align 4
  %call87 = call fastcc i32 @load_cfg_mem(ptr noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then85.if.end91_crit_edge, label %if.then85.cleanup_crit_edge

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85.if.end91_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.end91:                                         ; preds = %if.then85.if.end91_crit_edge, %if.end81.if.end91_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %one_seg_opt)
  %tobool92.not = icmp eq i8 %one_seg_opt, 0
  %40 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp109 = icmp eq i32 %41, 1
  br i1 %tobool92.not, label %if.else107, label %if.then93

if.then93:                                        ; preds = %if.end91
  br i1 %cmp109, label %if.then93.if.end121_crit_edge, label %if.else

if.then93.if.end121_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.else:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %one_seg_opt_shft_dir)
  %tobool98.not = icmp eq i8 %one_seg_opt_shft_dir, 0
  %. = select i1 %tobool98.not, i32 -350, i32 350
  %xtal_share_type = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %xtal_share_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xtal_share_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp102 = icmp eq i32 %43, 3
  %mul = sub nsw i32 0, %.
  %spec.select = select i1 %cmp102, i32 %mul, i32 %.
  br label %if.end121

if.else107:                                       ; preds = %if.end91
  br i1 %cmp109, label %if.else107.if.end121_crit_edge, label %if.else112

if.else107.if.end121_crit_edge:                   ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.else112:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #10
  %xtal_share_type114 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %xtal_share_type114 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xtal_share_type114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %switch.selectcmp = icmp eq i32 %45, 2
  %switch.select = select i1 %switch.selectcmp, i32 150, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %switch.selectcmp268 = icmp eq i32 %45, 3
  %switch.select269 = select i1 %switch.selectcmp268, i32 -150, i32 %switch.select
  br label %if.end121

if.end121:                                        ; preds = %if.else112, %if.else107.if.end121_crit_edge, %if.else, %if.then93.if.end121_crit_edge
  %shift_frequency_khz.1 = phi i32 [ 350, %if.then93.if.end121_crit_edge ], [ 150, %if.else107.if.end121_crit_edge ], [ %switch.select269, %if.else112 ], [ %spec.select, %if.else ]
  %is_cable_input = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 5
  %46 = ptrtoint ptr %is_cable_input to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_cable_input, align 4
  %call122 = call fastcc i32 @x_tune1(ptr noundef nonnull %tnr_dmd, i32 noundef %sys, i32 noundef %frequency_khz, i32 noundef %bandwidth, i8 noundef zeroext %47, i32 noundef %shift_frequency_khz.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end125:                                        ; preds = %if.end121
  %48 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp127 = icmp eq i32 %49, 1
  br i1 %cmp127, label %if.then129, label %if.end125.if.end136_crit_edge

if.end125.if.end136_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then129:                                       ; preds = %if.end125
  %50 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tnr_dmd, align 4
  %52 = ptrtoint ptr %is_cable_input to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_cable_input, align 4
  %sub = sub nsw i32 0, %shift_frequency_khz.1
  %call132 = call fastcc i32 @x_tune1(ptr noundef %51, i32 noundef %sys, i32 noundef %frequency_khz, i32 noundef %bandwidth, i8 noundef zeroext %53, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.then129.if.end136_crit_edge, label %if.then129.cleanup_crit_edge

if.then129.cleanup_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then129.if.end136_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end136:                                        ; preds = %if.then129.if.end136_crit_edge, %if.end125.if.end136_crit_edge
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %call137 = call i32 @cxd2880_tnrdmd_check_internal_cpu_status(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %cpu_task_completed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end140:                                        ; preds = %if.end136
  %54 = ptrtoint ptr %cpu_task_completed to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cpu_task_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool141.not = icmp eq i8 %55, 0
  br i1 %tobool141.not, label %if.end140.cleanup_crit_edge, label %if.end143

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end143:                                        ; preds = %if.end140
  %56 = ptrtoint ptr %clk_mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %clk_mode, align 4
  %call145 = call fastcc i32 @x_tune2(ptr noundef nonnull %tnr_dmd, i32 noundef %bandwidth, i32 noundef %57, i32 noundef %shift_frequency_khz.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %if.end143.cleanup_crit_edge

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end148:                                        ; preds = %if.end143
  %58 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp150 = icmp eq i32 %59, 1
  br i1 %cmp150, label %if.then152, label %if.end148.if.end161_crit_edge

if.end148.if.end161_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then152:                                       ; preds = %if.end148
  %60 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tnr_dmd, align 4
  %clk_mode155 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %61, i32 0, i32 23
  %62 = ptrtoint ptr %clk_mode155 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %clk_mode155, align 4
  %sub156 = sub nsw i32 0, %shift_frequency_khz.1
  %call157 = call fastcc i32 @x_tune2(ptr noundef %61, i32 noundef %bandwidth, i32 noundef %63, i32 noundef %sub156)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.then152.if.end161_crit_edge, label %if.then152.cleanup_crit_edge

if.then152.cleanup_crit_edge:                     ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then152.if.end161_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.end161:                                        ; preds = %if.then152.if.end161_crit_edge, %if.end148.if.end161_crit_edge
  %create_param162 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2
  %64 = ptrtoint ptr %create_param162 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %create_param162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp163 = icmp eq i32 %65, 0
  br i1 %cmp163, label %if.then165, label %if.else167

if.then165:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %call166 = call fastcc i32 @set_ts_clk_mode_and_freq(ptr noundef nonnull %tnr_dmd, i32 noundef %sys)
  br label %cleanup

if.else167:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %pid_ftr_cfg_en = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 19
  %66 = ptrtoint ptr %pid_ftr_cfg_en to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pid_ftr_cfg_en, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool168.not = icmp eq i8 %67, 0
  %pid_ftr_cfg170 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 18
  %pid_ftr_cfg.0 = select i1 %tobool168.not, ptr null, ptr %pid_ftr_cfg170
  %call173 = call fastcc i32 @pid_ftr_setting(ptr noundef nonnull %tnr_dmd, ptr noundef %pid_ftr_cfg.0)
  br label %cleanup

cleanup:                                          ; preds = %if.else167, %if.then165, %if.then152.cleanup_crit_edge, %if.end143.cleanup_crit_edge, %if.end140.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %if.then129.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %if.then85.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.then69.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %call, %if.end10.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ], [ %call21, %if.end18.cleanup_crit_edge ], [ %call28, %if.then27.cleanup_crit_edge ], [ %call36, %if.then35.cleanup_crit_edge ], [ %call47, %if.then46.cleanup_crit_edge ], [ %call56, %if.then54.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ %call62, %sw.epilog.cleanup_crit_edge ], [ %call71, %if.then69.cleanup_crit_edge ], [ %call78, %if.end77.cleanup_crit_edge ], [ %call87, %if.then85.cleanup_crit_edge ], [ %call122, %if.end121.cleanup_crit_edge ], [ %call132, %if.then129.cleanup_crit_edge ], [ %call137, %if.end136.cleanup_crit_edge ], [ -22, %if.end140.cleanup_crit_edge ], [ %call145, %if.end143.cleanup_crit_edge ], [ %call157, %if.then152.cleanup_crit_edge ], [ %call166, %if.then165 ], [ %call173, %if.else167 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cpu_task_completed) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_sleep(ptr noundef %tnr_dmd) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %3, label %if.then8 [
    i32 1, label %if.end2.cleanup_crit_edge
    i32 2, label %if.end7.i
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %if.end2
  %create_param.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2
  %5 = ptrtoint ptr %create_param.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %create_param.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %6, label %if.end7.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end7.i.if.end12_crit_edge
    i32 2, label %if.end7.i.if.end12_crit_edge165
  ]

if.end7.i.if.end12_crit_edge165:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end7.i.if.end12_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end7.i
  %io18.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %8 = ptrtoint ptr %io18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io18.i, align 4
  %call19.i = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @set_ts_output_seq3, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.i:                                       ; preds = %sw.bb.i
  %10 = ptrtoint ptr %io18.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io18.i, align 4
  %call24.i = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @set_ts_output_seq4, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end22.i.if.end12_crit_edge, label %if.end22.i.cleanup_crit_edge

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.i.if.end12_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %if.end22.i.if.end12_crit_edge, %if.end7.i.if.end12_crit_edge, %if.end7.i.if.end12_crit_edge165
  %12 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp14 = icmp eq i32 %13, 1
  br i1 %cmp14, label %if.then15, label %if.end12.if.end.i129_crit_edge

if.end12.if.end.i129_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i129

if.then15:                                        ; preds = %if.end12
  %call16 = tail call fastcc i32 @x_sleep1(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end.i129_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15.if.end.i129_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i129

if.end.i129:                                      ; preds = %if.then15.if.end.i129_crit_edge, %if.end12.if.end.i129_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %data.i, align 1
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %15 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io.i, align 4
  %call.i = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %16, i32 noundef 1, ptr noundef nonnull @x_sleep2_seq1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i129.x_sleep2.exit.thread_crit_edge

if.end.i129.x_sleep2.exit.thread_crit_edge:       ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %x_sleep2.exit.thread

if.end3.i:                                        ; preds = %if.end.i129
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %17 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call6.i = call i32 %20(ptr noundef %18, i32 noundef 1, i8 noundef zeroext -78, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end3.i.x_sleep2.exit.thread_crit_edge

if.end3.i.x_sleep2.exit.thread_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %x_sleep2.exit.thread

if.end9.i:                                        ; preds = %if.end3.i
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i130 = icmp eq i8 %23, 0
  br i1 %cmp.i130, label %if.end9.i.x_sleep2.exit.thread_crit_edge, label %x_sleep2.exit

if.end9.i.x_sleep2.exit.thread_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %x_sleep2.exit.thread

x_sleep2.exit.thread:                             ; preds = %if.end9.i.x_sleep2.exit.thread_crit_edge, %if.end3.i.x_sleep2.exit.thread_crit_edge, %if.end.i129.x_sleep2.exit.thread_crit_edge
  %retval.0.i131.ph = phi i32 [ -22, %if.end9.i.x_sleep2.exit.thread_crit_edge ], [ %call6.i, %if.end3.i.x_sleep2.exit.thread_crit_edge ], [ %call.i, %if.end.i129.x_sleep2.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  br label %cleanup

x_sleep2.exit:                                    ; preds = %if.end9.i
  %24 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io.i, align 4
  %call14.i = call i32 @cxd2880_io_write_multi_regs(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @x_sleep2_seq2, i8 noundef zeroext 7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool22.not = icmp eq i32 %call14.i, 0
  br i1 %tobool22.not, label %if.end24, label %x_sleep2.exit.cleanup_crit_edge

x_sleep2.exit.cleanup_crit_edge:                  ; preds = %x_sleep2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %x_sleep2.exit
  %26 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp26 = icmp eq i32 %27, 1
  br i1 %cmp26, label %if.then27, label %if.end24.if.end32_crit_edge

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.end24
  %28 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tnr_dmd, align 4
  %call28 = call fastcc i32 @x_sleep2(ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.if.end32_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %if.end24.if.end32_crit_edge
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %30 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sys, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %31, label %if.end32.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb37
  ]

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end32
  %call33 = call i32 @cxd2880_tnrdmd_dvbt_sleep_setting(ptr noundef nonnull %tnr_dmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %sw.bb.x_sleep3.exit_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.x_sleep3.exit_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %x_sleep3.exit

sw.bb37:                                          ; preds = %if.end32
  %call38 = call i32 @cxd2880_tnrdmd_dvbt2_sleep_setting(ptr noundef nonnull %tnr_dmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %sw.bb37.x_sleep3.exit_crit_edge, label %sw.bb37.cleanup_crit_edge

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb37.x_sleep3.exit_crit_edge:                  ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %x_sleep3.exit

x_sleep3.exit:                                    ; preds = %sw.bb37.x_sleep3.exit_crit_edge, %sw.bb.x_sleep3.exit_crit_edge
  %33 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io.i, align 4
  %call.i134 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %34, i32 noundef 1, ptr noundef nonnull @x_sleep3_seq, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool43.not = icmp eq i32 %call.i134, 0
  br i1 %tobool43.not, label %if.end45, label %x_sleep3.exit.cleanup_crit_edge

x_sleep3.exit.cleanup_crit_edge:                  ; preds = %x_sleep3.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %x_sleep3.exit
  %35 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp47 = icmp eq i32 %36, 1
  br i1 %cmp47, label %if.then48, label %if.end45.x_sleep4.exit_crit_edge

if.end45.x_sleep4.exit_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %x_sleep4.exit

if.then48:                                        ; preds = %if.end45
  %37 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tnr_dmd, align 4
  %tobool.not.i137 = icmp eq ptr %38, null
  br i1 %tobool.not.i137, label %if.then48.cleanup_crit_edge, label %x_sleep3.exit142

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

x_sleep3.exit142:                                 ; preds = %if.then48
  %io.i138 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %io.i138 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io.i138, align 4
  %call.i139 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %40, i32 noundef 1, ptr noundef nonnull @x_sleep3_seq, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool51.not = icmp eq i32 %call.i139, 0
  br i1 %tobool51.not, label %x_sleep3.exit142.x_sleep4.exit_crit_edge, label %x_sleep3.exit142.cleanup_crit_edge

x_sleep3.exit142.cleanup_crit_edge:               ; preds = %x_sleep3.exit142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

x_sleep3.exit142.x_sleep4.exit_crit_edge:         ; preds = %x_sleep3.exit142
  call void @__sanitizer_cov_trace_pc() #10
  br label %x_sleep4.exit

x_sleep4.exit:                                    ; preds = %x_sleep3.exit142.x_sleep4.exit_crit_edge, %if.end45.x_sleep4.exit_crit_edge
  %41 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io.i, align 4
  %call.i145 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %42, i32 noundef 1, ptr noundef nonnull @x_sleep4_seq, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool56.not = icmp eq i32 %call.i145, 0
  br i1 %tobool56.not, label %if.end58, label %x_sleep4.exit.cleanup_crit_edge

x_sleep4.exit.cleanup_crit_edge:                  ; preds = %x_sleep4.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %x_sleep4.exit
  %43 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp60 = icmp eq i32 %44, 1
  br i1 %cmp60, label %if.then61, label %if.end67.thread

if.end67.thread:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %state, align 4
  %frequency_khz162 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 24
  %46 = ptrtoint ptr %frequency_khz162 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %frequency_khz162, align 4
  %47 = ptrtoint ptr %sys to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %sys, align 4
  %bandwidth163 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 26
  %48 = ptrtoint ptr %bandwidth163 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %bandwidth163, align 4
  br label %cleanup

if.then61:                                        ; preds = %if.end58
  %49 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tnr_dmd, align 4
  %tobool.not.i148 = icmp eq ptr %50, null
  br i1 %tobool.not.i148, label %if.then61.cleanup_crit_edge, label %x_sleep4.exit153

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

x_sleep4.exit153:                                 ; preds = %if.then61
  %io.i149 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %io.i149 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io.i149, align 4
  %call.i150 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %52, i32 noundef 1, ptr noundef nonnull @x_sleep4_seq, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool64.not = icmp eq i32 %call.i150, 0
  br i1 %tobool64.not, label %if.end67, label %x_sleep4.exit153.cleanup_crit_edge

x_sleep4.exit153.cleanup_crit_edge:               ; preds = %x_sleep4.exit153
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %x_sleep4.exit153
  %53 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %diver_mode, align 4
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %state, align 4
  %frequency_khz = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 24
  %55 = ptrtoint ptr %frequency_khz to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %frequency_khz, align 4
  %56 = ptrtoint ptr %sys to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %sys, align 4
  %bandwidth = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 26
  %57 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp71 = icmp eq i32 %.pr, 1
  br i1 %cmp71, label %if.then72, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tnr_dmd, align 4
  %state74 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %59, i32 0, i32 22
  %60 = ptrtoint ptr %state74 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %state74, align 4
  %61 = load ptr, ptr %tnr_dmd, align 4
  %frequency_khz76 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %61, i32 0, i32 24
  %62 = ptrtoint ptr %frequency_khz76 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %frequency_khz76, align 4
  %63 = load ptr, ptr %tnr_dmd, align 4
  %sys78 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %63, i32 0, i32 25
  %64 = ptrtoint ptr %sys78 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %sys78, align 4
  %65 = load ptr, ptr %tnr_dmd, align 4
  %bandwidth80 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %65, i32 0, i32 26
  %66 = ptrtoint ptr %bandwidth80 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %bandwidth80, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end67.cleanup_crit_edge, %x_sleep4.exit153.cleanup_crit_edge, %if.then61.cleanup_crit_edge, %if.end67.thread, %x_sleep4.exit.cleanup_crit_edge, %x_sleep3.exit142.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %x_sleep3.exit.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %x_sleep2.exit.cleanup_crit_edge, %x_sleep2.exit.thread, %if.then15.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.then8, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ], [ %call16, %if.then15.cleanup_crit_edge ], [ %call14.i, %x_sleep2.exit.cleanup_crit_edge ], [ %call28, %if.then27.cleanup_crit_edge ], [ %call33, %sw.bb.cleanup_crit_edge ], [ %call38, %sw.bb37.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ %call.i134, %x_sleep3.exit.cleanup_crit_edge ], [ %call.i139, %x_sleep3.exit142.cleanup_crit_edge ], [ %call.i145, %x_sleep4.exit.cleanup_crit_edge ], [ %call.i150, %x_sleep4.exit153.cleanup_crit_edge ], [ 0, %if.then72 ], [ 0, %if.end67.cleanup_crit_edge ], [ %retval.0.i131.ph, %x_sleep2.exit.thread ], [ 0, %if.end67.thread ], [ -22, %if.end7.i.cleanup_crit_edge ], [ %call24.i, %if.end22.i.cleanup_crit_edge ], [ %call19.i, %sw.bb.i.cleanup_crit_edge ], [ -22, %if.then48.cleanup_crit_edge ], [ -22, %if.then61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t_power_x(ptr noundef readonly %tnr_dmd, i8 noundef zeroext %on) unnamed_addr #0 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #8
  %0 = call ptr @memset(ptr %data, i32 0, i32 3)
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 4
  %call = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @t_power_x_seq1, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %call5 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @t_power_x_seq2, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %call10 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @t_power_x_seq3, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %on)
  %tobool14.not = icmp eq i8 %on, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %call18 = tail call i32 %10(ptr noundef %8, i32 noundef 0, i8 noundef zeroext 43, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.then15
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %write_reg23 = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %write_reg23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg23, align 4
  %call25 = tail call i32 %14(ptr noundef %12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %15 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call31 = call i32 %18(ptr noundef %16, i32 noundef 0, i8 noundef zeroext 18, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  br i1 %cmp, label %if.end34.cleanup_crit_edge, label %if.end37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end34
  %22 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io, align 4
  %call39 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @t_power_x_seq4, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end37.if.end74_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37.if.end74_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.else:                                          ; preds = %if.end13
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %data, align 1
  %arrayidx44 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx44, align 1
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_regs, align 4
  %call48 = call i32 %29(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 42, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.else
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %30 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io, align 4
  %write_reg53 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %write_reg53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg53, align 4
  %call55 = call i32 %33(ptr noundef %31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %34 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call63 = call i32 %37(ptr noundef %35, i32 noundef 0, i8 noundef zeroext 19, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %if.end58
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data, align 1
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp70 = icmp eq i8 %40, 0
  br i1 %cmp70, label %if.end66.cleanup_crit_edge, label %if.end66.if.end74_crit_edge

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end74:                                         ; preds = %if.end66.if.end74_crit_edge, %if.end37.if.end74_crit_edge
  %41 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io, align 4
  %call76 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @t_power_x_seq5, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end79:                                         ; preds = %if.end74
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %43 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io, align 4
  %write_reg81 = getelementptr inbounds %struct.cxd2880_io, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %write_reg81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_reg81, align 4
  %call83 = call i32 %46(ptr noundef %44, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end86:                                         ; preds = %if.end79
  %47 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call91 = call i32 %50(ptr noundef %48, i32 noundef 0, i8 noundef zeroext 17, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end94:                                         ; preds = %if.end86
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %data, align 1
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp98 = icmp eq i8 %53, 0
  br i1 %cmp98, label %if.end94.cleanup_crit_edge, label %if.end101

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end101:                                        ; preds = %if.end94
  %54 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io, align 4
  %call103 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %55, i32 noundef 0, ptr noundef nonnull @t_power_x_seq6, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end106:                                        ; preds = %if.end101
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %56 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io, align 4
  %call108 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %57, i32 noundef 1, ptr noundef nonnull @t_power_x_seq7, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end111:                                        ; preds = %if.end106
  %58 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io, align 4
  %write_reg113 = getelementptr inbounds %struct.cxd2880_io, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %write_reg113 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_reg113, align 4
  %call115 = call i32 %61(ptr noundef %59, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %62 = call ptr @memset(ptr %data, i32 0, i32 3)
  %63 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io, align 4
  %write_regs121 = getelementptr inbounds %struct.cxd2880_io, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_regs121 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_regs121, align 4
  %call124 = call i32 %66(ptr noundef %64, i32 noundef 0, i8 noundef zeroext 39, ptr noundef nonnull %data, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %if.end111.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call124, %if.end118 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call18, %if.then15.cleanup_crit_edge ], [ %call25, %if.end21.cleanup_crit_edge ], [ %call31, %if.end28.cleanup_crit_edge ], [ -22, %if.end34.cleanup_crit_edge ], [ %call39, %if.end37.cleanup_crit_edge ], [ %call48, %if.else.cleanup_crit_edge ], [ %call55, %if.end51.cleanup_crit_edge ], [ %call63, %if.end58.cleanup_crit_edge ], [ -22, %if.end66.cleanup_crit_edge ], [ %call76, %if.end74.cleanup_crit_edge ], [ %call83, %if.end79.cleanup_crit_edge ], [ %call91, %if.end86.cleanup_crit_edge ], [ -22, %if.end94.cleanup_crit_edge ], [ %call103, %if.end101.cleanup_crit_edge ], [ %call108, %if.end106.cleanup_crit_edge ], [ %call115, %if.end111.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spll_reset(ptr noundef readonly %tnr_dmd) unnamed_addr #0 align 64 {
entry:
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 4
  %call = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @spll_reset_seq1, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %call5 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @spll_reset_seq2, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %call10 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @spll_reset_seq3, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %sw.bb, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %call21 = tail call i32 %10(ptr noundef %8, i32 noundef 0, i8 noundef zeroext 48, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %write_reg26 = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %write_reg26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg26, align 4
  %call28 = tail call i32 %14(ptr noundef %12, i32 noundef 0, i8 noundef zeroext 34, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #8
  %15 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io, align 4
  %write_reg33 = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write_reg33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg33, align 4
  %call35 = tail call i32 %18(ptr noundef %16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %19 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call41 = call i32 %22(ptr noundef %20, i32 noundef 0, i8 noundef zeroext 16, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 4
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp = icmp eq i8 %25, 0
  br i1 %cmp, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io, align 4
  %call50 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %27, i32 noundef 0, ptr noundef nonnull @spll_reset_seq4, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %28 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io, align 4
  %call55 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @spll_reset_seq5, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.end53
  %30 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io, align 4
  %write_reg60 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %write_reg60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg60, align 4
  %call62 = call i32 %33(ptr noundef %31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %data, align 4
  %35 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_regs, align 4
  %call70 = call i32 %38(ptr noundef %36, i32 noundef 0, i8 noundef zeroext 38, ptr noundef nonnull %data, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end58.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call70, %if.end65 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call21, %sw.bb.cleanup_crit_edge ], [ %call28, %if.end24.cleanup_crit_edge ], [ %call35, %if.end31.cleanup_crit_edge ], [ %call41, %if.end38.cleanup_crit_edge ], [ -22, %if.end44.cleanup_crit_edge ], [ %call50, %if.end48.cleanup_crit_edge ], [ %call55, %if.end53.cleanup_crit_edge ], [ %call62, %if.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x_tune1(ptr noundef readonly %tnr_dmd, i32 noundef %sys, i32 noundef %freq_khz, i32 noundef %bandwidth, i8 noundef zeroext %is_cable, i32 noundef %shift_frequency_khz) unnamed_addr #0 align 64 {
entry:
  %data = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %data) #8
  %0 = call ptr @memset(ptr %data, i32 0, i32 11)
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 4
  %call = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @x_tune1_seq1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_reg, align 4
  %call6 = tail call i32 %6(ptr noundef %4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %arrayidx = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 14, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %arrayidx10, align 1
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_regs, align 4
  %call13 = call i32 %12(ptr noundef %10, i32 noundef 0, i8 noundef zeroext -25, ptr noundef nonnull %data, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 31, ptr %data, align 1
  %arrayidx18 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %arrayidx18, align 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 24, ptr %arrayidx, align 1
  %arrayidx20 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx20, align 1
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 7, ptr %arrayidx10, align 1
  %18 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io, align 4
  %write_regs23 = getelementptr inbounds %struct.cxd2880_io, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_regs23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_regs23, align 4
  %call26 = call i32 %21(ptr noundef %19, i32 noundef 0, i8 noundef zeroext -25, ptr noundef nonnull %data, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end16
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 114, ptr %data, align 1
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -127, ptr %arrayidx18, align 1
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 29, ptr %arrayidx20, align 1
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 111, ptr %arrayidx10, align 1
  %arrayidx34 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 126, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 7
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 28, ptr %arrayidx35, align 1
  %28 = zext i32 %sys to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %sys, label %if.end29.cleanup_crit_edge [
    i32 1, label %if.end29.sw.epilog_crit_edge
    i32 2, label %sw.bb38
  ]

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb38:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38, %if.end29.sw.epilog_crit_edge
  %.sink139 = phi i8 [ -106, %sw.bb38 ], [ -108, %if.end29.sw.epilog_crit_edge ]
  %.sink = phi i8 [ -109, %sw.bb38 ], [ -111, %if.end29.sw.epilog_crit_edge ]
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink139, ptr %arrayidx, align 1
  %arrayidx40 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink, ptr %arrayidx40, align 1
  %31 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io, align 4
  %write_regs42 = getelementptr inbounds %struct.cxd2880_io, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_regs42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_regs42, align 4
  %call45 = call i32 %34(ptr noundef %32, i32 noundef 0, i8 noundef zeroext 68, ptr noundef nonnull %data, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %sw.epilog
  %35 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io, align 4
  %call50 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %36, i32 noundef 0, ptr noundef nonnull @x_tune1_seq2, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %data, align 1
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -30, ptr %arrayidx18, align 1
  %39 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io, align 4
  %write_regs57 = getelementptr inbounds %struct.cxd2880_io, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_regs57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_regs57, align 4
  %call60 = call i32 %42(ptr noundef %40, i32 noundef 0, i8 noundef zeroext 30, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %if.end53
  %43 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io, align 4
  %write_reg65 = getelementptr inbounds %struct.cxd2880_io, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %write_reg65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_reg65, align 4
  %call67 = call i32 %46(ptr noundef %44, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_cable)
  %tobool71.not = icmp ne i8 %is_cable, 0
  %conv72 = zext i1 %tobool71.not to i8
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv72, ptr %data, align 1
  %48 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx18, align 1
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 107, ptr %arrayidx, align 1
  %50 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 77, ptr %arrayidx20, align 1
  %switch.tableidx = add i32 %bandwidth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %51 = icmp ult i32 %switch.tableidx, 8
  br i1 %51, label %switch.hole_check, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %if.end70
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -15, %switch.maskindex
  %52 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %switch.lobit.not = icmp eq i8 %52, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.x_tune1, i32 0, i32 %switch.tableidx
  %53 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %53)
  %switch.load = load i8, ptr %switch.gep, align 1
  %54 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %switch.load, ptr %arrayidx10, align 1
  %55 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx34, align 1
  %add = add i32 %shift_frequency_khz, %freq_khz
  %shr = lshr i32 %add, 16
  %56 = trunc i32 %shr to i8
  %conv88 = and i8 %56, 15
  %arrayidx89 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 6
  %57 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv88, ptr %arrayidx89, align 1
  %shr90 = lshr i32 %add, 8
  %conv92 = trunc i32 %shr90 to i8
  %58 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv92, ptr %arrayidx35, align 1
  %conv95 = trunc i32 %add to i8
  %arrayidx96 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 8
  %59 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv95, ptr %arrayidx96, align 1
  %arrayidx97 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 9
  %60 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %arrayidx97, align 1
  %arrayidx98 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 10
  %61 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -2, ptr %arrayidx98, align 1
  %62 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io, align 4
  %write_regs100 = getelementptr inbounds %struct.cxd2880_io, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %write_regs100 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_regs100, align 4
  %call103 = call i32 %65(ptr noundef %63, i32 noundef 0, i8 noundef zeroext 82, ptr noundef nonnull %data, i32 noundef 11) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call103, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ], [ %call13, %if.end9.cleanup_crit_edge ], [ %call26, %if.end16.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ %call45, %sw.epilog.cleanup_crit_edge ], [ %call50, %if.end48.cleanup_crit_edge ], [ %call60, %if.end53.cleanup_crit_edge ], [ %call67, %if.end63.cleanup_crit_edge ], [ -22, %if.end70.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x_tune2(ptr noundef readonly %tnr_dmd, i32 noundef %bandwidth, i32 noundef %clk_mode, i32 noundef %shift_frequency_khz) unnamed_addr #0 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #8
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup207_crit_edge, label %if.end

entry.cleanup207_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup207_crit_edge

if.end.cleanup207_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %data, align 1
  %arrayidx5 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 14, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx6, align 1
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_regs, align 4
  %call9 = call i32 %10(ptr noundef %8, i32 noundef 0, i8 noundef zeroext 45, ptr noundef nonnull %data, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end4.cleanup207_crit_edge

if.end4.cleanup207_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end12:                                         ; preds = %if.end4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %call14 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @x_tune2_seq1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup207_crit_edge

if.end12.cleanup207_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end17:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call21 = call i32 %16(ptr noundef %14, i32 noundef 0, i8 noundef zeroext 44, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end17.cleanup207_crit_edge

if.end17.cleanup207_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end24:                                         ; preds = %if.end17
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io, align 4
  %write_reg26 = getelementptr inbounds %struct.cxd2880_io, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %write_reg26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg26, align 4
  %call28 = call i32 %20(ptr noundef %18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end24.cleanup207_crit_edge

if.end24.cleanup207_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end31:                                         ; preds = %if.end24
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 4
  %write_reg33 = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %write_reg33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg33, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data, align 1
  %call36 = call i32 %24(ptr noundef %22, i32 noundef 0, i8 noundef zeroext 96, i8 noundef zeroext %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end31.cleanup207_crit_edge

if.end31.cleanup207_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end39:                                         ; preds = %if.end31
  %27 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io, align 4
  %call41 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %28, i32 noundef 0, ptr noundef nonnull @x_tune2_seq2, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.cleanup207_crit_edge

if.end39.cleanup207_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end44:                                         ; preds = %if.end39
  %29 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io, align 4
  %call46 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %30, i32 noundef 1, ptr noundef nonnull @x_tune2_seq3, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.cleanup207_crit_edge

if.end44.cleanup207_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift_frequency_khz)
  %cmp.not = icmp eq i32 %shift_frequency_khz, 0
  br i1 %cmp.not, label %if.end49.if.end196_crit_edge, label %if.then50

if.end49.if.end196_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

if.then50:                                        ; preds = %if.end49
  %31 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io, align 4
  %write_reg52 = getelementptr inbounds %struct.cxd2880_io, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %write_reg52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg52, align 4
  %call54 = call i32 %34(ptr noundef %32, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then50.cleanup207_crit_edge

if.then50.cleanup207_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end57:                                         ; preds = %if.then50
  %35 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call62 = call i32 %38(ptr noundef %36, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end57.cleanup207_crit_edge

if.end57.cleanup207_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end65:                                         ; preds = %if.end57
  %mul = mul i32 %shift_frequency_khz, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %clk_mode)
  %cond209 = icmp eq i32 %clk_mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul)
  %cmp71 = icmp sgt i32 %mul, -1
  %. = select i1 %cmp71, i32 91, i32 -91
  %.299 = select i1 %cmp71, i32 89, i32 -89
  %.sink298 = select i1 %cond209, i32 %.299, i32 %.
  %.sink = select i1 %cond209, i32 178, i32 183
  %add73 = add i32 %mul, %.sink298
  %div74 = sdiv i32 %add73, %.sink
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data, align 1
  %conv = zext i8 %40 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %41 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx5, align 1
  %conv81 = zext i8 %42 to i32
  %or = or i32 %shl, %conv81
  %call82 = call i32 @cxd2880_convert2s_complement(i32 noundef %or, i32 noundef 16) #8
  %add83 = add i32 %call82, %div74
  %43 = call i32 @llvm.smax.i32(i32 %add83, i32 -32768)
  %44 = call i32 @llvm.smin.i32(i32 %43, i32 32767)
  %45 = lshr i32 %44, 8
  %conv93 = trunc i32 %45 to i8
  %46 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv93, ptr %data, align 1
  %conv96 = trunc i32 %44 to i8
  %47 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv96, ptr %arrayidx5, align 1
  %48 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io, align 4
  %write_regs99 = getelementptr inbounds %struct.cxd2880_io, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write_regs99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_regs99, align 4
  %call102 = call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end65.cleanup207_crit_edge

if.end65.cleanup207_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end105:                                        ; preds = %if.end65
  %52 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %call110 = call i32 %55(ptr noundef %53, i32 noundef 1, i8 noundef zeroext 105, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end105.cleanup207_crit_edge

if.end105.cleanup207_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.end113:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bandwidth)
  %cmp115 = icmp eq i32 %bandwidth, 1
  %notsub = add i32 %shift_frequency_khz, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %notsub)
  %cmp132 = icmp slt i32 %notsub, 0
  %mul135 = mul i32 %shift_frequency_khz, -1000
  br i1 %cmp115, label %if.then117, label %if.else144

if.then117:                                       ; preds = %if.end113
  br i1 %cond209, label %sw.bb131, label %sw.default119

sw.default119:                                    ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  %.302 = select i1 %cmp132, i32 8789, i32 -8789
  br label %cleanup

sw.bb131:                                         ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  %.303 = select i1 %cmp132, i32 8545, i32 -8545
  br label %cleanup

if.else144:                                       ; preds = %if.end113
  br i1 %cond209, label %sw.bb158, label %sw.default146

sw.default146:                                    ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  %.304 = select i1 %cmp132, i32 17578, i32 -17578
  br label %cleanup

sw.bb158:                                         ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  %.305 = select i1 %cmp132, i32 17090, i32 -17090
  br label %cleanup

cleanup:                                          ; preds = %sw.bb158, %sw.default146, %sw.bb131, %sw.default119
  %.sink301 = phi i32 [ %.302, %sw.default119 ], [ %.303, %sw.bb131 ], [ %.304, %sw.default146 ], [ %.305, %sw.bb158 ]
  %.sink300 = phi i32 [ 17578, %sw.default119 ], [ 17090, %sw.bb131 ], [ 35156, %sw.default146 ], [ 34180, %sw.bb158 ]
  %add136 = add i32 %mul135, %.sink301
  %div137 = sdiv i32 %add136, %.sink300
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data, align 1
  %conv173 = zext i8 %57 to i32
  %call174 = call i32 @cxd2880_convert2s_complement(i32 noundef %conv173, i32 noundef 8) #8
  %add175 = add i32 %call174, %div137
  %58 = call i32 @llvm.smax.i32(i32 %add175, i32 -128)
  %59 = call i32 @llvm.smin.i32(i32 %58, i32 127)
  %conv186 = trunc i32 %59 to i8
  %60 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv186, ptr %data, align 1
  %61 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io, align 4
  %write_reg189 = getelementptr inbounds %struct.cxd2880_io, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %write_reg189 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_reg189, align 4
  %call192 = call i32 %64(ptr noundef %62, i32 noundef 1, i8 noundef zeroext 105, i8 noundef zeroext %conv186) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %cleanup.if.end196_crit_edge, label %cleanup.cleanup207_crit_edge

cleanup.cleanup207_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

cleanup.if.end196_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

if.end196:                                        ; preds = %cleanup.if.end196_crit_edge, %if.end49.if.end196_crit_edge
  %stationary_use = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2, i32 6
  %65 = ptrtoint ptr %stationary_use to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %stationary_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool197.not = icmp eq i8 %66, 0
  br i1 %tobool197.not, label %if.end196.if.end204_crit_edge, label %if.then198

if.end196.if.end204_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end204

if.then198:                                       ; preds = %if.end196
  %67 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io, align 4
  %call200 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %68, i32 noundef 1, ptr noundef nonnull @x_tune2_seq4, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.then198.if.end204_crit_edge, label %if.then198.cleanup207_crit_edge

if.then198.cleanup207_crit_edge:                  ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup207

if.then198.if.end204_crit_edge:                   ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end204

if.end204:                                        ; preds = %if.then198.if.end204_crit_edge, %if.end196.if.end204_crit_edge
  %69 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %io, align 4
  %call206 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %70, i32 noundef 1, ptr noundef nonnull @x_tune2_seq5, i8 noundef zeroext 2) #8
  br label %cleanup207

cleanup207:                                       ; preds = %if.end204, %if.then198.cleanup207_crit_edge, %cleanup.cleanup207_crit_edge, %if.end105.cleanup207_crit_edge, %if.end65.cleanup207_crit_edge, %if.end57.cleanup207_crit_edge, %if.then50.cleanup207_crit_edge, %if.end44.cleanup207_crit_edge, %if.end39.cleanup207_crit_edge, %if.end31.cleanup207_crit_edge, %if.end24.cleanup207_crit_edge, %if.end17.cleanup207_crit_edge, %if.end12.cleanup207_crit_edge, %if.end4.cleanup207_crit_edge, %if.end.cleanup207_crit_edge, %entry.cleanup207_crit_edge
  %retval.1 = phi i32 [ %call206, %if.end204 ], [ %call192, %cleanup.cleanup207_crit_edge ], [ -22, %entry.cleanup207_crit_edge ], [ %call, %if.end.cleanup207_crit_edge ], [ %call9, %if.end4.cleanup207_crit_edge ], [ %call14, %if.end12.cleanup207_crit_edge ], [ %call21, %if.end17.cleanup207_crit_edge ], [ %call28, %if.end24.cleanup207_crit_edge ], [ %call36, %if.end31.cleanup207_crit_edge ], [ %call41, %if.end39.cleanup207_crit_edge ], [ %call46, %if.end44.cleanup207_crit_edge ], [ %call200, %if.then198.cleanup207_crit_edge ], [ %call110, %if.end105.cleanup207_crit_edge ], [ %call102, %if.end65.cleanup207_crit_edge ], [ %call62, %if.end57.cleanup207_crit_edge ], [ %call54, %if.then50.cleanup207_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_ts_clk_mode_and_freq(ptr noundef readonly %tnr_dmd, i32 noundef %sys) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %is_ts_backwards_compatible_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 15
  %4 = ptrtoint ptr %is_ts_backwards_compatible_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_ts_backwards_compatible_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %not.tobool5.not = xor i1 %tobool5.not, true
  %. = zext i1 %not.tobool5.not to i8
  %ts_byte_clk_manual_setting = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 14
  %6 = ptrtoint ptr %ts_byte_clk_manual_setting to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ts_byte_clk_manual_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  %ts_rate_ctrl_off.1 = select i1 %tobool8.not, i8 %., i8 0
  %not.tobool8.not = xor i1 %tobool8.not, true
  %ts_clk_manaul_on.0 = zext i1 %not.tobool8.not to i8
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 4
  %call12 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %9, i32 noundef 1, i8 noundef zeroext -45, i8 noundef zeroext %ts_rate_ctrl_off.1, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %10 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io, align 4
  %call17 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %11, i32 noundef 1, i8 noundef zeroext -34, i8 noundef zeroext %., i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  %call22 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %13, i32 noundef 1, i8 noundef zeroext -38, i8 noundef zeroext %ts_clk_manaul_on.0, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %srl_ts_clk_mod_cnts = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 12
  %14 = ptrtoint ptr %srl_ts_clk_mod_cnts to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %srl_ts_clk_mod_cnts, align 4
  %idxprom = zext i8 %15 to i32
  %srl_ts_clk_frq = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 13
  %16 = ptrtoint ptr %srl_ts_clk_frq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %srl_ts_clk_frq, align 4
  %arrayidx26 = getelementptr [2 x [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg]], ptr @set_ts_clk_mode_and_freq.srl_ts_clk_stgs, i32 0, i32 %idxprom, i32 %17
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %ts_clk_cfg.sroa.0.0.copyload = load i8, ptr %arrayidx26, align 1
  %ts_clk_cfg.sroa.5.0.arrayidx26.sroa_idx = getelementptr inbounds i8, ptr %arrayidx26, i32 1
  %19 = ptrtoint ptr %ts_clk_cfg.sroa.5.0.arrayidx26.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %ts_clk_cfg.sroa.5.0.copyload = load i8, ptr %ts_clk_cfg.sroa.5.0.arrayidx26.sroa_idx, align 1
  %ts_clk_cfg.sroa.7.0.arrayidx26.sroa_idx = getelementptr inbounds i8, ptr %arrayidx26, i32 2
  %20 = ptrtoint ptr %ts_clk_cfg.sroa.7.0.arrayidx26.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %ts_clk_cfg.sroa.7.0.copyload = load i8, ptr %ts_clk_cfg.sroa.7.0.arrayidx26.sroa_idx, align 1
  %21 = ptrtoint ptr %ts_byte_clk_manual_setting to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ts_byte_clk_manual_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool28.not = icmp eq i8 %22, 0
  %spec.select = select i1 %tobool28.not, i8 %ts_clk_cfg.sroa.7.0.copyload, i8 %22
  %23 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io, align 4
  %call33 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %24, i32 noundef 1, i8 noundef zeroext -60, i8 noundef zeroext %ts_clk_cfg.sroa.0.0.copyload, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io, align 4
  %call38 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %26, i32 noundef 1, i8 noundef zeroext -47, i8 noundef zeroext %ts_clk_cfg.sroa.5.0.copyload, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %27 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io, align 4
  %write_reg43 = getelementptr inbounds %struct.cxd2880_io, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %write_reg43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg43, align 4
  %call46 = tail call i32 %30(ptr noundef %28, i32 noundef 1, i8 noundef zeroext -39, i8 noundef zeroext %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %conv51 = zext i1 %tobool5.not to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sys)
  %cmp = icmp eq i32 %sys, 1
  br i1 %cmp, label %if.then53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %if.end49
  %31 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io, align 4
  %write_reg55 = getelementptr inbounds %struct.cxd2880_io, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %write_reg55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg55, align 4
  %call57 = tail call i32 %34(ptr noundef %32, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io, align 4
  %call62 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %36, i32 noundef 1, i8 noundef zeroext 102, i8 noundef zeroext %conv51, i8 noundef zeroext 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call12, %if.end4.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call33, %if.end25.cleanup_crit_edge ], [ %call38, %if.end36.cleanup_crit_edge ], [ %call46, %if.end41.cleanup_crit_edge ], [ %call57, %if.then53.cleanup_crit_edge ], [ %call62, %if.end60 ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pid_ftr_setting(ptr noundef readonly %tnr_dmd, ptr noundef readonly %pid_ftr_cfg) unnamed_addr #0 align 64 {
entry:
  %data = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data) #8
  %0 = getelementptr inbounds i8, ptr %data, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %5(ptr noundef %3, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %pid_ftr_cfg, null
  br i1 %tobool5.not, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 4
  %write_reg8 = getelementptr inbounds %struct.cxd2880_io, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %write_reg8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg8, align 4
  %call10 = tail call i32 %9(ptr noundef %7, i32 noundef 1, i8 noundef zeroext 80, i8 noundef zeroext 2) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %10 = ptrtoint ptr %pid_ftr_cfg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pid_ftr_cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp ne i8 %11, 0
  %conv13 = zext i1 %tobool12.not to i8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %data, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11
  %i.062 = phi i32 [ 0, %if.end11 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx15 = getelementptr %struct.cxd2880_tnrdmd_pid_ftr_cfg, ptr %pid_ftr_cfg, i32 0, i32 1, i32 %i.062
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %pid = getelementptr %struct.cxd2880_tnrdmd_pid_ftr_cfg, ptr %pid_ftr_cfg, i32 0, i32 1, i32 %i.062, i32 1
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pid, align 2
  %17 = lshr i16 %16, 8
  %18 = trunc i16 %17 to i8
  %conv21 = or i8 %18, 32
  %mul = shl nuw i32 %i.062, 1
  %add = or i32 %mul, 1
  %arrayidx22 = getelementptr [65 x i8], ptr %data, i32 0, i32 %add
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv21, ptr %arrayidx22, align 1
  %conv27 = trunc i16 %16 to i8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mul31 = shl nuw i32 %i.062, 1
  %add32 = or i32 %mul31, 1
  %arrayidx33 = getelementptr [65 x i8], ptr %data, i32 0, i32 %add32
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx33, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then17
  %mul.sink = phi i32 [ %mul, %if.then17 ], [ %mul31, %if.else ]
  %conv27.sink = phi i8 [ %conv27, %if.then17 ], [ 0, %if.else ]
  %add29 = add nuw nsw i32 %mul.sink, 2
  %arrayidx30 = getelementptr [65 x i8], ptr %data, i32 0, i32 %add29
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv27.sink, ptr %arrayidx30, align 1
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_regs, align 4
  %call40 = call i32 %25(ptr noundef %23, i32 noundef 1, i8 noundef zeroext 80, ptr noundef nonnull %data, i32 noundef 65) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %for.end ], [ %call10, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_common_tune_setting2(ptr noundef %tnr_dmd, i32 noundef %sys, i8 noundef zeroext %en_fef_intmtnt_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %call = tail call fastcc i32 @x_tune3(ptr noundef nonnull %tnr_dmd, i32 noundef %sys, i8 noundef zeroext %en_fef_intmtnt_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp12 = icmp eq i32 %5, 1
  br i1 %cmp12, label %if.then13, label %if.end10.if.end.i_crit_edge

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then13:                                        ; preds = %if.end10
  %6 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tnr_dmd, align 4
  %call14 = tail call fastcc i32 @x_tune3(ptr noundef %7, i32 noundef %sys, i8 noundef zeroext %en_fef_intmtnt_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  %call18 = tail call fastcc i32 @x_tune4(ptr noundef nonnull %tnr_dmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end.ithread-pre-split, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.ithread-pre-split:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %diver_mode, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.ithread-pre-split, %if.end10.if.end.i_crit_edge
  %9 = phi i32 [ %.pr, %if.end.ithread-pre-split ], [ %5, %if.end10.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %.off.i = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end7.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %if.end2.i
  %create_param.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2
  %12 = ptrtoint ptr %create_param.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %create_param.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %13, label %if.end7.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end7.i.sw.epilog.i_crit_edge
    i32 2, label %if.end7.i.sw.epilog.i_crit_edge39
  ]

if.end7.i.sw.epilog.i_crit_edge39:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end7.i.sw.epilog.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end7.i
  %io18.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %15 = ptrtoint ptr %io18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io18.i, align 4
  %call.i = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @set_ts_output_seq1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12.i:                                       ; preds = %sw.bb.i
  %17 = ptrtoint ptr %io18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io18.i, align 4
  %call14.i = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @set_ts_output_seq2, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.sw.epilog.i_crit_edge, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12.i.sw.epilog.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end12.i.sw.epilog.i_crit_edge, %if.end7.i.sw.epilog.i_crit_edge, %if.end7.i.sw.epilog.i_crit_edge39
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.end12.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %call, %if.end7.cleanup_crit_edge ], [ %call14, %if.then13.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ 0, %sw.epilog.i ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end2.i.cleanup_crit_edge ], [ %call.i, %sw.bb.i.cleanup_crit_edge ], [ %call14.i, %if.end12.i.cleanup_crit_edge ], [ -22, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x_tune3(ptr noundef readonly %tnr_dmd, i32 noundef %sys, i8 noundef zeroext %en_fef_intmtnt_ctrl) unnamed_addr #0 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #8
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %call = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @x_tune3_seq, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call6 = tail call i32 %5(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sys)
  %cmp = icmp ne i32 %sys, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %en_fef_intmtnt_ctrl)
  %tobool10.not = icmp eq i8 %en_fef_intmtnt_ctrl, 0
  %or.cond = or i1 %cmp, %tobool10.not
  br i1 %or.cond, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memset(ptr %data, i32 1, i32 6)
  br label %if.end13

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memset(ptr %data, i32 0, i32 6)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_regs, align 4
  %call17 = call i32 %11(ptr noundef %9, i32 noundef 0, i8 noundef zeroext -17, ptr noundef nonnull %data, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  %write_reg22 = getelementptr inbounds %struct.cxd2880_io, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write_reg22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg22, align 4
  %call24 = call i32 %15(ptr noundef %13, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %storemerge = zext i1 %or.cond to i8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge, ptr %data, align 1
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io, align 4
  %write_reg38 = getelementptr inbounds %struct.cxd2880_io, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %write_reg38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg38, align 4
  %call41 = call i32 %20(ptr noundef %18, i32 noundef 1, i8 noundef zeroext -79, i8 noundef zeroext %storemerge) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ], [ %call17, %if.end13.cleanup_crit_edge ], [ %call24, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x_tune4(ptr noundef readonly %tnr_dmd) unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 5120, ptr %data, align 2
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %1 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tnr_dmd, align 4
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %8(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %arrayidx8 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tnr_dmd, align 4
  %io10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %io10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io10, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_regs, align 4
  %call13 = call i32 %14(ptr noundef %12, i32 noundef 0, i8 noundef zeroext 85, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %io17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %15 = ptrtoint ptr %io17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io17, align 4
  %write_reg18 = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write_reg18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg18, align 4
  %call20 = call i32 %18(ptr noundef %16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 11, ptr %data, align 2
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %arrayidx8, align 1
  %21 = ptrtoint ptr %io17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io17, align 4
  %write_regs27 = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_regs27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_regs27, align 4
  %call30 = call i32 %24(ptr noundef %22, i32 noundef 0, i8 noundef zeroext 83, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %25 = ptrtoint ptr %io17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io17, align 4
  %write_reg35 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %write_reg35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg35, align 4
  %call37 = call i32 %28(ptr noundef %26, i32 noundef 0, i8 noundef zeroext 87, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 11, ptr %data, align 2
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %arrayidx8, align 1
  %31 = ptrtoint ptr %io17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io17, align 4
  %write_regs44 = getelementptr inbounds %struct.cxd2880_io, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_regs44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_regs44, align 4
  %call47 = call i32 %34(ptr noundef %32, i32 noundef 0, i8 noundef zeroext 85, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %35 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tnr_dmd, align 4
  %io52 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %io52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io52, align 4
  %write_reg53 = getelementptr inbounds %struct.cxd2880_io, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %write_reg53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg53, align 4
  %call56 = call i32 %40(ptr noundef %38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %if.end50
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 20, ptr %data, align 2
  %42 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx8, align 1
  %43 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tnr_dmd, align 4
  %io63 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %io63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io63, align 4
  %write_regs64 = getelementptr inbounds %struct.cxd2880_io, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_regs64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_regs64, align 4
  %call68 = call i32 %48(ptr noundef %46, i32 noundef 0, i8 noundef zeroext 83, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %if.end59
  %49 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tnr_dmd, align 4
  %io73 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %io73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io73, align 4
  %write_reg74 = getelementptr inbounds %struct.cxd2880_io, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %write_reg74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_reg74, align 4
  %call77 = call i32 %54(ptr noundef %52, i32 noundef 0, i8 noundef zeroext 87, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end80:                                         ; preds = %if.end71
  %55 = ptrtoint ptr %io17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io17, align 4
  %call82 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %56, i32 noundef 1, ptr noundef nonnull @x_tune4_seq, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tnr_dmd, align 4
  %io87 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %io87 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io87, align 4
  %call88 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %60, i32 noundef 1, ptr noundef nonnull @x_tune4_seq, i8 noundef zeroext 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end80.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call88, %if.end85 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call13, %if.end7.cleanup_crit_edge ], [ %call20, %if.end16.cleanup_crit_edge ], [ %call30, %if.end23.cleanup_crit_edge ], [ %call37, %if.end33.cleanup_crit_edge ], [ %call47, %if.end40.cleanup_crit_edge ], [ %call56, %if.end50.cleanup_crit_edge ], [ %call68, %if.end59.cleanup_crit_edge ], [ %call77, %if.end71.cleanup_crit_edge ], [ %call82, %if.end80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_ts_output(ptr noundef readonly %tnr_dmd, i8 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %create_param = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2
  %4 = ptrtoint ptr %create_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %create_param, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %5, label %if.end7.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end7.sw.epilog_crit_edge
    i32 2, label %if.end7.sw.epilog_crit_edge44
  ]

if.end7.sw.epilog_crit_edge44:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %en)
  %tobool8.not = icmp eq i8 %en, 0
  %io18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %7 = ptrtoint ptr %io18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io18, align 4
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %sw.bb
  %call = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @set_ts_output_seq1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  %9 = ptrtoint ptr %io18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io18, align 4
  %call14 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @set_ts_output_seq2, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.sw.epilog_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %call19 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @set_ts_output_seq3, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %11 = ptrtoint ptr %io18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io18, align 4
  %call24 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @set_ts_output_seq4, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.sw.epilog_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end22.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge44
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end22.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %call, %if.then9.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call19, %if.else.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x_sleep1(ptr noundef readonly %tnr_dmd) unnamed_addr #0 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #8
  %0 = getelementptr inbounds i8, ptr %data, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %0, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %2 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 4
  %call = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @x_sleep1_seq, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %data, align 1
  %arrayidx6 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx6, align 1
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_regs, align 4
  %call9 = call i32 %11(ptr noundef %9, i32 noundef 0, i8 noundef zeroext 83, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tnr_dmd, align 4
  %io13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %io13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io13, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg, align 4
  %call16 = call i32 %17(ptr noundef %15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 31, ptr %data, align 1
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx6, align 1
  %arrayidx22 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %arrayidx22, align 1
  %21 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tnr_dmd, align 4
  %io24 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %io24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io24, align 4
  %write_regs25 = getelementptr inbounds %struct.cxd2880_io, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_regs25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_regs25, align 4
  %call29 = call i32 %26(ptr noundef %24, i32 noundef 0, i8 noundef zeroext 85, ptr noundef nonnull %data, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %data, align 1
  %28 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx6, align 1
  %29 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tnr_dmd, align 4
  %io36 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %io36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io36, align 4
  %write_regs37 = getelementptr inbounds %struct.cxd2880_io, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_regs37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_regs37, align 4
  %call41 = call i32 %34(ptr noundef %32, i32 noundef 0, i8 noundef zeroext 83, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  %35 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io, align 4
  %write_reg46 = getelementptr inbounds %struct.cxd2880_io, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %write_reg46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_reg46, align 4
  %call48 = call i32 %38(ptr noundef %36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 31, ptr %data, align 1
  %40 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %arrayidx6, align 1
  %41 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io, align 4
  %write_regs55 = getelementptr inbounds %struct.cxd2880_io, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_regs55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_regs55, align 4
  %call58 = call i32 %44(ptr noundef %42, i32 noundef 0, i8 noundef zeroext 85, ptr noundef nonnull %data, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end44.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call58, %if.end51 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call9, %if.end5.cleanup_crit_edge ], [ %call16, %if.end12.cleanup_crit_edge ], [ %call29, %if.end19.cleanup_crit_edge ], [ %call41, %if.end32.cleanup_crit_edge ], [ %call48, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x_sleep2(ptr noundef readonly %tnr_dmd) unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 4
  %call = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @x_sleep2_seq1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call6 = call i32 %6(ptr noundef %4, i32 noundef 1, i8 noundef zeroext -78, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io, align 4
  %call14 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @x_sleep2_seq2, i8 noundef zeroext 7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_sleep_setting(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_sleep_setting(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %tnr_dmd, i32 noundef %id, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %id, label %if.end4.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb26
    i32 3, label %sw.bb39
    i32 4, label %sw.bb52
    i32 5, label %sw.bb65
    i32 6, label %sw.bb74
    i32 7, label %sw.bb91
    i32 8, label %sw.bb109
    i32 9, label %sw.bb127
    i32 10, label %sw.bb140
    i32 11, label %sw.bb151
    i32 12, label %sw.bb164
    i32 13, label %sw.bb175
    i32 14, label %sw.bb188
    i32 15, label %sw.bb202
    i32 16, label %sw.bb220
    i32 17, label %sw.bb229
    i32 18, label %sw.bb258
    i32 19, label %sw.bb276
    i32 20, label %sw.bb285
    i32 24, label %sw.bb294
    i32 25, label %sw.bb302
    i32 26, label %sw.bb306
    i32 27, label %sw.bb310
    i32 21, label %sw.bb314
    i32 22, label %sw.bb332
    i32 23, label %sw.bb350
    i32 28, label %sw.bb368
    i32 29, label %sw.bb372
    i32 30, label %sw.bb386
    i32 32, label %sw.bb400
    i32 33, label %sw.bb414
    i32 31, label %sw.bb428
    i32 34, label %sw.bb442
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp6.not = icmp eq i32 %1, 1
  br i1 %cmp6.not, label %if.end8, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool9.not = icmp eq i32 %value, 0
  %conv = select i1 %tobool9.not, i8 16, i8 0
  %call = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -60, i8 noundef zeroext %conv, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end8.if.end463_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.if.end463_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb13:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp15.not = icmp eq i32 %1, 1
  br i1 %cmp15.not, label %if.end18, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool19.not = icmp eq i32 %value, 0
  %conv21 = select i1 %tobool19.not, i8 2, i8 0
  %call22 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -59, i8 noundef zeroext %conv21, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end18.if.end463_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18.if.end463_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb26:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp28.not = icmp eq i32 %1, 1
  br i1 %cmp28.not, label %if.end31, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool32.not = icmp eq i32 %value, 0
  %conv34 = select i1 %tobool32.not, i8 4, i8 0
  %call35 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -59, i8 noundef zeroext %conv34, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end31.if.end463_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31.if.end463_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb39:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp41.not = icmp eq i32 %1, 1
  br i1 %cmp41.not, label %if.end44, label %sw.bb39.cleanup_crit_edge

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool45.not = icmp eq i32 %value, 0
  %conv47 = zext i1 %tobool45.not to i8
  %call48 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -53, i8 noundef zeroext %conv47, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end44.if.end463_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44.if.end463_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb52:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp54.not = icmp eq i32 %1, 1
  br i1 %cmp54.not, label %if.end57, label %sw.bb52.cleanup_crit_edge

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool58.not = icmp ne i32 %value, 0
  %conv60 = zext i1 %tobool58.not to i8
  %call61 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -59, i8 noundef zeroext %conv60, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end57.if.end463_crit_edge, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57.if.end463_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb65:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp67.not = icmp eq i32 %1, 1
  br i1 %cmp67.not, label %if.end70, label %sw.bb65.cleanup_crit_edge

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end70:                                         ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool71.not = icmp ne i32 %value, 0
  %conv73 = zext i1 %tobool71.not to i8
  %srl_ts_clk_mod_cnts = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 12
  %3 = ptrtoint ptr %srl_ts_clk_mod_cnts to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv73, ptr %srl_ts_clk_mod_cnts, align 4
  br label %if.end463

sw.bb74:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp76.not = icmp ne i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %value)
  %4 = icmp ugt i32 %value, 31
  %or.cond = or i1 %4, %cmp76.not
  br i1 %or.cond, label %sw.bb74.cleanup_crit_edge, label %if.end85

sw.bb74.cleanup_crit_edge:                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end85:                                         ; preds = %sw.bb74
  %conv86 = trunc i32 %value to i8
  %call87 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -58, i8 noundef zeroext %conv86, i8 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end85.if.end463_crit_edge, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end85.if.end463_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb91:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp93.not = icmp ne i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %value)
  %5 = icmp ugt i32 %value, 31
  %or.cond691 = or i1 %5, %cmp93.not
  br i1 %or.cond691, label %sw.bb91.cleanup_crit_edge, label %if.end103

sw.bb91.cleanup_crit_edge:                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end103:                                        ; preds = %sw.bb91
  %conv104 = trunc i32 %value to i8
  %call105 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -56, i8 noundef zeroext %conv104, i8 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end103.if.end463_crit_edge, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end103.if.end463_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb109:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp111.not = icmp ne i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %value)
  %6 = icmp ugt i32 %value, 31
  %or.cond692 = or i1 %6, %cmp111.not
  br i1 %or.cond692, label %sw.bb109.cleanup_crit_edge, label %if.end121

sw.bb109.cleanup_crit_edge:                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end121:                                        ; preds = %sw.bb109
  %conv122 = trunc i32 %value to i8
  %call123 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -55, i8 noundef zeroext %conv122, i8 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end121.if.end463_crit_edge, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end121.if.end463_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb127:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp129.not = icmp eq i32 %1, 1
  br i1 %cmp129.not, label %if.end132, label %sw.bb127.cleanup_crit_edge

sw.bb127.cleanup_crit_edge:                       ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end132:                                        ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool133.not = icmp ne i32 %value, 0
  %conv135 = zext i1 %tobool133.not to i8
  %call136 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -111, i8 noundef zeroext %conv135, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end132.if.end463_crit_edge, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end132.if.end463_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb140:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp142.not = icmp eq i32 %1, 1
  br i1 %cmp142.not, label %if.end145, label %sw.bb140.cleanup_crit_edge

sw.bb140.cleanup_crit_edge:                       ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end145:                                        ; preds = %sw.bb140
  %conv146 = trunc i32 %value to i8
  %call147 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 81, i8 noundef zeroext %conv146, i8 noundef zeroext 63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end145.if.end463_crit_edge, label %if.end145.cleanup_crit_edge

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end145.if.end463_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb151:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp153.not = icmp eq i32 %1, 1
  br i1 %cmp153.not, label %if.end156, label %sw.bb151.cleanup_crit_edge

sw.bb151.cleanup_crit_edge:                       ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end156:                                        ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool157.not = icmp eq i32 %value, 0
  %conv159 = select i1 %tobool157.not, i8 0, i8 -128
  %call160 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 80, i8 noundef zeroext %conv159, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end156.if.end463_crit_edge, label %if.end156.cleanup_crit_edge

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end156.if.end463_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb164:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp166.not = icmp eq i32 %1, 1
  br i1 %cmp166.not, label %if.end169, label %sw.bb164.cleanup_crit_edge

sw.bb164.cleanup_crit_edge:                       ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end169:                                        ; preds = %sw.bb164
  %conv170 = trunc i32 %value to i8
  %call171 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 80, i8 noundef zeroext %conv170, i8 noundef zeroext 63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end169.if.end463_crit_edge, label %if.end169.cleanup_crit_edge

if.end169.cleanup_crit_edge:                      ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end169.if.end463_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb175:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp177.not = icmp ne i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %7 = icmp ugt i32 %value, 1
  %or.cond693 = or i1 %7, %cmp177.not
  br i1 %or.cond693, label %sw.bb175.cleanup_crit_edge, label %if.end187

sw.bb175.cleanup_crit_edge:                       ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end187:                                        ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #10
  %srl_ts_clk_frq = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 13
  %8 = ptrtoint ptr %srl_ts_clk_frq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %value, ptr %srl_ts_clk_frq, align 4
  br label %if.end463

sw.bb188:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp190.not = icmp ne i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %value)
  %9 = icmp ugt i32 %value, 255
  %or.cond694 = or i1 %9, %cmp190.not
  br i1 %or.cond694, label %sw.bb188.cleanup_crit_edge, label %if.end200

sw.bb188.cleanup_crit_edge:                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end200:                                        ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #10
  %conv201 = trunc i32 %value to i8
  %ts_byte_clk_manual_setting = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 14
  %10 = ptrtoint ptr %ts_byte_clk_manual_setting to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv201, ptr %ts_byte_clk_manual_setting, align 4
  br label %if.end463

sw.bb202:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp204.not = icmp ne i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %value)
  %11 = icmp ugt i32 %value, 7
  %or.cond695 = or i1 %11, %cmp204.not
  br i1 %or.cond695, label %sw.bb202.cleanup_crit_edge, label %if.end214

sw.bb202.cleanup_crit_edge:                       ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end214:                                        ; preds = %sw.bb202
  %conv215 = trunc i32 %value to i8
  %call216 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -42, i8 noundef zeroext %conv215, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end214.if.end463_crit_edge, label %if.end214.cleanup_crit_edge

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end214.if.end463_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb220:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp222.not = icmp eq i32 %1, 1
  br i1 %cmp222.not, label %if.end225, label %sw.bb220.cleanup_crit_edge

sw.bb220.cleanup_crit_edge:                       ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end225:                                        ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool226.not = icmp ne i32 %value, 0
  %conv228 = zext i1 %tobool226.not to i8
  %is_ts_backwards_compatible_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 15
  %12 = ptrtoint ptr %is_ts_backwards_compatible_mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv228, ptr %is_ts_backwards_compatible_mode, align 1
  br label %if.end463

sw.bb229:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %value)
  %13 = icmp ugt i32 %value, 4096
  br i1 %13, label %sw.bb229.cleanup_crit_edge, label %if.end236

sw.bb229.cleanup_crit_edge:                       ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end236:                                        ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool237.not = icmp ne i32 %value, 0
  %conv239 = zext i1 %tobool237.not to i8
  %call240 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 34, i8 noundef zeroext %conv239, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end243, label %if.end236.cleanup_crit_edge

if.end236.cleanup_crit_edge:                      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end243:                                        ; preds = %if.end236
  %14 = lshr i32 %value, 8
  %15 = trunc i32 %14 to i8
  %call249 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 35, i8 noundef zeroext %15, i8 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end252, label %if.end243.cleanup_crit_edge

if.end243.cleanup_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end252:                                        ; preds = %if.end243
  %conv246 = trunc i32 %value to i8
  %call254 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 36, i8 noundef zeroext %conv246, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %if.end252.if.end463_crit_edge, label %if.end252.cleanup_crit_edge

if.end252.cleanup_crit_edge:                      ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end252.if.end463_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb258:                                         ; preds = %if.end4
  %16 = lshr i32 %value, 8
  %conv261 = trunc i32 %16 to i8
  %call267 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 72, i8 noundef zeroext %conv261, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.end270, label %sw.bb258.cleanup_crit_edge

sw.bb258.cleanup_crit_edge:                       ; preds = %sw.bb258
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end270:                                        ; preds = %sw.bb258
  %conv264 = trunc i32 %value to i8
  %call272 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 73, i8 noundef zeroext %conv264, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %tobool273.not = icmp eq i32 %call272, 0
  br i1 %tobool273.not, label %if.end270.if.end463_crit_edge, label %if.end270.cleanup_crit_edge

if.end270.cleanup_crit_edge:                      ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end270.if.end463_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb276:                                         ; preds = %if.end4
  %17 = trunc i32 %value to i8
  %conv278 = and i8 %17, 7
  %call281 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 74, i8 noundef zeroext %conv278, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %sw.bb276.if.end463_crit_edge, label %sw.bb276.cleanup_crit_edge

sw.bb276.cleanup_crit_edge:                       ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb276.if.end463_crit_edge:                     ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb285:                                         ; preds = %if.end4
  %value.tr = trunc i32 %value to i8
  %18 = shl i8 %value.tr, 3
  %conv287 = and i8 %18, 56
  %call290 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 74, i8 noundef zeroext %conv287, i8 noundef zeroext 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %sw.bb285.if.end463_crit_edge, label %sw.bb285.cleanup_crit_edge

sw.bb285.cleanup_crit_edge:                       ; preds = %sw.bb285
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb285.if.end463_crit_edge:                     ; preds = %sw.bb285
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb294:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %value)
  %19 = icmp ugt i32 %value, 3
  br i1 %19, label %sw.bb294.cleanup_crit_edge, label %if.end301

sw.bb294.cleanup_crit_edge:                       ; preds = %sw.bb294
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end301:                                        ; preds = %sw.bb294
  call void @__sanitizer_cov_trace_pc() #10
  %fixed_clk_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 4
  %20 = ptrtoint ptr %fixed_clk_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %value, ptr %fixed_clk_mode, align 4
  br label %if.end463

sw.bb302:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool303.not = icmp ne i32 %value, 0
  %conv305 = zext i1 %tobool303.not to i8
  %is_cable_input = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 5
  %21 = ptrtoint ptr %is_cable_input to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv305, ptr %is_cable_input, align 4
  br label %if.end463

sw.bb306:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool307.not = icmp ne i32 %value, 0
  %conv309 = zext i1 %tobool307.not to i8
  %en_fef_intmtnt_base = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 6
  %22 = ptrtoint ptr %en_fef_intmtnt_base to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv309, ptr %en_fef_intmtnt_base, align 1
  br label %if.end463

sw.bb310:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool311.not = icmp ne i32 %value, 0
  %conv313 = zext i1 %tobool311.not to i8
  %en_fef_intmtnt_lite = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 7
  %23 = ptrtoint ptr %en_fef_intmtnt_lite to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv313, ptr %en_fef_intmtnt_lite, align 2
  br label %if.end463

sw.bb314:                                         ; preds = %if.end4
  %24 = lshr i32 %value, 8
  %25 = trunc i32 %24 to i8
  %conv317 = and i8 %25, 7
  %call323 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -103, i8 noundef zeroext %conv317, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %if.end326, label %sw.bb314.cleanup_crit_edge

sw.bb314.cleanup_crit_edge:                       ; preds = %sw.bb314
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end326:                                        ; preds = %sw.bb314
  %conv320 = trunc i32 %value to i8
  %call328 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -102, i8 noundef zeroext %conv320, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %if.end326.if.end463_crit_edge, label %if.end326.cleanup_crit_edge

if.end326.cleanup_crit_edge:                      ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end326.if.end463_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb332:                                         ; preds = %if.end4
  %26 = lshr i32 %value, 8
  %27 = trunc i32 %26 to i8
  %conv335 = and i8 %27, 7
  %call341 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -101, i8 noundef zeroext %conv335, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %if.end344, label %sw.bb332.cleanup_crit_edge

sw.bb332.cleanup_crit_edge:                       ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end344:                                        ; preds = %sw.bb332
  %conv338 = trunc i32 %value to i8
  %call346 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -100, i8 noundef zeroext %conv338, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call346)
  %tobool347.not = icmp eq i32 %call346, 0
  br i1 %tobool347.not, label %if.end344.if.end463_crit_edge, label %if.end344.cleanup_crit_edge

if.end344.cleanup_crit_edge:                      ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end344.if.end463_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb350:                                         ; preds = %if.end4
  %28 = lshr i32 %value, 8
  %29 = trunc i32 %28 to i8
  %conv353 = and i8 %29, 7
  %call359 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -99, i8 noundef zeroext %conv353, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359)
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %if.end362, label %sw.bb350.cleanup_crit_edge

sw.bb350.cleanup_crit_edge:                       ; preds = %sw.bb350
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end362:                                        ; preds = %sw.bb350
  %conv356 = trunc i32 %value to i8
  %call364 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -98, i8 noundef zeroext %conv356, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call364)
  %tobool365.not = icmp eq i32 %call364, 0
  br i1 %tobool365.not, label %if.end362.if.end463_crit_edge, label %if.end362.cleanup_crit_edge

if.end362.cleanup_crit_edge:                      ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end362.if.end463_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb368:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool369.not = icmp ne i32 %value, 0
  %conv371 = zext i1 %tobool369.not to i8
  %blind_tune_dvbt2_first = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 8
  %30 = ptrtoint ptr %blind_tune_dvbt2_first to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv371, ptr %blind_tune_dvbt2_first, align 1
  br label %if.end463

sw.bb372:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %value)
  %31 = icmp ugt i32 %value, 31
  br i1 %31, label %sw.bb372.cleanup_crit_edge, label %if.end379

sw.bb372.cleanup_crit_edge:                       ; preds = %sw.bb372
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end379:                                        ; preds = %sw.bb372
  %32 = trunc i32 %value to i8
  %call382 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext 96, i8 noundef zeroext %32, i8 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.end379.if.end463_crit_edge, label %if.end379.cleanup_crit_edge

if.end379.cleanup_crit_edge:                      ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end379.if.end463_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb386:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %value)
  %33 = icmp ugt i32 %value, 7
  br i1 %33, label %sw.bb386.cleanup_crit_edge, label %if.end393

sw.bb386.cleanup_crit_edge:                       ; preds = %sw.bb386
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end393:                                        ; preds = %sw.bb386
  %34 = trunc i32 %value to i8
  %call396 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext 111, i8 noundef zeroext %34, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call396)
  %tobool397.not = icmp eq i32 %call396, 0
  br i1 %tobool397.not, label %if.end393.if.end463_crit_edge, label %if.end393.cleanup_crit_edge

if.end393.cleanup_crit_edge:                      ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end393.if.end463_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb400:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %value)
  %35 = icmp ugt i32 %value, 15
  br i1 %35, label %sw.bb400.cleanup_crit_edge, label %if.end407

sw.bb400.cleanup_crit_edge:                       ; preds = %sw.bb400
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end407:                                        ; preds = %sw.bb400
  %36 = trunc i32 %value to i8
  %call410 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 32, i8 noundef zeroext 114, i8 noundef zeroext %36, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410)
  %tobool411.not = icmp eq i32 %call410, 0
  br i1 %tobool411.not, label %if.end407.if.end463_crit_edge, label %if.end407.cleanup_crit_edge

if.end407.cleanup_crit_edge:                      ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end407.if.end463_crit_edge:                    ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb414:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %value)
  %37 = icmp ugt i32 %value, 15
  br i1 %37, label %sw.bb414.cleanup_crit_edge, label %if.end421

sw.bb414.cleanup_crit_edge:                       ; preds = %sw.bb414
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end421:                                        ; preds = %sw.bb414
  %38 = trunc i32 %value to i8
  %call424 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 32, i8 noundef zeroext 111, i8 noundef zeroext %38, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call424)
  %tobool425.not = icmp eq i32 %call424, 0
  br i1 %tobool425.not, label %if.end421.if.end463_crit_edge, label %if.end421.cleanup_crit_edge

if.end421.cleanup_crit_edge:                      ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end421.if.end463_crit_edge:                    ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb428:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %value)
  %39 = icmp ugt i32 %value, 15
  br i1 %39, label %sw.bb428.cleanup_crit_edge, label %if.end435

sw.bb428.cleanup_crit_edge:                       ; preds = %sw.bb428
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end435:                                        ; preds = %sw.bb428
  %40 = trunc i32 %value to i8
  %call438 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext 92, i8 noundef zeroext %40, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call438)
  %tobool439.not = icmp eq i32 %call438, 0
  br i1 %tobool439.not, label %if.end435.if.end463_crit_edge, label %if.end435.cleanup_crit_edge

if.end435.cleanup_crit_edge:                      ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end435.if.end463_crit_edge:                    ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

sw.bb442:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %value)
  %41 = icmp ugt i32 %value, 15
  br i1 %41, label %sw.bb442.cleanup_crit_edge, label %if.end449

sw.bb442.cleanup_crit_edge:                       ; preds = %sw.bb442
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end449:                                        ; preds = %sw.bb442
  %42 = trunc i32 %value to i8
  %call452 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 36, i8 noundef zeroext -36, i8 noundef zeroext %42, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call452)
  %tobool453.not = icmp eq i32 %call452, 0
  br i1 %tobool453.not, label %if.end449.if.end463_crit_edge, label %if.end449.cleanup_crit_edge

if.end449.cleanup_crit_edge:                      ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end449.if.end463_crit_edge:                    ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end463

if.end463:                                        ; preds = %if.end449.if.end463_crit_edge, %if.end435.if.end463_crit_edge, %if.end421.if.end463_crit_edge, %if.end407.if.end463_crit_edge, %if.end393.if.end463_crit_edge, %if.end379.if.end463_crit_edge, %sw.bb368, %if.end362.if.end463_crit_edge, %if.end344.if.end463_crit_edge, %if.end326.if.end463_crit_edge, %sw.bb310, %sw.bb306, %sw.bb302, %if.end301, %sw.bb285.if.end463_crit_edge, %sw.bb276.if.end463_crit_edge, %if.end270.if.end463_crit_edge, %if.end252.if.end463_crit_edge, %if.end225, %if.end214.if.end463_crit_edge, %if.end200, %if.end187, %if.end169.if.end463_crit_edge, %if.end156.if.end463_crit_edge, %if.end145.if.end463_crit_edge, %if.end132.if.end463_crit_edge, %if.end121.if.end463_crit_edge, %if.end103.if.end463_crit_edge, %if.end85.if.end463_crit_edge, %if.end70, %if.end57.if.end463_crit_edge, %if.end44.if.end463_crit_edge, %if.end31.if.end463_crit_edge, %if.end18.if.end463_crit_edge, %if.end8.if.end463_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end463, %if.end449.cleanup_crit_edge, %sw.bb442.cleanup_crit_edge, %if.end435.cleanup_crit_edge, %sw.bb428.cleanup_crit_edge, %if.end421.cleanup_crit_edge, %sw.bb414.cleanup_crit_edge, %if.end407.cleanup_crit_edge, %sw.bb400.cleanup_crit_edge, %if.end393.cleanup_crit_edge, %sw.bb386.cleanup_crit_edge, %if.end379.cleanup_crit_edge, %sw.bb372.cleanup_crit_edge, %if.end362.cleanup_crit_edge, %sw.bb350.cleanup_crit_edge, %if.end344.cleanup_crit_edge, %sw.bb332.cleanup_crit_edge, %if.end326.cleanup_crit_edge, %sw.bb314.cleanup_crit_edge, %sw.bb294.cleanup_crit_edge, %sw.bb285.cleanup_crit_edge, %sw.bb276.cleanup_crit_edge, %if.end270.cleanup_crit_edge, %sw.bb258.cleanup_crit_edge, %if.end252.cleanup_crit_edge, %if.end243.cleanup_crit_edge, %if.end236.cleanup_crit_edge, %sw.bb229.cleanup_crit_edge, %sw.bb220.cleanup_crit_edge, %if.end214.cleanup_crit_edge, %sw.bb202.cleanup_crit_edge, %sw.bb188.cleanup_crit_edge, %sw.bb175.cleanup_crit_edge, %if.end169.cleanup_crit_edge, %sw.bb164.cleanup_crit_edge, %if.end156.cleanup_crit_edge, %sw.bb151.cleanup_crit_edge, %if.end145.cleanup_crit_edge, %sw.bb140.cleanup_crit_edge, %if.end132.cleanup_crit_edge, %sw.bb127.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %sw.bb109.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %sw.bb91.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %sw.bb74.cleanup_crit_edge, %sw.bb65.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %sw.bb52.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %sw.bb39.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end463 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ %call22, %if.end18.cleanup_crit_edge ], [ -22, %sw.bb26.cleanup_crit_edge ], [ %call35, %if.end31.cleanup_crit_edge ], [ -22, %sw.bb39.cleanup_crit_edge ], [ %call48, %if.end44.cleanup_crit_edge ], [ -22, %sw.bb52.cleanup_crit_edge ], [ %call61, %if.end57.cleanup_crit_edge ], [ -22, %sw.bb65.cleanup_crit_edge ], [ -22, %sw.bb74.cleanup_crit_edge ], [ %call87, %if.end85.cleanup_crit_edge ], [ -22, %sw.bb91.cleanup_crit_edge ], [ %call105, %if.end103.cleanup_crit_edge ], [ -22, %sw.bb109.cleanup_crit_edge ], [ %call123, %if.end121.cleanup_crit_edge ], [ -22, %sw.bb127.cleanup_crit_edge ], [ %call136, %if.end132.cleanup_crit_edge ], [ -22, %sw.bb140.cleanup_crit_edge ], [ %call147, %if.end145.cleanup_crit_edge ], [ -22, %sw.bb151.cleanup_crit_edge ], [ %call160, %if.end156.cleanup_crit_edge ], [ -22, %sw.bb164.cleanup_crit_edge ], [ %call171, %if.end169.cleanup_crit_edge ], [ -22, %sw.bb175.cleanup_crit_edge ], [ -22, %sw.bb188.cleanup_crit_edge ], [ -22, %sw.bb202.cleanup_crit_edge ], [ %call216, %if.end214.cleanup_crit_edge ], [ -22, %sw.bb220.cleanup_crit_edge ], [ -22, %sw.bb229.cleanup_crit_edge ], [ %call240, %if.end236.cleanup_crit_edge ], [ %call249, %if.end243.cleanup_crit_edge ], [ %call254, %if.end252.cleanup_crit_edge ], [ %call267, %sw.bb258.cleanup_crit_edge ], [ %call272, %if.end270.cleanup_crit_edge ], [ %call281, %sw.bb276.cleanup_crit_edge ], [ %call290, %sw.bb285.cleanup_crit_edge ], [ -22, %sw.bb294.cleanup_crit_edge ], [ %call323, %sw.bb314.cleanup_crit_edge ], [ %call328, %if.end326.cleanup_crit_edge ], [ %call341, %sw.bb332.cleanup_crit_edge ], [ %call346, %if.end344.cleanup_crit_edge ], [ %call359, %sw.bb350.cleanup_crit_edge ], [ %call364, %if.end362.cleanup_crit_edge ], [ -22, %sw.bb372.cleanup_crit_edge ], [ %call382, %if.end379.cleanup_crit_edge ], [ -22, %sw.bb386.cleanup_crit_edge ], [ %call396, %if.end393.cleanup_crit_edge ], [ -22, %sw.bb400.cleanup_crit_edge ], [ %call410, %if.end407.cleanup_crit_edge ], [ -22, %sw.bb414.cleanup_crit_edge ], [ %call424, %if.end421.cleanup_crit_edge ], [ -22, %sw.bb428.cleanup_crit_edge ], [ %call438, %if.end435.cleanup_crit_edge ], [ -22, %sw.bb442.cleanup_crit_edge ], [ %call452, %if.end449.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef %tnr_dmd, i32 noundef %tgt, i8 noundef zeroext %bank, i8 noundef zeroext %address, i8 noundef zeroext %value, i8 noundef zeroext %bit_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %5(ptr noundef %3, i32 noundef %tgt, i8 noundef zeroext 0, i8 noundef zeroext %bank) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 4
  %call10 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %7, i32 noundef %tgt, i8 noundef zeroext %address, i8 noundef zeroext %value, i8 noundef zeroext %bit_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond.preheader.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end8
  %cfg_mem_last_entry.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 17
  %8 = ptrtoint ptr %cfg_mem_last_entry.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cfg_mem_last_entry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp134.not.i = icmp eq i8 %9, 0
  br i1 %cmp134.not.i, label %for.cond.preheader.i.if.then60.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then60.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = and i8 %bit_mask, %value
  br label %if.then60.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %neg.i = xor i8 %bit_mask, -1
  %and37130.i = and i8 %bit_mask, %value
  %wide.trip.count.i = zext i8 %9 to i32
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i.ph = phi i32 [ %indvars.iv.next.i31, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 0, %for.body.lr.ph.i ]
  %cmp4.i = phi i1 [ false, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ true, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.i.outer
  %indvars.iv.i = phi i32 [ %indvars.iv.i.ph, %for.body.i.outer ], [ %indvars.iv.i.be, %for.body.i.backedge ]
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.inc.i.thread40

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %indvars.iv.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %tgt)
  %cmp7.i = icmp eq i32 %11, %tgt
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %bank13.i = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %indvars.iv.i, i32 1
  %12 = ptrtoint ptr %bank13.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bank13.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %bank)
  %cmp16.i = icmp eq i8 %13, %bank
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %land.lhs.true9.i
  %address22.i = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %indvars.iv.i, i32 2
  %14 = ptrtoint ptr %address22.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %address22.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %address)
  %cmp25.i = icmp eq i8 %15, %address
  br i1 %cmp25.i, label %for.inc.i.thread, label %land.lhs.true18.i.for.inc.i_crit_edge

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true18.i.for.inc.i_crit_edge, %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next.i, i32 %wide.trip.count.i)
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %if.end55.i.critedge, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.thread40.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %indvars.iv.i.be = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %indvars.iv.next.i41, %for.inc.i.thread40.for.body.i.backedge_crit_edge ]
  br label %for.body.i

for.inc.i.thread40:                               ; preds = %for.body.i
  %indvars.iv.next.i41 = add nuw nsw i32 %indvars.iv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next.i41, i32 %wide.trip.count.i)
  %exitcond.not.i42 = icmp eq i32 %indvars.iv.next.i41, %wide.trip.count.i
  br i1 %exitcond.not.i42, label %for.inc.i.thread40.cleanup_crit_edge, label %for.inc.i.thread40.for.body.i.backedge_crit_edge

for.inc.i.thread40.for.body.i.backedge_crit_edge: ; preds = %for.inc.i.thread40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.backedge

for.inc.i.thread40.cleanup_crit_edge:             ; preds = %for.inc.i.thread40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i.thread:                                 ; preds = %land.lhs.true18.i
  %value32.i = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %indvars.iv.i, i32 3
  %16 = ptrtoint ptr %value32.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %value32.i, align 2
  %and.i = and i8 %17, %neg.i
  %or131.i = or i8 %and.i, %and37130.i
  store i8 %or131.i, ptr %value32.i, align 2
  %bit_mask48.i = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %indvars.iv.i, i32 4
  %18 = ptrtoint ptr %bit_mask48.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bit_mask48.i, align 1
  %or50132.i = or i8 %19, %bit_mask
  store i8 %or50132.i, ptr %bit_mask48.i, align 1
  %indvars.iv.next.i31 = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i32 = icmp eq i32 %indvars.iv.next.i31, %wide.trip.count.i
  br i1 %exitcond.not.i32, label %for.inc.i.thread.cleanup_crit_edge, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.outer

for.inc.i.thread.cleanup_crit_edge:               ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55.i.critedge:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %9)
  %cmp58.i = icmp ult i8 %9, 100
  br i1 %cmp58.i, label %if.end55.i.critedge.if.then60.i_crit_edge, label %if.end55.i.critedge.cleanup_crit_edge

if.end55.i.critedge.cleanup_crit_edge:            ; preds = %if.end55.i.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55.i.critedge.if.then60.i_crit_edge:        ; preds = %if.end55.i.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60.i

if.then60.i:                                      ; preds = %if.end55.i.critedge.if.then60.i_crit_edge, %for.cond.preheader.i.if.then60.i_crit_edge
  %and78129.i.pre-phi = phi i8 [ %.pre, %for.cond.preheader.i.if.then60.i_crit_edge ], [ %and37130.i, %if.end55.i.critedge.if.then60.i_crit_edge ]
  %conv1.le.pre-phi143146.i = phi i32 [ 0, %for.cond.preheader.i.if.then60.i_crit_edge ], [ %wide.trip.count.i, %if.end55.i.critedge.if.then60.i_crit_edge ]
  %arrayidx64.i = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %conv1.le.pre-phi143146.i
  %20 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %tgt, ptr %arrayidx64.i, align 4
  %21 = ptrtoint ptr %cfg_mem_last_entry.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cfg_mem_last_entry.i, align 4
  %idxprom68.i = zext i8 %22 to i32
  %bank70.i = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %idxprom68.i, i32 1
  %23 = ptrtoint ptr %bank70.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bank, ptr %bank70.i, align 4
  %address75.i = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %idxprom68.i, i32 2
  %24 = ptrtoint ptr %address75.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %address, ptr %address75.i, align 1
  %value84.i = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %idxprom68.i, i32 3
  %25 = ptrtoint ptr %value84.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %and78129.i.pre-phi, ptr %value84.i, align 2
  %bit_mask89.i = getelementptr %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 16, i32 %idxprom68.i, i32 4
  %26 = ptrtoint ptr %bit_mask89.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bit_mask, ptr %bit_mask89.i, align 1
  %inc91.i = add i8 %22, 1
  store i8 %inc91.i, ptr %cfg_mem_last_entry.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then60.i, %if.end55.i.critedge.cleanup_crit_edge, %for.inc.i.thread.cleanup_crit_edge, %for.inc.i.thread40.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ 0, %if.then60.i ], [ -12, %if.end55.i.critedge.cleanup_crit_edge ], [ 0, %for.inc.i.thread40.cleanup_crit_edge ], [ 0, %for.inc.i.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_set_cfg(ptr noundef %tnr_dmd, i8 noundef zeroext %id, i8 noundef zeroext %en, i32 noundef %mode, i8 noundef zeroext %open_drain, i8 noundef zeroext %invert) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %id)
  %cmp = icmp ugt i8 %id, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %mode)
  %cmp4 = icmp ugt i32 %mode, 6
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %add = add nuw nsw i8 %id, 64
  %conv17 = trunc i32 %mode to i8
  %call = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext %add, i8 noundef zeroext %conv17, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %open_drain)
  %tobool22.not = icmp eq i8 %open_drain, 0
  %shl = shl nuw i32 1, %conv
  %phi.cast = trunc i32 %shl to i8
  %cond = select i1 %tobool22.not, i8 0, i8 %phi.cast
  %call28 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 67, i8 noundef zeroext %cond, i8 noundef zeroext %phi.cast)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %invert)
  %tobool33.not = icmp eq i8 %invert, 0
  %spec.select = select i1 %tobool33.not, i8 0, i8 %phi.cast
  %call44 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 68, i8 noundef zeroext %spec.select, i8 noundef zeroext %phi.cast)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %en)
  %tobool49.not = icmp eq i8 %en, 0
  %spec.select82 = select i1 %tobool49.not, i8 %phi.cast, i8 0
  %call60 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 69, i8 noundef zeroext %spec.select82, i8 noundef zeroext %phi.cast)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end31.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call60, %if.end47 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call, %if.end14.cleanup_crit_edge ], [ %call28, %if.end20.cleanup_crit_edge ], [ %call44, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_set_cfg_sub(ptr noundef readonly %tnr_dmd, i8 noundef zeroext %id, i8 noundef zeroext %en, i32 noundef %mode, i8 noundef zeroext %open_drain, i8 noundef zeroext %invert) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnr_dmd, align 4
  %call = tail call i32 @cxd2880_tnrdmd_gpio_set_cfg(ptr noundef %3, i8 noundef zeroext %id, i8 noundef zeroext %en, i32 noundef %mode, i8 noundef zeroext %open_drain, i8 noundef zeroext %invert)
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end2 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_read(ptr noundef readonly %tnr_dmd, i8 noundef zeroext %id, ptr noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %value, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %id)
  %cmp = icmp ugt i8 %id, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %.off = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end11, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %6(ptr noundef %4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call18 = call i32 %10(ptr noundef %8, i32 noundef 0, i8 noundef zeroext 32, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %conv22 = zext i8 %12 to i32
  %shr = lshr i32 %conv22, %conv
  %13 = trunc i32 %shr to i8
  %conv24 = and i8 %13, 1
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %value, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call, %if.end11.cleanup_crit_edge ], [ %call18, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_read_sub(ptr noundef readonly %tnr_dmd, i8 noundef zeroext %id, ptr noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnr_dmd, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %data.i, align 1
  %tobool.not.i = icmp eq ptr %3, null
  %tobool1.not.i = icmp eq ptr %value, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end2.cxd2880_tnrdmd_gpio_read.exit_crit_edge, label %if.end.i

if.end2.cxd2880_tnrdmd_gpio_read.exit_crit_edge:  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_gpio_read.exit

if.end.i:                                         ; preds = %if.end2
  %conv.i = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %id)
  %cmp.i = icmp ugt i8 %id, 2
  br i1 %cmp.i, label %if.end.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge, label %if.end4.i

if.end.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_gpio_read.exit

if.end4.i:                                        ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 22
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end11.i, label %if.end4.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge

if.end4.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_gpio_read.exit

if.end11.i:                                       ; preds = %if.end4.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %10(ptr noundef %8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge

if.end11.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_gpio_read.exit

if.end15.i:                                       ; preds = %if.end11.i
  %11 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call18.i = call i32 %14(ptr noundef %12, i32 noundef 0, i8 noundef zeroext 32, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end15.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge

if.end15.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_tnrdmd_gpio_read.exit

if.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data.i, align 1
  %conv22.i = zext i8 %16 to i32
  %shr.i = lshr i32 %conv22.i, %conv.i
  %17 = trunc i32 %shr.i to i8
  %conv24.i = and i8 %17, 1
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv24.i, ptr %value, align 1
  br label %cxd2880_tnrdmd_gpio_read.exit

cxd2880_tnrdmd_gpio_read.exit:                    ; preds = %if.end21.i, %if.end15.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge, %if.end11.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge, %if.end4.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge, %if.end.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge, %if.end2.cxd2880_tnrdmd_gpio_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end21.i ], [ -22, %if.end2.cxd2880_tnrdmd_gpio_read.exit_crit_edge ], [ -22, %if.end.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge ], [ -22, %if.end4.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge ], [ %call.i, %if.end11.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge ], [ %call18.i, %if.end15.i.cxd2880_tnrdmd_gpio_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  br label %return

return:                                           ; preds = %cxd2880_tnrdmd_gpio_read.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %cxd2880_tnrdmd_gpio_read.exit ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_write(ptr noundef %tnr_dmd, i8 noundef zeroext %id, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %id)
  %cmp = icmp ugt i8 %id, 2
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end10, label %if.end3.return_crit_edge

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool12.not = icmp eq i8 %value, 0
  %shl = shl nuw i32 1, %conv
  %phi.cast = trunc i32 %shl to i8
  %cond = select i1 %tobool12.not, i8 0, i8 %phi.cast
  %call = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %tnr_dmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 70, i8 noundef zeroext %cond, i8 noundef zeroext %phi.cast)
  br label %return

return:                                           ; preds = %if.end10, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end10 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_write_sub(ptr noundef readonly %tnr_dmd, i8 noundef zeroext %id, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnr_dmd, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end2.return_crit_edge, label %if.end.i

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end2
  %conv.i = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %id)
  %cmp.i = icmp ugt i8 %id, 2
  br i1 %cmp.i, label %if.end.i.return_crit_edge, label %if.end3.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end10.i, label %if.end3.i.return_crit_edge

if.end3.i.return_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool12.not.i = icmp eq i8 %value, 0
  %shl.i = shl nuw i32 1, %conv.i
  %phi.cast.i = trunc i32 %shl.i to i8
  %cond.i = select i1 %tobool12.not.i, i8 0, i8 %phi.cast.i
  %call.i = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 70, i8 noundef zeroext %cond.i, i8 noundef zeroext %phi.cast.i) #8
  br label %return

return:                                           ; preds = %if.end10.i, %if.end3.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ %call.i, %if.end10.i ], [ -22, %if.end2.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ -22, %if.end3.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_interrupt_read(ptr noundef readonly %tnr_dmd, ptr noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %data, align 2
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %value, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %.off = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %6(ptr noundef %4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call12 = call i32 %10(ptr noundef %8, i32 noundef 0, i8 noundef zeroext 21, ptr noundef nonnull %data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 2
  %conv = zext i8 %12 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx16 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %14 to i16
  %or = or i16 %shl, %conv17
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %or, ptr %value, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end5.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_interrupt_clear(ptr noundef readonly %tnr_dmd, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %5(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = lshr i16 %value, 8
  %conv9 = trunc i16 %6 to i8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv9, ptr %data, align 2
  %conv12 = trunc i16 %value to i8
  %arrayidx13 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12, ptr %arrayidx13, align 1
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_regs, align 4
  %call16 = call i32 %12(ptr noundef %10, i32 noundef 0, i8 noundef zeroext 60, ptr noundef nonnull %data, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_ts_buf_clear(ptr noundef readonly %tnr_dmd, i8 noundef zeroext %clear_overflow_flag, i8 noundef zeroext %clear_underflow_flag, i8 noundef zeroext %clear_buf) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %7(ptr noundef %5, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %clear_overflow_flag)
  %tobool12.not = icmp eq i8 %clear_overflow_flag, 0
  %conv13 = select i1 %tobool12.not, i8 0, i8 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %clear_underflow_flag)
  %tobool15.not = icmp ne i8 %clear_underflow_flag, 0
  %cond16 = zext i1 %tobool15.not to i8
  %or = or i8 %conv13, %cond16
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %clear_buf)
  %tobool21.not = icmp ne i8 %clear_buf, 0
  %conv23 = zext i1 %tobool21.not to i8
  %arrayidx24 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv23, ptr %arrayidx24, align 1
  %10 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_regs, align 4
  %call27 = call i32 %13(ptr noundef %11, i32 noundef 1, i8 noundef zeroext -97, ptr noundef nonnull %data, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %call, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_set_reg_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_scan_mode(ptr noundef %tnr_dmd, i32 noundef %sys, i8 noundef zeroext %scan_mode_end) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not13 = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not13, label %entry.return_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %if.then6.if.end_crit_edge, %entry.if.end_crit_edge
  %tnr_dmd.tr14 = phi ptr [ %6, %if.then6.if.end_crit_edge ], [ %tnr_dmd, %entry.if.end_crit_edge ]
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd.tr14, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  %scan_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd.tr14, i32 0, i32 27
  %2 = ptrtoint ptr %scan_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %scan_mode_end, ptr %scan_mode, align 4
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd.tr14, i32 0, i32 3
  %3 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp5 = icmp eq i32 %4, 1
  br i1 %cmp5, label %if.then6, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then6:                                         ; preds = %if.end4
  %5 = ptrtoint ptr %tnr_dmd.tr14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tnr_dmd.tr14, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then6.return_crit_edge, label %if.then6.if.end_crit_edge

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6.return_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %if.then6.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %if.end4.return_crit_edge ], [ -22, %if.then6.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_pid_ftr(ptr noundef %tnr_dmd, ptr noundef readonly %pid_ftr_cfg) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end7:                                          ; preds = %if.end2
  %create_param = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2
  %4 = ptrtoint ptr %create_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %create_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.end7.return_crit_edge, label %if.end10

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10:                                         ; preds = %if.end7
  %tobool11.not = icmp eq ptr %pid_ftr_cfg, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %pid_ftr_cfg13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 18
  %6 = call ptr @memcpy(ptr %pid_ftr_cfg13, ptr %pid_ftr_cfg, i32 130)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %.sink = phi i8 [ 1, %if.then12 ], [ 0, %if.end10.if.end15_crit_edge ]
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 19
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp17 = icmp eq i32 %3, 2
  br i1 %cmp17, label %if.end.i, label %if.end15.return_crit_edge

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i) #8
  %9 = getelementptr inbounds i8, ptr %data.i, i32 1
  %10 = call ptr @memset(ptr %9, i32 255, i32 64)
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %11 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %14(ptr noundef %12, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.pid_ftr_setting.exit_crit_edge

if.end.i.pid_ftr_setting.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pid_ftr_setting.exit

if.end4.i:                                        ; preds = %if.end.i
  br i1 %tobool11.not, label %if.then6.i, label %if.end11.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io.i, align 4
  %write_reg8.i = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write_reg8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg8.i, align 4
  %call10.i = tail call i32 %18(ptr noundef %16, i32 noundef 1, i8 noundef zeroext 80, i8 noundef zeroext 2) #8
  br label %pid_ftr_setting.exit

if.end11.i:                                       ; preds = %if.end4.i
  %19 = ptrtoint ptr %pid_ftr_cfg to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pid_ftr_cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not.i = icmp ne i8 %20, 0
  %conv13.i = zext i1 %tobool12.not.i to i8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv13.i, ptr %data.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11.i
  %i.062.i = phi i32 [ 0, %if.end11.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx15.i = getelementptr %struct.cxd2880_tnrdmd_pid_ftr_cfg, ptr %pid_ftr_cfg, i32 0, i32 1, i32 %i.062.i
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool16.not.i = icmp eq i8 %23, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %pid.i = getelementptr %struct.cxd2880_tnrdmd_pid_ftr_cfg, ptr %pid_ftr_cfg, i32 0, i32 1, i32 %i.062.i, i32 1
  %24 = ptrtoint ptr %pid.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pid.i, align 2
  %26 = lshr i16 %25, 8
  %27 = trunc i16 %26 to i8
  %conv21.i = or i8 %27, 32
  %mul.i = shl nuw i32 %i.062.i, 1
  %add.i = or i32 %mul.i, 1
  %arrayidx22.i = getelementptr [65 x i8], ptr %data.i, i32 0, i32 %add.i
  %28 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv21.i, ptr %arrayidx22.i, align 1
  %conv27.i = trunc i16 %25 to i8
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul31.i = shl nuw i32 %i.062.i, 1
  %add32.i = or i32 %mul31.i, 1
  %arrayidx33.i = getelementptr [65 x i8], ptr %data.i, i32 0, i32 %add32.i
  %29 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx33.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then17.i
  %mul.sink.i = phi i32 [ %mul.i, %if.then17.i ], [ %mul31.i, %if.else.i ]
  %conv27.sink.i = phi i8 [ %conv27.i, %if.then17.i ], [ 0, %if.else.i ]
  %add29.i = add nuw nsw i32 %mul.sink.i, 2
  %arrayidx30.i = getelementptr [65 x i8], ptr %data.i, i32 0, i32 %add29.i
  %30 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv27.sink.i, ptr %arrayidx30.i, align 1
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io.i, align 4
  %write_regs.i = getelementptr inbounds %struct.cxd2880_io, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_regs.i, align 4
  %call40.i = call i32 %34(ptr noundef %32, i32 noundef 1, i8 noundef zeroext 80, ptr noundef nonnull %data.i, i32 noundef 65) #8
  br label %pid_ftr_setting.exit

pid_ftr_setting.exit:                             ; preds = %for.end.i, %if.then6.i, %if.end.i.pid_ftr_setting.exit_crit_edge
  %retval.0.i = phi i32 [ %call40.i, %for.end.i ], [ %call10.i, %if.then6.i ], [ %call.i, %if.end.i.pid_ftr_setting.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i) #8
  br label %return

return:                                           ; preds = %pid_ftr_setting.exit, %if.end15.return_crit_edge, %if.end7.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %pid_ftr_setting.exit ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end2.return_crit_edge ], [ -25, %if.end7.return_crit_edge ], [ 0, %if.end15.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_rf_lvl_cmpstn(ptr noundef writeonly %tnr_dmd, ptr noundef %rf_lvl_cmpstn) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rf_lvl_cmpstn1 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 9
  %0 = ptrtoint ptr %rf_lvl_cmpstn1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rf_lvl_cmpstn, ptr %rf_lvl_cmpstn1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_rf_lvl_cmpstn_sub(ptr noundef readonly %tnr_dmd, ptr noundef %rf_lvl_cmpstn) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnr_dmd, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end2.return_crit_edge, label %if.end.i

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %rf_lvl_cmpstn1.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %rf_lvl_cmpstn1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rf_lvl_cmpstn, ptr %rf_lvl_cmpstn1.i, align 4
  br label %return

return:                                           ; preds = %if.end.i, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %if.end.i ], [ -22, %if.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_lna_thrs(ptr noundef writeonly %tnr_dmd, ptr noundef %tbl_air, ptr noundef %tbl_cable) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lna_thrs_tbl_air = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 10
  %0 = ptrtoint ptr %lna_thrs_tbl_air to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tbl_air, ptr %lna_thrs_tbl_air, align 4
  %lna_thrs_tbl_cable = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 11
  %1 = ptrtoint ptr %lna_thrs_tbl_cable to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tbl_cable, ptr %lna_thrs_tbl_cable, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_lna_thrs_sub(ptr noundef readonly %tnr_dmd, ptr noundef %tbl_air, ptr noundef %tbl_cable) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnr_dmd, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end2.return_crit_edge, label %if.end.i

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %lna_thrs_tbl_air.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %lna_thrs_tbl_air.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tbl_air, ptr %lna_thrs_tbl_air.i, align 4
  %lna_thrs_tbl_cable.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %lna_thrs_tbl_cable.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tbl_cable, ptr %lna_thrs_tbl_cable.i, align 4
  br label %return

return:                                           ; preds = %if.end.i, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %if.end.i ], [ -22, %if.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_ts_pin_high_low(ptr noundef %tnr_dmd, i8 noundef zeroext %en, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3.not = icmp eq i32 %3, 1
  br i1 %cmp3.not, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %create_param = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2
  %4 = ptrtoint ptr %create_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %create_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not = icmp eq i32 %5, 0
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %9(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %en)
  %tobool13.not = icmp eq i8 %en, 0
  %10 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io, align 4
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %write_reg16 = getelementptr inbounds %struct.cxd2880_io, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %write_reg16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg16, align 4
  %14 = and i8 %value, 31
  %or = or i8 %14, -128
  %call19 = tail call i32 %13(ptr noundef %11, i32 noundef 0, i8 noundef zeroext 80, i8 noundef zeroext %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io, align 4
  %write_reg24 = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write_reg24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg24, align 4
  %call29 = tail call i32 %18(ptr noundef %16, i32 noundef 0, i8 noundef zeroext 82, i8 noundef zeroext %14) #8
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %call31 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @set_ts_pin_seq, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call fastcc i32 @load_cfg_mem(ptr noundef nonnull %tnr_dmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.else.cleanup_crit_edge, %if.end22, %if.then14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -25, %if.end5.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ %call19, %if.then14.cleanup_crit_edge ], [ %call31, %if.else.cleanup_crit_edge ], [ %call29, %if.end22 ], [ %call35, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_write_multi_regs(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slvt_freeze_reg(ptr noundef readonly %tnr_dmd) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !107
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %create_param = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 2
  %1 = ptrtoint ptr %create_param to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %create_param, align 4
  %.off = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = call i32 %6(ptr noundef %4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %io6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %7 = ptrtoint ptr %io6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io6, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %call8 = call i32 %10(ptr noundef %8, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_convert2s_complement(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @p_init1_seq, !1, !"p_init1_seq", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 17, i32 39}
!2 = !{ptr @rf_init1.rf_init1_cdata1, !3, !"rf_init1_cdata1", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 394, i32 18}
!4 = !{ptr @rf_init1.rf_init1_cdata2, !5, !"rf_init1_cdata2", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 403, i32 18}
!6 = !{ptr @rf_init1.rf_init1_cdata3, !7, !"rf_init1_cdata3", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 404, i32 18}
!8 = !{ptr @rf_init1.rf_init1_cdata4, !9, !"rf_init1_cdata4", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 419, i32 18}
!10 = !{ptr @rf_init1.rf_init1_cdata5, !11, !"rf_init1_cdata5", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 423, i32 18}
!12 = !{ptr @rf_init1_seq1, !13, !"rf_init1_seq1", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 21, i32 39}
!14 = !{ptr @rf_init1_seq2, !15, !"rf_init1_seq2", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 27, i32 39}
!16 = !{ptr @rf_init1_seq3, !17, !"rf_init1_seq3", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 31, i32 39}
!18 = !{ptr @rf_init1_seq4, !19, !"rf_init1_seq4", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 37, i32 39}
!20 = !{ptr @rf_init1_seq5, !21, !"rf_init1_seq5", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 41, i32 39}
!22 = !{ptr @rf_init1_seq6, !23, !"rf_init1_seq6", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 45, i32 39}
!24 = !{ptr @rf_init1_seq7, !25, !"rf_init1_seq7", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 50, i32 39}
!26 = !{ptr @rf_init1_seq8, !27, !"rf_init1_seq8", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 55, i32 39}
!28 = !{ptr @rf_init1_seq9, !29, !"rf_init1_seq9", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 59, i32 39}
!30 = !{ptr @rf_init2_seq1, !31, !"rf_init2_seq1", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 63, i32 39}
!32 = !{ptr @rf_init2_seq2, !33, !"rf_init2_seq2", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 67, i32 39}
!34 = !{ptr @t_power_x_seq1, !35, !"t_power_x_seq1", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 152, i32 39}
!36 = !{ptr @t_power_x_seq2, !37, !"t_power_x_seq2", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 156, i32 39}
!38 = !{ptr @t_power_x_seq3, !39, !"t_power_x_seq3", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 160, i32 39}
!40 = !{ptr @t_power_x_seq4, !41, !"t_power_x_seq4", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 164, i32 39}
!42 = !{ptr @t_power_x_seq5, !43, !"t_power_x_seq5", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 168, i32 39}
!44 = !{ptr @t_power_x_seq6, !45, !"t_power_x_seq6", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 172, i32 39}
!46 = !{ptr @t_power_x_seq7, !47, !"t_power_x_seq7", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 176, i32 39}
!48 = !{ptr @spll_reset_seq1, !49, !"spll_reset_seq1", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 131, i32 39}
!50 = !{ptr @spll_reset_seq2, !51, !"spll_reset_seq2", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 136, i32 39}
!52 = !{ptr @spll_reset_seq3, !53, !"spll_reset_seq3", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 140, i32 39}
!54 = !{ptr @spll_reset_seq4, !55, !"spll_reset_seq4", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 144, i32 39}
!56 = !{ptr @spll_reset_seq5, !57, !"spll_reset_seq5", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 148, i32 39}
!58 = !{ptr @x_tune1_seq1, !59, !"x_tune1_seq1", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 72, i32 39}
!60 = !{ptr @x_tune1_seq2, !61, !"x_tune1_seq2", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 76, i32 39}
!62 = !{ptr @x_tune2_seq1, !63, !"x_tune2_seq1", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 80, i32 39}
!64 = !{ptr @x_tune2_seq2, !65, !"x_tune2_seq2", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 84, i32 39}
!66 = !{ptr @x_tune2_seq3, !67, !"x_tune2_seq3", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 88, i32 39}
!68 = !{ptr @x_tune2_seq4, !69, !"x_tune2_seq4", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 92, i32 39}
!70 = !{ptr @x_tune2_seq5, !71, !"x_tune2_seq5", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 96, i32 39}
!72 = !{ptr @set_ts_clk_mode_and_freq.srl_ts_clk_stgs, !73, !"srl_ts_clk_stgs", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 1715, i32 48}
!74 = !{ptr @x_tune3_seq, !75, !"x_tune3_seq", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 100, i32 39}
!76 = !{ptr @x_tune4_seq, !77, !"x_tune4_seq", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 105, i32 39}
!78 = !{ptr @x_sleep1_seq, !79, !"x_sleep1_seq", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 109, i32 39}
!80 = !{ptr @x_sleep2_seq1, !81, !"x_sleep2_seq1", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 113, i32 39}
!82 = !{ptr @x_sleep2_seq2, !83, !"x_sleep2_seq2", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 117, i32 39}
!84 = !{ptr @x_sleep3_seq, !85, !"x_sleep3_seq", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 122, i32 39}
!86 = !{ptr @x_sleep4_seq, !87, !"x_sleep4_seq", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 126, i32 39}
!88 = !{ptr @set_ts_pin_seq, !89, !"set_ts_pin_seq", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 180, i32 39}
!90 = !{ptr @set_ts_output_seq1, !91, !"set_ts_output_seq1", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 185, i32 39}
!92 = !{ptr @set_ts_output_seq2, !93, !"set_ts_output_seq2", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 189, i32 39}
!94 = !{ptr @set_ts_output_seq3, !95, !"set_ts_output_seq3", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 194, i32 39}
!96 = !{ptr @set_ts_output_seq4, !97, !"set_ts_output_seq4", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c", i32 199, i32 39}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
