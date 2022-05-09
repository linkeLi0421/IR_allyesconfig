; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c"
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
%struct.cxd2880_dvbt2_tune_param = type { i32, i32, i16, i32, i32 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_dvbt2_ofdm = type { i8, i8, i32, i32, i32, i8, i32, i16 }

@cxd2880_tnrdmd_dvbt2_diver_fef_setting.data = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\08\00\10\00 \00@\00\80\01\00", [20 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.tsif_settings = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01\01", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.init_settings = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\07\06\01\F0\00\00\04\B0\00\00\09\9C\0EL", [18 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.clk_mode_settings_a1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RI,QQ=\15)\0C", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.clk_mode_settings_b1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"]U2\\\\E\17.\0D", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.clk_mode_settings_c1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"`\004^^G\18/\0E", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.clk_mode_settings_a2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\04\E7\94\92\09\CF~\D0I\CD\CD\1F[", [19 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.clk_mode_settings_b2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\05\90'U\0B \8F\D6\EA\C8\C8#\91", [19 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.clk_mode_settings_c2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\05\B8\D8\00\0Br\93\F3\00\CD\CD$\95", [19 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.clk_mode_settings_a3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0Bj\C9\033", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.clk_mode_settings_b3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\02\E4\039", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.clk_mode_settings_c3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\02\EB\03;", [27 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.gtdofst = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\FF", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw8_gtdofst_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\19\D2", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw8_nomi_ac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\15\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw8_nomi_b = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\14j\AA\AA\AB\00", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw8_sst_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06*", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw8_sst_b = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06)", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw8_sst_c = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06(", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw8_mrc_a = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(\00P\00`\00\00\90\00", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw8_mrc_b = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"-^Z\BDl\E3\00\A3U", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw8_mrc_c = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c".\AA]Up\00\00\A8\00", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw7_nomi_ac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\18\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw7_nomi_b = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\17UUUU\00", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw7_sst_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06#", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw7_sst_b = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\22", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw7_sst_c = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06!", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw7_mrc_a = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"-\B6[mm\B6\00\A4\92", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw7_mrc_b = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3\DAg\B4|q\00\BA\AA", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw7_mrc_c = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5Uj\AA\80\00\00\C0\00", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw6_nomi_ac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\1C\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw6_nomi_b = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\1B8\E3\8E9\00", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw6_sst_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\1C", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw6_sst_b = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\1B", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw6_sst_c = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\1A", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw6_mrc_a = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5Uj\AA\80\00\00\C0\00", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw6_mrc_b = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"<~x\FC\91/\00\D9\C7", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw6_mrc_c = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c">8|q\95U\00\DF\FF", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw5_nomi_ac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"!\99\99\99\9A\00", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw5_nomi_b = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" \AA\AA\AA\AB\00", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw5_sst_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\15", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw5_sst_b = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\15", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw5_sst_c = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\14", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw5_mrc_a = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"@\00j\AA\80\00\00\E6f", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw5_mrc_b = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H\97x\FC\91/\01\05U", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw5_mrc_c = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"J\AA|q\95U\01\0C\CC", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw1_7_nomi_a = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"h\0F\A22\CF\03", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw1_7_nomi_c = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"h\0F\A22\CF\03", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw1_7_nomi_b = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"e+\A4\CD\D8\03", [26 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw1_7_sst_a = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\0C", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw1_7_sst_b = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\0C", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw1_7_sst_c = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\0B", [30 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw1_7_mrc_a = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"@\00j\AA\80\00\02\C9\8F", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw1_7_mrc_b = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H\97x\FC\91/\03)]", [23 x i8] zeroinitializer }, align 32
@x_tune_dvbt2_demod_setting.bw1_7_mrc_c = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"J\AA|q\95U\03@}", [23 x i8] zeroinitializer }, align 32
@tune_dmd_setting_seq1 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 49, i8 2 }], [28 x i8] zeroinitializer }, align 32
@tune_dmd_setting_seq2 = internal constant { [2 x %struct.cxd2880_reg_value], [28 x i8] } { [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 4 }, %struct.cxd2880_reg_value { i8 93, i8 11 }], [28 x i8] zeroinitializer }, align 32
@x_sleep_dvbt2_demod_setting.difint_clip = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\01\00\02\00\04\00\08\00\10\00 ", [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a1, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b1, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c1], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.1 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a2, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b2, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c2], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.2 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a3, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b3, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c3], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.3 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw8_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw8_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw8_nomi_ac], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.4 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw8_gtdofst_a, ptr @x_tune_dvbt2_demod_setting.gtdofst, ptr @x_tune_dvbt2_demod_setting.gtdofst], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.5 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw8_sst_a, ptr @x_tune_dvbt2_demod_setting.bw8_sst_b, ptr @x_tune_dvbt2_demod_setting.bw8_sst_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.6 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw8_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw8_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw8_mrc_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.7 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw7_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw7_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw7_nomi_ac], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.8 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw7_sst_a, ptr @x_tune_dvbt2_demod_setting.bw7_sst_b, ptr @x_tune_dvbt2_demod_setting.bw7_sst_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.9 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw7_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw7_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw7_mrc_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.10 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw6_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw6_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw6_nomi_ac], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.11 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw6_sst_a, ptr @x_tune_dvbt2_demod_setting.bw6_sst_b, ptr @x_tune_dvbt2_demod_setting.bw6_sst_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.12 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw6_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw6_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw6_mrc_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.13 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw5_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw5_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw5_nomi_ac], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.14 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw5_sst_a, ptr @x_tune_dvbt2_demod_setting.bw5_sst_b, ptr @x_tune_dvbt2_demod_setting.bw5_sst_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.15 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw5_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw5_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw5_mrc_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.16 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_a, ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.17 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_a, ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_b, ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_c], [20 x i8] zeroinitializer }, align 32
@switch.table.x_tune_dvbt2_demod_setting.18 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_c], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.21 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1151, i32 18 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"tsif_settings\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 30, i32 18 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"init_settings\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 31, i32 18 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"clk_mode_settings_a1\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 35, i32 18 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"clk_mode_settings_b1\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 39, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"clk_mode_settings_c1\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 43, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"clk_mode_settings_a2\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 47, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"clk_mode_settings_b2\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 52, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"clk_mode_settings_c2\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 57, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"clk_mode_settings_a3\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 62, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"clk_mode_settings_b3\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 65, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"clk_mode_settings_c3\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 68, i32 18 }
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"gtdofst\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 72, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"bw8_gtdofst_a\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 74, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"bw8_nomi_ac\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 75, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"bw8_nomi_b\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 76, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"bw8_sst_a\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 77, i32 18 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"bw8_sst_b\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 78, i32 18 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"bw8_sst_c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 79, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"bw8_mrc_a\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 80, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"bw8_mrc_b\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 83, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"bw8_mrc_c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 86, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"bw7_nomi_ac\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 90, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"bw7_nomi_b\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 91, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant [10 x i8] c"bw7_sst_a\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 92, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant [10 x i8] c"bw7_sst_b\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 93, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant [10 x i8] c"bw7_sst_c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 94, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant [10 x i8] c"bw7_mrc_a\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 95, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant [10 x i8] c"bw7_mrc_b\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 98, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant [10 x i8] c"bw7_mrc_c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 101, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"bw6_nomi_ac\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 105, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"bw6_nomi_b\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 106, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant [10 x i8] c"bw6_sst_a\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 107, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant [10 x i8] c"bw6_sst_b\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 108, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"bw6_sst_c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 109, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant [10 x i8] c"bw6_mrc_a\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 110, i32 18 }
@___asan_gen_.129 = private unnamed_addr constant [10 x i8] c"bw6_mrc_b\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 113, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant [10 x i8] c"bw6_mrc_c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 116, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"bw5_nomi_ac\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 120, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"bw5_nomi_b\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 121, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant [10 x i8] c"bw5_sst_a\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 122, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant [10 x i8] c"bw5_sst_b\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 123, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant [10 x i8] c"bw5_sst_c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 124, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant [10 x i8] c"bw5_mrc_a\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 125, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant [10 x i8] c"bw5_mrc_b\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 128, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant [10 x i8] c"bw5_mrc_c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 131, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant [13 x i8] c"bw1_7_nomi_a\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 135, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"bw1_7_nomi_c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 138, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"bw1_7_nomi_b\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 141, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"bw1_7_sst_a\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 144, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant [12 x i8] c"bw1_7_sst_b\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 145, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"bw1_7_sst_c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 146, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"bw1_7_mrc_a\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 147, i32 18 }
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"bw1_7_mrc_b\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 150, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"bw1_7_mrc_c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 153, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant [22 x i8] c"tune_dmd_setting_seq1\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 15, i32 39 }
@___asan_gen_.189 = private unnamed_addr constant [22 x i8] c"tune_dmd_setting_seq2\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 19, i32 39 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"difint_clip\00", align 1
@___asan_gen_.193 = private constant [62 x i8] c"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 751, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant [40 x i8] c"switch.table.x_tune_dvbt2_demod_setting\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt2_demod_setting.1\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt2_demod_setting.2\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt2_demod_setting.3\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt2_demod_setting.4\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt2_demod_setting.5\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt2_demod_setting.6\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt2_demod_setting.7\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt2_demod_setting.8\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [42 x i8] c"switch.table.x_tune_dvbt2_demod_setting.9\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [43 x i8] c"switch.table.x_tune_dvbt2_demod_setting.10\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [43 x i8] c"switch.table.x_tune_dvbt2_demod_setting.11\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [43 x i8] c"switch.table.x_tune_dvbt2_demod_setting.12\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [43 x i8] c"switch.table.x_tune_dvbt2_demod_setting.13\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [43 x i8] c"switch.table.x_tune_dvbt2_demod_setting.14\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [43 x i8] c"switch.table.x_tune_dvbt2_demod_setting.15\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [43 x i8] c"switch.table.x_tune_dvbt2_demod_setting.16\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [43 x i8] c"switch.table.x_tune_dvbt2_demod_setting.17\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [43 x i8] c"switch.table.x_tune_dvbt2_demod_setting.18\00", align 1
@llvm.compiler.used = appending global [77 x ptr] [ptr @cxd2880_tnrdmd_dvbt2_diver_fef_setting.data, ptr @x_tune_dvbt2_demod_setting.tsif_settings, ptr @x_tune_dvbt2_demod_setting.init_settings, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a1, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b1, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c1, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a2, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b2, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c2, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a3, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b3, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c3, ptr @x_tune_dvbt2_demod_setting.gtdofst, ptr @x_tune_dvbt2_demod_setting.bw8_gtdofst_a, ptr @x_tune_dvbt2_demod_setting.bw8_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw8_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw8_sst_a, ptr @x_tune_dvbt2_demod_setting.bw8_sst_b, ptr @x_tune_dvbt2_demod_setting.bw8_sst_c, ptr @x_tune_dvbt2_demod_setting.bw8_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw8_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw8_mrc_c, ptr @x_tune_dvbt2_demod_setting.bw7_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw7_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw7_sst_a, ptr @x_tune_dvbt2_demod_setting.bw7_sst_b, ptr @x_tune_dvbt2_demod_setting.bw7_sst_c, ptr @x_tune_dvbt2_demod_setting.bw7_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw7_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw7_mrc_c, ptr @x_tune_dvbt2_demod_setting.bw6_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw6_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw6_sst_a, ptr @x_tune_dvbt2_demod_setting.bw6_sst_b, ptr @x_tune_dvbt2_demod_setting.bw6_sst_c, ptr @x_tune_dvbt2_demod_setting.bw6_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw6_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw6_mrc_c, ptr @x_tune_dvbt2_demod_setting.bw5_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw5_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw5_sst_a, ptr @x_tune_dvbt2_demod_setting.bw5_sst_b, ptr @x_tune_dvbt2_demod_setting.bw5_sst_c, ptr @x_tune_dvbt2_demod_setting.bw5_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw5_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw5_mrc_c, ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_a, ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_c, ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_a, ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_b, ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_c, ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_c, ptr @tune_dmd_setting_seq1, ptr @tune_dmd_setting_seq2, ptr @x_sleep_dvbt2_demod_setting.difint_clip, ptr @switch.table.x_tune_dvbt2_demod_setting, ptr @switch.table.x_tune_dvbt2_demod_setting.1, ptr @switch.table.x_tune_dvbt2_demod_setting.2, ptr @switch.table.x_tune_dvbt2_demod_setting.3, ptr @switch.table.x_tune_dvbt2_demod_setting.4, ptr @switch.table.x_tune_dvbt2_demod_setting.5, ptr @switch.table.x_tune_dvbt2_demod_setting.6, ptr @switch.table.x_tune_dvbt2_demod_setting.7, ptr @switch.table.x_tune_dvbt2_demod_setting.8, ptr @switch.table.x_tune_dvbt2_demod_setting.9, ptr @switch.table.x_tune_dvbt2_demod_setting.10, ptr @switch.table.x_tune_dvbt2_demod_setting.11, ptr @switch.table.x_tune_dvbt2_demod_setting.12, ptr @switch.table.x_tune_dvbt2_demod_setting.13, ptr @switch.table.x_tune_dvbt2_demod_setting.14, ptr @switch.table.x_tune_dvbt2_demod_setting.15, ptr @switch.table.x_tune_dvbt2_demod_setting.16, ptr @switch.table.x_tune_dvbt2_demod_setting.17, ptr @switch.table.x_tune_dvbt2_demod_setting.18], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_tnrdmd_dvbt2_diver_fef_setting.data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.tsif_settings to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.init_settings to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.gtdofst to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw8_gtdofst_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw8_nomi_ac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw8_nomi_b to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw8_sst_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw8_sst_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw8_sst_c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw8_mrc_a to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw8_mrc_b to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw8_mrc_c to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw7_nomi_ac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw7_nomi_b to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw7_sst_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw7_sst_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw7_sst_c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw7_mrc_a to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw7_mrc_b to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw7_mrc_c to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw6_nomi_ac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw6_nomi_b to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw6_sst_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw6_sst_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw6_sst_c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw6_mrc_a to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw6_mrc_b to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw6_mrc_c to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw5_nomi_ac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw5_nomi_b to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw5_sst_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw5_sst_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw5_sst_c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw5_mrc_a to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw5_mrc_b to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw5_mrc_c to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_a to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_c to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_b to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_a to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_a to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_b to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_c to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_dmd_setting_seq1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_dmd_setting_seq2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x_sleep_dvbt2_demod_setting.difint_clip to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.x_tune_dvbt2_demod_setting.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_tune1(ptr noundef %tnr_dmd, ptr noundef readonly %tune_param) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp10 = icmp eq i32 %1, 1
  br i1 %cmp10, label %land.lhs.true11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

land.lhs.true11:                                  ; preds = %if.end8
  %profile = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %tune_param, i32 0, i32 3
  %4 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %profile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp12 = icmp eq i32 %5, 2
  br i1 %cmp12, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end14_crit_edge

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true11.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %6 = ptrtoint ptr %tune_param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tune_param, align 4
  %bandwidth = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %tune_param, i32 0, i32 1
  %8 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bandwidth, align 4
  %call = tail call i32 @cxd2880_tnrdmd_common_tune_setting1(ptr noundef nonnull %tnr_dmd, i32 noundef 2, i32 noundef %7, i32 noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bandwidth, align 4
  %clk_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 23
  %12 = ptrtoint ptr %clk_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_mode, align 4
  %call19 = tail call fastcc i32 @x_tune_dvbt2_demod_setting(ptr noundef nonnull %tnr_dmd, i32 noundef %11, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp24 = icmp eq i32 %15, 1
  br i1 %cmp24, label %if.then25, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then25:                                        ; preds = %if.end22
  %16 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tnr_dmd, align 4
  %18 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bandwidth, align 4
  %clk_mode28 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %17, i32 0, i32 23
  %20 = ptrtoint ptr %clk_mode28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_mode28, align 4
  %call29 = tail call fastcc i32 @x_tune_dvbt2_demod_setting(ptr noundef %17, i32 noundef %19, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then25.if.end33_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.end33:                                         ; preds = %if.then25.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %profile34 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %tune_param, i32 0, i32 3
  %22 = ptrtoint ptr %profile34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %profile34, align 4
  %call35 = tail call fastcc i32 @dvbt2_set_profile(ptr noundef nonnull %tnr_dmd, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %24 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp40 = icmp eq i32 %25, 1
  br i1 %cmp40, label %if.then41, label %if.end38.if.end48_crit_edge

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then41:                                        ; preds = %if.end38
  %26 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tnr_dmd, align 4
  %28 = ptrtoint ptr %profile34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %profile34, align 4
  %call44 = tail call fastcc i32 @dvbt2_set_profile(ptr noundef %27, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then41.if.end48_crit_edge, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.end48:                                         ; preds = %if.then41.if.end48_crit_edge, %if.end38.if.end48_crit_edge
  %data_plp_id = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %tune_param, i32 0, i32 2
  %30 = ptrtoint ptr %data_plp_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %data_plp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp49 = icmp eq i16 %31, -1
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  %call52 = tail call i32 @cxd2880_tnrdmd_dvbt2_set_plp_cfg(ptr noundef nonnull %tnr_dmd, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %cleanup

if.else:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  %conv54 = trunc i16 %31 to i8
  %call55 = tail call i32 @cxd2880_tnrdmd_dvbt2_set_plp_cfg(ptr noundef nonnull %tnr_dmd, i8 noundef zeroext 0, i8 noundef zeroext %conv54)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then51, %if.then41.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -25, %land.lhs.true11.cleanup_crit_edge ], [ %call, %if.end14.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ %call29, %if.then25.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ], [ %call44, %if.then41.cleanup_crit_edge ], [ %call52, %if.then51 ], [ %call55, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting1(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x_tune_dvbt2_demod_setting(ptr noundef readonly %tnr_dmd, i32 noundef %bandwidth, i32 noundef %clk_mode) unnamed_addr #0 align 64 {
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
  %call = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @tune_dmd_setting_seq1, i8 noundef zeroext 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %call5 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @tune_dmd_setting_seq2, i8 noundef zeroext 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %4 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end8.if.end22_crit_edge, label %if.then9

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then9:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg, align 4
  %call12 = tail call i32 %9(ptr noundef %7, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.then9
  %10 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_regs, align 4
  %call18 = tail call i32 %13(ptr noundef %11, i32 noundef 1, i8 noundef zeroext -50, ptr noundef nonnull @x_tune_dvbt2_demod_setting.tsif_settings, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.if.end22_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.end22:                                         ; preds = %if.end15.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  %14 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io, align 4
  %write_reg24 = getelementptr inbounds %struct.cxd2880_io, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %write_reg24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg24, align 4
  %call26 = tail call i32 %17(ptr noundef %15, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 32) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %18 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io, align 4
  %write_reg31 = getelementptr inbounds %struct.cxd2880_io, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %write_reg31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg31, align 4
  %call33 = tail call i32 %21(ptr noundef %19, i32 noundef 1, i8 noundef zeroext -118, i8 noundef zeroext 7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %22 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io, align 4
  %write_reg38 = getelementptr inbounds %struct.cxd2880_io, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %write_reg38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_reg38, align 4
  %call40 = tail call i32 %25(ptr noundef %23, i32 noundef 1, i8 noundef zeroext -112, i8 noundef zeroext 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io, align 4
  %write_reg45 = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %write_reg45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg45, align 4
  %call47 = tail call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 37) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end50:                                         ; preds = %if.end43
  %30 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io, align 4
  %write_regs52 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_regs52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_regs52, align 4
  %call54 = tail call i32 %33(ptr noundef %31, i32 noundef 1, i8 noundef zeroext -16, ptr noundef getelementptr inbounds ([14 x i8], ptr @x_tune_dvbt2_demod_setting.init_settings, i32 0, i32 2), i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end57:                                         ; preds = %if.end50
  %34 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io, align 4
  %write_reg59 = getelementptr inbounds %struct.cxd2880_io, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %write_reg59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg59, align 4
  %call61 = tail call i32 %37(ptr noundef %35, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 42) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end64:                                         ; preds = %if.end57
  %38 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io, align 4
  %write_reg66 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %write_reg66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg66, align 4
  %call68 = tail call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext -36, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end71:                                         ; preds = %if.end64
  %42 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io, align 4
  %write_reg73 = getelementptr inbounds %struct.cxd2880_io, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %write_reg73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_reg73, align 4
  %call75 = tail call i32 %45(ptr noundef %43, i32 noundef 1, i8 noundef zeroext -34, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  %46 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io, align 4
  %write_reg80 = getelementptr inbounds %struct.cxd2880_io, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %write_reg80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg80, align 4
  %call82 = tail call i32 %49(ptr noundef %47, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 45) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end85:                                         ; preds = %if.end78
  %50 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io, align 4
  %write_regs87 = getelementptr inbounds %struct.cxd2880_io, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_regs87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_regs87, align 4
  %call89 = tail call i32 %53(ptr noundef %51, i32 noundef 1, i8 noundef zeroext 115, ptr noundef getelementptr inbounds ([14 x i8], ptr @x_tune_dvbt2_demod_setting.init_settings, i32 0, i32 6), i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end92:                                         ; preds = %if.end85
  %54 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io, align 4
  %write_regs94 = getelementptr inbounds %struct.cxd2880_io, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_regs94 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_regs94, align 4
  %call96 = tail call i32 %57(ptr noundef %55, i32 noundef 1, i8 noundef zeroext -113, ptr noundef getelementptr inbounds ([14 x i8], ptr @x_tune_dvbt2_demod_setting.init_settings, i32 0, i32 10), i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end99:                                         ; preds = %if.end92
  %switch.tableidx = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %58 = icmp ult i32 %switch.tableidx, 3
  br i1 %58, label %switch.lookup, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup:                                    ; preds = %if.end99
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting, i32 0, i32 %switch.tableidx
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep736 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.1, i32 0, i32 %switch.tableidx
  %60 = ptrtoint ptr %switch.gep736 to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load737 = load ptr, ptr %switch.gep736, align 4
  %switch.gep738 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.2, i32 0, i32 %switch.tableidx
  %61 = ptrtoint ptr %switch.gep738 to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load739 = load ptr, ptr %switch.gep738, align 4
  %62 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io, align 4
  %write_reg103 = getelementptr inbounds %struct.cxd2880_io, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %write_reg103 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_reg103, align 4
  %call105 = tail call i32 %65(ptr noundef %63, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end108:                                        ; preds = %switch.lookup
  %66 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %io, align 4
  %write_regs110 = getelementptr inbounds %struct.cxd2880_io, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %write_regs110 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_regs110, align 4
  %call112 = tail call i32 %69(ptr noundef %67, i32 noundef 1, i8 noundef zeroext 29, ptr noundef nonnull %switch.load, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end115:                                        ; preds = %if.end108
  %70 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io, align 4
  %write_reg117 = getelementptr inbounds %struct.cxd2880_io, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %write_reg117 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_reg117, align 4
  %arrayidx119 = getelementptr i8, ptr %switch.load, i32 3
  %74 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx119, align 1
  %call120 = tail call i32 %73(ptr noundef %71, i32 noundef 1, i8 noundef zeroext 34, i8 noundef zeroext %75) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end115.cleanup_crit_edge

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end123:                                        ; preds = %if.end115
  %76 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %io, align 4
  %write_reg125 = getelementptr inbounds %struct.cxd2880_io, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %write_reg125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_reg125, align 4
  %arrayidx127 = getelementptr i8, ptr %switch.load, i32 4
  %80 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx127, align 1
  %call128 = tail call i32 %79(ptr noundef %77, i32 noundef 1, i8 noundef zeroext 36, i8 noundef zeroext %81) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end123.cleanup_crit_edge

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end131:                                        ; preds = %if.end123
  %82 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io, align 4
  %write_reg133 = getelementptr inbounds %struct.cxd2880_io, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %write_reg133 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_reg133, align 4
  %arrayidx135 = getelementptr i8, ptr %switch.load, i32 5
  %86 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx135, align 1
  %call136 = tail call i32 %85(ptr noundef %83, i32 noundef 1, i8 noundef zeroext 38, i8 noundef zeroext %87) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end131.cleanup_crit_edge

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end139:                                        ; preds = %if.end131
  %88 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %io, align 4
  %write_regs141 = getelementptr inbounds %struct.cxd2880_io, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write_regs141 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_regs141, align 4
  %arrayidx143 = getelementptr i8, ptr %switch.load, i32 6
  %call144 = tail call i32 %91(ptr noundef %89, i32 noundef 1, i8 noundef zeroext 41, ptr noundef %arrayidx143, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end147:                                        ; preds = %if.end139
  %92 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %io, align 4
  %write_reg149 = getelementptr inbounds %struct.cxd2880_io, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %write_reg149 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_reg149, align 4
  %arrayidx151 = getelementptr i8, ptr %switch.load, i32 8
  %96 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx151, align 1
  %call152 = tail call i32 %95(ptr noundef %93, i32 noundef 1, i8 noundef zeroext 45, i8 noundef zeroext %97) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %if.end147.cleanup_crit_edge

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end155:                                        ; preds = %if.end147
  %98 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp157.not = icmp eq i32 %99, 2
  br i1 %cmp157.not, label %if.end155.if.end175_crit_edge, label %if.then158

if.end155.if.end175_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end175

if.then158:                                       ; preds = %if.end155
  %100 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %io, align 4
  %write_regs160 = getelementptr inbounds %struct.cxd2880_io, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %write_regs160 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write_regs160, align 4
  %call163 = tail call i32 %103(ptr noundef %101, i32 noundef 1, i8 noundef zeroext 46, ptr noundef nonnull %switch.load737, i32 noundef 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.then158.cleanup_crit_edge

if.then158.cleanup_crit_edge:                     ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end166:                                        ; preds = %if.then158
  %104 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %io, align 4
  %write_regs168 = getelementptr inbounds %struct.cxd2880_io, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %write_regs168 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write_regs168, align 4
  %arrayidx170 = getelementptr i8, ptr %switch.load737, i32 6
  %call171 = tail call i32 %107(ptr noundef %105, i32 noundef 1, i8 noundef zeroext 53, ptr noundef %arrayidx170, i32 noundef 7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end166.if.end175_crit_edge, label %if.end166.cleanup_crit_edge

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end166.if.end175_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end175

if.end175:                                        ; preds = %if.end166.if.end175_crit_edge, %if.end155.if.end175_crit_edge
  %108 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %io, align 4
  %write_regs177 = getelementptr inbounds %struct.cxd2880_io, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %write_regs177 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write_regs177, align 4
  %call180 = tail call i32 %111(ptr noundef %109, i32 noundef 1, i8 noundef zeroext 60, ptr noundef nonnull %switch.load739, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end183, label %if.end175.cleanup_crit_edge

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end183:                                        ; preds = %if.end175
  %112 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io, align 4
  %write_regs185 = getelementptr inbounds %struct.cxd2880_io, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %write_regs185 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write_regs185, align 4
  %arrayidx187 = getelementptr i8, ptr %switch.load739, i32 2
  %call188 = tail call i32 %115(ptr noundef %113, i32 noundef 1, i8 noundef zeroext 86, ptr noundef %arrayidx187, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end191, label %if.end183.cleanup_crit_edge

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end191:                                        ; preds = %if.end183
  %116 = zext i32 %bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bandwidth, label %if.end191.cleanup_crit_edge [
    i32 8, label %sw.bb192
    i32 7, label %sw.bb250
    i32 6, label %sw.bb304
    i32 5, label %sw.bb358
    i32 1, label %sw.bb412
  ]

if.end191.cleanup_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb192:                                         ; preds = %if.end191
  %switch.tableidx741 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx741)
  %117 = icmp ult i32 %switch.tableidx741, 3
  br i1 %117, label %switch.lookup740, label %sw.bb192.cleanup_crit_edge

sw.bb192.cleanup_crit_edge:                       ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup740:                                 ; preds = %sw.bb192
  %switch.gep742 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.3, i32 0, i32 %switch.tableidx741
  %118 = ptrtoint ptr %switch.gep742 to i32
  call void @__asan_load4_noabort(i32 %118)
  %switch.load743 = load ptr, ptr %switch.gep742, align 4
  %119 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %io, align 4
  %write_regs198 = getelementptr inbounds %struct.cxd2880_io, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %write_regs198 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write_regs198, align 4
  %call200 = tail call i32 %122(ptr noundef %120, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %switch.load743, i32 noundef 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end203, label %switch.lookup740.cleanup_crit_edge

switch.lookup740.cleanup_crit_edge:               ; preds = %switch.lookup740
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end203:                                        ; preds = %switch.lookup740
  %123 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %io, align 4
  %write_reg205 = getelementptr inbounds %struct.cxd2880_io, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %write_reg205 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write_reg205, align 4
  %call207 = tail call i32 %126(ptr noundef %124, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end210, label %if.end203.cleanup_crit_edge

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end210:                                        ; preds = %if.end203
  %switch.tableidx745 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx745)
  %127 = icmp ult i32 %switch.tableidx745, 3
  br i1 %127, label %switch.lookup744, label %if.end210.cleanup_crit_edge

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup744:                                 ; preds = %if.end210
  %switch.gep746 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.4, i32 0, i32 %switch.tableidx745
  %128 = ptrtoint ptr %switch.gep746 to i32
  call void @__asan_load4_noabort(i32 %128)
  %switch.load747 = load ptr, ptr %switch.gep746, align 4
  %129 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %io, align 4
  %write_regs216 = getelementptr inbounds %struct.cxd2880_io, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %write_regs216 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_regs216, align 4
  %call218 = tail call i32 %132(ptr noundef %130, i32 noundef 1, i8 noundef zeroext 25, ptr noundef nonnull %switch.load747, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end221, label %switch.lookup744.cleanup_crit_edge

switch.lookup744.cleanup_crit_edge:               ; preds = %switch.lookup744
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end221:                                        ; preds = %switch.lookup744
  %switch.tableidx749 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx749)
  %133 = icmp ult i32 %switch.tableidx749, 3
  br i1 %133, label %switch.lookup748, label %if.end221.cleanup_crit_edge

if.end221.cleanup_crit_edge:                      ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup748:                                 ; preds = %if.end221
  %switch.gep750 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.5, i32 0, i32 %switch.tableidx749
  %134 = ptrtoint ptr %switch.gep750 to i32
  call void @__asan_load4_noabort(i32 %134)
  %switch.load751 = load ptr, ptr %switch.gep750, align 4
  %135 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %io, align 4
  %write_regs228 = getelementptr inbounds %struct.cxd2880_io, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %write_regs228 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write_regs228, align 4
  %call230 = tail call i32 %138(ptr noundef %136, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %switch.load751, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %if.end233, label %switch.lookup748.cleanup_crit_edge

switch.lookup748.cleanup_crit_edge:               ; preds = %switch.lookup748
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end233:                                        ; preds = %switch.lookup748
  %139 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %140)
  %cmp235 = icmp eq i32 %140, 1
  br i1 %cmp235, label %if.then236, label %if.end233.sw.epilog468_crit_edge

if.end233.sw.epilog468_crit_edge:                 ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog468

if.then236:                                       ; preds = %if.end233
  %switch.tableidx753 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx753)
  %141 = icmp ult i32 %switch.tableidx753, 3
  br i1 %141, label %switch.lookup752, label %if.then236.cleanup_crit_edge

if.then236.cleanup_crit_edge:                     ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup752:                                 ; preds = %if.then236
  %switch.gep754 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.6, i32 0, i32 %switch.tableidx753
  %142 = ptrtoint ptr %switch.gep754 to i32
  call void @__asan_load4_noabort(i32 %142)
  %switch.load755 = load ptr, ptr %switch.gep754, align 4
  %143 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %io, align 4
  %write_regs243 = getelementptr inbounds %struct.cxd2880_io, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %write_regs243 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write_regs243, align 4
  %call245 = tail call i32 %146(ptr noundef %144, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %switch.load755, i32 noundef 9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %switch.lookup752.sw.epilog468_crit_edge, label %switch.lookup752.cleanup_crit_edge

switch.lookup752.cleanup_crit_edge:               ; preds = %switch.lookup752
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup752.sw.epilog468_crit_edge:          ; preds = %switch.lookup752
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog468

sw.bb250:                                         ; preds = %if.end191
  %switch.tableidx757 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx757)
  %147 = icmp ult i32 %switch.tableidx757, 3
  br i1 %147, label %switch.lookup756, label %sw.bb250.cleanup_crit_edge

sw.bb250.cleanup_crit_edge:                       ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup756:                                 ; preds = %sw.bb250
  %switch.gep758 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.7, i32 0, i32 %switch.tableidx757
  %148 = ptrtoint ptr %switch.gep758 to i32
  call void @__asan_load4_noabort(i32 %148)
  %switch.load759 = load ptr, ptr %switch.gep758, align 4
  %149 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %io, align 4
  %write_regs256 = getelementptr inbounds %struct.cxd2880_io, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %write_regs256 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write_regs256, align 4
  %call258 = tail call i32 %152(ptr noundef %150, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %switch.load759, i32 noundef 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %if.end261, label %switch.lookup756.cleanup_crit_edge

switch.lookup756.cleanup_crit_edge:               ; preds = %switch.lookup756
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end261:                                        ; preds = %switch.lookup756
  %153 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %io, align 4
  %write_reg263 = getelementptr inbounds %struct.cxd2880_io, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %write_reg263 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write_reg263, align 4
  %call265 = tail call i32 %156(ptr noundef %154, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end268, label %if.end261.cleanup_crit_edge

if.end261.cleanup_crit_edge:                      ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end268:                                        ; preds = %if.end261
  %157 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %io, align 4
  %write_regs270 = getelementptr inbounds %struct.cxd2880_io, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %write_regs270 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write_regs270, align 4
  %call272 = tail call i32 %160(ptr noundef %158, i32 noundef 1, i8 noundef zeroext 25, ptr noundef nonnull @x_tune_dvbt2_demod_setting.gtdofst, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %tobool273.not = icmp eq i32 %call272, 0
  br i1 %tobool273.not, label %if.end275, label %if.end268.cleanup_crit_edge

if.end268.cleanup_crit_edge:                      ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end275:                                        ; preds = %if.end268
  %switch.tableidx761 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx761)
  %161 = icmp ult i32 %switch.tableidx761, 3
  br i1 %161, label %switch.lookup760, label %if.end275.cleanup_crit_edge

if.end275.cleanup_crit_edge:                      ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup760:                                 ; preds = %if.end275
  %switch.gep762 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.8, i32 0, i32 %switch.tableidx761
  %162 = ptrtoint ptr %switch.gep762 to i32
  call void @__asan_load4_noabort(i32 %162)
  %switch.load763 = load ptr, ptr %switch.gep762, align 4
  %163 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %io, align 4
  %write_regs282 = getelementptr inbounds %struct.cxd2880_io, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %write_regs282 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write_regs282, align 4
  %call284 = tail call i32 %166(ptr noundef %164, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %switch.load763, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.end287, label %switch.lookup760.cleanup_crit_edge

switch.lookup760.cleanup_crit_edge:               ; preds = %switch.lookup760
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end287:                                        ; preds = %switch.lookup760
  %167 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %168)
  %cmp289 = icmp eq i32 %168, 1
  br i1 %cmp289, label %if.then290, label %if.end287.sw.epilog468_crit_edge

if.end287.sw.epilog468_crit_edge:                 ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog468

if.then290:                                       ; preds = %if.end287
  %switch.tableidx765 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx765)
  %169 = icmp ult i32 %switch.tableidx765, 3
  br i1 %169, label %switch.lookup764, label %if.then290.cleanup_crit_edge

if.then290.cleanup_crit_edge:                     ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup764:                                 ; preds = %if.then290
  %switch.gep766 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.9, i32 0, i32 %switch.tableidx765
  %170 = ptrtoint ptr %switch.gep766 to i32
  call void @__asan_load4_noabort(i32 %170)
  %switch.load767 = load ptr, ptr %switch.gep766, align 4
  %171 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %io, align 4
  %write_regs297 = getelementptr inbounds %struct.cxd2880_io, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %write_regs297 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write_regs297, align 4
  %call299 = tail call i32 %174(ptr noundef %172, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %switch.load767, i32 noundef 9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %switch.lookup764.sw.epilog468_crit_edge, label %switch.lookup764.cleanup_crit_edge

switch.lookup764.cleanup_crit_edge:               ; preds = %switch.lookup764
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup764.sw.epilog468_crit_edge:          ; preds = %switch.lookup764
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog468

sw.bb304:                                         ; preds = %if.end191
  %switch.tableidx769 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx769)
  %175 = icmp ult i32 %switch.tableidx769, 3
  br i1 %175, label %switch.lookup768, label %sw.bb304.cleanup_crit_edge

sw.bb304.cleanup_crit_edge:                       ; preds = %sw.bb304
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup768:                                 ; preds = %sw.bb304
  %switch.gep770 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.10, i32 0, i32 %switch.tableidx769
  %176 = ptrtoint ptr %switch.gep770 to i32
  call void @__asan_load4_noabort(i32 %176)
  %switch.load771 = load ptr, ptr %switch.gep770, align 4
  %177 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %io, align 4
  %write_regs310 = getelementptr inbounds %struct.cxd2880_io, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %write_regs310 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %write_regs310, align 4
  %call312 = tail call i32 %180(ptr noundef %178, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %switch.load771, i32 noundef 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %if.end315, label %switch.lookup768.cleanup_crit_edge

switch.lookup768.cleanup_crit_edge:               ; preds = %switch.lookup768
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end315:                                        ; preds = %switch.lookup768
  %181 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %io, align 4
  %write_reg317 = getelementptr inbounds %struct.cxd2880_io, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %write_reg317 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write_reg317, align 4
  %call319 = tail call i32 %184(ptr noundef %182, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.end322, label %if.end315.cleanup_crit_edge

if.end315.cleanup_crit_edge:                      ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end322:                                        ; preds = %if.end315
  %185 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %io, align 4
  %write_regs324 = getelementptr inbounds %struct.cxd2880_io, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %write_regs324 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write_regs324, align 4
  %call326 = tail call i32 %188(ptr noundef %186, i32 noundef 1, i8 noundef zeroext 25, ptr noundef nonnull @x_tune_dvbt2_demod_setting.gtdofst, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %if.end329, label %if.end322.cleanup_crit_edge

if.end322.cleanup_crit_edge:                      ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end329:                                        ; preds = %if.end322
  %switch.tableidx773 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx773)
  %189 = icmp ult i32 %switch.tableidx773, 3
  br i1 %189, label %switch.lookup772, label %if.end329.cleanup_crit_edge

if.end329.cleanup_crit_edge:                      ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup772:                                 ; preds = %if.end329
  %switch.gep774 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.11, i32 0, i32 %switch.tableidx773
  %190 = ptrtoint ptr %switch.gep774 to i32
  call void @__asan_load4_noabort(i32 %190)
  %switch.load775 = load ptr, ptr %switch.gep774, align 4
  %191 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %io, align 4
  %write_regs336 = getelementptr inbounds %struct.cxd2880_io, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %write_regs336 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write_regs336, align 4
  %call338 = tail call i32 %194(ptr noundef %192, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %switch.load775, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %tobool339.not = icmp eq i32 %call338, 0
  br i1 %tobool339.not, label %if.end341, label %switch.lookup772.cleanup_crit_edge

switch.lookup772.cleanup_crit_edge:               ; preds = %switch.lookup772
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end341:                                        ; preds = %switch.lookup772
  %195 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %196)
  %cmp343 = icmp eq i32 %196, 1
  br i1 %cmp343, label %if.then344, label %if.end341.sw.epilog468_crit_edge

if.end341.sw.epilog468_crit_edge:                 ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog468

if.then344:                                       ; preds = %if.end341
  %switch.tableidx777 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx777)
  %197 = icmp ult i32 %switch.tableidx777, 3
  br i1 %197, label %switch.lookup776, label %if.then344.cleanup_crit_edge

if.then344.cleanup_crit_edge:                     ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup776:                                 ; preds = %if.then344
  %switch.gep778 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.12, i32 0, i32 %switch.tableidx777
  %198 = ptrtoint ptr %switch.gep778 to i32
  call void @__asan_load4_noabort(i32 %198)
  %switch.load779 = load ptr, ptr %switch.gep778, align 4
  %199 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %io, align 4
  %write_regs351 = getelementptr inbounds %struct.cxd2880_io, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %write_regs351 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write_regs351, align 4
  %call353 = tail call i32 %202(ptr noundef %200, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %switch.load779, i32 noundef 9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %switch.lookup776.sw.epilog468_crit_edge, label %switch.lookup776.cleanup_crit_edge

switch.lookup776.cleanup_crit_edge:               ; preds = %switch.lookup776
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup776.sw.epilog468_crit_edge:          ; preds = %switch.lookup776
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog468

sw.bb358:                                         ; preds = %if.end191
  %switch.tableidx781 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx781)
  %203 = icmp ult i32 %switch.tableidx781, 3
  br i1 %203, label %switch.lookup780, label %sw.bb358.cleanup_crit_edge

sw.bb358.cleanup_crit_edge:                       ; preds = %sw.bb358
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup780:                                 ; preds = %sw.bb358
  %switch.gep782 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.13, i32 0, i32 %switch.tableidx781
  %204 = ptrtoint ptr %switch.gep782 to i32
  call void @__asan_load4_noabort(i32 %204)
  %switch.load783 = load ptr, ptr %switch.gep782, align 4
  %205 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %io, align 4
  %write_regs364 = getelementptr inbounds %struct.cxd2880_io, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %write_regs364 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %write_regs364, align 4
  %call366 = tail call i32 %208(ptr noundef %206, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %switch.load783, i32 noundef 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call366)
  %tobool367.not = icmp eq i32 %call366, 0
  br i1 %tobool367.not, label %if.end369, label %switch.lookup780.cleanup_crit_edge

switch.lookup780.cleanup_crit_edge:               ; preds = %switch.lookup780
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end369:                                        ; preds = %switch.lookup780
  %209 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %io, align 4
  %write_reg371 = getelementptr inbounds %struct.cxd2880_io, ptr %210, i32 0, i32 2
  %211 = ptrtoint ptr %write_reg371 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %write_reg371, align 4
  %call373 = tail call i32 %212(ptr noundef %210, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.end376, label %if.end369.cleanup_crit_edge

if.end369.cleanup_crit_edge:                      ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end376:                                        ; preds = %if.end369
  %213 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %io, align 4
  %write_regs378 = getelementptr inbounds %struct.cxd2880_io, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %write_regs378 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %write_regs378, align 4
  %call380 = tail call i32 %216(ptr noundef %214, i32 noundef 1, i8 noundef zeroext 25, ptr noundef nonnull @x_tune_dvbt2_demod_setting.gtdofst, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call380)
  %tobool381.not = icmp eq i32 %call380, 0
  br i1 %tobool381.not, label %if.end383, label %if.end376.cleanup_crit_edge

if.end376.cleanup_crit_edge:                      ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end383:                                        ; preds = %if.end376
  %switch.tableidx785 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx785)
  %217 = icmp ult i32 %switch.tableidx785, 3
  br i1 %217, label %switch.lookup784, label %if.end383.cleanup_crit_edge

if.end383.cleanup_crit_edge:                      ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup784:                                 ; preds = %if.end383
  %switch.gep786 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.14, i32 0, i32 %switch.tableidx785
  %218 = ptrtoint ptr %switch.gep786 to i32
  call void @__asan_load4_noabort(i32 %218)
  %switch.load787 = load ptr, ptr %switch.gep786, align 4
  %219 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %io, align 4
  %write_regs390 = getelementptr inbounds %struct.cxd2880_io, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %write_regs390 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %write_regs390, align 4
  %call392 = tail call i32 %222(ptr noundef %220, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %switch.load787, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392)
  %tobool393.not = icmp eq i32 %call392, 0
  br i1 %tobool393.not, label %if.end395, label %switch.lookup784.cleanup_crit_edge

switch.lookup784.cleanup_crit_edge:               ; preds = %switch.lookup784
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end395:                                        ; preds = %switch.lookup784
  %223 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %224)
  %cmp397 = icmp eq i32 %224, 1
  br i1 %cmp397, label %if.then398, label %if.end395.sw.epilog468_crit_edge

if.end395.sw.epilog468_crit_edge:                 ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog468

if.then398:                                       ; preds = %if.end395
  %switch.tableidx789 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx789)
  %225 = icmp ult i32 %switch.tableidx789, 3
  br i1 %225, label %switch.lookup788, label %if.then398.cleanup_crit_edge

if.then398.cleanup_crit_edge:                     ; preds = %if.then398
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup788:                                 ; preds = %if.then398
  %switch.gep790 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.15, i32 0, i32 %switch.tableidx789
  %226 = ptrtoint ptr %switch.gep790 to i32
  call void @__asan_load4_noabort(i32 %226)
  %switch.load791 = load ptr, ptr %switch.gep790, align 4
  %227 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %io, align 4
  %write_regs405 = getelementptr inbounds %struct.cxd2880_io, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %write_regs405 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %write_regs405, align 4
  %call407 = tail call i32 %230(ptr noundef %228, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %switch.load791, i32 noundef 9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call407)
  %tobool408.not = icmp eq i32 %call407, 0
  br i1 %tobool408.not, label %switch.lookup788.sw.epilog468_crit_edge, label %switch.lookup788.cleanup_crit_edge

switch.lookup788.cleanup_crit_edge:               ; preds = %switch.lookup788
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup788.sw.epilog468_crit_edge:          ; preds = %switch.lookup788
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog468

sw.bb412:                                         ; preds = %if.end191
  %switch.tableidx793 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx793)
  %231 = icmp ult i32 %switch.tableidx793, 3
  br i1 %231, label %switch.lookup792, label %sw.bb412.cleanup_crit_edge

sw.bb412.cleanup_crit_edge:                       ; preds = %sw.bb412
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup792:                                 ; preds = %sw.bb412
  %switch.gep794 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.16, i32 0, i32 %switch.tableidx793
  %232 = ptrtoint ptr %switch.gep794 to i32
  call void @__asan_load4_noabort(i32 %232)
  %switch.load795 = load ptr, ptr %switch.gep794, align 4
  %233 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %io, align 4
  %write_regs419 = getelementptr inbounds %struct.cxd2880_io, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %write_regs419 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %write_regs419, align 4
  %call421 = tail call i32 %236(ptr noundef %234, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %switch.load795, i32 noundef 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call421)
  %tobool422.not = icmp eq i32 %call421, 0
  br i1 %tobool422.not, label %if.end424, label %switch.lookup792.cleanup_crit_edge

switch.lookup792.cleanup_crit_edge:               ; preds = %switch.lookup792
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end424:                                        ; preds = %switch.lookup792
  %237 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %io, align 4
  %write_reg426 = getelementptr inbounds %struct.cxd2880_io, ptr %238, i32 0, i32 2
  %239 = ptrtoint ptr %write_reg426 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write_reg426, align 4
  %call428 = tail call i32 %240(ptr noundef %238, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call428)
  %tobool429.not = icmp eq i32 %call428, 0
  br i1 %tobool429.not, label %if.end431, label %if.end424.cleanup_crit_edge

if.end424.cleanup_crit_edge:                      ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end431:                                        ; preds = %if.end424
  %241 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %io, align 4
  %write_regs433 = getelementptr inbounds %struct.cxd2880_io, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %write_regs433 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write_regs433, align 4
  %call435 = tail call i32 %244(ptr noundef %242, i32 noundef 1, i8 noundef zeroext 25, ptr noundef nonnull @x_tune_dvbt2_demod_setting.gtdofst, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call435)
  %tobool436.not = icmp eq i32 %call435, 0
  br i1 %tobool436.not, label %if.end438, label %if.end431.cleanup_crit_edge

if.end431.cleanup_crit_edge:                      ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end438:                                        ; preds = %if.end431
  %switch.tableidx797 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx797)
  %245 = icmp ult i32 %switch.tableidx797, 3
  br i1 %245, label %switch.lookup796, label %if.end438.cleanup_crit_edge

if.end438.cleanup_crit_edge:                      ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup796:                                 ; preds = %if.end438
  %switch.gep798 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.17, i32 0, i32 %switch.tableidx797
  %246 = ptrtoint ptr %switch.gep798 to i32
  call void @__asan_load4_noabort(i32 %246)
  %switch.load799 = load ptr, ptr %switch.gep798, align 4
  %247 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %io, align 4
  %write_regs445 = getelementptr inbounds %struct.cxd2880_io, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %write_regs445 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %write_regs445, align 4
  %call447 = tail call i32 %250(ptr noundef %248, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %switch.load799, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447)
  %tobool448.not = icmp eq i32 %call447, 0
  br i1 %tobool448.not, label %if.end450, label %switch.lookup796.cleanup_crit_edge

switch.lookup796.cleanup_crit_edge:               ; preds = %switch.lookup796
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end450:                                        ; preds = %switch.lookup796
  %251 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %252)
  %cmp452 = icmp eq i32 %252, 1
  br i1 %cmp452, label %if.then453, label %if.end450.sw.epilog468_crit_edge

if.end450.sw.epilog468_crit_edge:                 ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog468

if.then453:                                       ; preds = %if.end450
  %switch.tableidx801 = add i32 %clk_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx801)
  %253 = icmp ult i32 %switch.tableidx801, 3
  br i1 %253, label %switch.lookup800, label %if.then453.cleanup_crit_edge

if.then453.cleanup_crit_edge:                     ; preds = %if.then453
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup800:                                 ; preds = %if.then453
  %switch.gep802 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.18, i32 0, i32 %switch.tableidx801
  %254 = ptrtoint ptr %switch.gep802 to i32
  call void @__asan_load4_noabort(i32 %254)
  %switch.load803 = load ptr, ptr %switch.gep802, align 4
  %255 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %io, align 4
  %write_regs460 = getelementptr inbounds %struct.cxd2880_io, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %write_regs460 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %write_regs460, align 4
  %call462 = tail call i32 %258(ptr noundef %256, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %switch.load803, i32 noundef 9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call462)
  %tobool463.not = icmp eq i32 %call462, 0
  br i1 %tobool463.not, label %switch.lookup800.sw.epilog468_crit_edge, label %switch.lookup800.cleanup_crit_edge

switch.lookup800.cleanup_crit_edge:               ; preds = %switch.lookup800
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup800.sw.epilog468_crit_edge:          ; preds = %switch.lookup800
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog468

sw.epilog468:                                     ; preds = %switch.lookup800.sw.epilog468_crit_edge, %if.end450.sw.epilog468_crit_edge, %switch.lookup788.sw.epilog468_crit_edge, %if.end395.sw.epilog468_crit_edge, %switch.lookup776.sw.epilog468_crit_edge, %if.end341.sw.epilog468_crit_edge, %switch.lookup764.sw.epilog468_crit_edge, %if.end287.sw.epilog468_crit_edge, %switch.lookup752.sw.epilog468_crit_edge, %if.end233.sw.epilog468_crit_edge
  %259 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %io, align 4
  %write_reg470 = getelementptr inbounds %struct.cxd2880_io, ptr %260, i32 0, i32 2
  %261 = ptrtoint ptr %write_reg470 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %write_reg470, align 4
  %call472 = tail call i32 %262(ptr noundef %260, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call472)
  %tobool473.not = icmp eq i32 %call472, 0
  br i1 %tobool473.not, label %if.end475, label %sw.epilog468.cleanup_crit_edge

sw.epilog468.cleanup_crit_edge:                   ; preds = %sw.epilog468
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end475:                                        ; preds = %sw.epilog468
  call void @__sanitizer_cov_trace_pc() #5
  %263 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %io, align 4
  %write_reg477 = getelementptr inbounds %struct.cxd2880_io, ptr %264, i32 0, i32 2
  %265 = ptrtoint ptr %write_reg477 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %write_reg477, align 4
  %call479 = tail call i32 %266(ptr noundef %264, i32 noundef 1, i8 noundef zeroext -3, i8 noundef zeroext 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end475, %sw.epilog468.cleanup_crit_edge, %switch.lookup800.cleanup_crit_edge, %if.then453.cleanup_crit_edge, %switch.lookup796.cleanup_crit_edge, %if.end438.cleanup_crit_edge, %if.end431.cleanup_crit_edge, %if.end424.cleanup_crit_edge, %switch.lookup792.cleanup_crit_edge, %sw.bb412.cleanup_crit_edge, %switch.lookup788.cleanup_crit_edge, %if.then398.cleanup_crit_edge, %switch.lookup784.cleanup_crit_edge, %if.end383.cleanup_crit_edge, %if.end376.cleanup_crit_edge, %if.end369.cleanup_crit_edge, %switch.lookup780.cleanup_crit_edge, %sw.bb358.cleanup_crit_edge, %switch.lookup776.cleanup_crit_edge, %if.then344.cleanup_crit_edge, %switch.lookup772.cleanup_crit_edge, %if.end329.cleanup_crit_edge, %if.end322.cleanup_crit_edge, %if.end315.cleanup_crit_edge, %switch.lookup768.cleanup_crit_edge, %sw.bb304.cleanup_crit_edge, %switch.lookup764.cleanup_crit_edge, %if.then290.cleanup_crit_edge, %switch.lookup760.cleanup_crit_edge, %if.end275.cleanup_crit_edge, %if.end268.cleanup_crit_edge, %if.end261.cleanup_crit_edge, %switch.lookup756.cleanup_crit_edge, %sw.bb250.cleanup_crit_edge, %switch.lookup752.cleanup_crit_edge, %if.then236.cleanup_crit_edge, %switch.lookup748.cleanup_crit_edge, %if.end221.cleanup_crit_edge, %switch.lookup744.cleanup_crit_edge, %if.end210.cleanup_crit_edge, %if.end203.cleanup_crit_edge, %switch.lookup740.cleanup_crit_edge, %sw.bb192.cleanup_crit_edge, %if.end191.cleanup_crit_edge, %if.end183.cleanup_crit_edge, %if.end175.cleanup_crit_edge, %if.end166.cleanup_crit_edge, %if.then158.cleanup_crit_edge, %if.end147.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %if.end131.cleanup_crit_edge, %if.end123.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call479, %if.end475 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call12, %if.then9.cleanup_crit_edge ], [ %call18, %if.end15.cleanup_crit_edge ], [ %call26, %if.end22.cleanup_crit_edge ], [ %call33, %if.end29.cleanup_crit_edge ], [ %call40, %if.end36.cleanup_crit_edge ], [ %call47, %if.end43.cleanup_crit_edge ], [ %call54, %if.end50.cleanup_crit_edge ], [ %call61, %if.end57.cleanup_crit_edge ], [ %call68, %if.end64.cleanup_crit_edge ], [ %call75, %if.end71.cleanup_crit_edge ], [ %call82, %if.end78.cleanup_crit_edge ], [ %call89, %if.end85.cleanup_crit_edge ], [ %call96, %if.end92.cleanup_crit_edge ], [ -22, %if.end99.cleanup_crit_edge ], [ %call105, %switch.lookup.cleanup_crit_edge ], [ %call112, %if.end108.cleanup_crit_edge ], [ %call120, %if.end115.cleanup_crit_edge ], [ %call128, %if.end123.cleanup_crit_edge ], [ %call136, %if.end131.cleanup_crit_edge ], [ %call144, %if.end139.cleanup_crit_edge ], [ %call152, %if.end147.cleanup_crit_edge ], [ %call163, %if.then158.cleanup_crit_edge ], [ %call171, %if.end166.cleanup_crit_edge ], [ %call180, %if.end175.cleanup_crit_edge ], [ %call188, %if.end183.cleanup_crit_edge ], [ -22, %sw.bb192.cleanup_crit_edge ], [ %call200, %switch.lookup740.cleanup_crit_edge ], [ %call207, %if.end203.cleanup_crit_edge ], [ -22, %if.end210.cleanup_crit_edge ], [ %call218, %switch.lookup744.cleanup_crit_edge ], [ -22, %if.end221.cleanup_crit_edge ], [ %call230, %switch.lookup748.cleanup_crit_edge ], [ -22, %if.then236.cleanup_crit_edge ], [ %call245, %switch.lookup752.cleanup_crit_edge ], [ -22, %sw.bb250.cleanup_crit_edge ], [ %call258, %switch.lookup756.cleanup_crit_edge ], [ %call265, %if.end261.cleanup_crit_edge ], [ %call272, %if.end268.cleanup_crit_edge ], [ -22, %if.end275.cleanup_crit_edge ], [ %call284, %switch.lookup760.cleanup_crit_edge ], [ -22, %if.then290.cleanup_crit_edge ], [ %call299, %switch.lookup764.cleanup_crit_edge ], [ -22, %sw.bb304.cleanup_crit_edge ], [ %call312, %switch.lookup768.cleanup_crit_edge ], [ %call319, %if.end315.cleanup_crit_edge ], [ %call326, %if.end322.cleanup_crit_edge ], [ -22, %if.end329.cleanup_crit_edge ], [ %call338, %switch.lookup772.cleanup_crit_edge ], [ -22, %if.then344.cleanup_crit_edge ], [ %call353, %switch.lookup776.cleanup_crit_edge ], [ -22, %sw.bb358.cleanup_crit_edge ], [ %call366, %switch.lookup780.cleanup_crit_edge ], [ %call373, %if.end369.cleanup_crit_edge ], [ %call380, %if.end376.cleanup_crit_edge ], [ -22, %if.end383.cleanup_crit_edge ], [ %call392, %switch.lookup784.cleanup_crit_edge ], [ -22, %if.then398.cleanup_crit_edge ], [ %call407, %switch.lookup788.cleanup_crit_edge ], [ -22, %sw.bb412.cleanup_crit_edge ], [ %call421, %switch.lookup792.cleanup_crit_edge ], [ %call428, %if.end424.cleanup_crit_edge ], [ %call435, %if.end431.cleanup_crit_edge ], [ -22, %if.end438.cleanup_crit_edge ], [ %call447, %switch.lookup796.cleanup_crit_edge ], [ -22, %if.then453.cleanup_crit_edge ], [ %call462, %switch.lookup800.cleanup_crit_edge ], [ -22, %if.end191.cleanup_crit_edge ], [ %call472, %sw.epilog468.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvbt2_set_profile(ptr noundef readonly %tnr_dmd, i32 noundef %profile) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 23
  %0 = ptrtoint ptr %clk_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_mode, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 3025959, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 12
  %3 = zext i32 %profile to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %profile, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %switch.lookup.sw.epilog7_crit_edge
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
  ]

switch.lookup.sw.epilog7_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog7

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb4:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog7

sw.bb5:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %sw.bb5, %sw.bb4, %switch.lookup.sw.epilog7_crit_edge
  %t2_mode_tune_mode.0 = phi i8 [ 0, %sw.bb5 ], [ 5, %sw.bb4 ], [ 1, %switch.lookup.sw.epilog7_crit_edge ]
  %seq_not2_dtime.0 = phi i8 [ %switch.masked, %sw.bb5 ], [ %switch.masked, %sw.bb4 ], [ %switch.offset, %switch.lookup.sw.epilog7_crit_edge ]
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %7(ptr noundef %5, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 46) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %sw.epilog7.cleanup_crit_edge

sw.epilog7.cleanup_crit_edge:                     ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog7
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 4
  %write_reg13 = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_reg13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg13, align 4
  %call15 = tail call i32 %11(ptr noundef %9, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext %t2_mode_tune_mode.0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  %write_reg20 = getelementptr inbounds %struct.cxd2880_io, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write_reg20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg20, align 4
  %call22 = tail call i32 %15(ptr noundef %13, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io, align 4
  %write_reg27 = getelementptr inbounds %struct.cxd2880_io, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %write_reg27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg27, align 4
  %call29 = tail call i32 %19(ptr noundef %17, i32 noundef 1, i8 noundef zeroext 44, i8 noundef zeroext %seq_not2_dtime.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end18.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %sw.epilog7.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end25 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ %call, %sw.epilog7.cleanup_crit_edge ], [ %call15, %if.end11.cleanup_crit_edge ], [ %call22, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_set_plp_cfg(ptr noundef readonly %tnr_dmd, i8 noundef zeroext %auto_plp, i8 noundef zeroext %plp_id) local_unnamed_addr #0 align 64 {
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
  br i1 %switch, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
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
  %call = tail call i32 %7(ptr noundef %5, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 35) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %auto_plp)
  %tobool12.not = icmp eq i8 %auto_plp, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end21_crit_edge

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then13:                                        ; preds = %if.end11
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 4
  %write_reg15 = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_reg15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg15, align 4
  %call17 = tail call i32 %11(ptr noundef %9, i32 noundef 1, i8 noundef zeroext -81, i8 noundef zeroext %plp_id) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then13.if.end21_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.end21:                                         ; preds = %if.then13.if.end21_crit_edge, %if.end11.if.end21_crit_edge
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  %write_reg23 = getelementptr inbounds %struct.cxd2880_io, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write_reg23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg23, align 4
  %conv26 = zext i1 %tobool12.not to i8
  %call27 = tail call i32 %15(ptr noundef %13, i32 noundef 1, i8 noundef zeroext -83, i8 noundef zeroext %conv26) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %call, %if.end7.cleanup_crit_edge ], [ %call17, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_tune2(ptr noundef %tnr_dmd, ptr noundef readonly %tune_param) local_unnamed_addr #0 align 64 {
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
  %profile = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %tune_param, i32 0, i32 3
  %4 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %profile, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %5, label %if.end8.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb10
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %en_fef_intmtnt_base = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 6
  %7 = ptrtoint ptr %en_fef_intmtnt_base to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %en_fef_intmtnt_base, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %en_fef_intmtnt_lite = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 7
  %9 = ptrtoint ptr %en_fef_intmtnt_lite to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %en_fef_intmtnt_lite, align 2
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  %en_fef_intmtnt_base11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 6
  %11 = ptrtoint ptr %en_fef_intmtnt_base11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %en_fef_intmtnt_base11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %sw.bb10.if.else_crit_edge, label %land.lhs.true13

sw.bb10.if.else_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true13:                                  ; preds = %sw.bb10
  %en_fef_intmtnt_lite14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 7
  %13 = ptrtoint ptr %en_fef_intmtnt_lite14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %en_fef_intmtnt_lite14, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %land.lhs.true13.if.else_crit_edge, label %land.lhs.true13.sw.epilog_crit_edge

land.lhs.true13.sw.epilog_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.else:                                          ; preds = %land.lhs.true13.if.else_crit_edge, %sw.bb10.if.else_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %land.lhs.true13.sw.epilog_crit_edge, %sw.bb9, %sw.bb
  %en_fef_intmtnt_ctrl.0 = phi i8 [ 0, %if.else ], [ %10, %sw.bb9 ], [ %8, %sw.bb ], [ 1, %land.lhs.true13.sw.epilog_crit_edge ]
  %call = tail call i32 @cxd2880_tnrdmd_common_tune_setting2(ptr noundef nonnull %tnr_dmd, i32 noundef 2, i8 noundef zeroext %en_fef_intmtnt_ctrl.0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %if.end21, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21:                                         ; preds = %sw.epilog
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %state, align 4
  %16 = ptrtoint ptr %tune_param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tune_param, align 4
  %frequency_khz = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 24
  %18 = ptrtoint ptr %frequency_khz to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %frequency_khz, align 4
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %19 = ptrtoint ptr %sys to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %sys, align 4
  %bandwidth = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %tune_param, i32 0, i32 1
  %20 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bandwidth, align 4
  %bandwidth23 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 26
  %22 = ptrtoint ptr %bandwidth23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bandwidth23, align 4
  %23 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp25 = icmp eq i32 %24, 1
  br i1 %cmp25, label %if.then27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tnr_dmd, align 4
  %state28 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %state28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %state28, align 4
  %28 = ptrtoint ptr %tune_param to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tune_param, align 4
  %30 = load ptr, ptr %tnr_dmd, align 4
  %frequency_khz31 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %frequency_khz31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %frequency_khz31, align 4
  %32 = load ptr, ptr %tnr_dmd, align 4
  %sys33 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %32, i32 0, i32 25
  %33 = ptrtoint ptr %sys33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %sys33, align 4
  %34 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bandwidth, align 4
  %36 = load ptr, ptr %tnr_dmd, align 4
  %bandwidth36 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %bandwidth36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %bandwidth36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end21.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting2(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_sleep_setting(ptr noundef readonly %tnr_dmd) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then1.i:                                       ; preds = %if.end.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %7(ptr noundef %5, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 29) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %x_sleep_dvbt2_demod_setting.exit, label %if.then1.i.cleanup_crit_edge

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

x_sleep_dvbt2_demod_setting.exit:                 ; preds = %if.then1.i
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io.i, align 4
  %write_regs.i = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_regs.i, align 4
  %call8.i = tail call i32 %11(ptr noundef %9, i32 noundef 1, i8 noundef zeroext 71, ptr noundef nonnull @x_sleep_dvbt2_demod_setting.difint_clip, i32 noundef 12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool8.not = icmp eq i32 %call8.i, 0
  br i1 %tobool8.not, label %x_sleep_dvbt2_demod_setting.exit.if.end10_crit_edge, label %x_sleep_dvbt2_demod_setting.exit.cleanup_crit_edge

x_sleep_dvbt2_demod_setting.exit.cleanup_crit_edge: ; preds = %x_sleep_dvbt2_demod_setting.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

x_sleep_dvbt2_demod_setting.exit.if.end10_crit_edge: ; preds = %x_sleep_dvbt2_demod_setting.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.end10:                                         ; preds = %x_sleep_dvbt2_demod_setting.exit.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %12 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %14 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tnr_dmd, align 4
  %tobool.not.i24 = icmp eq ptr %15, null
  br i1 %tobool.not.i24, label %if.then13.cleanup_crit_edge, label %if.end.i27

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i27:                                       ; preds = %if.then13
  %diver_mode.i25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %diver_mode.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %diver_mode.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i26 = icmp eq i32 %17, 1
  br i1 %cmp.i26, label %if.then1.i32, label %if.end.i27.cleanup_crit_edge

if.end.i27.cleanup_crit_edge:                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then1.i32:                                     ; preds = %if.end.i27
  %io.i28 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %io.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io.i28, align 4
  %write_reg.i29 = getelementptr inbounds %struct.cxd2880_io, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %write_reg.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg.i29, align 4
  %call.i30 = tail call i32 %21(ptr noundef %19, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 29) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool3.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool3.not.i31, label %if.end5.i35, label %if.then1.i32.cleanup_crit_edge

if.then1.i32.cleanup_crit_edge:                   ; preds = %if.then1.i32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5.i35:                                      ; preds = %if.then1.i32
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %io.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io.i28, align 4
  %write_regs.i33 = getelementptr inbounds %struct.cxd2880_io, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_regs.i33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_regs.i33, align 4
  %call8.i34 = tail call i32 %25(ptr noundef %23, i32 noundef 1, i8 noundef zeroext 71, ptr noundef nonnull @x_sleep_dvbt2_demod_setting.difint_clip, i32 noundef 12) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i35, %if.then1.i32.cleanup_crit_edge, %if.end.i27.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %x_sleep_dvbt2_demod_setting.exit.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %call8.i, %x_sleep_dvbt2_demod_setting.exit.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ -22, %if.then13.cleanup_crit_edge ], [ %call.i30, %if.then1.i32.cleanup_crit_edge ], [ %call8.i34, %if.end5.i35 ], [ 0, %if.end.i27.cleanup_crit_edge ], [ %call.i, %if.then1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_check_demod_lock(ptr noundef %tnr_dmd, ptr noundef writeonly %lock) local_unnamed_addr #0 align 64 {
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
  %call = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_stat, ptr noundef nonnull %ts_lock, ptr noundef nonnull %unlock_detected) #3
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
  %call27 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_stat, ptr noundef nonnull %unlock_detected_sub) #3
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
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_check_ts_lock(ptr noundef %tnr_dmd, ptr noundef writeonly %lock) local_unnamed_addr #0 align 64 {
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
  %call = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_stat, ptr noundef nonnull %ts_lock, ptr noundef nonnull %unlock_detected) #3
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
  %call28 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_stat, ptr noundef nonnull %unlock_detected_sub) #3
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_diver_fef_setting(ptr noundef %tnr_dmd) local_unnamed_addr #0 align 64 {
entry:
  %ofdm = alloca %struct.cxd2880_dvbt2_ofdm, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ofdm) #3
  %0 = call ptr @memset(ptr %ofdm, i32 255, i32 28)
  %tobool.not = icmp eq ptr %tnr_dmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %1 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3.not = icmp eq i32 %4, 2
  br i1 %cmp3.not, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call = call i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %ofdm) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %ofdm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ofdm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %call17 = call i32 %10(ptr noundef %8, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 29) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_regs, align 4
  %call23 = call i32 %14(ptr noundef %12, i32 noundef 1, i8 noundef zeroext 71, ptr noundef nonnull @cxd2880_tnrdmd_dvbt2_diver_fef_setting.data, i32 noundef 12) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end20 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ofdm) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_check_l1post_valid(ptr noundef readonly %tnr_dmd, ptr noundef writeonly %l1_post_valid) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !125
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %l1_post_valid, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %.off = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %8(ptr noundef %6, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call15 = call i32 %12(ptr noundef %10, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %data, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %15 = and i8 %14, 1
  %16 = ptrtoint ptr %l1_post_valid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %l1_post_valid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ %call15, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_write_multi_regs(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @cxd2880_tnrdmd_dvbt2_diver_fef_setting.data, !1, !"data", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 1151, i32 18}
!2 = !{ptr @x_tune_dvbt2_demod_setting.tsif_settings, !3, !"tsif_settings", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 30, i32 18}
!4 = !{ptr @x_tune_dvbt2_demod_setting.init_settings, !5, !"init_settings", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 31, i32 18}
!6 = !{ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a1, !7, !"clk_mode_settings_a1", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 35, i32 18}
!8 = !{ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b1, !9, !"clk_mode_settings_b1", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 39, i32 18}
!10 = !{ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c1, !11, !"clk_mode_settings_c1", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 43, i32 18}
!12 = !{ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a2, !13, !"clk_mode_settings_a2", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 47, i32 18}
!14 = !{ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b2, !15, !"clk_mode_settings_b2", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 52, i32 18}
!16 = !{ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c2, !17, !"clk_mode_settings_c2", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 57, i32 18}
!18 = !{ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a3, !19, !"clk_mode_settings_a3", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 62, i32 18}
!20 = !{ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b3, !21, !"clk_mode_settings_b3", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 65, i32 18}
!22 = !{ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c3, !23, !"clk_mode_settings_c3", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 68, i32 18}
!24 = !{ptr @x_tune_dvbt2_demod_setting.gtdofst, !25, !"gtdofst", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 72, i32 18}
!26 = !{ptr @x_tune_dvbt2_demod_setting.bw8_gtdofst_a, !27, !"bw8_gtdofst_a", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 74, i32 18}
!28 = !{ptr @x_tune_dvbt2_demod_setting.bw8_nomi_ac, !29, !"bw8_nomi_ac", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 75, i32 18}
!30 = !{ptr @x_tune_dvbt2_demod_setting.bw8_nomi_b, !31, !"bw8_nomi_b", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 76, i32 18}
!32 = !{ptr @x_tune_dvbt2_demod_setting.bw8_sst_a, !33, !"bw8_sst_a", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 77, i32 18}
!34 = !{ptr @x_tune_dvbt2_demod_setting.bw8_sst_b, !35, !"bw8_sst_b", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 78, i32 18}
!36 = !{ptr @x_tune_dvbt2_demod_setting.bw8_sst_c, !37, !"bw8_sst_c", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 79, i32 18}
!38 = !{ptr @x_tune_dvbt2_demod_setting.bw8_mrc_a, !39, !"bw8_mrc_a", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 80, i32 18}
!40 = !{ptr @x_tune_dvbt2_demod_setting.bw8_mrc_b, !41, !"bw8_mrc_b", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 83, i32 18}
!42 = !{ptr @x_tune_dvbt2_demod_setting.bw8_mrc_c, !43, !"bw8_mrc_c", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 86, i32 18}
!44 = !{ptr @x_tune_dvbt2_demod_setting.bw7_nomi_ac, !45, !"bw7_nomi_ac", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 90, i32 18}
!46 = !{ptr @x_tune_dvbt2_demod_setting.bw7_nomi_b, !47, !"bw7_nomi_b", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 91, i32 18}
!48 = !{ptr @x_tune_dvbt2_demod_setting.bw7_sst_a, !49, !"bw7_sst_a", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 92, i32 18}
!50 = !{ptr @x_tune_dvbt2_demod_setting.bw7_sst_b, !51, !"bw7_sst_b", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 93, i32 18}
!52 = !{ptr @x_tune_dvbt2_demod_setting.bw7_sst_c, !53, !"bw7_sst_c", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 94, i32 18}
!54 = !{ptr @x_tune_dvbt2_demod_setting.bw7_mrc_a, !55, !"bw7_mrc_a", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 95, i32 18}
!56 = !{ptr @x_tune_dvbt2_demod_setting.bw7_mrc_b, !57, !"bw7_mrc_b", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 98, i32 18}
!58 = !{ptr @x_tune_dvbt2_demod_setting.bw7_mrc_c, !59, !"bw7_mrc_c", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 101, i32 18}
!60 = !{ptr @x_tune_dvbt2_demod_setting.bw6_nomi_ac, !61, !"bw6_nomi_ac", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 105, i32 18}
!62 = !{ptr @x_tune_dvbt2_demod_setting.bw6_nomi_b, !63, !"bw6_nomi_b", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 106, i32 18}
!64 = !{ptr @x_tune_dvbt2_demod_setting.bw6_sst_a, !65, !"bw6_sst_a", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 107, i32 18}
!66 = !{ptr @x_tune_dvbt2_demod_setting.bw6_sst_b, !67, !"bw6_sst_b", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 108, i32 18}
!68 = !{ptr @x_tune_dvbt2_demod_setting.bw6_sst_c, !69, !"bw6_sst_c", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 109, i32 18}
!70 = !{ptr @x_tune_dvbt2_demod_setting.bw6_mrc_a, !71, !"bw6_mrc_a", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 110, i32 18}
!72 = !{ptr @x_tune_dvbt2_demod_setting.bw6_mrc_b, !73, !"bw6_mrc_b", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 113, i32 18}
!74 = !{ptr @x_tune_dvbt2_demod_setting.bw6_mrc_c, !75, !"bw6_mrc_c", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 116, i32 18}
!76 = !{ptr @x_tune_dvbt2_demod_setting.bw5_nomi_ac, !77, !"bw5_nomi_ac", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 120, i32 18}
!78 = !{ptr @x_tune_dvbt2_demod_setting.bw5_nomi_b, !79, !"bw5_nomi_b", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 121, i32 18}
!80 = !{ptr @x_tune_dvbt2_demod_setting.bw5_sst_a, !81, !"bw5_sst_a", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 122, i32 18}
!82 = !{ptr @x_tune_dvbt2_demod_setting.bw5_sst_b, !83, !"bw5_sst_b", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 123, i32 18}
!84 = !{ptr @x_tune_dvbt2_demod_setting.bw5_sst_c, !85, !"bw5_sst_c", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 124, i32 18}
!86 = !{ptr @x_tune_dvbt2_demod_setting.bw5_mrc_a, !87, !"bw5_mrc_a", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 125, i32 18}
!88 = !{ptr @x_tune_dvbt2_demod_setting.bw5_mrc_b, !89, !"bw5_mrc_b", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 128, i32 18}
!90 = !{ptr @x_tune_dvbt2_demod_setting.bw5_mrc_c, !91, !"bw5_mrc_c", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 131, i32 18}
!92 = !{ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_a, !93, !"bw1_7_nomi_a", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 135, i32 18}
!94 = !{ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_c, !95, !"bw1_7_nomi_c", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 138, i32 18}
!96 = !{ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_b, !97, !"bw1_7_nomi_b", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 141, i32 18}
!98 = !{ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_a, !99, !"bw1_7_sst_a", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 144, i32 18}
!100 = !{ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_b, !101, !"bw1_7_sst_b", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 145, i32 18}
!102 = !{ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_c, !103, !"bw1_7_sst_c", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 146, i32 18}
!104 = !{ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_a, !105, !"bw1_7_mrc_a", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 147, i32 18}
!106 = !{ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_b, !107, !"bw1_7_mrc_b", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 150, i32 18}
!108 = !{ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_c, !109, !"bw1_7_mrc_c", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 153, i32 18}
!110 = !{ptr @tune_dmd_setting_seq1, !111, !"tune_dmd_setting_seq1", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 15, i32 39}
!112 = !{ptr @tune_dmd_setting_seq2, !113, !"tune_dmd_setting_seq2", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 19, i32 39}
!114 = !{ptr @x_sleep_dvbt2_demod_setting.difint_clip, !115, !"difint_clip", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c", i32 751, i32 18}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
