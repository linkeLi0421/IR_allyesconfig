; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_reg_value = type { i8, i8 }
%struct.cxd2880_tnrdmd = type { ptr, ptr, %struct.cxd2880_tnrdmd_create_param, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, i8, i32, i8, i8, [100 x %struct.cxd2880_tnrdmd_cfg_mem], i8, %struct.cxd2880_tnrdmd_pid_ftr_cfg, i8, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t }
%struct.cxd2880_tnrdmd_create_param = type { i32, i8, i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_cfg_mem = type { i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { i8, [32 x %struct.cxd2880_tnrdmd_pid_cfg] }
%struct.cxd2880_tnrdmd_pid_cfg = type { i8, i16 }
%struct.atomic_t = type { i32 }
%struct.cxd2880_dvbt_tune_param = type { i32, i32, i32 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }

@x_tune_dvbt_demod_setting.clk_mode_ckffrq_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"RI", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.clk_mode_ckffrq_b = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"]U", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.clk_mode_ckffrq_c = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"`\00", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.ratectl_margin = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01\F0", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.maxclkcnt_a = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s\CAI", [29 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.maxclkcnt_b = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C8\13\AA", [29 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.maxclkcnt_c = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\DCl\00", [29 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw8_nomi_ac = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\15\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw8_nomi_b = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\14j\AA\AA\AA", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw8_gtdofst_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01(", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw8_gtdofst_b = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\11D", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw8_gtdofst_c = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\15(", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw8_mrc_a = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0\00\00\90\00", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw8_mrc_b = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6q\00\A3U", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw8_mrc_c = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8\00\00\A8\00", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw8_notch = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\B3\00\01\02", [28 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw7_nomi_ac = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\18\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw7_nomi_b = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\17UUUU", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw7_gtdofst_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\12L", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw7_gtdofst_b = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1F\15", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw7_gtdofst_c = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1F\F8", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw7_mrc_a = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6\DB\00\A4\92", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw7_mrc_b = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c">8\00\BA\AA", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw7_mrc_c = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"@\00\00\C0\00", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw7_notch = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\B8\00\00\03", [28 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw6_nomi_ac = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\1C\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw6_nomi_b = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\1B8\E3\8E8", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw6_gtdofst_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1F\F8", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw6_gtdofst_b = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"$C", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw6_gtdofst_c = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"%L", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw6_mrc_a = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"@\00\00\C0\00", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw6_mrc_b = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"H\97\00\D9\C7", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw6_mrc_c = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"J\AA\00\DF\FF", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw6_notch = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\BE\AB\00\03", [28 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw5_nomi_ac = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"!\99\99\99\99", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw5_nomi_b = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" \AA\AA\AA\AA", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw5_gtdofst_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"&]", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw5_gtdofst_b = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\84", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw5_gtdofst_c = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\C2", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw5_mrc_a = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L\CC\00\E6f", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw5_mrc_b = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"W\1C\01\05U", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw5_mrc_c = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Y\99\01\0C\CC", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt_demod_setting.bw5_notch = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\C8\01\00\03", [28 x i8] zeroinitializer }, align 32
@tune_dmd_setting_seq1 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 49, i8 1 }], [28 x i8] zeroinitializer }, align 32
@tune_dmd_setting_seq2 = internal constant { [7 x %struct.cxd2880_reg_value], [18 x i8] } { [7 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 4 }, %struct.cxd2880_reg_value { i8 92, i8 -5 }, %struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 -92, i8 3 }, %struct.cxd2880_reg_value { i8 0, i8 20 }, %struct.cxd2880_reg_value { i8 -80, i8 0 }, %struct.cxd2880_reg_value { i8 0, i8 37 }], [18 x i8] zeroinitializer }, align 32
@tune_dmd_setting_seq3 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 18 }, %struct.cxd2880_reg_value { i8 68, i8 0 }], [28 x i8] zeroinitializer }, align 32
@tune_dmd_setting_seq4 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 17 }, %struct.cxd2880_reg_value { i8 -121, i8 -46 }], [28 x i8] zeroinitializer }, align 32
@tune_dmd_setting_seq5 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 -3, i8 1 }], [28 x i8] zeroinitializer }, align 32
@sleep_dmd_setting_seq1 = internal constant { [4 x %struct.cxd2880_reg_value], [24 x i8] } { [4 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 4 }, %struct.cxd2880_reg_value { i8 92, i8 -40 }, %struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 -92, i8 0 }], [24 x i8] zeroinitializer }, align 32
@sleep_dmd_setting_seq2 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 17 }, %struct.cxd2880_reg_value { i8 -121, i8 4 }], [28 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_a, ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_b, ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.1 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.maxclkcnt_a, ptr @x_tune_dvbt_demod_setting.maxclkcnt_b, ptr @x_tune_dvbt_demod_setting.maxclkcnt_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.2 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw8_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw8_nomi_b, ptr @x_tune_dvbt_demod_setting.bw8_nomi_ac], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.3 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.4 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw8_mrc_a, ptr @x_tune_dvbt_demod_setting.bw8_mrc_b, ptr @x_tune_dvbt_demod_setting.bw8_mrc_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.5 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw7_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw7_nomi_b, ptr @x_tune_dvbt_demod_setting.bw7_nomi_ac], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.6 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.7 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw7_mrc_a, ptr @x_tune_dvbt_demod_setting.bw7_mrc_b, ptr @x_tune_dvbt_demod_setting.bw7_mrc_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.8 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw6_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw6_nomi_b, ptr @x_tune_dvbt_demod_setting.bw6_nomi_ac], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.9 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.10 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw6_mrc_a, ptr @x_tune_dvbt_demod_setting.bw6_mrc_b, ptr @x_tune_dvbt_demod_setting.bw6_mrc_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.11 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw5_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw5_nomi_b, ptr @x_tune_dvbt_demod_setting.bw5_nomi_ac], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.12 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt_demod_setting.13 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw5_mrc_a, ptr @x_tune_dvbt_demod_setting.bw5_mrc_b, ptr @x_tune_dvbt_demod_setting.bw5_mrc_c], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"clk_mode_ckffrq_a\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 51, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"clk_mode_ckffrq_b\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 52, i32 18 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"clk_mode_ckffrq_c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 53, i32 18 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"ratectl_margin\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 54, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"maxclkcnt_a\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 55, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"maxclkcnt_b\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 56, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"maxclkcnt_c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 57, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"bw8_nomi_ac\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 59, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"bw8_nomi_b\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 60, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"bw8_gtdofst_a\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 61, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"bw8_gtdofst_b\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 62, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"bw8_gtdofst_c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 63, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"bw8_mrc_a\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 64, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant [10 x i8] c"bw8_mrc_b\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 65, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"bw8_mrc_c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 66, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"bw8_notch\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 67, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"bw7_nomi_ac\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 69, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"bw7_nomi_b\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 70, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"bw7_gtdofst_a\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 71, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"bw7_gtdofst_b\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 72, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"bw7_gtdofst_c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 73, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"bw7_mrc_a\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 74, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant [10 x i8] c"bw7_mrc_b\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 75, i32 18 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"bw7_mrc_c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 76, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"bw7_notch\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 77, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"bw6_nomi_ac\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 79, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant [11 x i8] c"bw6_nomi_b\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 80, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"bw6_gtdofst_a\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 81, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant [14 x i8] c"bw6_gtdofst_b\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 82, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"bw6_gtdofst_c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 83, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant [10 x i8] c"bw6_mrc_a\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 84, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant [10 x i8] c"bw6_mrc_b\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 85, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant [10 x i8] c"bw6_mrc_c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 86, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant [10 x i8] c"bw6_notch\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 87, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"bw5_nomi_ac\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 89, i32 18 }
@___asan_gen_.119 = private unnamed_addr constant [11 x i8] c"bw5_nomi_b\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 90, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"bw5_gtdofst_a\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 91, i32 18 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"bw5_gtdofst_b\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 92, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"bw5_gtdofst_c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 93, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"bw5_mrc_a\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 94, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant [10 x i8] c"bw5_mrc_b\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 95, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant [10 x i8] c"bw5_mrc_c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 96, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant [10 x i8] c"bw5_notch\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 97, i32 18 }
@___asan_gen_.143 = private unnamed_addr constant [22 x i8] c"tune_dmd_setting_seq1\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 15, i32 39 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"tune_dmd_setting_seq2\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 19, i32 39 }
@___asan_gen_.149 = private unnamed_addr constant [22 x i8] c"tune_dmd_setting_seq3\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 24, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant [22 x i8] c"tune_dmd_setting_seq4\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 28, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant [22 x i8] c"tune_dmd_setting_seq5\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 32, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant [23 x i8] c"sleep_dmd_setting_seq1\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 36, i32 39 }
@___asan_gen_.161 = private unnamed_addr constant [23 x i8] c"sleep_dmd_setting_seq2\00", align 1
@___asan_gen_.162 = private constant [61 x i8] c"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 40, i32 39 }
@___asan_gen_.164 = private unnamed_addr constant [39 x i8] c"switch.table.x_tune_dvbt_demod_setting\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [41 x i8] c"switch.table.x_tune_dvbt_demod_setting.1\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [41 x i8] c"switch.table.x_tune_dvbt_demod_setting.2\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [41 x i8] c"switch.table.x_tune_dvbt_demod_setting.3\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [41 x i8] c"switch.table.x_tune_dvbt_demod_setting.4\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [41 x i8] c"switch.table.x_tune_dvbt_demod_setting.5\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [41 x i8] c"switch.table.x_tune_dvbt_demod_setting.6\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [41 x i8] c"switch.table.x_tune_dvbt_demod_setting.7\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [41 x i8] c"switch.table.x_tune_dvbt_demod_setting.8\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [41 x i8] c"switch.table.x_tune_dvbt_demod_setting.9\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt_demod_setting.10\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt_demod_setting.11\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt_demod_setting.12\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt_demod_setting.13\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_a, ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_b, ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_c, ptr @x_tune_dvbt_demod_setting.ratectl_margin, ptr @x_tune_dvbt_demod_setting.maxclkcnt_a, ptr @x_tune_dvbt_demod_setting.maxclkcnt_b, ptr @x_tune_dvbt_demod_setting.maxclkcnt_c, ptr @x_tune_dvbt_demod_setting.bw8_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw8_nomi_b, ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_c, ptr @x_tune_dvbt_demod_setting.bw8_mrc_a, ptr @x_tune_dvbt_demod_setting.bw8_mrc_b, ptr @x_tune_dvbt_demod_setting.bw8_mrc_c, ptr @x_tune_dvbt_demod_setting.bw8_notch, ptr @x_tune_dvbt_demod_setting.bw7_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw7_nomi_b, ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_c, ptr @x_tune_dvbt_demod_setting.bw7_mrc_a, ptr @x_tune_dvbt_demod_setting.bw7_mrc_b, ptr @x_tune_dvbt_demod_setting.bw7_mrc_c, ptr @x_tune_dvbt_demod_setting.bw7_notch, ptr @x_tune_dvbt_demod_setting.bw6_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw6_nomi_b, ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_c, ptr @x_tune_dvbt_demod_setting.bw6_mrc_a, ptr @x_tune_dvbt_demod_setting.bw6_mrc_b, ptr @x_tune_dvbt_demod_setting.bw6_mrc_c, ptr @x_tune_dvbt_demod_setting.bw6_notch, ptr @x_tune_dvbt_demod_setting.bw5_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw5_nomi_b, ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_c, ptr @x_tune_dvbt_demod_setting.bw5_mrc_a, ptr @x_tune_dvbt_demod_setting.bw5_mrc_b, ptr @x_tune_dvbt_demod_setting.bw5_mrc_c, ptr @x_tune_dvbt_demod_setting.bw5_notch, ptr @tune_dmd_setting_seq1, ptr @tune_dmd_setting_seq2, ptr @tune_dmd_setting_seq3, ptr @tune_dmd_setting_seq4, ptr @tune_dmd_setting_seq5, ptr @sleep_dmd_setting_seq1, ptr @sleep_dmd_setting_seq2, ptr @switch.table.x_tune_dvbt_demod_setting, ptr @switch.table.x_tune_dvbt_demod_setting.1, ptr @switch.table.x_tune_dvbt_demod_setting.2, ptr @switch.table.x_tune_dvbt_demod_setting.3, ptr @switch.table.x_tune_dvbt_demod_setting.4, ptr @switch.table.x_tune_dvbt_demod_setting.5, ptr @switch.table.x_tune_dvbt_demod_setting.6, ptr @switch.table.x_tune_dvbt_demod_setting.7, ptr @switch.table.x_tune_dvbt_demod_setting.8, ptr @switch.table.x_tune_dvbt_demod_setting.9, ptr @switch.table.x_tune_dvbt_demod_setting.10, ptr @switch.table.x_tune_dvbt_demod_setting.11, ptr @switch.table.x_tune_dvbt_demod_setting.12, ptr @switch.table.x_tune_dvbt_demod_setting.13], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.ratectl_margin to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.maxclkcnt_a to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.maxclkcnt_b to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.maxclkcnt_c to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw8_nomi_ac to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw8_nomi_b to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw8_mrc_a to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw8_mrc_b to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw8_mrc_c to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw8_notch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw7_nomi_ac to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw7_nomi_b to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw7_mrc_a to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw7_mrc_b to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw7_mrc_c to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw7_notch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw6_nomi_ac to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw6_nomi_b to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw6_mrc_a to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw6_mrc_b to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw6_mrc_c to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw6_notch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw5_nomi_ac to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw5_nomi_b to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw5_mrc_a to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw5_mrc_b to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw5_mrc_c to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt_demod_setting.bw5_notch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_dmd_setting_seq1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_dmd_setting_seq2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_dmd_setting_seq3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_dmd_setting_seq4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_dmd_setting_seq5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sleep_dmd_setting_seq1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sleep_dmd_setting_seq2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt_demod_setting.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_tune1(ptr noundef %tnr_dmd, ptr noundef readonly %tune_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %tune_param, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %tune_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tune_param, align 4
  %bandwidth = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, ptr %tune_param, i32 0, i32 1
  %6 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bandwidth, align 4
  %call = tail call i32 @cxd2880_tnrdmd_common_tune_setting1(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i32 noundef %5, i32 noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bandwidth, align 4
  %clk_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 23
  %10 = ptrtoint ptr %clk_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_mode, align 4
  %call13 = tail call fastcc i32 @x_tune_dvbt_demod_setting(ptr noundef nonnull %tnr_dmd, i32 noundef %9, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp18 = icmp eq i32 %13, 1
  br i1 %cmp18, label %if.then19, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then19:                                        ; preds = %if.end16
  %14 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tnr_dmd, align 4
  %16 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bandwidth, align 4
  %clk_mode22 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 23
  %18 = ptrtoint ptr %clk_mode22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_mode22, align 4
  %call23 = tail call fastcc i32 @x_tune_dvbt_demod_setting(ptr noundef %15, i32 noundef %17, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then19.if.end27_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.end27:                                         ; preds = %if.then19.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %profile = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, ptr %tune_param, i32 0, i32 2
  %20 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %profile, align 4
  %call28 = tail call fastcc i32 @dvbt_set_profile(ptr noundef nonnull %tnr_dmd, i32 noundef %21)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ %call23, %if.then19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting1(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x_tune_dvbt_demod_setting(ptr noundef readonly %tnr_dmd, i32 noundef %bandwidth, i32 noundef %clk_mode) unnamed_addr #0 align 64 {
entry:
  %data26 = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup431_crit_edge, label %if.end

entry.cleanup431_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %call = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @tune_dmd_setting_seq1, i8 noundef zeroext 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup431_crit_edge

if.end.cleanup431_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call6 = tail call i32 %5(ptr noundef %3, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup431_crit_edge

if.end3.cleanup431_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end9:                                          ; preds = %if.end3
  %switch.tableidx = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %if.end9.cleanup431_crit_edge

if.end9.cleanup431_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup:                                    ; preds = %if.end9
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_regs, align 4
  %call14 = tail call i32 %11(ptr noundef %9, i32 noundef 1, i8 noundef zeroext 101, ptr noundef nonnull %switch.load, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %switch.lookup.cleanup431_crit_edge

switch.lookup.cleanup431_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end17:                                         ; preds = %switch.lookup
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  %write_reg19 = getelementptr inbounds %struct.cxd2880_io, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write_reg19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg19, align 4
  %call21 = tail call i32 %15(ptr noundef %13, i32 noundef 1, i8 noundef zeroext 93, i8 noundef zeroext 7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end17.cleanup431_crit_edge

if.end17.cleanup431_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end24:                                         ; preds = %if.end17
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %16 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not = icmp eq i32 %17, 2
  br i1 %cmp.not, label %if.end24.if.end41_crit_edge, label %if.then25

if.end24.if.end41_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then25:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data26) #3
  %18 = ptrtoint ptr %data26 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 257, ptr %data26, align 2
  %19 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io, align 4
  %write_reg28 = getelementptr inbounds %struct.cxd2880_io, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg28, align 4
  %call30 = tail call i32 %22(ptr noundef %20, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data26) #3
  br label %cleanup431

cleanup:                                          ; preds = %if.then25
  %23 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io, align 4
  %write_regs35 = getelementptr inbounds %struct.cxd2880_io, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_regs35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_regs35, align 4
  %call37 = call i32 %26(ptr noundef %24, i32 noundef 1, i8 noundef zeroext -50, ptr noundef nonnull %data26, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data26) #3
  br i1 %tobool38.not, label %cleanup.if.end41_crit_edge, label %cleanup.cleanup431_crit_edge

cleanup.cleanup431_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

cleanup.if.end41_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.end41:                                         ; preds = %cleanup.if.end41_crit_edge, %if.end24.if.end41_crit_edge
  %27 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io, align 4
  %call43 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @tune_dmd_setting_seq2, i8 noundef zeroext 7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.cleanup431_crit_edge

if.end41.cleanup431_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end46:                                         ; preds = %if.end41
  %29 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io, align 4
  %write_regs48 = getelementptr inbounds %struct.cxd2880_io, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_regs48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_regs48, align 4
  %call50 = call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext -16, ptr noundef nonnull @x_tune_dvbt_demod_setting.ratectl_margin, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end46.cleanup431_crit_edge

if.end46.cleanup431_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end53:                                         ; preds = %if.end46
  %33 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %diver_mode, align 4
  %.off = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then58, label %if.end53.if.then76_crit_edge

if.end53.if.then76_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then76

if.then58:                                        ; preds = %if.end53
  %35 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io, align 4
  %call60 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %36, i32 noundef 1, ptr noundef nonnull @tune_dmd_setting_seq3, i8 noundef zeroext 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end64, label %if.then58.cleanup431_crit_edge

if.then58.cleanup431_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end64:                                         ; preds = %if.then58
  %37 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp66 = icmp eq i32 %.pr, 2
  br i1 %cmp66, label %if.then67, label %if.end64.if.then76_crit_edge

if.end64.if.then76_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then76

if.then67:                                        ; preds = %if.end64
  %38 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io, align 4
  %call69 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %39, i32 noundef 1, ptr noundef nonnull @tune_dmd_setting_seq4, i8 noundef zeroext 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end73, label %if.then67.cleanup431_crit_edge

if.then67.cleanup431_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end73:                                         ; preds = %if.then67
  %40 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr659 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr659)
  %cmp75.not = icmp eq i32 %.pr659, 2
  br i1 %cmp75.not, label %if.end73.if.end96_crit_edge, label %if.end73.if.then76_crit_edge

if.end73.if.then76_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then76

if.end73.if.end96_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end96

if.then76:                                        ; preds = %if.end73.if.then76_crit_edge, %if.end64.if.then76_crit_edge, %if.end53.if.then76_crit_edge
  %41 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io, align 4
  %write_reg78 = getelementptr inbounds %struct.cxd2880_io, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %write_reg78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg78, align 4
  %call80 = call i32 %44(ptr noundef %42, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.then76.cleanup431_crit_edge

if.then76.cleanup431_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end83:                                         ; preds = %if.then76
  %switch.tableidx662 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx662)
  %45 = icmp ult i32 %switch.tableidx662, 3
  br i1 %45, label %switch.lookup661, label %if.end83.cleanup431_crit_edge

if.end83.cleanup431_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup661:                                 ; preds = %if.end83
  %switch.gep663 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.1, i32 0, i32 %switch.tableidx662
  %46 = ptrtoint ptr %switch.gep663 to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load664 = load ptr, ptr %switch.gep663, align 4
  %47 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io, align 4
  %write_regs90 = getelementptr inbounds %struct.cxd2880_io, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_regs90 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_regs90, align 4
  %call92 = call i32 %50(ptr noundef %48, i32 noundef 1, i8 noundef zeroext 104, ptr noundef nonnull %switch.load664, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %switch.lookup661.if.end96_crit_edge, label %switch.lookup661.cleanup431_crit_edge

switch.lookup661.cleanup431_crit_edge:            ; preds = %switch.lookup661
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup661.if.end96_crit_edge:              ; preds = %switch.lookup661
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end96

if.end96:                                         ; preds = %switch.lookup661.if.end96_crit_edge, %if.end73.if.end96_crit_edge
  %51 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io, align 4
  %write_reg98 = getelementptr inbounds %struct.cxd2880_io, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %write_reg98 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_reg98, align 4
  %call100 = call i32 %54(ptr noundef %52, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end96.cleanup431_crit_edge

if.end96.cleanup431_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end103:                                        ; preds = %if.end96
  %55 = zext i32 %bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bandwidth, label %if.end103.cleanup431_crit_edge [
    i32 8, label %sw.bb104
    i32 7, label %sw.bb184
    i32 6, label %sw.bb265
    i32 5, label %sw.bb346
  ]

if.end103.cleanup431_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

sw.bb104:                                         ; preds = %if.end103
  %switch.tableidx666 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx666)
  %56 = icmp ult i32 %switch.tableidx666, 3
  br i1 %56, label %switch.lookup665, label %sw.bb104.cleanup431_crit_edge

sw.bb104.cleanup431_crit_edge:                    ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup665:                                 ; preds = %sw.bb104
  %switch.gep667 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.2, i32 0, i32 %switch.tableidx666
  %57 = ptrtoint ptr %switch.gep667 to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load668 = load ptr, ptr %switch.gep667, align 4
  %58 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io, align 4
  %write_regs110 = getelementptr inbounds %struct.cxd2880_io, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_regs110 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_regs110, align 4
  %call112 = call i32 %61(ptr noundef %59, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %switch.load668, i32 noundef 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %switch.lookup665.cleanup431_crit_edge

switch.lookup665.cleanup431_crit_edge:            ; preds = %switch.lookup665
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end115:                                        ; preds = %switch.lookup665
  %62 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io, align 4
  %write_reg117 = getelementptr inbounds %struct.cxd2880_io, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %write_reg117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_reg117, align 4
  %call119 = call i32 %65(ptr noundef %63, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end115.cleanup431_crit_edge

if.end115.cleanup431_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end122:                                        ; preds = %if.end115
  %switch.tableidx670 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx670)
  %66 = icmp ult i32 %switch.tableidx670, 3
  br i1 %66, label %switch.lookup669, label %if.end122.cleanup431_crit_edge

if.end122.cleanup431_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup669:                                 ; preds = %if.end122
  %switch.gep671 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.3, i32 0, i32 %switch.tableidx670
  %67 = ptrtoint ptr %switch.gep671 to i32
  call void @__asan_load4_noabort(i32 %67)
  %switch.load672 = load ptr, ptr %switch.gep671, align 4
  %68 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io, align 4
  %write_regs129 = getelementptr inbounds %struct.cxd2880_io, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %write_regs129 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_regs129, align 4
  %call131 = call i32 %71(ptr noundef %69, i32 noundef 1, i8 noundef zeroext 125, ptr noundef nonnull %switch.load672, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %switch.lookup669.cleanup431_crit_edge

switch.lookup669.cleanup431_crit_edge:            ; preds = %switch.lookup669
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end134:                                        ; preds = %switch.lookup669
  %switch.tableidx674 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx674)
  %72 = icmp ult i32 %switch.tableidx674, 3
  br i1 %72, label %switch.lookup673, label %if.end134.cleanup431_crit_edge

if.end134.cleanup431_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup673:                                 ; preds = %if.end134
  %switch.cast = trunc i32 %switch.tableidx674 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 3421493, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %73 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %io, align 4
  %write_reg140 = getelementptr inbounds %struct.cxd2880_io, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %write_reg140 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_reg140, align 4
  %call142 = call i32 %76(ptr noundef %74, i32 noundef 1, i8 noundef zeroext 113, i8 noundef zeroext %switch.masked) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %switch.lookup673.cleanup431_crit_edge

switch.lookup673.cleanup431_crit_edge:            ; preds = %switch.lookup673
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end145:                                        ; preds = %switch.lookup673
  %77 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp147 = icmp eq i32 %78, 1
  br i1 %cmp147, label %if.then148, label %if.end145.if.end169_crit_edge

if.end145.if.end169_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end169

if.then148:                                       ; preds = %if.end145
  %switch.tableidx676 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx676)
  %79 = icmp ult i32 %switch.tableidx676, 3
  br i1 %79, label %switch.lookup675, label %if.then148.cleanup431_crit_edge

if.then148.cleanup431_crit_edge:                  ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup675:                                 ; preds = %if.then148
  %switch.gep677 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.4, i32 0, i32 %switch.tableidx676
  %80 = ptrtoint ptr %switch.gep677 to i32
  call void @__asan_load4_noabort(i32 %80)
  %switch.load678 = load ptr, ptr %switch.gep677, align 4
  %81 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io, align 4
  %write_regs155 = getelementptr inbounds %struct.cxd2880_io, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %write_regs155 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write_regs155, align 4
  %call157 = call i32 %84(ptr noundef %82, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %switch.load678, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %switch.lookup675.cleanup431_crit_edge

switch.lookup675.cleanup431_crit_edge:            ; preds = %switch.lookup675
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end160:                                        ; preds = %switch.lookup675
  %85 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %io, align 4
  %write_regs162 = getelementptr inbounds %struct.cxd2880_io, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %write_regs162 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_regs162, align 4
  %arrayidx164 = getelementptr i8, ptr %switch.load678, i32 2
  %call165 = call i32 %88(ptr noundef %86, i32 noundef 1, i8 noundef zeroext 81, ptr noundef %arrayidx164, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end160.if.end169_crit_edge, label %if.end160.cleanup431_crit_edge

if.end160.cleanup431_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end160.if.end169_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end169

if.end169:                                        ; preds = %if.end160.if.end169_crit_edge, %if.end145.if.end169_crit_edge
  %89 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %io, align 4
  %write_regs171 = getelementptr inbounds %struct.cxd2880_io, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %write_regs171 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_regs171, align 4
  %call173 = call i32 %92(ptr noundef %90, i32 noundef 1, i8 noundef zeroext 114, ptr noundef nonnull @x_tune_dvbt_demod_setting.bw8_notch, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.end169.cleanup431_crit_edge

if.end169.cleanup431_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end176:                                        ; preds = %if.end169
  %93 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %io, align 4
  %write_regs178 = getelementptr inbounds %struct.cxd2880_io, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %write_regs178 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write_regs178, align 4
  %call180 = call i32 %96(ptr noundef %94, i32 noundef 1, i8 noundef zeroext 107, ptr noundef getelementptr inbounds ([4 x i8], ptr @x_tune_dvbt_demod_setting.bw8_notch, i32 0, i32 2), i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end176.sw.epilog428_crit_edge, label %if.end176.cleanup431_crit_edge

if.end176.cleanup431_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end176.sw.epilog428_crit_edge:                 ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog428

sw.bb184:                                         ; preds = %if.end103
  %switch.tableidx680 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx680)
  %97 = icmp ult i32 %switch.tableidx680, 3
  br i1 %97, label %switch.lookup679, label %sw.bb184.cleanup431_crit_edge

sw.bb184.cleanup431_crit_edge:                    ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup679:                                 ; preds = %sw.bb184
  %switch.gep681 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.5, i32 0, i32 %switch.tableidx680
  %98 = ptrtoint ptr %switch.gep681 to i32
  call void @__asan_load4_noabort(i32 %98)
  %switch.load682 = load ptr, ptr %switch.gep681, align 4
  %99 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io, align 4
  %write_regs190 = getelementptr inbounds %struct.cxd2880_io, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_regs190 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_regs190, align 4
  %call192 = call i32 %102(ptr noundef %100, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %switch.load682, i32 noundef 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.end195, label %switch.lookup679.cleanup431_crit_edge

switch.lookup679.cleanup431_crit_edge:            ; preds = %switch.lookup679
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end195:                                        ; preds = %switch.lookup679
  %103 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %io, align 4
  %write_reg197 = getelementptr inbounds %struct.cxd2880_io, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %write_reg197 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write_reg197, align 4
  %call199 = call i32 %106(ptr noundef %104, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end195.cleanup431_crit_edge

if.end195.cleanup431_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end202:                                        ; preds = %if.end195
  %switch.tableidx684 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx684)
  %107 = icmp ult i32 %switch.tableidx684, 3
  br i1 %107, label %switch.lookup683, label %if.end202.cleanup431_crit_edge

if.end202.cleanup431_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup683:                                 ; preds = %if.end202
  %switch.gep685 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.6, i32 0, i32 %switch.tableidx684
  %108 = ptrtoint ptr %switch.gep685 to i32
  call void @__asan_load4_noabort(i32 %108)
  %switch.load686 = load ptr, ptr %switch.gep685, align 4
  %109 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %io, align 4
  %write_regs209 = getelementptr inbounds %struct.cxd2880_io, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %write_regs209 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write_regs209, align 4
  %call211 = call i32 %112(ptr noundef %110, i32 noundef 1, i8 noundef zeroext 125, ptr noundef nonnull %switch.load686, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end214, label %switch.lookup683.cleanup431_crit_edge

switch.lookup683.cleanup431_crit_edge:            ; preds = %switch.lookup683
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end214:                                        ; preds = %switch.lookup683
  %switch.tableidx688 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx688)
  %113 = icmp ult i32 %switch.tableidx688, 3
  br i1 %113, label %switch.lookup687, label %if.end214.cleanup431_crit_edge

if.end214.cleanup431_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup687:                                 ; preds = %if.end214
  %switch.cast689 = trunc i32 %switch.tableidx688 to i24
  %switch.shiftamt690 = shl i24 %switch.cast689, 3
  %switch.downshift691 = lshr i24 3026735, %switch.shiftamt690
  %switch.masked692 = trunc i24 %switch.downshift691 to i8
  %114 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %io, align 4
  %write_reg220 = getelementptr inbounds %struct.cxd2880_io, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %write_reg220 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write_reg220, align 4
  %call222 = call i32 %117(ptr noundef %115, i32 noundef 1, i8 noundef zeroext 113, i8 noundef zeroext %switch.masked692) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.end225, label %switch.lookup687.cleanup431_crit_edge

switch.lookup687.cleanup431_crit_edge:            ; preds = %switch.lookup687
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end225:                                        ; preds = %switch.lookup687
  %118 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp227 = icmp eq i32 %119, 1
  br i1 %cmp227, label %if.then228, label %if.end225.if.end250_crit_edge

if.end225.if.end250_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end250

if.then228:                                       ; preds = %if.end225
  %switch.tableidx694 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx694)
  %120 = icmp ult i32 %switch.tableidx694, 3
  br i1 %120, label %switch.lookup693, label %if.then228.cleanup431_crit_edge

if.then228.cleanup431_crit_edge:                  ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup693:                                 ; preds = %if.then228
  %switch.gep695 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.7, i32 0, i32 %switch.tableidx694
  %121 = ptrtoint ptr %switch.gep695 to i32
  call void @__asan_load4_noabort(i32 %121)
  %switch.load696 = load ptr, ptr %switch.gep695, align 4
  %122 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %io, align 4
  %write_regs235 = getelementptr inbounds %struct.cxd2880_io, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %write_regs235 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write_regs235, align 4
  %call238 = call i32 %125(ptr noundef %123, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %switch.load696, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end241, label %switch.lookup693.cleanup431_crit_edge

switch.lookup693.cleanup431_crit_edge:            ; preds = %switch.lookup693
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end241:                                        ; preds = %switch.lookup693
  %126 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %io, align 4
  %write_regs243 = getelementptr inbounds %struct.cxd2880_io, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %write_regs243 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write_regs243, align 4
  %arrayidx245 = getelementptr i8, ptr %switch.load696, i32 2
  %call246 = call i32 %129(ptr noundef %127, i32 noundef 1, i8 noundef zeroext 81, ptr noundef %arrayidx245, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.end241.if.end250_crit_edge, label %if.end241.cleanup431_crit_edge

if.end241.cleanup431_crit_edge:                   ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end241.if.end250_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end250

if.end250:                                        ; preds = %if.end241.if.end250_crit_edge, %if.end225.if.end250_crit_edge
  %130 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %io, align 4
  %write_regs252 = getelementptr inbounds %struct.cxd2880_io, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %write_regs252 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write_regs252, align 4
  %call254 = call i32 %133(ptr noundef %131, i32 noundef 1, i8 noundef zeroext 114, ptr noundef nonnull @x_tune_dvbt_demod_setting.bw7_notch, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %if.end257, label %if.end250.cleanup431_crit_edge

if.end250.cleanup431_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end257:                                        ; preds = %if.end250
  %134 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %io, align 4
  %write_regs259 = getelementptr inbounds %struct.cxd2880_io, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %write_regs259 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write_regs259, align 4
  %call261 = call i32 %137(ptr noundef %135, i32 noundef 1, i8 noundef zeroext 107, ptr noundef getelementptr inbounds ([4 x i8], ptr @x_tune_dvbt_demod_setting.bw7_notch, i32 0, i32 2), i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end257.sw.epilog428_crit_edge, label %if.end257.cleanup431_crit_edge

if.end257.cleanup431_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end257.sw.epilog428_crit_edge:                 ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog428

sw.bb265:                                         ; preds = %if.end103
  %switch.tableidx698 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx698)
  %138 = icmp ult i32 %switch.tableidx698, 3
  br i1 %138, label %switch.lookup697, label %sw.bb265.cleanup431_crit_edge

sw.bb265.cleanup431_crit_edge:                    ; preds = %sw.bb265
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup697:                                 ; preds = %sw.bb265
  %switch.gep699 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.8, i32 0, i32 %switch.tableidx698
  %139 = ptrtoint ptr %switch.gep699 to i32
  call void @__asan_load4_noabort(i32 %139)
  %switch.load700 = load ptr, ptr %switch.gep699, align 4
  %140 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %io, align 4
  %write_regs271 = getelementptr inbounds %struct.cxd2880_io, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %write_regs271 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write_regs271, align 4
  %call273 = call i32 %143(ptr noundef %141, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %switch.load700, i32 noundef 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.end276, label %switch.lookup697.cleanup431_crit_edge

switch.lookup697.cleanup431_crit_edge:            ; preds = %switch.lookup697
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end276:                                        ; preds = %switch.lookup697
  %144 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %io, align 4
  %write_reg278 = getelementptr inbounds %struct.cxd2880_io, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %write_reg278 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write_reg278, align 4
  %call280 = call i32 %147(ptr noundef %145, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %tobool281.not = icmp eq i32 %call280, 0
  br i1 %tobool281.not, label %if.end283, label %if.end276.cleanup431_crit_edge

if.end276.cleanup431_crit_edge:                   ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end283:                                        ; preds = %if.end276
  %switch.tableidx702 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx702)
  %148 = icmp ult i32 %switch.tableidx702, 3
  br i1 %148, label %switch.lookup701, label %if.end283.cleanup431_crit_edge

if.end283.cleanup431_crit_edge:                   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup701:                                 ; preds = %if.end283
  %switch.gep703 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.9, i32 0, i32 %switch.tableidx702
  %149 = ptrtoint ptr %switch.gep703 to i32
  call void @__asan_load4_noabort(i32 %149)
  %switch.load704 = load ptr, ptr %switch.gep703, align 4
  %150 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %io, align 4
  %write_regs290 = getelementptr inbounds %struct.cxd2880_io, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %write_regs290 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write_regs290, align 4
  %call292 = call i32 %153(ptr noundef %151, i32 noundef 1, i8 noundef zeroext 125, ptr noundef nonnull %switch.load704, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %if.end295, label %switch.lookup701.cleanup431_crit_edge

switch.lookup701.cleanup431_crit_edge:            ; preds = %switch.lookup701
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end295:                                        ; preds = %switch.lookup701
  %switch.tableidx706 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx706)
  %154 = icmp ult i32 %switch.tableidx706, 3
  br i1 %154, label %switch.lookup705, label %if.end295.cleanup431_crit_edge

if.end295.cleanup431_crit_edge:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup705:                                 ; preds = %if.end295
  %switch.cast707 = trunc i32 %switch.tableidx706 to i24
  %switch.shiftamt708 = shl i24 %switch.cast707, 3
  %switch.downshift709 = lshr i24 2697769, %switch.shiftamt708
  %switch.masked710 = trunc i24 %switch.downshift709 to i8
  %155 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %io, align 4
  %write_reg301 = getelementptr inbounds %struct.cxd2880_io, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %write_reg301 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write_reg301, align 4
  %call303 = call i32 %158(ptr noundef %156, i32 noundef 1, i8 noundef zeroext 113, i8 noundef zeroext %switch.masked710) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.end306, label %switch.lookup705.cleanup431_crit_edge

switch.lookup705.cleanup431_crit_edge:            ; preds = %switch.lookup705
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end306:                                        ; preds = %switch.lookup705
  %159 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp308 = icmp eq i32 %160, 1
  br i1 %cmp308, label %if.then309, label %if.end306.if.end331_crit_edge

if.end306.if.end331_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end331

if.then309:                                       ; preds = %if.end306
  %switch.tableidx712 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx712)
  %161 = icmp ult i32 %switch.tableidx712, 3
  br i1 %161, label %switch.lookup711, label %if.then309.cleanup431_crit_edge

if.then309.cleanup431_crit_edge:                  ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup711:                                 ; preds = %if.then309
  %switch.gep713 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.10, i32 0, i32 %switch.tableidx712
  %162 = ptrtoint ptr %switch.gep713 to i32
  call void @__asan_load4_noabort(i32 %162)
  %switch.load714 = load ptr, ptr %switch.gep713, align 4
  %163 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %io, align 4
  %write_regs316 = getelementptr inbounds %struct.cxd2880_io, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %write_regs316 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write_regs316, align 4
  %call319 = call i32 %166(ptr noundef %164, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %switch.load714, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.end322, label %switch.lookup711.cleanup431_crit_edge

switch.lookup711.cleanup431_crit_edge:            ; preds = %switch.lookup711
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end322:                                        ; preds = %switch.lookup711
  %167 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %io, align 4
  %write_regs324 = getelementptr inbounds %struct.cxd2880_io, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %write_regs324 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write_regs324, align 4
  %arrayidx326 = getelementptr i8, ptr %switch.load714, i32 2
  %call327 = call i32 %170(ptr noundef %168, i32 noundef 1, i8 noundef zeroext 81, ptr noundef %arrayidx326, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call327)
  %tobool328.not = icmp eq i32 %call327, 0
  br i1 %tobool328.not, label %if.end322.if.end331_crit_edge, label %if.end322.cleanup431_crit_edge

if.end322.cleanup431_crit_edge:                   ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end322.if.end331_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end331

if.end331:                                        ; preds = %if.end322.if.end331_crit_edge, %if.end306.if.end331_crit_edge
  %171 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %io, align 4
  %write_regs333 = getelementptr inbounds %struct.cxd2880_io, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %write_regs333 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write_regs333, align 4
  %call335 = call i32 %174(ptr noundef %172, i32 noundef 1, i8 noundef zeroext 114, ptr noundef nonnull @x_tune_dvbt_demod_setting.bw6_notch, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %if.end338, label %if.end331.cleanup431_crit_edge

if.end331.cleanup431_crit_edge:                   ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end338:                                        ; preds = %if.end331
  %175 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %io, align 4
  %write_regs340 = getelementptr inbounds %struct.cxd2880_io, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %write_regs340 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write_regs340, align 4
  %call342 = call i32 %178(ptr noundef %176, i32 noundef 1, i8 noundef zeroext 107, ptr noundef getelementptr inbounds ([4 x i8], ptr @x_tune_dvbt_demod_setting.bw6_notch, i32 0, i32 2), i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %if.end338.sw.epilog428_crit_edge, label %if.end338.cleanup431_crit_edge

if.end338.cleanup431_crit_edge:                   ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end338.sw.epilog428_crit_edge:                 ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog428

sw.bb346:                                         ; preds = %if.end103
  %switch.tableidx716 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx716)
  %179 = icmp ult i32 %switch.tableidx716, 3
  br i1 %179, label %switch.lookup715, label %sw.bb346.cleanup431_crit_edge

sw.bb346.cleanup431_crit_edge:                    ; preds = %sw.bb346
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup715:                                 ; preds = %sw.bb346
  %switch.gep717 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.11, i32 0, i32 %switch.tableidx716
  %180 = ptrtoint ptr %switch.gep717 to i32
  call void @__asan_load4_noabort(i32 %180)
  %switch.load718 = load ptr, ptr %switch.gep717, align 4
  %181 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %io, align 4
  %write_regs352 = getelementptr inbounds %struct.cxd2880_io, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %write_regs352 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write_regs352, align 4
  %call354 = call i32 %184(ptr noundef %182, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %switch.load718, i32 noundef 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %if.end357, label %switch.lookup715.cleanup431_crit_edge

switch.lookup715.cleanup431_crit_edge:            ; preds = %switch.lookup715
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end357:                                        ; preds = %switch.lookup715
  %185 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %io, align 4
  %write_reg359 = getelementptr inbounds %struct.cxd2880_io, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %write_reg359 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write_reg359, align 4
  %call361 = call i32 %188(ptr noundef %186, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %tobool362.not = icmp eq i32 %call361, 0
  br i1 %tobool362.not, label %if.end364, label %if.end357.cleanup431_crit_edge

if.end357.cleanup431_crit_edge:                   ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end364:                                        ; preds = %if.end357
  %switch.tableidx720 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx720)
  %189 = icmp ult i32 %switch.tableidx720, 3
  br i1 %189, label %switch.lookup719, label %if.end364.cleanup431_crit_edge

if.end364.cleanup431_crit_edge:                   ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup719:                                 ; preds = %if.end364
  %switch.gep721 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.12, i32 0, i32 %switch.tableidx720
  %190 = ptrtoint ptr %switch.gep721 to i32
  call void @__asan_load4_noabort(i32 %190)
  %switch.load722 = load ptr, ptr %switch.gep721, align 4
  %191 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %io, align 4
  %write_regs371 = getelementptr inbounds %struct.cxd2880_io, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %write_regs371 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write_regs371, align 4
  %call373 = call i32 %194(ptr noundef %192, i32 noundef 1, i8 noundef zeroext 125, ptr noundef nonnull %switch.load722, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.end376, label %switch.lookup719.cleanup431_crit_edge

switch.lookup719.cleanup431_crit_edge:            ; preds = %switch.lookup719
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end376:                                        ; preds = %switch.lookup719
  %switch.tableidx724 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx724)
  %195 = icmp ult i32 %switch.tableidx724, 3
  br i1 %195, label %switch.lookup723, label %if.end376.cleanup431_crit_edge

if.end376.cleanup431_crit_edge:                   ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup723:                                 ; preds = %if.end376
  %switch.cast725 = trunc i32 %switch.tableidx724 to i24
  %switch.shiftamt726 = shl i24 %switch.cast725, 3
  %switch.downshift727 = lshr i24 2303012, %switch.shiftamt726
  %switch.masked728 = trunc i24 %switch.downshift727 to i8
  %196 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %io, align 4
  %write_reg382 = getelementptr inbounds %struct.cxd2880_io, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %write_reg382 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %write_reg382, align 4
  %call384 = call i32 %199(ptr noundef %197, i32 noundef 1, i8 noundef zeroext 113, i8 noundef zeroext %switch.masked728) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call384)
  %tobool385.not = icmp eq i32 %call384, 0
  br i1 %tobool385.not, label %if.end387, label %switch.lookup723.cleanup431_crit_edge

switch.lookup723.cleanup431_crit_edge:            ; preds = %switch.lookup723
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end387:                                        ; preds = %switch.lookup723
  %200 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %201)
  %cmp389 = icmp eq i32 %201, 1
  br i1 %cmp389, label %if.then390, label %if.end387.if.end412_crit_edge

if.end387.if.end412_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end412

if.then390:                                       ; preds = %if.end387
  %switch.tableidx730 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx730)
  %202 = icmp ult i32 %switch.tableidx730, 3
  br i1 %202, label %switch.lookup729, label %if.then390.cleanup431_crit_edge

if.then390.cleanup431_crit_edge:                  ; preds = %if.then390
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

switch.lookup729:                                 ; preds = %if.then390
  %switch.gep731 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.13, i32 0, i32 %switch.tableidx730
  %203 = ptrtoint ptr %switch.gep731 to i32
  call void @__asan_load4_noabort(i32 %203)
  %switch.load732 = load ptr, ptr %switch.gep731, align 4
  %204 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %io, align 4
  %write_regs397 = getelementptr inbounds %struct.cxd2880_io, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %write_regs397 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %write_regs397, align 4
  %call400 = call i32 %207(ptr noundef %205, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %switch.load732, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call400)
  %tobool401.not = icmp eq i32 %call400, 0
  br i1 %tobool401.not, label %if.end403, label %switch.lookup729.cleanup431_crit_edge

switch.lookup729.cleanup431_crit_edge:            ; preds = %switch.lookup729
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end403:                                        ; preds = %switch.lookup729
  %208 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %io, align 4
  %write_regs405 = getelementptr inbounds %struct.cxd2880_io, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %write_regs405 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write_regs405, align 4
  %arrayidx407 = getelementptr i8, ptr %switch.load732, i32 2
  %call408 = call i32 %211(ptr noundef %209, i32 noundef 1, i8 noundef zeroext 81, ptr noundef %arrayidx407, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408)
  %tobool409.not = icmp eq i32 %call408, 0
  br i1 %tobool409.not, label %if.end403.if.end412_crit_edge, label %if.end403.cleanup431_crit_edge

if.end403.cleanup431_crit_edge:                   ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end403.if.end412_crit_edge:                    ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end412

if.end412:                                        ; preds = %if.end403.if.end412_crit_edge, %if.end387.if.end412_crit_edge
  %212 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %io, align 4
  %write_regs414 = getelementptr inbounds %struct.cxd2880_io, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %write_regs414 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %write_regs414, align 4
  %call416 = call i32 %215(ptr noundef %213, i32 noundef 1, i8 noundef zeroext 114, ptr noundef nonnull @x_tune_dvbt_demod_setting.bw5_notch, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call416)
  %tobool417.not = icmp eq i32 %call416, 0
  br i1 %tobool417.not, label %if.end419, label %if.end412.cleanup431_crit_edge

if.end412.cleanup431_crit_edge:                   ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end419:                                        ; preds = %if.end412
  %216 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %io, align 4
  %write_regs421 = getelementptr inbounds %struct.cxd2880_io, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %write_regs421 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %write_regs421, align 4
  %call423 = call i32 %219(ptr noundef %217, i32 noundef 1, i8 noundef zeroext 107, ptr noundef getelementptr inbounds ([4 x i8], ptr @x_tune_dvbt_demod_setting.bw5_notch, i32 0, i32 2), i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call423)
  %tobool424.not = icmp eq i32 %call423, 0
  br i1 %tobool424.not, label %if.end419.sw.epilog428_crit_edge, label %if.end419.cleanup431_crit_edge

if.end419.cleanup431_crit_edge:                   ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup431

if.end419.sw.epilog428_crit_edge:                 ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog428

sw.epilog428:                                     ; preds = %if.end419.sw.epilog428_crit_edge, %if.end338.sw.epilog428_crit_edge, %if.end257.sw.epilog428_crit_edge, %if.end176.sw.epilog428_crit_edge
  %220 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %io, align 4
  %call430 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %221, i32 noundef 1, ptr noundef nonnull @tune_dmd_setting_seq5, i8 noundef zeroext 2) #3
  br label %cleanup431

cleanup431:                                       ; preds = %sw.epilog428, %if.end419.cleanup431_crit_edge, %if.end412.cleanup431_crit_edge, %if.end403.cleanup431_crit_edge, %switch.lookup729.cleanup431_crit_edge, %if.then390.cleanup431_crit_edge, %switch.lookup723.cleanup431_crit_edge, %if.end376.cleanup431_crit_edge, %switch.lookup719.cleanup431_crit_edge, %if.end364.cleanup431_crit_edge, %if.end357.cleanup431_crit_edge, %switch.lookup715.cleanup431_crit_edge, %sw.bb346.cleanup431_crit_edge, %if.end338.cleanup431_crit_edge, %if.end331.cleanup431_crit_edge, %if.end322.cleanup431_crit_edge, %switch.lookup711.cleanup431_crit_edge, %if.then309.cleanup431_crit_edge, %switch.lookup705.cleanup431_crit_edge, %if.end295.cleanup431_crit_edge, %switch.lookup701.cleanup431_crit_edge, %if.end283.cleanup431_crit_edge, %if.end276.cleanup431_crit_edge, %switch.lookup697.cleanup431_crit_edge, %sw.bb265.cleanup431_crit_edge, %if.end257.cleanup431_crit_edge, %if.end250.cleanup431_crit_edge, %if.end241.cleanup431_crit_edge, %switch.lookup693.cleanup431_crit_edge, %if.then228.cleanup431_crit_edge, %switch.lookup687.cleanup431_crit_edge, %if.end214.cleanup431_crit_edge, %switch.lookup683.cleanup431_crit_edge, %if.end202.cleanup431_crit_edge, %if.end195.cleanup431_crit_edge, %switch.lookup679.cleanup431_crit_edge, %sw.bb184.cleanup431_crit_edge, %if.end176.cleanup431_crit_edge, %if.end169.cleanup431_crit_edge, %if.end160.cleanup431_crit_edge, %switch.lookup675.cleanup431_crit_edge, %if.then148.cleanup431_crit_edge, %switch.lookup673.cleanup431_crit_edge, %if.end134.cleanup431_crit_edge, %switch.lookup669.cleanup431_crit_edge, %if.end122.cleanup431_crit_edge, %if.end115.cleanup431_crit_edge, %switch.lookup665.cleanup431_crit_edge, %sw.bb104.cleanup431_crit_edge, %if.end103.cleanup431_crit_edge, %if.end96.cleanup431_crit_edge, %switch.lookup661.cleanup431_crit_edge, %if.end83.cleanup431_crit_edge, %if.then76.cleanup431_crit_edge, %if.then67.cleanup431_crit_edge, %if.then58.cleanup431_crit_edge, %if.end46.cleanup431_crit_edge, %if.end41.cleanup431_crit_edge, %cleanup.cleanup431_crit_edge, %cleanup.thread, %if.end17.cleanup431_crit_edge, %switch.lookup.cleanup431_crit_edge, %if.end9.cleanup431_crit_edge, %if.end3.cleanup431_crit_edge, %if.end.cleanup431_crit_edge, %entry.cleanup431_crit_edge
  %retval.1 = phi i32 [ %call430, %sw.epilog428 ], [ %call37, %cleanup.cleanup431_crit_edge ], [ -22, %entry.cleanup431_crit_edge ], [ %call, %if.end.cleanup431_crit_edge ], [ %call6, %if.end3.cleanup431_crit_edge ], [ -22, %if.end9.cleanup431_crit_edge ], [ %call14, %switch.lookup.cleanup431_crit_edge ], [ %call21, %if.end17.cleanup431_crit_edge ], [ %call43, %if.end41.cleanup431_crit_edge ], [ %call50, %if.end46.cleanup431_crit_edge ], [ %call60, %if.then58.cleanup431_crit_edge ], [ %call69, %if.then67.cleanup431_crit_edge ], [ %call80, %if.then76.cleanup431_crit_edge ], [ -22, %if.end83.cleanup431_crit_edge ], [ %call92, %switch.lookup661.cleanup431_crit_edge ], [ %call100, %if.end96.cleanup431_crit_edge ], [ -22, %sw.bb104.cleanup431_crit_edge ], [ %call112, %switch.lookup665.cleanup431_crit_edge ], [ %call119, %if.end115.cleanup431_crit_edge ], [ -22, %if.end122.cleanup431_crit_edge ], [ %call131, %switch.lookup669.cleanup431_crit_edge ], [ -22, %if.end134.cleanup431_crit_edge ], [ %call142, %switch.lookup673.cleanup431_crit_edge ], [ -22, %if.then148.cleanup431_crit_edge ], [ %call157, %switch.lookup675.cleanup431_crit_edge ], [ %call165, %if.end160.cleanup431_crit_edge ], [ %call173, %if.end169.cleanup431_crit_edge ], [ %call180, %if.end176.cleanup431_crit_edge ], [ -22, %sw.bb184.cleanup431_crit_edge ], [ %call192, %switch.lookup679.cleanup431_crit_edge ], [ %call199, %if.end195.cleanup431_crit_edge ], [ -22, %if.end202.cleanup431_crit_edge ], [ %call211, %switch.lookup683.cleanup431_crit_edge ], [ -22, %if.end214.cleanup431_crit_edge ], [ %call222, %switch.lookup687.cleanup431_crit_edge ], [ -22, %if.then228.cleanup431_crit_edge ], [ %call238, %switch.lookup693.cleanup431_crit_edge ], [ %call246, %if.end241.cleanup431_crit_edge ], [ %call254, %if.end250.cleanup431_crit_edge ], [ %call261, %if.end257.cleanup431_crit_edge ], [ -22, %sw.bb265.cleanup431_crit_edge ], [ %call273, %switch.lookup697.cleanup431_crit_edge ], [ %call280, %if.end276.cleanup431_crit_edge ], [ -22, %if.end283.cleanup431_crit_edge ], [ %call292, %switch.lookup701.cleanup431_crit_edge ], [ -22, %if.end295.cleanup431_crit_edge ], [ %call303, %switch.lookup705.cleanup431_crit_edge ], [ -22, %if.then309.cleanup431_crit_edge ], [ %call319, %switch.lookup711.cleanup431_crit_edge ], [ %call327, %if.end322.cleanup431_crit_edge ], [ %call335, %if.end331.cleanup431_crit_edge ], [ %call342, %if.end338.cleanup431_crit_edge ], [ -22, %sw.bb346.cleanup431_crit_edge ], [ %call354, %switch.lookup715.cleanup431_crit_edge ], [ %call361, %if.end357.cleanup431_crit_edge ], [ -22, %if.end364.cleanup431_crit_edge ], [ %call373, %switch.lookup719.cleanup431_crit_edge ], [ -22, %if.end376.cleanup431_crit_edge ], [ %call384, %switch.lookup723.cleanup431_crit_edge ], [ -22, %if.then390.cleanup431_crit_edge ], [ %call400, %switch.lookup729.cleanup431_crit_edge ], [ %call408, %if.end403.cleanup431_crit_edge ], [ %call416, %if.end412.cleanup431_crit_edge ], [ %call423, %if.end419.cleanup431_crit_edge ], [ -22, %if.end103.cleanup431_crit_edge ], [ %call30, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_set_profile(ptr noundef readonly %tnr_dmd, i32 noundef %profile) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 4
  %write_reg6 = getelementptr inbounds %struct.cxd2880_io, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %write_reg6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %profile)
  %cmp = icmp ne i32 %profile, 0
  %conv = zext i1 %cmp to i8
  %call8 = tail call i32 %7(ptr noundef %5, i32 noundef 1, i8 noundef zeroext 103, i8 noundef zeroext %conv) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_tune2(ptr noundef %tnr_dmd, ptr noundef readonly %tune_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %tune_param, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call = tail call i32 @cxd2880_tnrdmd_common_tune_setting2(ptr noundef nonnull %tnr_dmd, i32 noundef 1, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state, align 4
  %5 = ptrtoint ptr %tune_param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tune_param, align 4
  %frequency_khz = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 24
  %7 = ptrtoint ptr %frequency_khz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %frequency_khz, align 4
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %8 = ptrtoint ptr %sys to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %sys, align 4
  %bandwidth = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, ptr %tune_param, i32 0, i32 1
  %9 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bandwidth, align 4
  %bandwidth13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 26
  %11 = ptrtoint ptr %bandwidth13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bandwidth13, align 4
  %12 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp15 = icmp eq i32 %13, 1
  br i1 %cmp15, label %if.then16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tnr_dmd, align 4
  %state17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %state17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %state17, align 4
  %17 = ptrtoint ptr %tune_param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tune_param, align 4
  %19 = load ptr, ptr %tnr_dmd, align 4
  %frequency_khz20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %frequency_khz20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %frequency_khz20, align 4
  %21 = load ptr, ptr %tnr_dmd, align 4
  %sys22 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %21, i32 0, i32 25
  %22 = ptrtoint ptr %sys22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %sys22, align 4
  %23 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bandwidth, align 4
  %25 = load ptr, ptr %tnr_dmd, align 4
  %bandwidth25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %25, i32 0, i32 26
  %26 = ptrtoint ptr %bandwidth25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %bandwidth25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting2(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_sleep_setting(ptr noundef readonly %tnr_dmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end.i, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end2
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io.i, align 4
  %call.i = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @sleep_dmd_setting_seq1, i8 noundef zeroext 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %x_sleep_dvbt_demod_setting.exit, label %if.end3.i.if.end10_crit_edge

if.end3.i.if.end10_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

x_sleep_dvbt_demod_setting.exit:                  ; preds = %if.end3.i
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io.i, align 4
  %call6.i = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @sleep_dmd_setting_seq2, i8 noundef zeroext 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not, label %if.end10thread-pre-split, label %x_sleep_dvbt_demod_setting.exit.cleanup_crit_edge

x_sleep_dvbt_demod_setting.exit.cleanup_crit_edge: ; preds = %x_sleep_dvbt_demod_setting.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10thread-pre-split:                         ; preds = %x_sleep_dvbt_demod_setting.exit
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %diver_mode, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %if.end3.i.if.end10_crit_edge
  %11 = phi i32 [ %.pr, %if.end10thread-pre-split ], [ %7, %if.end3.i.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp12 = icmp eq i32 %11, 1
  br i1 %cmp12, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %12 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tnr_dmd, align 4
  %tobool.not.i24 = icmp eq ptr %13, null
  br i1 %tobool.not.i24, label %if.then13.cleanup_crit_edge, label %if.end.i28

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i28:                                       ; preds = %if.then13
  %io.i25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %io.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io.i25, align 4
  %call.i26 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %15, i32 noundef 1, ptr noundef nonnull @sleep_dmd_setting_seq1, i8 noundef zeroext 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool1.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool1.not.i27, label %if.end3.i31, label %if.end.i28.cleanup_crit_edge

if.end.i28.cleanup_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i31:                                      ; preds = %if.end.i28
  %diver_mode.i29 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %diver_mode.i29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %diver_mode.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i30 = icmp eq i32 %17, 2
  br i1 %cmp.i30, label %if.then4.i33, label %if.end3.i31.cleanup_crit_edge

if.end3.i31.cleanup_crit_edge:                    ; preds = %if.end3.i31
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4.i33:                                     ; preds = %if.end3.i31
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %io.i25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io.i25, align 4
  %call6.i32 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @sleep_dmd_setting_seq2, i8 noundef zeroext 2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i33, %if.end3.i31.cleanup_crit_edge, %if.end.i28.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %x_sleep_dvbt_demod_setting.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %call6.i, %x_sleep_dvbt_demod_setting.exit.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ -22, %if.then13.cleanup_crit_edge ], [ %call.i26, %if.end.i28.cleanup_crit_edge ], [ %call6.i32, %if.then4.i33 ], [ 0, %if.end3.i31.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_check_demod_lock(ptr noundef %tnr_dmd, ptr noundef writeonly %lock) local_unnamed_addr #0 align 64 {
entry:
  %sync_stat = alloca i8, align 1
  %ts_lock = alloca i8, align 1
  %unlock_detected = alloca i8, align 1
  %unlock_detected_sub = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sync_stat) #3
  %0 = ptrtoint ptr %sync_stat to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %sync_stat, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ts_lock) #3
  %1 = ptrtoint ptr %ts_lock to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ts_lock, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unlock_detected) #3
  %2 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %unlock_detected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unlock_detected_sub) #3
  %3 = ptrtoint ptr %unlock_detected_sub to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %unlock_detected_sub, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %lock, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %4 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4.not = icmp eq i32 %7, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_stat, ptr noundef nonnull %ts_lock, ptr noundef nonnull %unlock_detected) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %8 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %sync_stat to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sync_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp13 = icmp eq i8 %11, 6
  br i1 %cmp11, label %if.then12, label %if.end21

if.then12:                                        ; preds = %if.end9
  br i1 %cmp13, label %if.then12.cleanup.sink.split_crit_edge, label %if.else

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %unlock_detected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  %. = select i1 %tobool16.not, i32 0, i32 2
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.end9
  br i1 %cmp13, label %if.end21.cleanup.sink.split_crit_edge, label %if.end26

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end21
  %call27 = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat_sub(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_stat, ptr noundef nonnull %unlock_detected_sub) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %14 = ptrtoint ptr %sync_stat to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sync_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp32 = icmp eq i8 %15, 6
  br i1 %cmp32, label %if.end30.cleanup.sink.split_crit_edge, label %if.else35

if.end30.cleanup.sink.split_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.else35:                                        ; preds = %if.end30
  %16 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %unlock_detected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool37.not = icmp eq i8 %17, 0
  br i1 %tobool37.not, label %if.else35.if.else41_crit_edge, label %land.lhs.true

if.else35.if.else41_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else41

land.lhs.true:                                    ; preds = %if.else35
  %18 = ptrtoint ptr %unlock_detected_sub to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %unlock_detected_sub, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool39.not = icmp eq i8 %19, 0
  br i1 %tobool39.not, label %land.lhs.true.if.else41_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

land.lhs.true.if.else41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else41

if.else41:                                        ; preds = %land.lhs.true.if.else41_crit_edge, %if.else35.if.else41_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else41, %land.lhs.true.cleanup.sink.split_crit_edge, %if.end30.cleanup.sink.split_crit_edge, %if.end21.cleanup.sink.split_crit_edge, %if.else, %if.then12.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.else41 ], [ 1, %if.then12.cleanup.sink.split_crit_edge ], [ %., %if.else ], [ 1, %if.end21.cleanup.sink.split_crit_edge ], [ 1, %if.end30.cleanup.sink.split_crit_edge ], [ 2, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %lock, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end26.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlock_detected_sub) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlock_detected) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ts_lock) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_stat) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_check_ts_lock(ptr noundef %tnr_dmd, ptr noundef writeonly %lock) local_unnamed_addr #0 align 64 {
entry:
  %sync_stat = alloca i8, align 1
  %ts_lock = alloca i8, align 1
  %unlock_detected = alloca i8, align 1
  %unlock_detected_sub = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sync_stat) #3
  %0 = ptrtoint ptr %sync_stat to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %sync_stat, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ts_lock) #3
  %1 = ptrtoint ptr %ts_lock to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ts_lock, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unlock_detected) #3
  %2 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %unlock_detected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unlock_detected_sub) #3
  %3 = ptrtoint ptr %unlock_detected_sub to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %unlock_detected_sub, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %lock, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %4 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4.not = icmp eq i32 %7, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_stat, ptr noundef nonnull %ts_lock, ptr noundef nonnull %unlock_detected) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %8 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %ts_lock to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ts_lock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end9
  br i1 %tobool13.not, label %if.else, label %if.then12.cleanup.sink.split_crit_edge

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %unlock_detected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  %. = select i1 %tobool15.not, i32 0, i32 2
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end9
  br i1 %tobool13.not, label %if.else23, label %if.end20.cleanup.sink.split_crit_edge

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.else23:                                        ; preds = %if.end20
  %14 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %unlock_detected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool24.not = icmp eq i8 %15, 0
  br i1 %tobool24.not, label %if.else23.cleanup.sink.split_crit_edge, label %if.end27

if.else23.cleanup.sink.split_crit_edge:           ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.else23
  %call28 = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat_sub(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_stat, ptr noundef nonnull %unlock_detected_sub) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %16 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %unlock_detected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool32.not = icmp eq i8 %17, 0
  br i1 %tobool32.not, label %if.end31.if.else36_crit_edge, label %land.lhs.true

if.end31.if.else36_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else36

land.lhs.true:                                    ; preds = %if.end31
  %18 = ptrtoint ptr %unlock_detected_sub to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %unlock_detected_sub, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool34.not = icmp eq i8 %19, 0
  br i1 %tobool34.not, label %land.lhs.true.if.else36_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

land.lhs.true.if.else36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else36

if.else36:                                        ; preds = %land.lhs.true.if.else36_crit_edge, %if.end31.if.else36_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else36, %land.lhs.true.cleanup.sink.split_crit_edge, %if.else23.cleanup.sink.split_crit_edge, %if.end20.cleanup.sink.split_crit_edge, %if.else, %if.then12.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then12.cleanup.sink.split_crit_edge ], [ %., %if.else ], [ 1, %if.end20.cleanup.sink.split_crit_edge ], [ 0, %if.else23.cleanup.sink.split_crit_edge ], [ 0, %if.else36 ], [ 2, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %lock, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlock_detected_sub) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlock_detected) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ts_lock) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_stat) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_write_multi_regs(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_a, !1, !"clk_mode_ckffrq_a", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 51, i32 18}
!2 = !{ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_b, !3, !"clk_mode_ckffrq_b", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 52, i32 18}
!4 = !{ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_c, !5, !"clk_mode_ckffrq_c", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 53, i32 18}
!6 = !{ptr @x_tune_dvbt_demod_setting.ratectl_margin, !7, !"ratectl_margin", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 54, i32 18}
!8 = !{ptr @x_tune_dvbt_demod_setting.maxclkcnt_a, !9, !"maxclkcnt_a", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 55, i32 18}
!10 = !{ptr @x_tune_dvbt_demod_setting.maxclkcnt_b, !11, !"maxclkcnt_b", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 56, i32 18}
!12 = !{ptr @x_tune_dvbt_demod_setting.maxclkcnt_c, !13, !"maxclkcnt_c", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 57, i32 18}
!14 = !{ptr @x_tune_dvbt_demod_setting.bw8_nomi_ac, !15, !"bw8_nomi_ac", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 59, i32 18}
!16 = !{ptr @x_tune_dvbt_demod_setting.bw8_nomi_b, !17, !"bw8_nomi_b", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 60, i32 18}
!18 = !{ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_a, !19, !"bw8_gtdofst_a", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 61, i32 18}
!20 = !{ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_b, !21, !"bw8_gtdofst_b", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 62, i32 18}
!22 = !{ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_c, !23, !"bw8_gtdofst_c", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 63, i32 18}
!24 = !{ptr @x_tune_dvbt_demod_setting.bw8_mrc_a, !25, !"bw8_mrc_a", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 64, i32 18}
!26 = !{ptr @x_tune_dvbt_demod_setting.bw8_mrc_b, !27, !"bw8_mrc_b", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 65, i32 18}
!28 = !{ptr @x_tune_dvbt_demod_setting.bw8_mrc_c, !29, !"bw8_mrc_c", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 66, i32 18}
!30 = !{ptr @x_tune_dvbt_demod_setting.bw8_notch, !31, !"bw8_notch", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 67, i32 18}
!32 = !{ptr @x_tune_dvbt_demod_setting.bw7_nomi_ac, !33, !"bw7_nomi_ac", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 69, i32 18}
!34 = !{ptr @x_tune_dvbt_demod_setting.bw7_nomi_b, !35, !"bw7_nomi_b", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 70, i32 18}
!36 = !{ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_a, !37, !"bw7_gtdofst_a", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 71, i32 18}
!38 = !{ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_b, !39, !"bw7_gtdofst_b", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 72, i32 18}
!40 = !{ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_c, !41, !"bw7_gtdofst_c", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 73, i32 18}
!42 = !{ptr @x_tune_dvbt_demod_setting.bw7_mrc_a, !43, !"bw7_mrc_a", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 74, i32 18}
!44 = !{ptr @x_tune_dvbt_demod_setting.bw7_mrc_b, !45, !"bw7_mrc_b", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 75, i32 18}
!46 = !{ptr @x_tune_dvbt_demod_setting.bw7_mrc_c, !47, !"bw7_mrc_c", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 76, i32 18}
!48 = !{ptr @x_tune_dvbt_demod_setting.bw7_notch, !49, !"bw7_notch", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 77, i32 18}
!50 = !{ptr @x_tune_dvbt_demod_setting.bw6_nomi_ac, !51, !"bw6_nomi_ac", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 79, i32 18}
!52 = !{ptr @x_tune_dvbt_demod_setting.bw6_nomi_b, !53, !"bw6_nomi_b", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 80, i32 18}
!54 = !{ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_a, !55, !"bw6_gtdofst_a", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 81, i32 18}
!56 = !{ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_b, !57, !"bw6_gtdofst_b", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 82, i32 18}
!58 = !{ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_c, !59, !"bw6_gtdofst_c", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 83, i32 18}
!60 = !{ptr @x_tune_dvbt_demod_setting.bw6_mrc_a, !61, !"bw6_mrc_a", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 84, i32 18}
!62 = !{ptr @x_tune_dvbt_demod_setting.bw6_mrc_b, !63, !"bw6_mrc_b", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 85, i32 18}
!64 = !{ptr @x_tune_dvbt_demod_setting.bw6_mrc_c, !65, !"bw6_mrc_c", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 86, i32 18}
!66 = !{ptr @x_tune_dvbt_demod_setting.bw6_notch, !67, !"bw6_notch", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 87, i32 18}
!68 = !{ptr @x_tune_dvbt_demod_setting.bw5_nomi_ac, !69, !"bw5_nomi_ac", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 89, i32 18}
!70 = !{ptr @x_tune_dvbt_demod_setting.bw5_nomi_b, !71, !"bw5_nomi_b", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 90, i32 18}
!72 = !{ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_a, !73, !"bw5_gtdofst_a", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 91, i32 18}
!74 = !{ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_b, !75, !"bw5_gtdofst_b", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 92, i32 18}
!76 = !{ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_c, !77, !"bw5_gtdofst_c", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 93, i32 18}
!78 = !{ptr @x_tune_dvbt_demod_setting.bw5_mrc_a, !79, !"bw5_mrc_a", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 94, i32 18}
!80 = !{ptr @x_tune_dvbt_demod_setting.bw5_mrc_b, !81, !"bw5_mrc_b", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 95, i32 18}
!82 = !{ptr @x_tune_dvbt_demod_setting.bw5_mrc_c, !83, !"bw5_mrc_c", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 96, i32 18}
!84 = !{ptr @x_tune_dvbt_demod_setting.bw5_notch, !85, !"bw5_notch", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 97, i32 18}
!86 = !{ptr @tune_dmd_setting_seq1, !87, !"tune_dmd_setting_seq1", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 15, i32 39}
!88 = !{ptr @tune_dmd_setting_seq2, !89, !"tune_dmd_setting_seq2", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 19, i32 39}
!90 = !{ptr @tune_dmd_setting_seq3, !91, !"tune_dmd_setting_seq3", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 24, i32 39}
!92 = !{ptr @tune_dmd_setting_seq4, !93, !"tune_dmd_setting_seq4", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 28, i32 39}
!94 = !{ptr @tune_dmd_setting_seq5, !95, !"tune_dmd_setting_seq5", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 32, i32 39}
!96 = !{ptr @sleep_dmd_setting_seq1, !97, !"sleep_dmd_setting_seq1", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 36, i32 39}
!98 = !{ptr @sleep_dmd_setting_seq2, !99, !"sleep_dmd_setting_seq2", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c", i32 40, i32 39}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
