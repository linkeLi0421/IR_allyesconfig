; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dm_odm_t = type { ptr, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i32, i8, i32, i8, i64, i64, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, %struct.odm_noise_monitor, [32 x ptr], i8, %struct.odm_phy_dbg_info, ptr, %struct.fat_t, %struct.dig_t, %struct.ps_t, %struct.dynamic_primary_CCA, %struct.rxhp_t, %struct.ra_t, %struct.false_ALARM_STATISTICS, %struct.false_ALARM_STATISTICS, %struct.swat_t, i8, %struct.cfo_tracking, %struct.edca_t, i32, %struct.pathdiv_t, ptr, ptr, ptr, i8, %struct.timer_list, i8, i8, i8, i8, %struct.timer_list, i8, %struct.odm_rate_adaptive, %struct.ant_detected_info, %struct.odm_rf_cal_t, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], %struct.timer_list, %struct.timer_list, %struct.timer_list }
%struct.odm_noise_monitor = type { [4 x i8], i16 }
%struct.odm_phy_dbg_info = type { [4 x i8], i32, i32, i32, i8, [4 x i32] }
%struct.fat_t = type { [6 x i8], i8, i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dig_t = type { i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, ptr }
%struct.ps_t = type { i8, i8, i8, i8, i32, i8, i32, i32, i32, i32 }
%struct.dynamic_primary_CCA = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.rxhp_t = type { i8, i8, [80 x i8], i8, i8, i8, i8, i8, i8, i8, %struct.timer_list }
%struct.ra_t = type { i8 }
%struct.false_ALARM_STATISTICS = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.swat_t = type { i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8, i8, i8, %struct.timer_list, %struct.timer_list, i32, i8 }
%struct.cfo_tracking = type { i8, i8, i8, i8, i8, [2 x i32], i32, i32, i32, i8, i8 }
%struct.edca_t = type { i8, i8, i32 }
%struct.pathdiv_t = type { i8, [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32] }
%struct.odm_rate_adaptive = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ant_detected_info = type { i8, i32, i32, i32 }
%struct.odm_rf_cal_t = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [8 x i8], i8, [14 x %struct.iqk_matrix_regs_setting], i8, i8, i8, i8, i8, [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [3 x [2 x i32]]], [2 x [2 x [2 x i32]]], [2 x [2 x i32]], i8, i8, i8, i8, i8, i8, [2 x i32] }
%struct.iqk_matrix_regs_setting = type { i8, [3 x [8 x i32]], [3 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@Array_MP_8723B_RadioA = internal constant { [260 x i32], [272 x i8] } { [260 x i32] [i32 0, i32 65536, i32 176, i32 917472, i32 254, i32 0, i32 254, i32 0, i32 254, i32 0, i32 177, i32 24, i32 254, i32 0, i32 254, i32 0, i32 254, i32 0, i32 178, i32 543744, i32 181, i32 53964, i32 182, i32 599466, i32 183, i32 16, i32 184, i32 36991, i32 92, i32 2, i32 124, i32 2, i32 126, i32 5, i32 139, i32 457728, i32 176, i32 1047024, i32 28, i32 473554, i32 30, i32 0, i32 223, i32 1920, i32 80, i32 422965, i32 -2147475456, i32 0, i32 1073741824, i32 0, i32 81, i32 438542, i32 -1879035904, i32 0, i32 1073741824, i32 0, i32 81, i32 438542, i32 -1879031808, i32 0, i32 1073741824, i32 0, i32 81, i32 438542, i32 -1610612736, i32 0, i32 81, i32 438350, i32 -1342177280, i32 0, i32 82, i32 2002, i32 83, i32 0, i32 84, i32 328704, i32 85, i32 262766, i32 221, i32 76, i32 112, i32 422965, i32 -2147475456, i32 0, i32 1073741824, i32 0, i32 113, i32 438542, i32 -1879035904, i32 0, i32 1073741824, i32 0, i32 113, i32 438542, i32 -1879031808, i32 0, i32 1073741824, i32 0, i32 113, i32 438542, i32 -1610612736, i32 0, i32 113, i32 438350, i32 -1342177280, i32 0, i32 114, i32 2002, i32 115, i32 0, i32 116, i32 328704, i32 117, i32 262766, i32 239, i32 256, i32 52, i32 44503, i32 53, i32 23552, i32 52, i32 40404, i32 53, i32 20480, i32 52, i32 36305, i32 53, i32 17408, i32 52, i32 32206, i32 53, i32 14336, i32 52, i32 27857, i32 53, i32 17408, i32 52, i32 23758, i32 53, i32 14336, i32 52, i32 18638, i32 53, i32 17408, i32 52, i32 13518, i32 53, i32 14336, i32 52, i32 9297, i32 53, i32 17408, i32 52, i32 5198, i32 53, i32 14336, i32 52, i32 81, i32 53, i32 17408, i32 239, i32 0, i32 239, i32 256, i32 237, i32 16, i32 68, i32 44503, i32 68, i32 40404, i32 68, i32 36305, i32 68, i32 32206, i32 68, i32 27841, i32 68, i32 23758, i32 68, i32 17617, i32 68, i32 13518, i32 68, i32 9297, i32 68, i32 5198, i32 68, i32 81, i32 239, i32 0, i32 237, i32 0, i32 127, i32 131200, i32 239, i32 8192, i32 59, i32 229615, i32 59, i32 197374, i32 59, i32 167142, i32 59, i32 131260, i32 59, i32 100517, i32 59, i32 69564, i32 59, i32 36721, i32 59, i32 2304, i32 239, i32 0, i32 237, i32 1, i32 64, i32 229615, i32 64, i32 197374, i32 64, i32 167142, i32 64, i32 131260, i32 64, i32 100517, i32 64, i32 69564, i32 64, i32 36721, i32 64, i32 2304, i32 237, i32 0, i32 130, i32 524288, i32 131, i32 32768, i32 132, i32 298368, i32 133, i32 425984, i32 162, i32 524288, i32 163, i32 32768, i32 164, i32 298368, i32 165, i32 425984, i32 237, i32 2, i32 239, i32 2, i32 86, i32 50, i32 118, i32 50, i32 1, i32 1920], [272 x i8] zeroinitializer }, align 32
@gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\02\02\03\03\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0A\0B\0B\0C\0C\0D\0D\0E\0F\0F", [34 x i8] zeroinitializer }, align 32
@gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\02\02\02\03\03\03\04\05\05\06\06\06\06\07\07\07\08\08\09\09\0A\0A\0B\0C\0D\0E\0F", [34 x i8] zeroinitializer }, align 32
@gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\02\02\03\03\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0A\0B\0B\0C\0C\0D\0D\0E\0F\0F", [34 x i8] zeroinitializer }, align 32
@gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\02\02\02\03\03\03\04\05\05\06\06\06\06\07\07\07\08\08\09\09\0A\0A\0B\0C\0D\0E\0F", [34 x i8] zeroinitializer }, align 32
@gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\02\02\02\03\03\03\04\05\05\06\06\07\07\08\08\09\09\09\0A\0A\0B\0B\0C\0C\0D\0E\0F", [34 x i8] zeroinitializer }, align 32
@gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\02\02\03\03\04\04\05\06\06\07\07\07\08\08\08\09\09\09\0A\0A\0B\0B\0C\0C\0D\0E\0F", [34 x i8] zeroinitializer }, align 32
@gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\02\02\02\03\03\03\04\05\05\06\06\07\07\08\08\09\09\09\0A\0A\0B\0B\0C\0C\0D\0E\0F", [34 x i8] zeroinitializer }, align 32
@gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\02\02\03\03\04\04\05\06\06\07\07\07\08\08\08\09\09\09\0A\0A\0B\0B\0C\0C\0D\0E\0F", [34 x i8] zeroinitializer }, align 32
@Array_MP_8723B_TXPWR_LMT = internal constant { [1008 x ptr], [992 x i8] } { [1008 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.18, ptr @.str.19, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.20, ptr @.str.19, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.21, ptr @.str.19, ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.21, ptr @.str.19, ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.21, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.4, ptr @.str.23, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.8, ptr @.str.23, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.16, ptr @.str.23, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.17, ptr @.str.23, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.18, ptr @.str.19, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.20, ptr @.str.19, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.21, ptr @.str.19, ptr @.str.6, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.21, ptr @.str.19, ptr @.str.7, ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.21, ptr @.str.19, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.4, ptr @.str.25, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.8, ptr @.str.25, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.16, ptr @.str.25, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.17, ptr @.str.25, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.18, ptr @.str.19, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.20, ptr @.str.19, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.21, ptr @.str.19, ptr @.str.6, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.21, ptr @.str.19, ptr @.str.7, ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.21, ptr @.str.19, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.4, ptr @.str.19, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.4, ptr @.str.19, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.4, ptr @.str.19, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.8, ptr @.str.19, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.8, ptr @.str.19, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.8, ptr @.str.19, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.9, ptr @.str.25, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.10, ptr @.str.25, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.10, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.13, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.14, ptr @.str.25, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.15, ptr @.str.25, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.16, ptr @.str.25, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.17, ptr @.str.25, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.18, ptr @.str.19, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.20, ptr @.str.19, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.21, ptr @.str.19, ptr @.str.6, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.21, ptr @.str.19, ptr @.str.7, ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.21, ptr @.str.19], [992 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCC\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"20M\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CCK\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1T\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"01\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ETSI\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MKK\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"02\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"03\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"04\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"05\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"06\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"07\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"08\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"09\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"11\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"12\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"63\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"13\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"14\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OFDM\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"28\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HT\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"26\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"40M\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"Array_MP_8723B_RadioA\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 92, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [53 x i8] c"gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 297, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [53 x i8] c"gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 293, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [53 x i8] c"gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 289, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [53 x i8] c"gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 285, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [56 x i8] c"gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 313, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [56 x i8] c"gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 309, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [56 x i8] c"gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 305, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [56 x i8] c"gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 301, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"Array_MP_8723B_TXPWR_LMT\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 370, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 371, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 371, i32 9 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 371, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 371, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 371, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 371, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 372, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 373, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 374, i32 29 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 377, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 380, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 383, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 386, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 389, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 392, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 395, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 398, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 401, i32 29 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 404, i32 29 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 404, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 407, i32 29 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 410, i32 29 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 413, i32 16 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 413, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 455, i32 16 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 455, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [52 x i8] c"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 497, i32 9 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @Array_MP_8723B_RadioA, ptr @gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B, ptr @gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B, ptr @gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B, ptr @gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B, ptr @gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B, ptr @gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B, ptr @gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B, ptr @gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B, ptr @Array_MP_8723B_TXPWR_LMT, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Array_MP_8723B_RadioA to i32), i32 1040, i32 1312, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Array_MP_8723B_TXPWR_LMT to i32), i32 4032, i32 5024, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_ReadAndConfig_MP_8723B_RadioA(ptr noundef %pDM_Odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %BoardType.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 19
  %CutVersion.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 16
  %SupportPlatform.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 12
  %PackageType.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 20
  %SupportInterface.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 14
  %TypeGLNA.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 21
  %TypeGPA.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 22
  %TypeALNA.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 23
  %TypeAPA.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.0251 = phi i32 [ 0, %entry ], [ %add145, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @Array_MP_8723B_RadioA, i32 %i.0251
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.0251, 1
  %arrayidx1 = getelementptr i32, ptr @Array_MP_8723B_RadioA, i32 %add
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %1)
  %cmp2 = icmp ult i32 %1, 1073741824
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @odm_ConfigRF_RadioA_8723B(ptr noundef %pDM_Odm, i32 noundef %1, i32 noundef %3) #3
  br label %cleanup

if.else:                                          ; preds = %for.body
  %4 = and i32 %1, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %4)
  %cmp4 = icmp eq i32 %4, 536870912
  br i1 %cmp4, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %i.0251)
  %cmp8 = icmp ugt i32 %i.0251, 257
  br i1 %cmp8, label %if.then6.for.end_crit_edge, label %if.then6.while.cond91.preheader_crit_edge

if.then6.while.cond91.preheader_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond91.preheader

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.else15:                                        ; preds = %if.else
  %5 = ptrtoint ptr %BoardType.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %BoardType.i, align 1
  %and.i = lshr i8 %6, 4
  %7 = and i8 %and.i, 1
  %8 = lshr i8 %6, 2
  %shl5.i = and i8 %8, 2
  %or.i = or i8 %7, %shl5.i
  %9 = lshr i8 %6, 5
  %shl10.i = and i8 %9, 4
  %or11.i = or i8 %or.i, %shl10.i
  %10 = lshr i8 %6, 3
  %shl16.i = and i8 %10, 8
  %or17.i = or i8 %or11.i, %shl16.i
  %11 = shl i8 %6, 2
  %shl22.i = and i8 %11, 16
  %or23.i = or i8 %or17.i, %shl22.i
  %12 = ptrtoint ptr %CutVersion.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %CutVersion.i, align 8
  %conv25.i = zext i8 %13 to i32
  %shl26.i = shl nuw i32 %conv25.i, 24
  %14 = ptrtoint ptr %SupportPlatform.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %SupportPlatform.i, align 1
  %conv27.i = zext i8 %15 to i32
  %shl28.i = shl nuw nsw i32 %conv27.i, 16
  %or29.i = or i32 %shl28.i, %shl26.i
  %16 = ptrtoint ptr %PackageType.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %PackageType.i, align 4
  %conv30.i = zext i8 %17 to i32
  %shl31.i = shl nuw nsw i32 %conv30.i, 12
  %or32.i = or i32 %or29.i, %shl31.i
  %18 = ptrtoint ptr %SupportInterface.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %SupportInterface.i, align 8
  %conv33.i = zext i8 %19 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 8
  %or35.i = or i32 %or32.i, %shl34.i
  %conv36.i = zext i8 %or23.i to i32
  %20 = ptrtoint ptr %TypeGLNA.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %TypeGLNA.i, align 1
  %conv38.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %TypeGPA.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %TypeGPA.i, align 2
  %conv40.i = zext i8 %23 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %or42.i = or i32 %shl41.i, %conv38.i
  %24 = ptrtoint ptr %TypeALNA.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %TypeALNA.i, align 1
  %conv43.i = zext i8 %25 to i32
  %shl44.i = shl nuw nsw i32 %conv43.i, 16
  %or45.i = or i32 %or42.i, %shl44.i
  %26 = ptrtoint ptr %TypeAPA.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %TypeAPA.i, align 8
  %conv46.i = zext i8 %27 to i32
  %shl47.i = shl nuw i32 %conv46.i, 24
  %or48.i = or i32 %or45.i, %shl47.i
  %and49.i = and i32 %1, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %cmp.not.i = icmp eq i32 %and49.i, 0
  %and52.i = and i32 %or35.i, 61440
  call void @__sanitizer_cov_trace_cmp4(i32 %and49.i, i32 %and52.i)
  %cmp53.not.i = icmp eq i32 %and49.i, %and52.i
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp53.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.else15.if.then16_crit_edge

if.else15.if.then16_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

if.end.i:                                         ; preds = %if.else15
  %and55.i = and i32 %1, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %cmp56.not.i = icmp eq i32 %and55.i, 0
  %and60.i = and i32 %shl26.i, 251658240
  call void @__sanitizer_cov_trace_cmp4(i32 %and55.i, i32 %and60.i)
  %cmp61.not.i = icmp eq i32 %and55.i, %and60.i
  %or.cond143.i = select i1 %cmp56.not.i, i1 true, i1 %cmp61.not.i
  br i1 %or.cond143.i, label %if.end64.i, label %if.end.i.if.then16_crit_edge

if.end.i.if.then16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

if.end64.i:                                       ; preds = %if.end.i
  %or35.masked.i = and i32 %or35.i, 986880
  %and66.i = or i32 %or35.masked.i, %conv36.i
  %28 = xor i32 %and66.i, 987135
  %29 = and i32 %28, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp68.i = icmp eq i32 %29, 0
  br i1 %cmp68.i, label %if.then70.i, label %if.end64.i.if.then16_crit_edge

if.end64.i.if.then16_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

if.then70.i:                                      ; preds = %if.end64.i
  %and71.i = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %cmp72.i = icmp eq i32 %and71.i, 0
  br i1 %cmp72.i, label %if.then70.i.do.body42_crit_edge, label %CheckPositive.exit

if.then70.i.do.body42_crit_edge:                  ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body42

CheckPositive.exit:                               ; preds = %if.then70.i
  %and76.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %cmp77.not.i = icmp eq i32 %and76.i, 0
  %spec.select.i = select i1 %cmp77.not.i, i32 0, i32 255
  %and82.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %cmp83.not.i = icmp eq i32 %and82.i, 0
  %or86.i = or i32 %spec.select.i, 65280
  %bitMask.1.i = select i1 %cmp83.not.i, i32 %spec.select.i, i32 %or86.i
  %and88.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %cmp89.not.i = icmp eq i32 %and88.i, 0
  %or92.i = or i32 %bitMask.1.i, 16711680
  %bitMask.2.i = select i1 %cmp89.not.i, i32 %bitMask.1.i, i32 %or92.i
  %and94.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %cmp95.not.i = icmp eq i32 %and94.i, 0
  %or98.i = or i32 %bitMask.2.i, -16777216
  %bitMask.3.i = select i1 %cmp95.not.i, i32 %bitMask.2.i, i32 %or98.i
  %30 = xor i32 %or48.i, %3
  %31 = and i32 %30, %bitMask.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp102.i = icmp eq i32 %31, 0
  br i1 %cmp102.i, label %CheckPositive.exit.do.body42_crit_edge, label %CheckPositive.exit.if.then16_crit_edge

CheckPositive.exit.if.then16_crit_edge:           ; preds = %CheckPositive.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

CheckPositive.exit.do.body42_crit_edge:           ; preds = %CheckPositive.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body42

if.then16:                                        ; preds = %CheckPositive.exit.if.then16_crit_edge, %if.end64.i.if.then16_crit_edge, %if.end.i.if.then16_crit_edge, %if.else15.if.then16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %i.0251)
  %cmp19 = icmp ugt i32 %i.0251, 257
  br i1 %cmp19, label %if.then16.while.end_crit_edge, label %do.body29

if.then16.while.end_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.body29:                                        ; preds = %if.then16
  %add18 = add nuw nsw i32 %i.0251, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.0251)
  %cmp31 = icmp ugt i32 %i.0251, 255
  br i1 %cmp31, label %do.body29.while.end_crit_edge, label %while.cond.preheader

do.body29.while.end_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.body42:                                        ; preds = %CheckPositive.exit.do.body42_crit_edge, %if.then70.i.do.body42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.0251)
  %cmp60 = icmp ugt i32 %i.0251, 255
  br i1 %cmp60, label %do.body42.for.end_crit_edge, label %if.end63

do.body42.for.end_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end63:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #5
  %add43 = add nuw nsw i32 %i.0251, 2
  br label %while.cond91.preheader

while.cond91.preheader:                           ; preds = %if.end63, %if.then6.while.cond91.preheader_crit_edge
  %.sink = phi i32 [ 4, %if.end63 ], [ 2, %if.then6.while.cond91.preheader_crit_edge ]
  %i.0251.sink = phi i32 [ %add43, %if.end63 ], [ %i.0251, %if.then6.while.cond91.preheader_crit_edge ]
  %add7 = add nuw nsw i32 %i.0251, %.sink
  %arrayidx12 = getelementptr i32, ptr @Array_MP_8723B_RadioA, i32 %add7
  %32 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %33)
  %cmp92238 = icmp ult i32 %33, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %add7)
  %cmp96239 = icmp ult i32 %add7, 258
  %or.cond229240 = select i1 %cmp92238, i1 %cmp96239, i1 false
  br i1 %or.cond229240, label %while.cond91.preheader.while.body99_crit_edge, label %while.cond91.preheader.while.cond116.preheader_crit_edge

while.cond91.preheader.while.cond116.preheader_crit_edge: ; preds = %while.cond91.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond116.preheader

while.cond91.preheader.while.body99_crit_edge:    ; preds = %while.cond91.preheader
  br label %while.body99

while.cond.preheader:                             ; preds = %do.body29
  %add30 = add nuw nsw i32 %i.0251, 4
  %arrayidx36 = getelementptr i32, ptr @Array_MP_8723B_RadioA, i32 %add30
  %34 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %35)
  %cmp73234 = icmp ult i32 %35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %i.0251)
  %cmp75235 = icmp ult i32 %i.0251, 254
  %or.cond236 = select i1 %cmp73234, i1 %cmp75235, i1 false
  br i1 %or.cond236, label %while.cond.preheader.do.body77_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.cond.preheader.do.body77_crit_edge:         ; preds = %while.cond.preheader
  br label %do.body77

do.body77:                                        ; preds = %do.body77.do.body77_crit_edge, %while.cond.preheader.do.body77_crit_edge
  %i.4237 = phi i32 [ %add78, %do.body77.do.body77_crit_edge ], [ %add30, %while.cond.preheader.do.body77_crit_edge ]
  %add78 = add nuw nsw i32 %i.4237, 2
  %arrayidx84 = getelementptr i32, ptr @Array_MP_8723B_RadioA, i32 %add78
  %36 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %37)
  %cmp73 = icmp ult i32 %37, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.4237)
  %cmp75 = icmp ult i32 %i.4237, 256
  %or.cond = select i1 %cmp73, i1 %cmp75, i1 false
  br i1 %or.cond, label %do.body77.do.body77_crit_edge, label %do.body77.while.end_crit_edge

do.body77.while.end_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.body77.do.body77_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body77

while.end:                                        ; preds = %do.body77.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge, %do.body29.while.end_crit_edge, %if.then16.while.end_crit_edge
  %i.4.lcssa = phi i32 [ %add30, %while.cond.preheader.while.end_crit_edge ], [ %add18, %do.body29.while.end_crit_edge ], [ %i.0251, %if.then16.while.end_crit_edge ], [ %add78, %do.body77.while.end_crit_edge ]
  %sub89 = add nsw i32 %i.4.lcssa, -2
  br label %cleanup

while.cond116.preheader:                          ; preds = %while.body99.while.cond116.preheader_crit_edge, %while.cond91.preheader.while.cond116.preheader_crit_edge
  %i.6.lcssa = phi i32 [ %add7, %while.cond91.preheader.while.cond116.preheader_crit_edge ], [ %add101, %while.body99.while.cond116.preheader_crit_edge ]
  %v1.5.lcssa = phi i32 [ %33, %while.cond91.preheader.while.cond116.preheader_crit_edge ], [ %41, %while.body99.while.cond116.preheader_crit_edge ]
  %38 = and i32 %v1.5.lcssa, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %38)
  %cmp118.not246 = icmp ne i32 %38, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %i.6.lcssa)
  %cmp122247 = icmp ult i32 %i.6.lcssa, 258
  %or.cond230248 = select i1 %cmp118.not246, i1 %cmp122247, i1 false
  br i1 %or.cond230248, label %while.cond116.preheader.do.body126_crit_edge, label %while.cond116.preheader.cleanup_crit_edge

while.cond116.preheader.cleanup_crit_edge:        ; preds = %while.cond116.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond116.preheader.do.body126_crit_edge:     ; preds = %while.cond116.preheader
  br label %do.body126

while.body99:                                     ; preds = %while.body99.while.body99_crit_edge, %while.cond91.preheader.while.body99_crit_edge
  %add108.pn.in = phi i32 [ %i.6241, %while.body99.while.body99_crit_edge ], [ %i.0251.sink, %while.cond91.preheader.while.body99_crit_edge ]
  %v1.5242 = phi i32 [ %41, %while.body99.while.body99_crit_edge ], [ %33, %while.cond91.preheader.while.body99_crit_edge ]
  %i.6241 = phi i32 [ %add101, %while.body99.while.body99_crit_edge ], [ %add7, %while.cond91.preheader.while.body99_crit_edge ]
  %add108.pn = add nuw nsw i32 %add108.pn.in, 3
  %v2.3243.in = getelementptr i32, ptr @Array_MP_8723B_RadioA, i32 %add108.pn
  %39 = ptrtoint ptr %v2.3243.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %v2.3243 = load i32, ptr %v2.3243.in, align 4
  tail call void @odm_ConfigRF_RadioA_8723B(ptr noundef %pDM_Odm, i32 noundef %v1.5242, i32 noundef %v2.3243) #3
  %add101 = add nuw nsw i32 %i.6241, 2
  %arrayidx107 = getelementptr i32, ptr @Array_MP_8723B_RadioA, i32 %add101
  %40 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %41)
  %cmp92 = icmp ult i32 %41, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.6241)
  %cmp96 = icmp ult i32 %i.6241, 256
  %or.cond229 = select i1 %cmp92, i1 %cmp96, i1 false
  br i1 %or.cond229, label %while.body99.while.body99_crit_edge, label %while.body99.while.cond116.preheader_crit_edge

while.body99.while.cond116.preheader_crit_edge:   ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond116.preheader

while.body99.while.body99_crit_edge:              ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body99

do.body126:                                       ; preds = %do.body126.do.body126_crit_edge, %while.cond116.preheader.do.body126_crit_edge
  %i.8249 = phi i32 [ %add127, %do.body126.do.body126_crit_edge ], [ %i.6.lcssa, %while.cond116.preheader.do.body126_crit_edge ]
  %add127 = add nuw nsw i32 %i.8249, 2
  %arrayidx133 = getelementptr i32, ptr @Array_MP_8723B_RadioA, i32 %add127
  %42 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx133, align 4
  %44 = and i32 %43, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %44)
  %cmp118.not = icmp ne i32 %44, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.8249)
  %cmp122 = icmp ult i32 %i.8249, 256
  %or.cond230 = select i1 %cmp118.not, i1 %cmp122, i1 false
  br i1 %or.cond230, label %do.body126.do.body126_crit_edge, label %do.body126.cleanup_crit_edge

do.body126.cleanup_crit_edge:                     ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body126.do.body126_crit_edge:                  ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body126

cleanup:                                          ; preds = %do.body126.cleanup_crit_edge, %while.cond116.preheader.cleanup_crit_edge, %while.end, %if.then
  %i.11 = phi i32 [ %i.0251, %if.then ], [ %sub89, %while.end ], [ %i.6.lcssa, %while.cond116.preheader.cleanup_crit_edge ], [ %add127, %do.body126.cleanup_crit_edge ]
  %add145 = add nuw nsw i32 %i.11, 2
  %cmp = icmp ult i32 %i.11, 258
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.body42.for.end_crit_edge, %if.then6.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigRF_RadioA_8723B(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(ptr nocapture noundef writeonly %pDM_Odm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %DeltaSwingTableIdx_2GA_P = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 44
  %0 = call ptr @memcpy(ptr %DeltaSwingTableIdx_2GA_P, ptr @gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B, i32 30)
  %DeltaSwingTableIdx_2GA_N = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 45
  %1 = call ptr @memcpy(ptr %DeltaSwingTableIdx_2GA_N, ptr @gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B, i32 30)
  %DeltaSwingTableIdx_2GB_P = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 46
  %2 = call ptr @memcpy(ptr %DeltaSwingTableIdx_2GB_P, ptr @gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B, i32 30)
  %DeltaSwingTableIdx_2GB_N = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 47
  %3 = call ptr @memcpy(ptr %DeltaSwingTableIdx_2GB_N, ptr @gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B, i32 30)
  %DeltaSwingTableIdx_2GCCKA_P = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 40
  %4 = call ptr @memcpy(ptr %DeltaSwingTableIdx_2GCCKA_P, ptr @gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B, i32 30)
  %DeltaSwingTableIdx_2GCCKA_N = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 41
  %5 = call ptr @memcpy(ptr %DeltaSwingTableIdx_2GCCKA_N, ptr @gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B, i32 30)
  %DeltaSwingTableIdx_2GCCKB_P = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 42
  %6 = call ptr @memcpy(ptr %DeltaSwingTableIdx_2GCCKB_P, ptr @gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B, i32 30)
  %DeltaSwingTableIdx_2GCCKB_N = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 43
  %7 = call ptr @memcpy(ptr %DeltaSwingTableIdx_2GCCKB_N, ptr @gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B, i32 30)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(ptr noundef %pDM_Odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %add10, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr @Array_MP_8723B_TXPWR_LMT, i32 %i.023
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add = or i32 %i.023, 1
  %arrayidx1 = getelementptr ptr, ptr @Array_MP_8723B_TXPWR_LMT, i32 %add
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %add2 = add nuw nsw i32 %i.023, 2
  %arrayidx3 = getelementptr ptr, ptr @Array_MP_8723B_TXPWR_LMT, i32 %add2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %add4 = add nuw nsw i32 %i.023, 3
  %arrayidx5 = getelementptr ptr, ptr @Array_MP_8723B_TXPWR_LMT, i32 %add4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %add6 = add nuw nsw i32 %i.023, 4
  %arrayidx7 = getelementptr ptr, ptr @Array_MP_8723B_TXPWR_LMT, i32 %add6
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %add8 = add nuw nsw i32 %i.023, 5
  %arrayidx9 = getelementptr ptr, ptr @Array_MP_8723B_TXPWR_LMT, i32 %add8
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  tail call void @odm_ConfigBB_TXPWR_LMT_8723B(ptr noundef %pDM_Odm, ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11) #3
  %add10 = add nuw nsw i32 %i.023, 6
  %cmp = icmp ult i32 %i.023, 1002
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigBB_TXPWR_LMT_8723B(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @Array_MP_8723B_RadioA, !1, !"Array_MP_8723B_RadioA", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 92, i32 12}
!2 = !{ptr @gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B, !3, !"gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 297, i32 11}
!4 = !{ptr @gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B, !5, !"gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 293, i32 11}
!6 = !{ptr @gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B, !7, !"gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 289, i32 11}
!8 = !{ptr @gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B, !9, !"gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 285, i32 11}
!10 = !{ptr @gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B, !11, !"gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 313, i32 11}
!12 = !{ptr @gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B, !13, !"gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 309, i32 11}
!14 = !{ptr @gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B, !15, !"gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 305, i32 11}
!16 = !{ptr @gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B, !17, !"gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 301, i32 11}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 371, i32 2}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 371, i32 9}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 371, i32 16}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 371, i32 23}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 371, i32 29}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 371, i32 35}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 372, i32 2}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 373, i32 2}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 374, i32 29}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 377, i32 29}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 380, i32 29}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 383, i32 29}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 386, i32 29}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 389, i32 29}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 392, i32 29}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 395, i32 29}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 398, i32 29}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 401, i32 29}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 404, i32 29}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 404, i32 35}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 407, i32 29}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 410, i32 29}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 413, i32 16}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 413, i32 36}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 455, i32 16}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 455, i32 34}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 497, i32 9}
!72 = !{ptr @Array_MP_8723B_TXPWR_LMT, !73, !"Array_MP_8723B_TXPWR_LMT", i1 false, i1 false}
!73 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c", i32 370, i32 12}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
